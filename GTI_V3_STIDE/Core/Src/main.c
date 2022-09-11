/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  *	James Fotherby
  * August 2022
  *
  * Description:
  *	This software runs our grid tie inverter
  *
  *	To Do:
  *	 - Vary joining voltage based on DC bus voltage and grid RMS
  *
  *	 Aim:
  *	  - To have the GTI able to go from zero current to max current in under 1 second.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "adc.h"
#include "dac.h"
#include "dma.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
//#define ARM_MATH_CM4 - WE HAVE DONE THIS UNDER OPTIONS FOR TARGET
#include "arm_math.h"
#include "math.h"
#include "support.h"
#include "PID.h"
#include "filter1.h"
#include "filter150.h"
#include "string.h"
#include "stdio.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define 		PLL_Kp 					4.0e-3f 								// PID parameters for our PLL tracking control
#define 		PLL_Ki 					2.0e-2f									// PoM: 4.0e-3f, 2.0e-2f
#define 		PLL_Kd 					0.0f
#define 		PLL_LIMIT 				500.0f
#define 		PLL_PERIOD 				7.8e-5f 								// 1 / (50 * 256) seconds
#define 		SINE_STEP_PERIOD 		13125 									// Ticks between incrementing our LO (Local Osc) index for 50Hz sine

//##############################################
#define			FC_Kp 					1.0e-3f									// Fundamental component PI parameter
#define 		FC_Ki 					8.0e-3f									//
#define 		FC_Limits 				1.5f

#define			HC_Kp 					1.0e-3f									// Harmonic component PI parameters
#define 		HC_Ki 					2.0e-3f
#define 		HC_Limits 				1.5f
//##############################################
#define 		SINE_STEPS           	256                         			// Number of steps to build our sine wave in
#define 		DUTY_LIMIT 				1000 									// Our duty width can vary from 0-1024 however we don't want 100% modulation to avoid MOSFET drive bootstrap voltage drop

#define 		I_OFFSET 				-4155 									// These are calibration constants for our hardware
#define 		V_OFFSET 				725
#define 		V_DIVIDER_K 			1.475e-1f
#define 		I_DIVIDER_K 			1.563e-3f
#define 		F_CONVERSION_K 			3.817e-3f

#define 		RMS_LOWER_LIMIT 		100.0f 									// These values are for the grid checks. We disconnect if our metrics are out of these ranges (SI Units)
#define 		RMS_UPPER_LIMIT 		130.0f
#define 		FREQ_DEVIATION_LIMIT 	1.0f
#define			V_BUS_MINIMUM			200.0f
#define 		V_BUS_MAXIMUM 			320.0f
#define 		I_OUTPUT_MAXIMUM 		4.0f

#define 		ENABLE_JOINING_GRID 	true
#define 		GRID_ACCEPTABLE 		1000
#define 		GRID_UNACCEPTABLE 		-1000
#define 		GRID_BAD_FAIL_RATE 		10 										// Some grid checks are allowed to fail for a certain amount of time (eg. Frequency) this parameter determines for how long
#define 		GRID_OK					0


