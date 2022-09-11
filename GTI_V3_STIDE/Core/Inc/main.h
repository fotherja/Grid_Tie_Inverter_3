/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */


/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define Phase_B_V_Sense_Pin GPIO_PIN_0
#define Phase_B_V_Sense_GPIO_Port GPIOC
#define Phase_B_I_Sense_Pin GPIO_PIN_1
#define Phase_B_I_Sense_GPIO_Port GPIOC
#define Phase_A_V_Sense_Pin GPIO_PIN_2
#define Phase_A_V_Sense_GPIO_Port GPIOC
#define Phase_A_I_Sense_Pin GPIO_PIN_3
#define Phase_A_I_Sense_GPIO_Port GPIOC
#define DC_Bus_V_Sense_Pin GPIO_PIN_1
#define DC_Bus_V_Sense_GPIO_Port GPIOA
#define Ph_AN_PWM_Pin GPIO_PIN_7
#define Ph_AN_PWM_GPIO_Port GPIOA
#define Ph_BN_PWM_Pin GPIO_PIN_0
#define Ph_BN_PWM_GPIO_Port GPIOB
#define Ph_A_PWM_Pin GPIO_PIN_9
#define Ph_A_PWM_GPIO_Port GPIOE
#define Ph_B_PWM_Pin GPIO_PIN_11
#define Ph_B_PWM_GPIO_Port GPIOE
#define LED1_Pin GPIO_PIN_13
#define LED1_GPIO_Port GPIOD
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
