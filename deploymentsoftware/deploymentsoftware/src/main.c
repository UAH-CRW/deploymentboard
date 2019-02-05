/***********************************************************
Deployment controller software main
This is designed to work with the initial, broken PCB order
The USB port is not used

Daniel Corey
***********************************************************/
#include <asf.h>
#include <string.h>
#include "Drivers/uart_tools.h"
#include "Tools/RingBuffer.h"
#include "Drivers/timercounter.h"

#define VERSION_MAJOR			0
#define VERSION_MINOR			1
#define VERSION_PATCH			0

#define DEVICE_NAME				"Deployment control system"
#define INFO_STATUS				"NOT FOR FLIGHT"

#define BUZZER_ARMED_FREQ		5.0f
#define BUZZER_DISARMED_FREQ	0.0f

#define LED_ARMED_FREQ			5.0f
#define LED_DISARMED_FREQ		1.0f

typedef enum {STATE_DISARMED, STATE_ARMED} devicestate;
typedef enum {CMD_INVALID, CMD_GET_VERSION, CMD_ARM, CMD_DISARM, CMD_FIRE_PRIMARY, CMD_FIRE_BACKUP} devicecommand;
#define STR_CMD_GET_VERSION			"UAH_CRW_DEPLOYMENT_CHECK_VERSION\n"
#define STR_CMD_ARM					"UAH_CRW_arm_payload_deployment\n"
#define STR_CMD_DISARM				"UAH_CRW_disarm_payload_deployment\n"
#define STR_CMD_FIRE_PRIMARY		"UAH_CRW_deploy_payload_primary\n"
#define STR_CMD_FIRE_BACKUP			"UAH_CRW_deploy_payload_backup\n"
#define CMD_UNIFORM_PRECURSOR		"UAH_CRW"
#define TWICE_LONGEST_VALID_CMD		68U
#define LONGEST_VALID_CMD			34U

void pin_setup(void);
devicecommand getnextcmd(void);
void firing_autosequence(port_pin_t ematch_pin);
void set_led_freq(float freq);
void set_buzzer_freq(float freq);
void LED_setup(void);
void buzzer_setup(void);
void set_12V_powered(bool state);
void retract_solenoid(void);
void extend_solenoid(void);
void config_LEDs_and_buzzer(devicestate state);

#define XBEE_BACKING_BUFF_LEN			512
RingBufferu8_t xbee_input_buff;
uint8_t xbee_input_backing_buffer[XBEE_BACKING_BUFF_LEN];
void input_buff_setup(void);

#define BUZZER_OFF						0
#define BUZZER_BEEPING					1
#define BUZZER_CONTINUOUS				2
uint8_t isr_buzzer_duty;

ISR (BUZZER_INT_VECT)
{
	switch (isr_buzzer_duty)
	{
		case BUZZER_OFF:
			gpio_set_pin_low(BUZZER_CTRL_PIN);
			break;
		case BUZZER_BEEPING:
			gpio_toggle_pin(BUZZER_CTRL_PIN);
			break;
		default:
			gpio_set_pin_high(BUZZER_CTRL_PIN);
			break;
	}
}

ISR (COMMS_USART_RX_ISR)
{
	uint8_t temp = COMMS_USART.DATA;
	rbu8_write(&xbee_input_buff, &temp, 1U);
}

int main (void)
{
	sysclk_init();
	pin_setup();
	LED_setup();
	buzzer_setup();
	UART_computer_init(&COMMS_USART, &PORTC, USART_TX_PIN, USART_RX_PIN);
	
	devicestate state = STATE_DISARMED;
	devicecommand currentcmd = CMD_INVALID;
	
	//Enable interrupts for serial receive and buzzer control
	TC0_setup(&BUZZER_INTERRUPT_TC, BUZZER_INTERRUPT_SYSCLK_PORT, 0b000);
	TC_config(&BUZZER_INTERRUPT_TC, 10.0f, 0.5f);
	BUZZER_INTERRUPT_TC.INTCTRLA |= 0b00001100; //Enable buzzer TC interrupt, high-level
	//Enable USART RX interrupt (clock and whatnot already enabled by uart_computer_init)
	COMMS_USART.CTRLA |= (USART_INT_LVL_MED << 4); //Set USART RX interrupt to medium-level
	PMIC.CTRL |= PMIC_HILVLEN_bm | PMIC_MEDLVLEN_bm | PMIC_LOLVLEN_bm; //All interrupt levels enabled
	sei(); //Interrupts on
	
	TC0_setup(&LED_1_TC, SYSCLK_PORT_C, 0b0001);
	TC0_setup(&LED_2_TC, SYSCLK_PORT_D, 0b0001);
	config_LEDs_and_buzzer(state);
	
	while (1)
	{
		currentcmd = getnextcmd();
		
		//This command is valid in any state
		if (currentcmd == CMD_GET_VERSION)
		{
			printf("%s V%i.%i.%i - %s\n", DEVICE_NAME, VERSION_MAJOR, VERSION_MINOR, VERSION_PATCH, INFO_STATUS);
		}
		else if (state == STATE_DISARMED)
		{
			//Valid commands: arm
			if (currentcmd == CMD_ARM)
			{
				set_buzzer_freq(BUZZER_ARMED_FREQ);
				state = STATE_ARMED;
				config_LEDs_and_buzzer(state);
			}
			//No other commands are valid, perform no processing on them
		}
		else if (state == STATE_ARMED)
		{
			//Valid commands: disarm, fire primary, fire backup
			if (currentcmd == CMD_DISARM)
			{
				state = STATE_DISARMED;
				config_LEDs_and_buzzer(state);
				set_buzzer_freq(BUZZER_DISARMED_FREQ);
			}
			else if (currentcmd == CMD_FIRE_PRIMARY)
			{
				firing_autosequence(EMATCH_PRIMARY_PIN);
				state = STATE_DISARMED;
				config_LEDs_and_buzzer(state);
				set_buzzer_freq(BUZZER_DISARMED_FREQ);
			}
			else if (currentcmd == CMD_FIRE_BACKUP)
			{
				firing_autosequence(EMATCH_BACKUP_PIN);
				state = STATE_DISARMED;
				config_LEDs_and_buzzer(state);
				set_buzzer_freq(BUZZER_DISARMED_FREQ);
			}
		}
		
	}
	/* Insert application code here, after the board has been initialized. */
}

