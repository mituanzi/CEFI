/**
  ******************************************************************************
  * @file    Secure/Src/secure_nsc.c
  * @author  MCD Application Team
  * @brief   This file contains the non-secure callable APIs (secure world)
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE BEGIN Non_Secure_CallLib */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "secure_nsc.h"

/** @addtogroup STM32L5xx_HAL_Examples
  * @{
  */

/** @addtogroup Templates
  * @{
  */

/* Global variables ----------------------------------------------------------*/
void *pSecureFaultCallback = NULL;   /* Pointer to secure fault callback in Non-secure */
void *pSecureErrorCallback = NULL;   /* Pointer to secure error callback in Non-secure */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Secure registration of non-secure callback.
  * @param  CallbackId  callback identifier
  * @param  func        pointer to non-secure function
  * @retval None
  */
CMSE_NS_ENTRY void SECURE_RegisterCallback(SECURE_CallbackIDTypeDef CallbackId, void *func)
{
  if(func != NULL)
  {
    switch(CallbackId)
    {
      case SECURE_FAULT_CB_ID:           /* SecureFault Interrupt occurred */
        pSecureFaultCallback = func;
        break;
      case GTZC_ERROR_CB_ID:             /* GTZC Interrupt occurred */
        pSecureErrorCallback = func;
        break;
      default:
        /* unknown */
        break;
    }
  }
}

#define CFI_LOG_ENABLE 1

CMSE_NS_ENTRY void trust_interface(int src, int dst)
{
	unsigned int *cfi_trigger_count = 0x200181F8; // 0x2001AFF4; // no-instrument, cfi-label
	unsigned char *bitmap=0x20018200;//200180E0; // no-instrument, cfi-label

	*cfi_trigger_count += 1;


	if (dst %2){ // backward indirect branch; else forward
		dst -= 1;
		src += 4;
	}else{
		src += 8;
	}

	int t_src=src;
	int t_dst=dst;

	src = src % 0x8040000;
	dst = dst % 0x8040000;
	int cantor_res = ((src+dst)*(src+dst+1)/2+dst) % 8000;


//	 int byte_idx = cantor_res / 8;
//	int bit_idx = cantor_res % 8;
//	bitmap[byte_idx] |= (1<<bit_idx);
    if(cantor_res == 508){
    	HAL_Delay(10000000);
    }
	if (bitmap[cantor_res]==2){// DFI log
		bitmap[cantor_res] = 3;
	}else if (bitmap[cantor_res]==0){
		bitmap[cantor_res] = 1;
	}

#ifdef CFI_LOG_ENABLE

	 int *count_addr = &bitmap[8000];
		int *array = &bitmap[8004];
		int i = 0;
		for (;i<2000;i+=3) // 2000 bytes memory
		{
			if(array[i]!=0) // src
			{
				if (array[i]==src && array[i+1]==dst){
					array[i+2] = cantor_res; // hit_count
					break;
				}
			}else{
				array[i] = src;
				array[i+1]= dst;
				array[i+2] = cantor_res;
				*count_addr += 1;

				break;
			}

		}
#endif



}

/**
  * @}
  */

/**
  * @}
  */
/* USER CODE END Non_Secure_CallLib */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
