######################################
# Makefile by CubeMX2Makefile.py
######################################

######################################
# target
######################################

TARGET=pinlock_NonSecure

######################################
# building variables
######################################
# debug build?
ifdef OPT_VAL
# optimization
OPT_LEVEL = O$(OPT_VAL)
OPT = $(OPT_LEVEL)

else

OPT = O0

endif

#######################################
# pathes
#######################################
# Build path
CFI_BUILD_DIR = CFIBuild
CFI_CG = $(CFI_BUILD_DIR)/callgraph
DFI_BUILD_DIR = DFIBuild
BIN_DIR = bin
llvmCFI_BUILD_DIR = llvmCFIBuild

######################################
# source
######################################
C_SOURCES = ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_cortex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_exti.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ramfunc.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_gpio.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_icache.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_tim.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_tim_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart_ex.c ../Middlewares/Third_Party/mbedTLS/library/aes.c ../Middlewares/Third_Party/mbedTLS/library/aesni.c ../Middlewares/Third_Party/mbedTLS/library/arc4.c ../Middlewares/Third_Party/mbedTLS/library/aria.c ../Middlewares/Third_Party/mbedTLS/library/asn1parse.c ../Middlewares/Third_Party/mbedTLS/library/asn1write.c ../Middlewares/Third_Party/mbedTLS/library/base64.c ../Middlewares/Third_Party/mbedTLS/library/bignum.c ../Middlewares/Third_Party/mbedTLS/library/blowfish.c ../Middlewares/Third_Party/mbedTLS/library/camellia.c ../Middlewares/Third_Party/mbedTLS/library/ccm.c ../Middlewares/Third_Party/mbedTLS/library/certs.c ../Middlewares/Third_Party/mbedTLS/library/chacha20.c ../Middlewares/Third_Party/mbedTLS/library/chachapoly.c ../Middlewares/Third_Party/mbedTLS/library/cipher.c ../Middlewares/Third_Party/mbedTLS/library/cipher_wrap.c ../Middlewares/Third_Party/mbedTLS/library/cmac.c ../Middlewares/Third_Party/mbedTLS/library/ctr_drbg.c ../Middlewares/Third_Party/mbedTLS/library/debug.c ../Middlewares/Third_Party/mbedTLS/library/des.c ../Middlewares/Third_Party/mbedTLS/library/dhm.c ../Middlewares/Third_Party/mbedTLS/library/ecdh.c ../Middlewares/Third_Party/mbedTLS/library/ecdsa.c ../Middlewares/Third_Party/mbedTLS/library/ecjpake.c ../Middlewares/Third_Party/mbedTLS/library/ecp.c ../Middlewares/Third_Party/mbedTLS/library/ecp_curves.c ../Middlewares/Third_Party/mbedTLS/library/entropy.c ../Middlewares/Third_Party/mbedTLS/library/entropy_poll.c ../Middlewares/Third_Party/mbedTLS/library/error.c ../Middlewares/Third_Party/mbedTLS/library/gcm.c ../Middlewares/Third_Party/mbedTLS/library/havege.c ../Middlewares/Third_Party/mbedTLS/library/hkdf.c ../Middlewares/Third_Party/mbedTLS/library/hmac_drbg.c ../Middlewares/Third_Party/mbedTLS/library/md.c ../Middlewares/Third_Party/mbedTLS/library/md2.c ../Middlewares/Third_Party/mbedTLS/library/md4.c ../Middlewares/Third_Party/mbedTLS/library/md5.c ../Middlewares/Third_Party/mbedTLS/library/md_wrap.c ../Middlewares/Third_Party/mbedTLS/library/memory_buffer_alloc.c ../Middlewares/Third_Party/mbedTLS/library/nist_kw.c ../Middlewares/Third_Party/mbedTLS/library/oid.c ../Middlewares/Third_Party/mbedTLS/library/padlock.c ../Middlewares/Third_Party/mbedTLS/library/pem.c ../Middlewares/Third_Party/mbedTLS/library/pk.c ../Middlewares/Third_Party/mbedTLS/library/pk_wrap.c ../Middlewares/Third_Party/mbedTLS/library/pkcs11.c ../Middlewares/Third_Party/mbedTLS/library/pkcs12.c ../Middlewares/Third_Party/mbedTLS/library/pkcs5.c ../Middlewares/Third_Party/mbedTLS/library/pkparse.c ../Middlewares/Third_Party/mbedTLS/library/pkwrite.c ../Middlewares/Third_Party/mbedTLS/library/platform.c ../Middlewares/Third_Party/mbedTLS/library/platform_util.c ../Middlewares/Third_Party/mbedTLS/library/poly1305.c ../Middlewares/Third_Party/mbedTLS/library/ripemd160.c ../Middlewares/Third_Party/mbedTLS/library/rsa.c ../Middlewares/Third_Party/mbedTLS/library/rsa_internal.c ../Middlewares/Third_Party/mbedTLS/library/sha1.c ../Middlewares/Third_Party/mbedTLS/library/sha256.c ../Middlewares/Third_Party/mbedTLS/library/sha512.c ../Middlewares/Third_Party/mbedTLS/library/ssl_cache.c ../Middlewares/Third_Party/mbedTLS/library/ssl_ciphersuites.c ../Middlewares/Third_Party/mbedTLS/library/ssl_cli.c ../Middlewares/Third_Party/mbedTLS/library/ssl_cookie.c ../Middlewares/Third_Party/mbedTLS/library/ssl_srv.c ../Middlewares/Third_Party/mbedTLS/library/ssl_ticket.c ../Middlewares/Third_Party/mbedTLS/library/ssl_tls.c ../Middlewares/Third_Party/mbedTLS/library/threading.c ../Middlewares/Third_Party/mbedTLS/library/timing.c ../Middlewares/Third_Party/mbedTLS/library/version.c ../Middlewares/Third_Party/mbedTLS/library/version_features.c ../Middlewares/Third_Party/mbedTLS/library/x509.c ../Middlewares/Third_Party/mbedTLS/library/x509_create.c ../Middlewares/Third_Party/mbedTLS/library/x509_crl.c ../Middlewares/Third_Party/mbedTLS/library/x509_crt.c ../Middlewares/Third_Party/mbedTLS/library/x509_csr.c ../Middlewares/Third_Party/mbedTLS/library/x509write_crt.c ../Middlewares/Third_Party/mbedTLS/library/x509write_csr.c ../Middlewares/Third_Party/mbedTLS/library/xtea.c ./Core/Src/sysmem.c ./Core/Src/config.c ./Core/Src/main.c ./Core/Src/system_stm32l5xx_ns.c ./Core/Src/stm32l5xx_hal_msp.c ./Core/Src/stm32l5xx_it.c ./Core/Src/syscalls.c ./MBEDTLS/App/mbedtls.c ./Drivers/BSP/STM32L562E-DK/stm32l562e_discovery.c