#define 		CONSTRAIN(x,lower,upper) ((x)<(lower)?(lower):((x)>(upper)?(upper):(x)))
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
float Sin_LookupF[256] =
{
	0.00,6.28,12.56,18.83,25.09,31.34,37.56,43.77,49.94,56.09,62.20,68.28,74.31,80.30,86.24,92.13,
	97.97,103.74,109.45,115.10,120.68,126.18,131.61,136.96,142.23,147.41,152.50,157.50,162.40,167.21,171.92,176.52,
	181.02,185.41,189.68,193.85,197.89,201.82,205.62,209.30,212.86,216.28,219.58,222.74,225.77,228.67,231.42,234.04,
	236.51,238.85,241.04,243.08,244.98,246.73,248.33,249.78,251.08,252.23,253.23,254.07,254.77,255.31,255.69,255.92,

	256.00,255.92,255.69,255.31,254.77,254.07,253.23,252.23,251.08,249.78,248.33,246.73,244.98,243.08,241.04,238.85,
	236.51,234.04,231.42,228.67,225.77,222.74,219.58,216.28,212.86,209.30,205.62,201.82,197.89,193.85,189.68,185.41,
	181.02,176.52,171.92,167.21,162.40,157.50,152.50,147.41,142.23,136.96,131.61,126.18,120.68,115.10,109.45,103.74,
	97.97,92.13,86.24,80.30,74.31,68.28,62.20,56.09,49.94,43.77,37.56,31.34,25.09,18.83,12.56,6.28,

	0.00,-6.28,-12.56,-18.83,-25.09,-31.34,-37.56,-43.77,-49.94,-56.09,-62.20,-68.28,-74.31,-80.30,-86.24,-92.13,
	-97.97,-103.74,-109.45,-115.10,-120.68,-126.18,-131.61,-136.96,-142.23,-147.41,-152.50,-157.50,-162.40,-167.21,-171.92,-176.52,
	-181.02,-185.41,-189.68,-193.85,-197.89,-201.82,-205.62,-209.30,-212.86,-216.28,-219.58,-222.74,-225.77,-228.67,-231.42,-234.04,
	-236.51,-238.85,-241.04,-243.08,-244.98,-246.73,-248.33,-249.78,-251.08,-252.23,-253.23,-254.07,-254.77,-255.31,-255.69,-255.92,

	-256.00,-255.92,-255.69,-255.31,-254.77,-254.07,-253.23,-252.23,-251.08,-249.78,-248.33,-246.73,-244.98,-243.08,-241.04,-238.85,
	-236.51,-234.04,-231.42,-228.67,-225.77,-222.74,-219.58,-216.28,-212.86,-209.30,-205.62,-201.82,-197.89,-193.85,-189.68,-185.41,
	-181.02,-176.52,-171.92,-167.21,-162.40,-157.50,-152.50,-147.41,-142.23,-136.96,-131.61,-126.18,-120.68,-115.10,-109.45,-103.74,
	-97.97,-92.13,-86.24,-80.30,-74.31,-68.28,-62.20,-56.09,-49.94,-43.77,-37.56,-31.34,-25.09,-18.83,-12.56,-6.28
};

float Cos_LookupF[256] =
{
	256.00,255.92,255.69,255.31,254.77,254.07,253.23,252.23,251.08,249.78,248.33,246.73,244.98,243.08,241.04,238.85,
	236.51,234.04,231.42,228.67,225.77,222.74,219.58,216.28,212.86,209.30,205.62,201.82,197.89,193.85,189.68,185.41,
	181.02,176.52,171.92,167.21,162.40,157.50,152.50,147.41,142.23,136.96,131.61,126.18,120.68,115.10,109.45,103.74,
	97.97,92.13,86.24,80.30,74.31,68.28,62.20,56.09,49.94,43.77,37.56,31.34,25.09,18.83,12.56,6.28,

	0.00,-6.28,-12.56,-18.83,-25.09,-31.34,-37.56,-43.77,-49.94,-56.09,-62.20,-68.28,-74.31,-80.30,-86.24,-92.13,
	-97.97,-103.74,-109.45,-115.10,-120.68,-126.18,-131.61,-136.96,-142.23,-147.41,-152.50,-157.50,-162.40,-167.21,-171.92,-176.52,
	-181.02,-185.41,-189.68,-193.85,-197.89,-201.82,-205.62,-209.30,-212.86,-216.28,-219.58,-222.74,-225.77,-228.67,-231.42,-234.04,
	-236.51,-238.85,-241.04,-243.08,-244.98,-246.73,-248.33,-249.78,-251.08,-252.23,-253.23,-254.07,-254.77,-255.31,-255.69,-255.92,

	-256.00,-255.92,-255.69,-255.31,-254.77,-254.07,-253.23,-252.23,-251.08,-249.78,-248.33,-246.73,-244.98,-243.08,-241.04,-238.85,
	-236.51,-234.04,-231.42,-228.67,-225.77,-222.74,-219.58,-216.28,-212.86,-209.30,-205.62,-201.82,-197.89,-193.85,-189.68,-185.41,
	-181.02,-176.52,-171.92,-167.21,-162.40,-157.50,-152.50,-147.41,-142.23,-136.96,-131.61,-126.18,-120.68,-115.10,-109.45,-103.74,
	-97.97,-92.13,-86.24,-80.30,-74.31,-68.28,-62.20,-56.09,-49.94,-43.77,-37.56,-31.34,-25.09,-18.83,-12.56,-6.28,

	0.00,6.28,12.56,18.83,25.09,31.34,37.56,43.77,49.94,56.09,62.20,68.28,74.31,80.30,86.24,92.13,
	97.97,103.74,109.45,115.10,120.68,126.18,131.61,136.96,142.23,147.41,152.50,157.50,162.40,167.21,171.92,176.52,
	181.02,185.41,189.68,193.85,197.89,201.82,205.62,209.30,212.86,216.28,219.58,222.74,225.77,228.67,231.42,234.04,
	236.51,238.85,241.04,243.08,244.98,246.73,248.33,249.78,251.08,252.23,253.23,254.07,254.77,255.31,255.69,255.92
};