void config_LEDs_and_buzzer(devicestate state)
{
	if (state == STATE_ARMED)
	{
		TC_config(&LED_1_TC, LED_ARMED_FREQ, 0.5);
		isr_buzzer_duty = BUZZER_BEEPING;
	}
	else
	{
		TC_config(&LED_1_TC, LED_DISARMED_FREQ, 0.5);
		isr_buzzer_duty = BUZZER_OFF;
	}
}

void input_buff_setup(void)
{
	rbu8_init(&xbee_input_buff, xbee_input_backing_buffer, XBEE_BACKING_BUFF_LEN);
}

void set_buzzer_freq(float freq)
{
	
}

void LED_setup(void)
{
	
}

void buzzer_setup(void)
{
	
}

void pin_setup(void)
{
	gpio_configure_pin(LATCH_ENABLE_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(LATCH_ENABLE_PIN);
	
	gpio_configure_pin(SOLENOID_CTRL_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(SOLENOID_CTRL_PIN);
	
	gpio_configure_pin(LED_1_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(LED_1_PIN);
	
	gpio_configure_pin(LED_2_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(LED_2_PIN);
	
	gpio_configure_pin(EMATCH_PRIMARY_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(EMATCH_PRIMARY_PIN);
	
	gpio_configure_pin(EMATCH_BACKUP_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(EMATCH_BACKUP_PIN);
	
	gpio_configure_pin(BUZZER_CTRL_PIN, IOPORT_DIR_OUTPUT);
	gpio_set_pin_low(BUZZER_CTRL_PIN);
}

devicecommand getnextcmd(void)
{
	uint8_t buffer[TWICE_LONGEST_VALID_CMD + 1] = {0};
	rbu8_read(&xbee_input_buff, buffer, TWICE_LONGEST_VALID_CMD);
	uint8_t* cmd_start = (uint8_t*)strstr((const char*)buffer, CMD_UNIFORM_PRECURSOR); //Find when first possible command begins
	if (cmd_start == NULL) //No command starting within this buffer, scrap it all
	{
		rbu8_delete_oldest(&xbee_input_buff, strlen((const char*)buffer));
		return CMD_INVALID;
	}
	//Otherwise, there may be a valid command somewhere in here. Check for it
	if (memcmp(cmd_start, STR_CMD_GET_VERSION, strlen(STR_CMD_GET_VERSION)) == 0)
	{
		rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer + strlen(STR_CMD_GET_VERSION)); //Delete everything through the end of the CMD
		return CMD_GET_VERSION;
	}
	else if (memcmp(cmd_start, STR_CMD_ARM, strlen(STR_CMD_ARM)) == 0)
	{
		rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer + strlen(STR_CMD_ARM)); //Delete everything through the end of the CMD
		return CMD_ARM;
	}
	else if (memcmp(cmd_start, STR_CMD_DISARM, strlen(STR_CMD_DISARM)) == 0)
	{
		rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer + strlen(STR_CMD_DISARM)); //Delete everything through the end of the CMD
		return CMD_DISARM;
	}
	else if (memcmp(cmd_start, STR_CMD_FIRE_PRIMARY, strlen(STR_CMD_FIRE_PRIMARY)) == 0)
	{
		rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer + strlen(STR_CMD_FIRE_PRIMARY)); //Delete everything through the end of the CMD
		return CMD_FIRE_PRIMARY;
	}
	else if (memcmp(cmd_start, STR_CMD_FIRE_BACKUP, strlen(STR_CMD_FIRE_BACKUP)) == 0)
	{
		rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer + strlen(STR_CMD_FIRE_BACKUP)); //Delete everything through the end of the CMD
		return CMD_FIRE_BACKUP;
	}
	else //Not a real command
	{
		if (strlen((const char*)buffer) - (cmd_start - buffer) > LONGEST_VALID_CMD) //There's a lot of stuff that isn't a good command
		{
			rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer + 1);
		}
		else
		{
			rbu8_delete_oldest(&xbee_input_buff, (uint16_t)cmd_start - (uint16_t)buffer); //Might become a valid command once more comes in
		}
		return CMD_INVALID;
	}
}

void firing_autosequence(port_pin_t ematch_pin)
{
	//TODO: set buzzer duty cycle to 100%
	set_12V_powered(true);
	delay_s(7); //Charge capacitor bank
	retract_solenoid();
	delay_ms(500); //Provide time for solenoid to physically retract
	ioport_set_pin_high(ematch_pin); //Fire E-match
	delay_ms(3000); //Allow time for E-match to fire
	ioport_set_pin_low(ematch_pin); //Stop firing
	extend_solenoid(); //De-energize
	set_12V_powered(false); //Stop charging capacitor bank
}

void set_12V_powered(bool state)
{
	if (state)
	{
		ioport_set_pin_high(LATCH_ENABLE_PIN);
	}
	else
	{
		ioport_set_pin_low(LATCH_ENABLE_PIN);
	}
}

void retract_solenoid(void)
{
	ioport_set_pin_high(SOLENOID_CTRL_PIN);
}

void extend_solenoid(void)
{
	ioport_set_pin_low(SOLENOID_CTRL_PIN);
}