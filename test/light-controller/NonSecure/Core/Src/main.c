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
#define _POSIX_C_SOURCE 199309L

#include "main.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
// #include "config.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
unsigned char printstr[50] = {0};
unsigned char OutBuf[50];
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart1;
__IO ITStatus UartReady = HAL_UART_STATE_RESET;
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
void judge_legality(char *endfunc, int id);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

typedef enum SwitchDevices {
    DEVICE_NONE = 0,
    DEVICE_MAKUUHUONE_KIRKAS = 1,
    DEVICE_OLOHUONE_KIRKAS = 2,
    DEVICE_MAKUUHUONE_HIMMEA = 3,
    DEVICE_OLOHUONE_HIMMEA = 4,
    DEVICE_KAIKKI_KIRKAS = 5,
    DEVICE_KAIKKI_HIMMEA = 6,
    DEVICE_KAJARIT = 7
} SwitchDevices;

typedef enum MethodReact {
    REACT_NONE = 0,
    REACT_TURNON = 1 << 0,
    REACT_TURNOFF = 1 << 1
} MethodReact;

typedef struct RoutedDevice {
    SwitchDevices targetDevice;
    MethodReact react;
    const char* switchPrefix;
} RoutedDevice;

typedef struct SwitchPattern {
    SwitchDevices targetDevice;
    MethodReact react;
    const char** switchPrefixes;
} SwitchPattern;

typedef struct SwitchMemoryItem {
    uint64_t timestamp;
    MethodReact method;
    const char* switchPrefix;
} SwitchMemoryItem;

#define REACT_BOTH (REACT_TURNON | REACT_TURNOFF)