// structures
PIDControl 			PLL_PID; 													// These structures are used to store the respective PID variables
PIDControl 			Sin_50_PID, Cos_50_PID;
PIDControl 			Sin_150_PID, Cos_150_PID;
PIDControl 			Sin_250_PID, Cos_250_PID;
PIDControl 			Sin_350_PID, Cos_350_PID;

struct 				IIR_Filter_Struct V_Phase_Filter, I_Phase_Filter, V_Bus_Filter;

// DMA buffers and flags
volatile uint16_t 	V_Bus_Raw[1]; 												// ADC3 writes here via the DMA
volatile int32_t 	IV_Output_Raw[2]; 											// The DMA writes our synchronously sampled ADC1 & ADC2 samples here (I_Phase A&B and V_Phase A&B alternately)
volatile uint8_t 	HB_Enabled_Flag, UART_Ready_Flag;

// Voltage and Current values
volatile int16_t 	V_Phase_A, V_Phase_B, I_Phase_A, I_Phase_B;
volatile int16_t 	V_Phase_Unfiltered, I_Phase_Unfiltered, V_Bus_Unfiltered;
volatile float 		V_Phase, I_Phase, V_Bus, Mains_RMS_SI, Freq_Offset_SI; 		// These are our filtered SI unit values

volatile uint8_t 	_50_Index = 0;
volatile uint8_t 	_150_Index = 0;
volatile uint8_t 	_250_Index = 0;
volatile uint8_t 	_350_Index = 0;

volatile int16_t 	Grid_Good_Bad_Cnt = GRID_UNACCEPTABLE;
volatile uint8_t 	REQUEST_JOIN = false, Error_Code;
volatile float 		Joining_Amplitude;

char 				UART_Tx_Buffer[48];

volatile float32_t 	Period_Samples[64];
volatile uint8_t 	Period_Index, Calc_FFT_Flag, Phase_Shift;
volatile uint32_t 	Calc_FFT_Counter;

float32_t 			FFT_Input[64];
float32_t 			FFT_Complex_Output[64];