ASM_SOURCES = ./Core/Startup/startup_stm32l562qeixq.s

#######################################
# binaries
#######################################
CLANG = /home/iotse/pan/workspace/uRAI/llvm_build/build/bin/clang
LLVMOPT = /home/iotse/pan/workspace/uRAI/llvm_build/build/bin/opt
LLC = /home/iotse/pan/workspace/uRAI/llvm_build/build/bin/llc
LLVMGOLD = /home/iotse/pan/workspace/uRAI/llvm_build/build/lib/LLVMgold.so
CC = $(CLANG)
ARM_NONE_EABI_PATH = /home/iotse/pan/workspace/uRAI/gcc/bins/
ARMGCC = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-gcc
AS = $(ARMGCC)
LD = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-ld
CP = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-objcopy
AR = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-ar
SZ = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-size
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S

#######################################
# CFI defines
#######################################

URAI_ANALYSIS_FILE = $(CURDIR)/$(CFI_CG)/CG-analysis.json

URAI_RESERVE_LR_OPTION= --plugin-opt=-urai-reserve-lr=reserveLR
URAI_ANALYSIS_OPTION:= --plugin-opt=-urai-analysis=$(URAI_ANALYSIS_FILE)
URAI_FULL_SilhouetteCFI_INSTR_OPTION= --plugin-opt=-enable-arm-silhouette-cfi=1

#######################################
# DFI defines
#######################################

URAI_IR_FILE = $(BIN_DIR)/$(TARGET).elf.0.5.precodegen.bc
default_OPT_IR_FILE = $(BIN_DIR)/$(TARGET)_defaultsize.ll
default_LLC_IR_FILE = $(BIN_DIR)/$(TARGET)_defaultsize.o

CFI_OPT_IR_FILE = $(BIN_DIR)/$(TARGET)_cfi.ll
CFI_LLC_IR_FILE = $(BIN_DIR)/$(TARGET)_cfi.o

CDFI_OPT_IR_FILE = $(BIN_DIR)/$(TARGET).ll
CDFI_LLC_IR_FILE = $(BIN_DIR)/$(TARGET).o

