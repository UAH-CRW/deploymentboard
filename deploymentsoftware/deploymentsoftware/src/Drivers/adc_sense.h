/*
 * adc_sense.h
 *
 * Created: 3/13/2019 11:53:41 AM
 *  Author: Daniel
 */ 
#ifndef ADC_SENSE_H_
#define ADC_SENSE_H_

#include <asf.h>

void adc_init(void);

uint16_t get_voltage_capacitor(void);

#endif /* ADC_SENSE_H_ */