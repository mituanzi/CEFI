/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
//#include "mbedtls.h"
//#include "config.h"
#include "stdio.h"
#include "string.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
unsigned char msg[20];
unsigned char OutBuf[50];
char enterPin[16];
char setPin[16];
int led = 0;
int lock_pin;
//uint8_t reply[10];
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

// UART_HandleTypeDef __attribute__((annotate("sensitive"))) huart1;
UART_HandleTypeDef  huart1;
__IO ITStatus UartReady = HAL_UART_STATE_RESET;//RESET;


/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
//static void Program_Init(void);
static void print(unsigned char*,int len);
/* USER CODE BEGIN PFP */


//void rx_from_uart(uint32_t size){
//
//    if (size > PINRXBUFFSIZE){
//        Error_Handler();
//    }
//
//    if(HAL_UART_Receive_IT(&huart1, (uint8_t *)reply, size) != HAL_OK) {
//       Error_Handler();
//    }
//
//    while(HAL_UART_GetState(&huart1) != HAL_UART_STATE_READY)
//    {
//    }
//
//}

static void print(unsigned char* str, int len) {

  if (HAL_UART_Transmit_IT(&huart1, (uint8_t *) str, len) != HAL_OK) {
    Error_Handler();
  }

  while(HAL_UART_GetState(&huart1) != HAL_UART_STATE_READY)
  {
  }
  // Reset transmission flag
  UartReady = HAL_UART_STATE_RESET;

}


/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void rf_write_buf(unsigned char* str) {
	print(str, sizeof(str));
}

void unlock() {
    print("Unlocked!\r\n", sizeof("Unlocked!\r\n"));
    lock_pin = 1;
    HAL_Delay(5);
    lock_pin = 0;
}

char the_pw[] = "UNLOCK";
void read_code() {
//    char buf[16];
    unsigned char yes[] = "yes ";
    unsigned char no[] = "no ";
//    int i = 0;
//    char c;
//    while (1) {
//
//		buf[i] = c;
//		i++;
//		if (c == 0) {
//			break;
//		}
//
//    }

    if (strcmp(enterPin, the_pw)==0) {
        rf_write_buf(yes);
        unlock();
    }
    else {
    	rf_write_buf(no);
        print("Got a bad code!\r\n", sizeof("Got a bad code!\r\n"));

    }
}

void set_code() {
//	char buf[16];
//	int i = 0;
//	char c;
//	char r = 0xdd;
//	while (1) {
//        if (rf.readable()) {
//			c = rf.getc();
//			buf[i] = c;
//			if (c == '\n') {
//				buf[i] = '\0';
//				break;
//			}
//			i++;
//		}
//	}
	strcpy(the_pw, setPin);
	print(the_pw, sizeof(the_pw));
	print("\r\n", sizeof("\r\n"));
}

/* USER CODE END 0 */

void init(){

	/* Reset of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

	/* Initialize all configured peripherals */
	MX_GPIO_Init();
	MX_USART1_UART_Init();
   
 }

// void test_ptr(int *ptr){
//   *ptr += 1;

// }

int main(){

  init();
  main_logic();
  return 0;
}



int main_logic(void)
{
  /* USER CODE BEGIN 1 */
//	uint32_t start, end;
//
//			start = HAL_GetTick();
//			sprintf(OutBuf, "start: %u\r\n", start);
//			print((uint8_t *)OutBuf, sizeof(OutBuf));
//
//		  end = HAL_GetTick();
//		  sprintf(OutBuf, "end: %u\r\n", end);
//		  print((uint8_t *)OutBuf, sizeof(OutBuf));
//
//		  sprintf(OutBuf, "duration: %ld\r\n", (end-start)/200);
//		  print((uint8_t *)OutBuf, sizeof(OutBuf));
  
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/



  /* USER CODE BEGIN Init */

	char cmd;
	unsigned char r[] = "N";
	print("Setting up radio...\r\n", sizeof("Setting up radio...\r\n"));
//	configure_rf();

	print("Ready.\r\n", sizeof("Ready.\r\n"));

    while(1) {

    	for(int i=0; i<10;i++)
    	{
        	cmd = 0xBB;
        	cmd = 0xDD;
        	cmd = 0xFF;

        	if(i<2)
        		strcpy(enterPin, "afbew");
        	else if(i<7)
        		strcpy(enterPin, "psdvjnfejuwhfwo");
        	else
        		strcpy(enterPin, "UNLOCK");

        	if(i<2)
        		strcpy(setPin, "trues");
        	else if(i<7)
        		strcpy(setPin, "piny");
        	else
        		strcpy(setPin, "guess");

    		switch (cmd) {
    			case 0xBB:
    				read_code();
    				break;
    			case 0xDD:
    				strcpy(r, "Y\r\n");
    				print("PING ", sizeof("PING "));
    				rf_write_buf(&r);
    				break;
    			case 0xFF:
    				set_code();
    				break;
    			//default:
    			//    pc.printf("Unknown command %x", cmd);
    		}
    	}


		while(1)
		{

		}
    }





  /* USER CODE END Init */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* USER CODE BEGIN 2 */

  /* USER CODE END 2 */


  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  /* USER CODE END 3 */
}


/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