#######################################
# CFLAGS
#######################################
# macros for gcc
AS_DEFS =
C_DEFS = -DDEBUG -DUSE_HAL_DRIVER '-DMBEDTLS_CONFIG_FILE="mbedtls_config.h"' -DSTM32L562xx

# includes for gcc
AS_INCLUDES =
C_INCLUDES = -ICore/Inc -I../Secure_nsclib -I../Drivers/STM32L5xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Include -IMBEDTLS/App -I../Middlewares/Third_Party/mbedTLS/include/mbedtls -I../Middlewares/Third_Party/mbedTLS/include -I../Drivers/BSP/STM32L562E-DK 
# compile gcc flags

C_INCLUDES += -I/home/iotse/pan/workspace/uRAI/gcc/bins/arm-none-eabi/include

ASFLAGS = -mcpu=cortex-m33 --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=soft -g3 -c -x assembler-with-cpp $(AS_DEFS) $(AS_INCLUDES) -Wall -fdata-sections -ffunction-sections -mthumb

CGCFLAGS = -mcpu=cortex-m33 -mfpu=fpv5-sp-d16 -mfloat-abi=soft $(C_DEFS) $(C_INCLUDES) -$(OPT) -Wall -fdata-sections -ffunction-sections -target arm-none-eabi -mthumb
CGCFLAGS += --sysroot=$(ARM_NONE_EABI_PATH)arm-none-eabi -fno-builtin -fshort-enums -fno-exceptions -flto -ffreestanding -fmessage-length=0 -gline-tables-only
# Generate dependency information
CGCFLAGS += -std=gnu11 #-MD -MP -MF .dep/$(@F).d

# NVCFLAGS = -target arm-none-eabi -mcpu=cortex-m33 -std=gnu11 -g3 $(C_DEFS) $(C_INCLUDES) -$(OPT)
# NVCFLAGS += -S -emit-llvm -ffunction-sections -fdata-sections -Wall -gline-tables-only
# NVCFLAGS += -fshort-enums -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb

NOVAFLAGS = -debug -load LLVMNova.so -nova
DEFAULTNOVAFLAGS = -debug

LLCFLAGS = -enable-arm-silhouette-cfi -enable-arm-silhouette-dfi -filetype=obj --float-abi=hard  
CFILLCFLAGS = -enable-arm-silhouette-cfi -filetype=obj --float-abi=hard
DEFAULTLLCFLAGS = -filetype=obj --float-abi=hard

GCCFLAGS = -mcpu=cortex-m33 --specs=nosys.specs -Wl,-Map=Debug/$(TARGET).map -Wl,--gc-sections -static
GCCFLAGS += --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
#######################################
# LDFLAGS
#######################################
# link script
LDSCRIPT = STM32L562QEIXQ_FLASH.ld
# libraries
LIBS = -lc -lm
LIBDIR = -L /home/iotse/pan/workspace/uRAI/gcc/bins/arm-none-eabi/lib/thumb/v8-m.main -L /home/iotse/pan/workspace/uRAI/gcc/bins//lib/gcc/arm-none-eabi/7.3.1/thumb/v8-m.main 

LDFLAGS=-plugin=$(LLVMGOLD) --plugin-opt=save-temps -g --plugin-opt=-mcpu=cortex-m33
LDFLAGS+=--plugin-opt=-float-abi=soft --plugin-opt=$(OPT_LEVEL) --start-group $(LIBDIR) $(LIBS) -lgcc --end-group
LDFLAGS+=-Map=Debug/$(TARGET).map --gc-sections

##############################################################################
# default: Get the binary without analysis or instrument
# defaultsize: used for compare the size
# getcg: Get the call graph of the whole project, including indirect call
# cfilabel: Insert a bunch of instructions before indirect call/jump and return instruction, 
#			get src and dst of the instruction, and call function in TrustZone
# cdfilabel: 


default: setup $(BIN_DIR) $(BIN_DIR)/$(TARGET).elf

defaultsize: setup $(BIN_DIR) $(BIN_DIR)/$(TARGET)--defaultsize.elf

getcg: setup $(BIN_DIR) $(BIN_DIR)/$(TARGET)--GETCG.elf

cfilabel: setup $(BIN_DIR) $(BIN_DIR)/$(TARGET)--CFIlabel.elf

cdfilabel: setup $(BIN_DIR) $(BIN_DIR)/$(TARGET)--CDFIlabel.elf

llvmCFI: setup $(BIN_DIR) $(BIN_DIR)/$(TARGET)--llvmCFI.elf

setup:
	export C_INCLUDE_PATH=/home/iotse/pan/workspace/uRAI/gcc/bins//arm-none-eabi/include

