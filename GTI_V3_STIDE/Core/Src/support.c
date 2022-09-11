#include "support.h"
#include "stm32f4xx_hal.h"
#include "arm_math.h"

#define		INTEGRAL_SIZE						256															// Number of samples to integrate over. 256 is 1 full cycle
#define		RMS_INTEGRAL_SIZE					100
#define		RMS_INTEGRAL_SIZE_I_ERROR 256
#define		SIGNAL_DELAY_SIZE					64

extern 		TIM_HandleTypeDef 	htim9;

//--------------------------------------------------------------------------------
// Keep a running summation of the last FILTER_SIZE values passed into this function.
float Integral(int32_t datum)
{	
	static int32_t 		Buffer[INTEGRAL_SIZE];
	static uint16_t  	Index = 0; 
	static int32_t  	Sum = 0;	
	
	Sum += datum;	
	
  Buffer[Index++] = datum;
    
  if(Index == INTEGRAL_SIZE)                                    
    Index = 0;
	
	Sum -= Buffer[Index];
  return((float)Sum);
}

// Returns the median value of a buffer of unsigned values. Note FILTER_LENGTH must be odd in this implimentation 
int32_t Get_Median(int16_t *Buffer, int8_t FILTER_LENGTH, int16_t OFFSET)
{		
	// Copy the buffer otherwise the DMA could overwrite a value mid calculation
	int16_t Buffer_Copy[FILTER_LENGTH];
	for(int8_t x = 0; x < FILTER_LENGTH; x++)	{
		Buffer_Copy[x] = Buffer[x];
	}
	
	// This code arranges the copied buffer values into ascending order
	int8_t i=0, j=0; int16_t temp=0;	
	for(i=0; i<FILTER_LENGTH; i++)	{
			for(j=0; j<FILTER_LENGTH-1; j++)	{
					if(Buffer_Copy[j] > Buffer_Copy[j+1])	{
							temp        			= Buffer_Copy[j];
							Buffer_Copy[j]    = Buffer_Copy[j+1];
							Buffer_Copy[j+1]  = temp;
					}
			}
	}	
	
	int32_t median = Buffer_Copy[FILTER_LENGTH/2] - OFFSET;	
	return(median);
}


float Integrate_Mains_RMS(int16_t ADC_Line_V)
{	
	static uint32_t 	Buffer[RMS_INTEGRAL_SIZE];
	static uint16_t  	Index = 0; 
	static uint32_t  	Sum = 0;
	
	int32_t 			Sample 		= ADC_Line_V;
	uint32_t 			Sample_Sqrd = Sample * Sample;
	
	Sum += Sample_Sqrd;	
	
	Buffer[Index++] = Sample_Sqrd;

	if(Index == RMS_INTEGRAL_SIZE)
	Index = 0;
	
	Sum -= Buffer[Index];
	
	float RMS = (float)(Sum/RMS_INTEGRAL_SIZE);

	float result;
	arm_sqrt_f32(RMS, &result);
	
	return(result);
}


uint32_t Integrate_I_Error(int32_t I_Error)
{	
	static uint32_t 	Buffer[RMS_INTEGRAL_SIZE_I_ERROR];
	static uint16_t  	Index = 0; 
	static uint32_t  	Sum = 0;
	
	int32_t Sample = I_Error;
	
	if(Sample < 0)
		Sample = -Sample;
	
	Sum += Sample;	
	
	Buffer[Index++] = Sample;

	if(Index == RMS_INTEGRAL_SIZE_I_ERROR)
	Index = 0;
	
	Sum -= Buffer[Index];
	return(Sum/RMS_INTEGRAL_SIZE_I_ERROR);
}

//--------------------------------------------------------------------------------
// 1st order low pass IIR filter
float DSP_Filter(struct IIR_Filter_Struct * Filter, float datum)
{	
	
	Filter->y = Filter->y - (Filter->alpha * (Filter->y - datum));

  return(Filter->y);
}

// This function simply fills a buffer from one end and returns values SIGNAL_DELAY_SIZE insertions later
float Signal_Delay(float datum)
{		
	static float Delay_Buffer[SIGNAL_DELAY_SIZE];
	static int16_t Signal_Delay_Index = 0;	
	
  Delay_Buffer[Signal_Delay_Index++] = datum;	
    
  if(Signal_Delay_Index == SIGNAL_DELAY_SIZE)                                    
    Signal_Delay_Index = 0;
	
  return(Delay_Buffer[Signal_Delay_Index]);
}














