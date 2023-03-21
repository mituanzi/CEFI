################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MBEDTLS/App/mbedtls.c 

OBJS += \
./MBEDTLS/App/mbedtls.o 

C_DEPS += \
./MBEDTLS/App/mbedtls.d 


# Each subdirectory must supply rules for building sources it contributes
MBEDTLS/App/%.o: ../MBEDTLS/App/%.c MBEDTLS/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 '-DMBEDTLS_CONFIG_FILE="mbedtls_config.h"' -DUSE_HAL_DRIVER -DSTM32L562xx -DDEBUG -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../MBEDTLS/App -I../../Middlewares/Third_Party/mbedTLS/include/mbedtls -I../../Middlewares/Third_Party/mbedTLS/include -I../../Drivers/BSP/STM32L562E-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-MBEDTLS-2f-App

clean-MBEDTLS-2f-App:
	-$(RM) ./MBEDTLS/App/mbedtls.d ./MBEDTLS/App/mbedtls.o

.PHONY: clean-MBEDTLS-2f-App

