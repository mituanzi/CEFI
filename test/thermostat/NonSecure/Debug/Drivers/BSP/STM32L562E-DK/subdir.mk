################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/STM32L562E-DK/stm32l562e_discovery.c 

OBJS += \
./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery.o 

C_DEPS += \
./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32L562E-DK/%.o: ../Drivers/BSP/STM32L562E-DK/%.c Drivers/BSP/STM32L562E-DK/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 '-DMBEDTLS_CONFIG_FILE="mbedtls_config.h"' -DUSE_HAL_DRIVER -DSTM32L562xx -DDEBUG -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../MBEDTLS/App -I../../Middlewares/Third_Party/mbedTLS/include/mbedtls -I../../Middlewares/Third_Party/mbedTLS/include -I../../Drivers/BSP/STM32L562E-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32L562E-2d-DK

clean-Drivers-2f-BSP-2f-STM32L562E-2d-DK:
	-$(RM) ./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery.d ./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery.o

.PHONY: clean-Drivers-2f-BSP-2f-STM32L562E-2d-DK