/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);
void Initialisations(void);
void HB_Disable(void);
void HB_Enable(void);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initialises the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_TIM1_Init();
  MX_TIM9_Init();
  MX_TIM10_Init();
  MX_TIM11_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_TIM3_Init();
  MX_ADC3_Init();
  MX_TIM2_Init();
  MX_USART2_UART_Init();
  MX_DAC_Init();
  MX_TIM12_Init();
  /* USER CODE BEGIN 2 */

  Initialisations();
  arm_rfft_fast_instance_f32 S;

  uint16_t i;

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	if(Calc_FFT_Flag == 1)
	{
		Calc_FFT_Flag = 0;

		// 1) Calculate the FFT of our output current waveform
		for(i = 0; i < 64; i++) {
			FFT_Input[i] = Period_Samples[i];
		}

		arm_rfft_fast_init_f32(&S, 64);
		arm_rfft_fast_f32(&S, FFT_Input, FFT_Complex_Output, 0);

		// 2) Extract the Sine/Cosine components from the 1,3,5,7th harmonics
		Sin_50_PID.input = FFT_Complex_Output[2];
		Cos_50_PID.input = FFT_Complex_Output[3];

		Sin_150_PID.input = FFT_Complex_Output[6];
		Cos_150_PID.input = FFT_Complex_Output[7];

		Sin_250_PID.input = FFT_Complex_Output[10];
		Cos_250_PID.input = FFT_Complex_Output[11];

		Sin_350_PID.input = FFT_Complex_Output[14];
		Cos_350_PID.input = FFT_Complex_Output[15];

		// 3) For each harmonic run a PI controller to compensate for the harmonics and eradicate them
		PIDCompute(&Sin_50_PID);
		PIDCompute(&Cos_50_PID);

		PIDCompute(&Sin_150_PID);
		PIDCompute(&Cos_150_PID);

		PIDCompute(&Sin_250_PID);
		PIDCompute(&Cos_250_PID);

		PIDCompute(&Sin_350_PID);
		PIDCompute(&Cos_350_PID);
	}

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */
void Initialisations() {
	// 1) Start the ADC engines - These continuously replenish circular buffers with fresh ADC readings
	HAL_ADC_Start(&hadc2);
	HAL_ADCEx_MultiModeStart_DMA(&hadc1, (uint32_t*)IV_Output_Raw, 2);
	HAL_ADC_Start_DMA(&hadc3, (uint32_t*)V_Bus_Raw, 1);

	// 2) Configure our PID parameters
	PIDInit(&PLL_PID, PLL_Kp, PLL_Ki, PLL_Kd, PLL_PERIOD, -PLL_LIMIT, PLL_LIMIT, AUTOMATIC, DIRECT, P_ON_M);

	PIDInit(&Sin_50_PID, FC_Kp, FC_Ki, 0.0f, 0.02f, -FC_Limits, FC_Limits, AUTOMATIC, DIRECT, P_ON_E);
	PIDInit(&Cos_50_PID, FC_Kp, FC_Ki, 0.0f, 0.02f, -FC_Limits, FC_Limits, AUTOMATIC, DIRECT, P_ON_E);

	PIDInit(&Sin_150_PID, HC_Kp, HC_Ki, 0.0f, 0.02f, -HC_Limits, HC_Limits, AUTOMATIC, DIRECT, P_ON_E);
	PIDInit(&Cos_150_PID, HC_Kp, HC_Ki, 0.0f, 0.02f, -HC_Limits, HC_Limits, AUTOMATIC, DIRECT, P_ON_E);

	PIDInit(&Sin_250_PID, HC_Kp, HC_Ki, 0.0f, 0.02f, -HC_Limits, HC_Limits, AUTOMATIC, DIRECT, P_ON_E);
	PIDInit(&Cos_250_PID, HC_Kp, HC_Ki, 0.0f, 0.02f, -HC_Limits, HC_Limits, AUTOMATIC, DIRECT, P_ON_E);

	PIDInit(&Sin_350_PID, HC_Kp, HC_Ki, 0.0f, 0.02f, -HC_Limits, HC_Limits, AUTOMATIC, DIRECT, P_ON_E);
	PIDInit(&Cos_350_PID, HC_Kp, HC_Ki, 0.0f, 0.02f, -HC_Limits, HC_Limits, AUTOMATIC, DIRECT, P_ON_E);

	// 3) Start our timers
	HAL_DAC_Start(&hdac, DAC_CHANNEL_1);
	HAL_TIM_Base_Start_IT(&htim2);
	HAL_TIM_Base_Start_IT(&htim3);
	HAL_TIM_Base_Start_IT(&htim9);
	HAL_TIM_Base_Start_IT(&htim10);
	HAL_TIM_Base_Start_IT(&htim11);
	HAL_TIM_Base_Start_IT(&htim12);

	// Initialise our filter coefficients
	V_Phase_Filter.alpha = 0.6f;
	I_Phase_Filter.alpha = 0.6f;
	V_Bus_Filter.alpha = 0.05f;

	sprintf(UART_Tx_Buffer, "%i\r", 0);
	HAL_UART_Transmit_DMA(&huart2, (uint8_t*)UART_Tx_Buffer, strlen(UART_Tx_Buffer));
	HAL_GPIO_WritePin(LED1_GPIO_Port, LED1_Pin, GPIO_PIN_SET);
}