FORCE :
#######################################
# build the application
#######################################
# list of ASM program objects for DFI
DFI_ASM_OBJECTS = $(addprefix $(DFI_BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

# list of objects
DFI_OBJECTS += $(addprefix $(DFI_BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

DFI_OBJECTS += ../Secure/Debug/secure_nsclib.o

###############################################

# list of ASM program objects for CFI
CFI_ASM_OBJECTS = $(addprefix $(CFI_BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

# list of objects for CFI
CFI_OBJECTS += $(addprefix $(CFI_BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

CFI_OBJECTS += /home/iotse/pan/workspace/uRAI/llvm_build/urai-rt-lib/syscalls-v8-m.main.o ../Secure/Debug/secure_nsclib.o

###############################################

##If there are jump instructions in the last three instructions of the key variable operation instruction, NOP is inserted

# $(DFI_BUILD_DIR)/%.o: %.s Makefile | $(DFI_BUILD_DIR)
# 	$(ARMGCC) -c $(ASFLAGS) $< -o $@

# $(DFI_BUILD_DIR)/%.o: $(DFI_BUILD_DIR)/%.ll Makefile | $(DFI_BUILD_DIR)
# 	$(LLC) $(LLCFLAGS) $< -o $@

# $(DFI_BUILD_DIR)/%.ll: $(DFI_BUILD_DIR)/%_before.ll Makefile | $(DFI_BUILD_DIR)
# 	$(LLVMOPT) $(NOVAFLAGS) $< -o $@

# $(DFI_BUILD_DIR)/%_before.ll: %.c Makefile | $(DFI_BUILD_DIR)
# 	$(CLANG) $(NVCFLAGS) $< -o $@

# $(BIN_DIR)/$(TARGET)--DFIlabel.elf: $(DFI_ASM_OBJECTS) $(DFI_OBJECTS) Makefile | $(DFI_BUILD_DIR)
# 	$(ARMGCC) $(DFI_ASM_OBJECTS) $(DFI_OBJECTS)	$(GCCFLAGS) -T$(LDSCRIPT) -o $@ 

###############################################

#If there are jump instructions in the last three instructions of the key variable operation instruction, NOP is inserted

$(DFI_BUILD_DIR)/%.o: %.s Makefile | $(DFI_BUILD_DIR)
	$(ARMGCC) -c $(ASFLAGS) $< -o $@

$(URAI_IR_FILE): $(BIN_DIR)/$(TARGET).elf
$(CDFI_OPT_IR_FILE): $(URAI_IR_FILE) Makefile | $(BIN_DIR) 
	$(LLVMOPT) $(NOVAFLAGS) $< -o $@
$(CDFI_LLC_IR_FILE): $(CDFI_OPT_IR_FILE) Makefile | $(BIN_DIR) 
	$(LLC) $(LLCFLAGS) $< -o $@

$(BIN_DIR)/$(TARGET)--CDFIlabel.elf: $(DFI_ASM_OBJECTS) $(CDFI_LLC_IR_FILE) Makefile | $(DFI_BUILD_DIR)
	$(ARMGCC) $(DFI_ASM_OBJECTS) $(CDFI_LLC_IR_FILE) ../Secure/Debug/secure_nsclib.o $(GCCFLAGS) -T$(LDSCRIPT) -o $@ 

###############################################

$(CFI_OPT_IR_FILE): $(URAI_IR_FILE) Makefile | $(BIN_DIR) 
	$(LLVMOPT) $(DEFAULTNOVAFLAGS) $< -o $@
$(CFI_LLC_IR_FILE): $(CFI_OPT_IR_FILE) Makefile | $(BIN_DIR) 
	$(LLC) $(CFILLCFLAGS) $< -o $@

$(BIN_DIR)/$(TARGET)--CFIlabel.elf: $(DFI_ASM_OBJECTS) $(CFI_LLC_IR_FILE) Makefile | $(DFI_BUILD_DIR)
	$(ARMGCC) $(DFI_ASM_OBJECTS) $(CFI_LLC_IR_FILE) ../Secure/Debug/secure_nsclib.o $(GCCFLAGS) -T$(LDSCRIPT) -o $@ 

###############################################
$(BIN_DIR)/$(TARGET).elf: $(CFI_ASM_OBJECTS) $(CFI_OBJECTS) Makefile | $(CFI_BUILD_DIR)
	$(LD) $(CFI_ASM_OBJECTS) $(CFI_OBJECTS)	$(LDFLAGS) -T$(LDSCRIPT) \
	--plugin-opt=-info-output-file=$@.stats -o $@ -g
	$(SZ) $@

###############################################
$(default_OPT_IR_FILE): $(URAI_IR_FILE) Makefile | $(BIN_DIR) 
	$(LLVMOPT) $(DEFAULTNOVAFLAGS) $< -o $@
$(default_LLC_IR_FILE): $(default_OPT_IR_FILE) Makefile | $(BIN_DIR) 
	$(LLC) $(DEFAULTLLCFLAGS) $< -o $@

$(BIN_DIR)/$(TARGET)--defaultsize.elf: $(DFI_ASM_OBJECTS) $(default_LLC_IR_FILE) Makefile | $(DFI_BUILD_DIR)
	$(ARMGCC) $(DFI_ASM_OBJECTS) $(default_LLC_IR_FILE) ../Secure/Debug/secure_nsclib.o $(GCCFLAGS) -T$(LDSCRIPT) -o $@ 

###############################################

# This rule is to build a binary enforcing cfilabel

$(CFI_BUILD_DIR)/%.o: %.s Makefile | $(CFI_BUILD_DIR)
	$(ARMGCC) -c $(ASFLAGS) $< -o $@

$(CFI_BUILD_DIR)/%.o: %.c Makefile | $(CFI_BUILD_DIR)
	$(CC) -c $(CGCFLAGS) $< -o $@

# $(BIN_DIR)/$(TARGET)--CFIlabel.elf: $(CFI_ASM_OBJECTS) $(CFI_OBJECTS) Makefile | $(CFI_BUILD_DIR)
# 	$(LD) $(CFI_ASM_OBJECTS) $(CFI_OBJECTS) \
# 	$(LDFLAGS) -T$(LDSCRIPT) \
#      $(URAI_FULL_SilhouetteCFI_INSTR_OPTION) -o $@

$(BIN_DIR)/$(TARGET)--GETCG.elf: $(CFI_ASM_OBJECTS) $(CFI_OBJECTS) Makefile | $(CFI_CG)
	$(LD) $(CFI_ASM_OBJECTS) $(CFI_OBJECTS) $(LDFLAGS) -T$(LDSCRIPT) \
	--plugin-opt=-info-output-file=$@.stats -o $(URAI_ANALYSIS_FILE) -g \
	$(URAI_RESERVE_LR_OPTION) $(URAI_ANALYSIS_OPTION) \
	-o $@

###############################################

# list of ASM program objects for CFI
llvmCFI_ASM_OBJECTS = $(addprefix $(llvmCFI_BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

# list of objects for CFI
llvmCFI_OBJECTS += $(addprefix $(llvmCFI_BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

llvmCFI_OBJECTS += /home/iotse/pan/workspace/uRAI/llvm_build/urai-rt-lib/syscalls-v8-m.main.o ../Secure/Debug/secure_nsclib.o


# This rule is to build a binary enforcing llvm CFI

$(llvmCFI_BUILD_DIR)/%.o: %.s Makefile | $(llvmCFI_BUILD_DIR)
	$(ARMGCC) -c $(ASFLAGS) $< -o $@

$(llvmCFI_BUILD_DIR)/%.o: %.c Makefile | $(llvmCFI_BUILD_DIR)
	$(CC) -c $(CGCFLAGS) -fvisibility=hidden -fsanitize=cfi-icall -fsplit-lto-unit $< -o $@

$(BIN_DIR)/$(TARGET)--llvmCFI.elf: $(llvmCFI_ASM_OBJECTS) $(llvmCFI_OBJECTS) Makefile | $(llvmCFI_BUILD_DIR)
	$(LD) $(llvmCFI_ASM_OBJECTS) $(llvmCFI_OBJECTS) $(LDFLAGS) -flto -shared -fsplit-lto-unit -T$(LDSCRIPT) \
	-o $@

###############################################

$(CFI_BUILD_DIR):
	mkdir -p $@

$(CFI_CG):
	mkdir -p $@

$(DFI_BUILD_DIR):
	mkdir -p $@

$(BIN_DIR):
	mkdir -p $@

$(llvmCFI_BUILD_DIR):
	mkdir -p $@


#######################################
# clean up
#######################################
clean:
	-rm -fR .dep $(CFI_BUILD_DIR) $(DFI_BUILD_DIR) $(BIN_DIR) $(llvmCFI_BUILD_DIR)
	-rm -f *.dot
	-rm -f run.tmp

#######################################
# dependencies
#######################################
-include $(shell mkdir .dep 2>/dev/null) $(wildcard .dep/*)

.PHONY: clean all

# *** EOF ***