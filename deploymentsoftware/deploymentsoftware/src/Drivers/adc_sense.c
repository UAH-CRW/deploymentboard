#include "Drivers/adc_sense.h"

void adc_init(void)
{
	struct adc_config adc_conf;
	struct adc_channel_config adcch_conf_cap;

	adc_read_configuration(&CAP_ADC, &adc_conf);
	adcch_read_configuration(&CAP_ADC, CAP_CHANNEL, &adcch_conf_cap);

	adc_set_conversion_parameters(&adc_conf, ADC_SIGN_OFF, ADC_RES_12, ADC_REF_VCC);
	adc_set_conversion_trigger(&adc_conf, ADC_TRIG_MANUAL, 1, 0);
	adc_set_clock_rate(&adc_conf, 200000UL);

	adcch_set_input(&adcch_conf_cap, CAP_SENSE_PIN, ADCCH_NEG_NONE, 1);

	adc_write_configuration(&CAP_ADC, &adc_conf);
	adcch_write_configuration(&CAP_ADC, CAP_CHANNEL, &adcch_conf_cap);

	adc_enable(&CAP_ADC);
}

uint16_t get_voltage_capacitor(void)
{
	adc_start_conversion(&CAP_ADC, CAP_CHANNEL);
	adc_wait_for_interrupt_flag(&CAP_ADC, CAP_CHANNEL);
	uint32_t result_raw = (uint32_t)adc_get_result(&CAP_ADC, CAP_CHANNEL);
	uint16_t V_mv = (uint16_t)(result_raw * 33000L / (4096L * 16L));
	return V_mv * CAP_VDIVIDE_FACTOR;
}