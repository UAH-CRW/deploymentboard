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

#define COMMS_USART				USARTC0
#define USART_TX_PIN			IOPORT_CREATE_PIN(PORTC, 3)
#define USART_RX_PIN			IOPORT_CREATE_PIN(PORTC, 2)
#define LATCH_ENABLE_PIN		IOPORT_CREATE_PIN(PORTC, 5)
#define SOLENOID_CTRL_PIN		IOPORT_CREATE_PIN(PORTA, 0)
#define LED_1_PIN				IOPORT_CREATE_PIN(PORTC, 0)
#define LED_2_PIN				IOPORT_CREATE_PIN(PORTD, 0)
#define EMATCH_PRIMARY_PIN		IOPORT_CREATE_PIN(PORTE, 1)
#define EMATCH_BACKUP_PIN		IOPORT_CREATE_PIN(PORTE, 0)
#define BUZZER_CTRL_PIN			IOPORT_CREATE_PIN(PORTD, 4)

#define LED_1_TC				TCC0
#define LED_1_TC_PORT			PORTC
#define LED_2_TC				TCD0
#define LED_2_TC_PORT			PORTD

#endif // CONF_BOARD_H