static const char SWITCH_MAKUUHUONE_KIRKAS[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:1;";
static const char SWITCH_OLOHUONE_KIRKAS[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:2;";
static const char SWITCH_MAKUUHUONE_HIMMEA[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:3;";
static const char SWITCH_OLOHUONE_HIMMEA[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:4;";

static const char SWITCH_KAJARIT_DUMMY_1[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:5;";
static const char SWITCH_KAJARIT_DUMMY_2[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:6;";
static const char SWITCH_KAJARIT_DUMMY_3[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:7;";
static const char SWITCH_KAJARIT_DUMMY_4[] = "class:command;protocol:arctech;model:codeswitch;house:D;unit:8;";

static const char SWITCH_KAIKKI_KIRKAS[] = "class:command;protocol:arctech;model:selflearning;house:11799578;unit:12;group:0;";
static const char SWITCH_KAIKKI_HIMMEA[] = "class:command;protocol:arctech;model:selflearning;house:11799578;unit:11;group:0;";

const RoutedDevice  DEVICE_ROUTINGS[] = {
     // makuuhuone kirkas
    {DEVICE_NONE, REACT_NONE, SWITCH_MAKUUHUONE_KIRKAS},
     // olohuone kirkas
    {DEVICE_NONE, REACT_NONE, SWITCH_OLOHUONE_KIRKAS},
     // makuuhuone himmeä
    {DEVICE_NONE, REACT_NONE, SWITCH_MAKUUHUONE_HIMMEA},
     // olohuone himmeä
    {DEVICE_NONE, REACT_NONE, SWITCH_OLOHUONE_HIMMEA},
    // kaikki kirkas pois -> kaikki himmeä pois
    {DEVICE_KAIKKI_HIMMEA, REACT_TURNOFF, SWITCH_KAIKKI_KIRKAS},
    // kaikki himmeä pois -> kaikki kirkas pois
    {DEVICE_KAIKKI_KIRKAS, REACT_TURNOFF, SWITCH_KAIKKI_HIMMEA},
    // Kytkin OH01
    {DEVICE_OLOHUONE_KIRKAS, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:19437866;unit:12;group:0;"},
    {DEVICE_OLOHUONE_HIMMEA, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:19437866;unit:11;group:0;"},
    // Kytkin OH02
    {DEVICE_OLOHUONE_KIRKAS, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:19413362;unit:12;group:0;"},
    {DEVICE_OLOHUONE_HIMMEA, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:19413362;unit:11;group:0;"},
    // Kytkin OH03
    {DEVICE_OLOHUONE_KIRKAS, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:21953510;unit:12;group:0;"},
    {DEVICE_OLOHUONE_HIMMEA, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:21953510;unit:11;group:0;"},
    // Kytkin MH01
    {DEVICE_MAKUUHUONE_KIRKAS, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:20256766;unit:12;group:0;"},
    {DEVICE_MAKUUHUONE_HIMMEA, REACT_BOTH, "class:command;protocol:arctech;model:selflearning;house:20256766;unit:11;group:0;"},
    // Kajarit sammuu myös oven vieressä olevasta "kaikki pois"-painikkeista:
    {DEVICE_KAJARIT, REACT_TURNOFF, SWITCH_KAIKKI_KIRKAS},
    {DEVICE_KAJARIT, REACT_TURNOFF, SWITCH_KAIKKI_HIMMEA},
    // Lisäksi kajareille on oma alueensa tyhmillä Rele ja ratas Oy:n
    // kytkimillä (group II):
    {DEVICE_KAJARIT, REACT_BOTH, SWITCH_KAJARIT_DUMMY_1},
    {DEVICE_KAJARIT, REACT_BOTH, SWITCH_KAJARIT_DUMMY_2},
    {DEVICE_KAJARIT, REACT_BOTH, SWITCH_KAJARIT_DUMMY_3},
    {DEVICE_KAJARIT, REACT_BOTH, SWITCH_KAJARIT_DUMMY_4}
};

const size_t DEVICE_COUNT = sizeof(DEVICE_ROUTINGS) / sizeof(DEVICE_ROUTINGS[0]);

const char* PATTERN_KIRKAS_HIMMEA[] = {
    SWITCH_MAKUUHUONE_KIRKAS,
    SWITCH_OLOHUONE_KIRKAS,
    SWITCH_MAKUUHUONE_HIMMEA,
    SWITCH_OLOHUONE_HIMMEA,
    NULL};

const char* PATTERN_HIMMEA_KIRKAS[] = {
    SWITCH_OLOHUONE_HIMMEA,
    SWITCH_MAKUUHUONE_HIMMEA,
    SWITCH_OLOHUONE_KIRKAS,
    SWITCH_MAKUUHUONE_KIRKAS,
    NULL};

const SwitchPattern SWITCH_PATTERNS[] = {
    {DEVICE_KAJARIT, REACT_TURNOFF, PATTERN_KIRKAS_HIMMEA},
    {DEVICE_KAJARIT, REACT_TURNOFF, PATTERN_HIMMEA_KIRKAS},
    {DEVICE_KAIKKI_KIRKAS, REACT_TURNOFF, PATTERN_KIRKAS_HIMMEA},
    {DEVICE_KAIKKI_KIRKAS, REACT_TURNOFF, PATTERN_HIMMEA_KIRKAS},
    {DEVICE_KAIKKI_HIMMEA, REACT_TURNOFF, PATTERN_KIRKAS_HIMMEA},
    {DEVICE_KAIKKI_HIMMEA, REACT_TURNOFF, PATTERN_HIMMEA_KIRKAS}
};

const size_t PATTERN_COUNT = sizeof(SWITCH_PATTERNS) / sizeof(SWITCH_PATTERNS[0]);

static SwitchMemoryItem g_switch_memory[4] = {
    {0, REACT_NONE, NULL},
    {0, REACT_NONE, NULL},
    {0, REACT_NONE, NULL},
    {0, REACT_NONE, NULL}};

const size_t SWITCH_MEMORY_ITEMS = sizeof(g_switch_memory) / sizeof(g_switch_memory[0]);

const uint64_t PATTERN_TIMEOUT_MS = 4000;

const char METHOD_TURNON[] = "method:turnon;";
const char METHOD_TURNOFF[] = "method:turnoff;";

int DWT_Init() {
	CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk /*enable tracing*/ |
							   CoreDebug_DEMCR_MON_EN_Msk; //| /*enable debug interrupt*/

	DWT->CYCCNT = 0;  //reset CYCCNT register
	DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;  //enable CYCCNT counter
}

uint32_t DWT_GetTick() {
	return DWT->CYCCNT;
}

int _gettimeofday( struct timeval *tv, void *tzvp )
{
    uint64_t t = 0;  // get uptime in nanoseconds
    tv->tv_sec = t / 1000000000;  // convert to seconds
    tv->tv_usec = ( t % 1000000000 ) / 1000;  // get remaining microseconds
    return 0;  // return non-zero for error
}

static void print(unsigned char* str, int len) {

  // UartReady = HAL_UART_STATE_RESET;

  if (HAL_UART_Transmit_IT(&huart1, (uint8_t *) str, len) != HAL_OK) {
    Error_Handler();
  }
  //##- Wait for the end of the transfer ###################################
  while(HAL_UART_GetState(&huart1) != HAL_UART_STATE_READY)
  {
  }
  // Reset transmission flag
  UartReady = HAL_UART_STATE_RESET;

}

void judge_legality(char *endfunc, int id)
{
  unsigned char warningstr[50] = {0};
  int ret = trust_interface(endfunc, id);
  
  if(ret!=1)
  {
	  sprintf(warningstr, " This operation is illegal.\r\n");
    print(warningstr, sizeof(warningstr));
    while(1)
    {

    }
  }
//   else
//   {
// 	sprintf(warningstr, " This operation is legal.\r\n");
//     print(warningstr, sizeof(warningstr));
//   }
  return;
}

static void tdTurnOn(size_t pattern_index, int intDeviceId)
{
	sprintf(printstr,"PATTERN %d Turn on %d\r\n", pattern_index, intDeviceId);
	print(printstr, sizeof(printstr));
}

static void tdTurnOff(size_t pattern_index, int intDeviceId)
{
	sprintf(printstr,"PATTERN %d Turn off %d\r\n", pattern_index, intDeviceId);
	print(printstr, sizeof(printstr));
}

void negative_status_response(unsigned char *str, int len)
{
	print(str, len);
}

static void react_to_pattern(uint64_t now)
{
    uint64_t min_timestamp = now - PATTERN_TIMEOUT_MS;

    unsigned char funcstr[50] = {0};
    sprintf(funcstr," %s \r\n", __func__);
    print(funcstr, sizeof(funcstr));

    for (size_t pattern_index = 0; pattern_index < PATTERN_COUNT; pattern_index++) {
        const SwitchPattern* pattern = &SWITCH_PATTERNS[pattern_index];
        bool has_match = true;
        for (size_t switch_memory_index = 0;
             switch_memory_index < SWITCH_MEMORY_ITEMS;
             switch_memory_index++) {
            const SwitchMemoryItem* memory_item = &g_switch_memory[switch_memory_index];
            if (memory_item->timestamp < min_timestamp) {
                has_match = false;
                break;
            }
            if (!(pattern->react & memory_item->method)) {
                has_match = false;
                break;
            }
            if (pattern->switchPrefixes[switch_memory_index] == NULL) {
                break;
            }
            if (pattern->switchPrefixes[switch_memory_index] != memory_item->switchPrefix) {
                has_match = false;
                break;
            }
        }
        if (has_match) {
            if (pattern->react & REACT_TURNON) {

                // sprintf(printstr,"PATTERN %zu Turn on %d\r\n", pattern_index, pattern->targetDevice);
                // print(printstr, sizeof(printstr));
               tdTurnOn(pattern_index, pattern->targetDevice);
            } else if (pattern->react & REACT_TURNOFF) {

                // sprintf(printstr,"PATTERN %zu Turn off %d\r\n", pattern_index, pattern->targetDevice);
                // print(printstr, sizeof(printstr));
               tdTurnOff(pattern_index, pattern->targetDevice);
            }
        }
    }
}


void listen_to_events(const char *data, int controllerId, int callbackId, void *context __attribute__((unused)))
{

  uint32_t now = HAL_GetTick();

  bool memory_added_pattern = false;
  // bool  memory_added_pattern = false;

  unsigned char funcstr[30] = {0};
  sprintf(funcstr, " %s \r\n", __func__);
  print(funcstr, sizeof(funcstr));

  for (size_t device_id = 0; device_id < DEVICE_COUNT; device_id++) {
      const RoutedDevice* device_routing = &DEVICE_ROUTINGS[device_id];
      const size_t prefix_length = strlen(device_routing->switchPrefix);
      if (strncmp(data, device_routing->switchPrefix, prefix_length) == 0) {
          const char* method_start = data + prefix_length;
          for (size_t i = 1; i < SWITCH_MEMORY_ITEMS ; i++) {
              g_switch_memory[i - 1] = g_switch_memory[i];
          }
          
          MethodReact  method = REACT_TURNON;
          if (strcmp(method_start, METHOD_TURNOFF) == 0) {
              method = REACT_TURNOFF;
          }
          SwitchMemoryItem new_item = {now, method, device_routing->switchPrefix};
          g_switch_memory[SWITCH_MEMORY_ITEMS - 1] = new_item;
          memory_added_pattern = true;
      }
      if (device_routing->targetDevice == DEVICE_NONE) {
          print(" device none\r\n", sizeof(" device none\r\n"));
          continue;
      }
      if (strncmp(data, device_routing->switchPrefix, prefix_length) == 0) {
          const char* method_start = data + prefix_length;
          // const char* method_start = data + prefix_length;
          if (strcmp(method_start, METHOD_TURNON) == 0) {

              sprintf(printstr,"try to Turn on %d\r\n", device_routing->targetDevice);
              print(printstr, sizeof(printstr));

              if (device_routing->react & REACT_TURNON) {
                  tdTurnOn(8, device_routing->targetDevice);
              } else {
                  negative_status_response("IGNORED\r\n", sizeof("IGNORED\r\n"));
              }
          } else if (strcmp(method_start, METHOD_TURNOFF) == 0) {
              
              sprintf(printstr,"try to Turn off %d\r\n", device_routing->targetDevice);
              print(printstr, sizeof(printstr));

              if (device_routing->react & REACT_TURNOFF) {
                   tdTurnOff(8, device_routing->targetDevice);
              } else {
                  negative_status_response("IGNORED\r\n", sizeof("IGNORED\r\n"));
              }
          } else {
              sprintf(printstr,"Unknown method %s\r\n", data);
              negative_status_response(printstr, sizeof(printstr));
          }
      }
  }

  if (!memory_added_pattern) {
      react_to_pattern(now);
  }

//    printf("II %d %d %s\n", controllerId, callbackId, data);
}
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
 void init(){

  // config_memory();
  // config_dwt();

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART1_UART_Init();

  DWT_Init(); 
 }

int main(){
  init();
  main_logic();
  return 0;
}

int main_logic(void)
{
  
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/



  /* USER CODE BEGIN Init */
  char data[100];
  /* USER CODE END Init */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */
  
  uint32_t start, end;

  // start = HAL_GetTick();
  start = DWT_GetTick();

  // sprintf(OutBuf, "start: [%u]\r\n", start);
  sprintf(OutBuf, "start: [%f]\r\n", ((double)(start)/(SystemCoreClock)));
  print((uint8_t *)OutBuf, sizeof(OutBuf));

  /* USER CODE BEGIN 2 */

  for (int count = 0 ; count < 10; count++)
  {

	  //  //for test TurnOn
	  //  if(count<2)
	  //  	 strcpy(data, "class:command;protocol:arctech;model:selflearning;house:19437866;unit:12;group:0;method:turnon;");
	  //  else if(count<4)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:19413362;unit:11;group:0;method:turnon;");
	  //  else if(count<6)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:21953510;unit:12;group:0;method:turnon;");
	  //  else if(count<8)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:20256766;unit:11;group:0;method:turnon;");
	  //  else
		//    strcpy(data, "class:command;protocol:arctech;model:codeswitch;house:D;unit:8;method:turnon;");

	  //  //for test TurnOnIgnored
	  //  if(count<5)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:11799578;unit:12;group:0;method:turnon;");
	  //  else
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:11799578;unit:11;group:0;method:turnon;");

	  //  //for test Turnoff
	  //  if(count<2)
		//    strcpy(data, "class:command;protocol:arctech;model:codeswitch;house:D;unit:5;method:turnoff;");
	  //  else if(count<4)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:11799578;unit:12;group:0;method:turnoff;");
	  //  else if(count<6)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:19437866;unit:12;group:0;method:turnoff;");
	  //  else if(count<8)
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:19413362;unit:11;group:0;method:turnoff;");
	  //  else
		//    strcpy(data, "class:command;protocol:arctech;model:selflearning;house:11799578;unit:11;group:0;method:turnoff;");

	   //for test Unknow data
	   if(count<2)
		   strcpy(data, "class:command;protocol:arctech;model:codeswitch;house:D;unit:5;");
	   else if(count<4)
		   strcpy(data, "class:command;protocol:arctech;model:selflearning;house:11799578;unit:12;group:0;");
	   else if(count<6)
		   strcpy(data, "class:command;protocol:arctech;model:selflearning;house:19437866;unit:12;group:0;");
	   else if(count<8)
		   strcpy(data, "class:command;protocol:arctech;model:selflearning;house:19413362;unit:11;group:0;");
	   else
		   strcpy(data, "class:command;protocol:arctech;model:selflearning;house:11799578;unit:11;group:0;");


	   listen_to_events(data,0,0,NULL);
   }

  // end = HAL_GetTick();
  end = DWT_GetTick();
  // sprintf(OutBuf, "end:[%u]\r\n", end);
  sprintf(OutBuf, "end:[%f]\r\n", ((double)(end)/(SystemCoreClock)));
  print((uint8_t *)OutBuf, sizeof(OutBuf));

  // sprintf(OutBuf, "duration: [%f]\r\n", ((end-start)/1000.0));
  sprintf(OutBuf, "duration: [%f]\r\n", ((double)((end-start)/10.0)/(SystemCoreClock)));
  print((uint8_t *)OutBuf, sizeof(OutBuf));
  
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
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
