/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32l5xx_it.c
  * @brief   Interrupt Service Routines.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32l5xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern UART_HandleTypeDef huart3;
/* USER CODE BEGIN EV */

/* USER CODE END EV */

#define DFI_LOG_ENABLE 1

/******************************************************************************/
/*           Cortex Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */

  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
  * @brief This function handles Prefetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Secure fault.
  */
void SecureFault_Handler(void)
{
  /* USER CODE BEGIN SecureFault_IRQn 0 */

  /* USER CODE END SecureFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_SecureFault_IRQn 0 */
    /* USER CODE END W1_SecureFault_IRQn 0 */
  }
}

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
  * @brief This function handles Debug monitor.
  */
//uint32_t *dfi_trigger_count = 0x2001ABF4; // no-instrument, cfi-label
//unsigned char *bitmap=0x200180E0; // no-instrument, cfi-label
//uint32_t *senmem = 0x2001AC00; // no-instrument, cfi-label

// pinlock mbedtls_sha256
uint32_t *dfi_trigger_count = 0x200181FC; // no-instrument, cfi-label
unsigned char *bitmap=0x20018200; // no-instrument, cfi-label
uint32_t *senmem = 0x2001A910; // no-instrument, cfi-label
uint32_t *global_ebp = 0x2001AD14;//0x2001AFF8;
uint32_t *global_esp = 0x2001AD18;//0x2001AFFC;
uint32_t monitored_base = 0x2001A914;//0x2001A7F0;
uint32_t split_memory_size = 500;

//
//uint32_t *dfi_trigger_count = 0x2001AFF0; // no-instrument, cfi-label
//unsigned char *bitmap=0x200180E0; // no-instrument, cfi-label
//uint32_t *senmem = 0x2001B000; // no-instrument, cfi-label

void my_debug_handler(uint32_t* sp){
    return ;
	*dfi_trigger_count += 1;
    uint32_t memory_addr = *senmem;
    uint32_t ret_addr = *(sp+6);
    uint32_t src, dst, func_ptr=0xbadbaaad;
    int accumlated_offset = 0;
    int offset = 0; // for stack and global offset
    int metadata_operation = 0;
    // memory type
    if (memory_addr == *global_esp){ // store old_ebp, esp
    	func_ptr = 0xaaaaaaaa; // for indicates store old_ebp, esp
    	accumlated_offset = 10; //
    	metadata_operation = 1;
     }
    else if(memory_addr == *global_ebp+4){
    	func_ptr = 0xbbbbbbbb; // for indicating store func_ptr to esp+4
    	accumlated_offset = 10; //
    	metadata_operation = 1;

    }
    else if(memory_addr == *global_ebp+8){
    	func_ptr = 0xcccccccc; // for indicating store 0xdeadbeef to esp+8
    	accumlated_offset = 10; //
    	metadata_operation = 1;
    }
    else if (memory_addr!=0xdeadbeef){
    	offset = memory_addr-monitored_base;

    	if (offset<split_memory_size){ // global variables
    		func_ptr = monitored_base;
    		accumlated_offset = memory_addr - monitored_base;
    		accumlated_offset = accumlated_offset/4;


    	}else{ // there is no heap variables, so it is the stack
    		if (offset%4){ // for alignment with 4,
    			offset -= offset %4;
    			accumlated_offset += 1; // 1 for 4
    		}

    		for(; offset>split_memory_size; offset-=4){
    			if (*(int *)(monitored_base + offset) == 0xdeadbeef){ // find_the_tag
    				func_ptr = *(int *)(monitored_base+offset-4); // stack_base
    				break;
    			}
    			accumlated_offset += 1; // real_offset
    		}

    	}
    }
    else{ // 0xdeadbeef

    	func_ptr = 0xdeadbeef;
    	accumlated_offset = 1000;
    }

#ifdef DFI_LOG_ENABLE

    if (metadata_operation != 1)
    	{
    		src = (ret_addr & 0xfffffff0) % 0x8040000 ;
    		dst = (func_ptr+accumlated_offset) % 0x8040000;


    		int cantor_res = ((src+dst)*(src+dst+1)/2+dst) % 8000;

    		// bitmap => byte
    		// bit
    	//    int byte_idx = cantor_res / 8;
    	//    int bit_idx = cantor_res % 8;
    	//    bitmap[byte_idx] |= (1<<bit_idx);


    		if (bitmap[cantor_res] == 1){ // 1 represent for CFI log
    		  bitmap[cantor_res] = 3; // collision
    		}else if (bitmap[cantor_res]== 0){
    		  bitmap[cantor_res] = 2; // 2 for DFI trigger
    		}


    int *count_addr = &bitmap[8000];
	int *array = &bitmap[8004];
	int i = 0;
	for (;i<2000;i+=3) // 2000 bytes memory
	{
		if(array[i]!=0) // src
		{
			if (array[i]==ret_addr && array[i+1]==(func_ptr+accumlated_offset)){
				array[i+2] = cantor_res; // hit_count
				break;
			}
		}else{
			array[i] = ret_addr;
			array[i+1]= (func_ptr+accumlated_offset);
			array[i+2] = cantor_res;
			*count_addr += 1;

			break;
		}

	}

    	  }

#endif



	*senmem = 0xdeadbeef;




//	for (;i<2000;i+=3) // 2000 bytes memory
//	    		{
//	    			if(array[i]!=0) // src
//	    			{
//	    				if (array[i]==ret_addr && array[i+1]==memory_addr){
//	    					array[i+2] = bitmap[cantor_res]; // hit_count
//	    					break;
//	    				}
//	    			}else{
//	    				array[i] = ret_addr;
//	    				array[i+1]=memory_addr;
//	    				array[i+2] = bitmap[cantor_res];
//	    				*count_addr += 1;
//
//	    				break;
//	    			}
//
//	    		}

}

/**
  * @brief This function handles Debug monitor.
  */
__attribute__((naked))  void DebugMon_Handler(void ) {

		__asm volatile(
				  "tst lr, #4 \n"
				  "ite eq   \n"
				  "mrseq r0, msp_ns \n"
				  "mrsne r0, psp_ns \n"
				  "b  my_debug_handler\n"
		);

}

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32L5xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32l5xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles USART3 global interrupt / USART3 wake-up interrupt through EXTI line 28.
  */
void USART3_IRQHandler(void)
{
  /* USER CODE BEGIN USART3_IRQn 0 */

  /* USER CODE END USART3_IRQn 0 */
  HAL_UART_IRQHandler(&huart3);
  /* USER CODE BEGIN USART3_IRQn 1 */

  /* USER CODE END USART3_IRQn 1 */
}

/* USER CODE BEGIN 1 */

/* USER CODE END 1 */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
