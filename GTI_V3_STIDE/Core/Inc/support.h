#ifndef _SUPPORT_H_
#define _SUPPORT_H_


#include <stdint.h>
#include <stdbool.h>

struct IIR_Filter_Struct {
	float y;
	float alpha;
};


float 		Integral(int32_t datum);
int32_t 	Get_Median(int16_t *Buffer, int8_t FILTER_LENGTH, int16_t OFFSET);
float 		Integrate_Mains_RMS(int16_t ADC_Line_V);
uint32_t 	Integrate_I_Error(int32_t I_Error);
float 		DSP_Filter(struct IIR_Filter_Struct * Filter, float datum);
//int32_t 	Integrate(struct Integral_Struct * Integrate_Struc, int32_t *Buffer, int32_t datum);
float 	Signal_Delay(float datum);

#endif




