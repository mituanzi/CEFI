################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32L5xx_HAL_Driver/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
syringe_NonSecure.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
syringe_NonSecure.list \

OBJCOPY_BIN += \
syringe_NonSecure.bin \


# All Target
all: syringe_NonSecure.elf secondary-outputs

# Tool invocations
syringe_NonSecure.elf: $(OBJS) $(USER_OBJS) D:\Pan_CFI\STM32CubeIDE\workspace_1.4.0\syringe\NonSecure\STM32L562QEIXQ_FLASH.ld
	arm-none-eabi-gcc -o "syringe_NonSecure.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m33 -T"D:\Pan_CFI\STM32CubeIDE\workspace_1.4.0\syringe\NonSecure\STM32L562QEIXQ_FLASH.ld" --specs=nosys.specs -Wl,-Map="syringe_NonSecure.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

syringe_NonSecure.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "syringe_NonSecure.list"
	@echo 'Finished building: $@'
	@echo ' '

syringe_NonSecure.bin: $(EXECUTABLES)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "syringe_NonSecure.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