void HB_Disable() {
	// Disable the H-Bridge
	HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_1);
	HAL_TIMEx_PWMN_Stop(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Stop(&htim1, TIM_CHANNEL_2);
	HAL_TIMEx_PWMN_Stop(&htim1, TIM_CHANNEL_2);

	HB_Enabled_Flag = false;
}

void HB_Enable() {
	// Start our PWM driver which uses Timer1 to power our H-bridge. Both channels start with Duty = 0
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_1);
	HAL_TIMEx_PWMN_Start(&htim1, TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim1, TIM_CHANNEL_2);
	HAL_TIMEx_PWMN_Start(&htim1, TIM_CHANNEL_2);

	HB_Enabled_Flag = true;
}

void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart) {
	UART_Ready_Flag = 1;
}

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc) {
	// This callback extracts ADC data each time fresh values come in
	if(hadc == &hadc3)
	{
		V_Bus_Unfiltered = V_Bus_Raw[0];
		V_Bus = DSP_Filter(&V_Bus_Filter, (float)V_Bus_Unfiltered) * V_DIVIDER_K;
	}
	else
	{
		V_Phase_A = IV_Output_Raw[0] & 0xFFFF;
		V_Phase_B = IV_Output_Raw[0] >> 16;
		V_Phase_Unfiltered = V_Phase_A - V_Phase_B + V_OFFSET;

		I_Phase_A = IV_Output_Raw[1] & 0xFFFF;
		I_Phase_B = IV_Output_Raw[1] >> 16;
		I_Phase_Unfiltered = -(I_Phase_A + I_Phase_B + I_OFFSET);

		V_Phase = DSP_Filter(&V_Phase_Filter, (float)V_Phase_Unfiltered) * V_DIVIDER_K;
		I_Phase = DSP_Filter(&I_Phase_Filter, (float)I_Phase_Unfiltered) * I_DIVIDER_K;
	}
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	if (htim == &htim9)
	{
		// -----------------------------------------------------------------------------------------------------------------------------------
		// #################### Runs every 1ms to perform our grid/DC Bus checks etc for our anti-islanding ##################################
		// -----------------------------------------------------------------------------------------------------------------------------------

		// Calculate some grid metrics for some following checks
		Mains_RMS_SI = Integrate_Mains_RMS(V_Phase_Unfiltered) * V_DIVIDER_K; 			// Update our mains RMS measurement
		Freq_Offset_SI = PLL_PID.output * F_CONVERSION_K; 								// Get the frequency difference between the grid and a 50Hz reference

		// These are high priority checks:
		if(V_Bus > V_BUS_MAXIMUM)	{													// If our DC Bus voltage is too high cut-out immediately
			Grid_Good_Bad_Cnt = GRID_UNACCEPTABLE;
			Error_Code |= 0b00001;
		}

		if(I_Phase > I_OUTPUT_MAXIMUM || I_Phase < -I_OUTPUT_MAXIMUM)	{				// Likewise, if we detect excess current flowing, cut-out immediately
			Grid_Good_Bad_Cnt = GRID_UNACCEPTABLE;
			Error_Code |= 0b00010;
		}

		// These are lower priority checks and have to be out of range for an amount of time
		if(Mains_RMS_SI > RMS_UPPER_LIMIT || Mains_RMS_SI < RMS_LOWER_LIMIT)	{		// If mains RMS voltage whacky
			Grid_Good_Bad_Cnt -= GRID_BAD_FAIL_RATE;
			Error_Code |= 0b00100;
		}

		if(Freq_Offset_SI > FREQ_DEVIATION_LIMIT || Freq_Offset_SI < -FREQ_DEVIATION_LIMIT)	{
			Grid_Good_Bad_Cnt -= GRID_BAD_FAIL_RATE;									// If our mains frequency is out of tolerance
			Error_Code |= 0b01000;
		}

		if(V_Bus < V_BUS_MINIMUM)	{													// If our DC Bus voltage is too low
			Grid_Good_Bad_Cnt -= GRID_BAD_FAIL_RATE;
			Error_Code |= 0b10000;
		}

		// Act on the above checks
		if(Grid_Good_Bad_Cnt < GRID_OK && HB_Enabled_Flag) { 							// If our metrics have been whacky for too long stop output
			HB_Disable(); 																// This puts the H-bridge into a high impedance state
			Grid_Good_Bad_Cnt = GRID_UNACCEPTABLE;
		}

		if(HB_Enabled_Flag == false) { 													// With our output idle, if the grid has normalised, restart
			if(Grid_Good_Bad_Cnt == GRID_ACCEPTABLE && ENABLE_JOINING_GRID) {
				REQUEST_JOIN = true;
			}
		}

		// Constrain and decay any error counts
		Grid_Good_Bad_Cnt++;
		Grid_Good_Bad_Cnt = CONSTRAIN(Grid_Good_Bad_Cnt, GRID_UNACCEPTABLE, GRID_ACCEPTABLE);
	}

	if (htim == &htim10)
	{
		// -----------------------------------------------------------------------------------------------------------------------------------
		// ######### Runs every 100us to measure the instantaneous current output and adjust our PWM duty to reach setpoint current ###########
		// -----------------------------------------------------------------------------------------------------------------------------------
		static int16_t Duty_Cycle;

		// If we currently have disabled H-Bridges and are ready to join with the grid
		if(REQUEST_JOIN == true && _50_Index == 0) {
			Joining_Amplitude = (Mains_RMS_SI / V_Bus) * -6.7;

			REQUEST_JOIN = false;

			Cos_50_PID.setpoint = 0;													// We start we no requested output current

			Sin_50_PID.iTerm = 0;  Sin_50_PID.output = 0;
			Cos_50_PID.iTerm = 0;  Cos_50_PID.output = 0;
			Sin_150_PID.iTerm = 0; Sin_150_PID.output = 0;
			Cos_150_PID.iTerm = 0; Cos_150_PID.output = 0;
			Sin_250_PID.iTerm = 0; Sin_250_PID.output = 0;
			Cos_250_PID.iTerm = 0; Cos_250_PID.output = 0;
			Sin_350_PID.iTerm = 0; Sin_350_PID.output = 0;
			Cos_350_PID.iTerm = 0; Cos_350_PID.output = 0;

			HB_Enable();
		}

		float32_t _50_HC  = (Sin_50_PID.output * Sin_LookupF[_50_Index])   + (Cos_50_PID.output * Cos_LookupF[_50_Index]);
		float32_t _150_HC = (Sin_150_PID.output * Sin_LookupF[_150_Index]) + (Cos_150_PID.output * Cos_LookupF[_150_Index]);
		float32_t _250_HC = (Sin_250_PID.output * Sin_LookupF[_250_Index]) + (Cos_250_PID.output * Cos_LookupF[_250_Index]);
		float32_t _350_HC = (Sin_350_PID.output * Sin_LookupF[_350_Index]) + (Cos_350_PID.output * Cos_LookupF[_350_Index]);

		Duty_Cycle = (int16_t)(Sin_LookupF[_50_Index] * Joining_Amplitude) - (int16_t)_50_HC - (int16_t)_150_HC - (int16_t)_250_HC - (int16_t)_350_HC;

		// Constrain and output the new duty cycle
		Duty_Cycle = CONSTRAIN(Duty_Cycle, -DUTY_LIMIT, DUTY_LIMIT);

		if(Duty_Cycle >= 0) {
			htim1.Instance->CCR1 = Duty_Cycle;
			htim1.Instance->CCR2 = 0;
		}
		else {
			htim1.Instance->CCR1 = 0;
			htim1.Instance->CCR2 = -Duty_Cycle;
		}

		// Output to DAC for debugging
		//uint32_t DAC_Data = 2048 + (int32_t)(Duty_Cycle);
		uint32_t DAC_Data = 2048 + (int32_t)(Period_Samples[Period_Index]*500.0f);		// For debugging stuff

		HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, DAC_Data);
	}

	if (htim == &htim11)
	{
		// -----------------------------------------------------------------------------------------------------------------------------------
		// ################### Keeps our local oscillator synchronised to the grid by implementing a PLL with PI controller ##################
		// -----------------------------------------------------------------------------------------------------------------------------------
		int32_t Signal_Multiple = (int32_t)Cos_LookupF[_50_Index] * V_Phase_Unfiltered; // Multiply the LO Cosine value with our current phase voltage sample
		PLL_PID.input = Integral(Signal_Multiple / (int32_t)Mains_RMS_SI);   			// Integrate this Multiple over the last 1 period normalised to RMS

		PIDCompute(&PLL_PID); 															// Plug result in a PI controller to maintain 0 phase shift
		TIM11->ARR = SINE_STEP_PERIOD - (int32_t)PLL_PID.output; 						// adjust LO frequency (step period) to synchronise to mains phase

		_50_Index += 1; _150_Index += 3; _250_Index += 5; _350_Index += 7; 				// Increment our LO indices, since they're 8bits wide they will roll-over if they exceed 255

		if(_50_Index % 4 == 0) { 														// Here we store a filtered average of current waveform over 1 period
			Period_Index = _50_Index/4;
			Period_Samples[Period_Index] = I_Phase; 									//Period_Samples[Period_Index] - (0.05f * (Period_Samples[Period_Index] - I_Phase));

			if(_50_Index == 0) {
				Calc_FFT_Flag = 1;
			}
		}
	}

	if (htim == &htim12)
	{
		// -----------------------------------------------------------------------------------------------------------------------------------
		// ################### Runs every 30ms  #############################################################################################
		// -----------------------------------------------------------------------------------------------------------------------------------
		if(UART_Ready_Flag) {
			UART_Ready_Flag = 0;
			//sprintf(UART_Tx_Buffer, "%f, %f\n", FFT_Complex_Output[2], FFT_Complex_Output[3]);
			sprintf(UART_Tx_Buffer, "%f, %f, %f, %i\n", Mains_RMS_SI, V_Bus, Joining_Amplitude, Error_Code);
			HAL_UART_Transmit_DMA(&huart2, (uint8_t*)UART_Tx_Buffer, strlen(UART_Tx_Buffer));

			Error_Code = 0;
		}

		// Ramp up our output current gradually
		Cos_50_PID.setpoint += 0.2f;
		if(Cos_50_PID.setpoint >= 70.0f)
			Cos_50_PID.setpoint = 70.0f;
	}
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
