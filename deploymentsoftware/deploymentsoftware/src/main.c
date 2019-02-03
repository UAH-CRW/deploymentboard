/**
 * \file
 *
 * \brief Empty user application template
 *
 */

/**
 * \mainpage User Application template doxygen documentation
 *
 * \par Empty user application template
 *
 * Bare minimum empty user application template
 *
 * \par Content
 *
 * -# Include the ASF header files (through asf.h)
 * -# "Insert system clock initialization code here" comment
 * -# Minimal main function that starts with a call to board_init()
 * -# "Insert application code here" comment
 *
 */

/*
 * Include header files for all drivers that have been imported from
 * Atmel Software Framework (ASF).
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */
#include <asf.h>
#include "Drivers/uart_tools.h"
#include "Tools/RingBuffer.h"

#define COMMS_USART				USARTC0
#define USART_TX_PIN			IOPORT_CREATE_PIN(PORTC, 3)
#define USART_RX_PIN			IOPORT_CREATE_PIN(PORTC, 2)
#define LATCH_ENABLE_PIN		IOPORT_CREATE_PIN(PORTC, 5)
#define SOLENOID_CTRL_PIN		IOPORT_CREATE_PIN(PORTA, 0)
#define LED_1_PIN				IOPORT_CREATE_PIN(PORTC, 0)
#define LED_2_PIN				IOPORT_CREATE_PIN(PORTD, 0)

int main (void)
{
	/* Insert system clock initialization code here (sysclk_init()). */

	sysclk_init();
	UART_computer_init(&COMMS_USART, &PORTC, USART_TX_PIN, USART_RX_PIN);
	gpio_configure_pin(LATCH_ENABLE_PIN, IOPORT_DIR_OUTPUT);
	gpio_configure_pin(SOLENOID_CTRL_PIN, IOPORT_DIR_OUTPUT);
	gpio_configure_pin(LED_1_PIN, IOPORT_DIR_OUTPUT);
	gpio_configure_pin(LED_2_PIN, IOPORT_DIR_OUTPUT);
	
	gpio_set_pin_high(LED_1_PIN);
	gpio_set_pin_low(LED_2_PIN);
	
	gpio_set_pin_high(LATCH_ENABLE_PIN);
	gpio_set_pin_low(SOLENOID_CTRL_PIN);
	delay_ms(2500);
	gpio_set_pin_high(SOLENOID_CTRL_PIN);
	gpio_set_pin_high(LED_1_PIN);
	gpio_set_pin_high(LED_1_PIN);
	delay_ms(1000);
	gpio_set_pin_low(SOLENOID_CTRL_PIN);
	gpio_set_pin_low(LED_1_PIN);
	gpio_set_pin_low(LED_1_PIN);
	while (1)
	{
		
	}
	/* Insert application code here, after the board has been initialized. */
}
