/******************************* SOURCE LICENSE *********************************
Copyright (c) 2021 MicroModeler.

A non-exclusive, nontransferable, perpetual, royalty-free license is granted to the Licensee to 
use the following Information for academic, non-profit, or government-sponsored research purposes.
Use of the following Information under this License is restricted to NON-COMMERCIAL PURPOSES ONLY.
Commercial use of the following Information requires a separately executed written license agreement.

This Information is distributed WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

******************************* END OF LICENSE *********************************/

// A commercial license for MicroModeler DSP can be obtained at https://www.micromodeler.com/launch.jsp

// Begin header file, filter150.h

#ifndef FILTER150_H_ // Include guards
#define FILTER150_H_

/*
Generated code is based on the following filter design:
<micro.DSP.FilterDocument sampleFrequency="#10000" arithmetic="float" biquads="Direct1" classname="filter150" inputMax="#1" inputShift="#15" >
  <micro.DSP.IirButterworthFilter N="#2" bandType="b" w1="#0.0148" w2="#0.0152" stopbandRipple="#undefined" passbandRipple="#undefined" transitionRatio="#undefined" >
    <micro.DSP.FilterStructure coefficientBits="#0" variableBits="#0" accumulatorBits="#0" biquads="Direct1" >
      <micro.DSP.FilterSection form="Direct1" historyType="Double" accumulatorBits="#0" variableBits="#0" coefficientBits="#0" />
      <micro.DSP.FilterSection form="Direct1" historyType="Double" accumulatorBits="#0" variableBits="#0" coefficientBits="#0" />
    </micro.DSP.FilterStructure>
    <micro.DSP.PoleOrZeroContainer >
      <micro.DSP.PoleOrZero i="#0.09313331173296746" r="#0.9947699677690548" isPoint="#true" isPole="#true" isZero="#false" symmetry="c" N="#1" cascade="#1" />
      <micro.DSP.PoleOrZero i="#0.09489943869903712" r="#0.9945862679207093" isPoint="#true" isPole="#true" isZero="#false" symmetry="c" N="#1" cascade="#0" />
      <micro.DSP.PoleOrZero i="#0" r="#1" isPoint="#true" isPole="#false" isZero="#true" symmetry="r" N="#1" cascade="#1" />
      <micro.DSP.PoleOrZero i="#0" r="#-1" isPoint="#true" isPole="#false" isZero="#true" symmetry="r" N="#1" cascade="#0" />
      <micro.DSP.PoleOrZero i="#0" r="#1" isPoint="#true" isPole="#false" isZero="#true" symmetry="r" N="#1" cascade="#1" />
      <micro.DSP.PoleOrZero i="#0" r="#-1" isPoint="#true" isPole="#false" isZero="#true" symmetry="r" N="#1" cascade="#0" />
    </micro.DSP.PoleOrZeroContainer>
    <micro.DSP.GenericC.CodeGenerator generateTestCases="#false" />
    <micro.DSP.GainControl magnitude="#1" frequency="#0.0146484375" peak="#true" />
  </micro.DSP.IirButterworthFilter>
</micro.DSP.FilterDocument>

*/

static const int filter150_numStages = 2;
static const int filter150_coefficientLength = 10;
extern float filter150_coefficients[10];

typedef struct
{
	float state[8];
	float output;
} filter150Type;

typedef struct
{
    float *pInput;
    float *pOutput;
    float *pState;
    float *pCoefficients;
    short count;
} filter150_executionState;


filter150Type *filter150_create( void );
void filter150_destroy( filter150Type *pObject );
void filter150_init( filter150Type * pThis );
void filter150_reset( filter150Type * pThis );
#define filter150_writeInput( pThis, input )  \
    filter150_filterBlock( pThis, &(input), &(pThis)->output, 1 );

#define filter150_readOutput( pThis )  \
    (pThis)->output

int filter150_filterBlock( filter150Type * pThis, float * pInput, float * pOutput, unsigned int count );
#define filter150_outputToFloat( output )  \
    (output)

#define filter150_inputFromFloat( input )  \
    (input)

void filter150_filterBiquad( filter150_executionState * pExecState );
#endif // FILTER150_H_
	
