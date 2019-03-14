/**
 * \file
 *
 * \brief User board configuration template
 *
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */

#ifndef CONF_BOARD_H
#define CONF_BOARD_H

#define COMMS_USART						USARTC0
#define COMMS_USART_RX_ISR				USARTC0_RXC_vect
#define USART_TX_PIN					IOPORT_CREATE_PIN(PORTC, 3)
#define USART_RX_PIN					IOPORT_CREATE_PIN(PORTC, 2)
#define LATCH_ENABLE_PIN				IOPORT_CREATE_PIN(PORTC, 5)
#define SOLENOID_CTRL_PIN				IOPORT_CREATE_PIN(PORTA, 0)
#define LED_1_PIN						IOPORT_CREATE_PIN(PORTC, 0)
#define LED_2_PIN						IOPORT_CREATE_PIN(PORTD, 0)
#define EMATCH_PRIMARY_PIN				IOPORT_CREATE_PIN(PORTA, 1)
#define EMATCH_BACKUP_PIN				IOPORT_CREATE_PIN(PORTA, 2)
#define BUZZER_CTRL_PIN					IOPORT_CREATE_PIN(PORTE, 0)

#define LED_1_TC						TCC0
#define LED_1_TC_PORT					PORTC
#define LED_2_TC						TCD0
#define LED_2_TC_PORT					PORTD

#define BUZZER_INTERRUPT_TC				TCE0
#define BUZZER_INTERRUPT_SYSCLK_PORT	SYSCLK_PORT_E
#define BUZZER_INT_VECT					TCE0_OVF_vect

#define CLOCK_INTERRUPT_TC				TCD0
#define CLOCK_INTERRUPT_SYSCLK_PORT		SYSCLK_PORT_D
#define CLOCK_INT_VECT					TCD0_OVF_vect

#define CAP_ADC							ADCA
#define CAP_CHANNEL						ADC_CH0
#define CAP_SENSE_PIN					ADCCH_POS_PIN6
#define CAP_VDIVIDE_FACTOR				9.1818f

#endif // CONF_BOARD_H
