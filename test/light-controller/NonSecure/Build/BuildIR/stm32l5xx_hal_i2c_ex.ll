; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c_ex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c_ex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.__I2C_HandleTypeDef = type { %struct.I2C_TypeDef*, %struct.I2C_InitTypeDef, i8*, i16, i16, i32, i32, i8 (%struct.__I2C_HandleTypeDef*, i32, i32)*, %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef*, i8, i8, i8, i32, i32 }
%struct.I2C_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.I2C_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__DMA_HandleTypeDef = type { %struct.DMA_Channel_TypeDef*, %struct.DMA_InitTypeDef, i8, i8, i8*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, i32, %struct.DMA_TypeDef*, i32, %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef*, i32, %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef*, i32 }
%struct.DMA_Channel_TypeDef = type { i32, i32, i32, i32, i32 }
%struct.DMA_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DMA_TypeDef = type { i32, i32 }
%struct.DMAMUX_Channel_TypeDef = type { i32 }
%struct.DMAMUX_ChannelStatus_TypeDef = type { i32, i32 }
%struct.DMAMUX_RequestGen_TypeDef = type { i32 }
%struct.DMAMUX_RequestGenStatus_TypeDef = type { i32, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.SYSCFG_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_I2CEx_ConfigAnalogFilter(%struct.__I2C_HandleTypeDef* %hi2c, i32 %AnalogFilter) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %hi2c.addr = alloca %struct.__I2C_HandleTypeDef*, align 4
  %AnalogFilter.addr = alloca i32, align 4
  store %struct.__I2C_HandleTypeDef* %hi2c, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4
  store i32 %AnalogFilter, i32* %AnalogFilter.addr, align 4
  %0 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !10
  %State = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %0, i32 0, i32 11, !dbg !11
  %1 = load volatile i8, i8* %State, align 1, !dbg !11
  %conv = zext i8 %1 to i32, !dbg !10
  %cmp = icmp eq i32 %conv, 32, !dbg !12
  br i1 %cmp, label %if.then, label %if.else20, !dbg !10

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !13

do.body:                                          ; preds = %if.then
  %2 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !13
  %Lock = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %2, i32 0, i32 10, !dbg !13
  %3 = load i8, i8* %Lock, align 4, !dbg !13
  %conv2 = zext i8 %3 to i32, !dbg !13
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !13
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !13

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !13
  br label %return, !dbg !13

if.else:                                          ; preds = %do.body
  %4 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !13
  %Lock6 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %4, i32 0, i32 10, !dbg !13
  store i8 1, i8* %Lock6, align 4, !dbg !13
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !13

do.end:                                           ; preds = %if.end
  %5 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !14
  %State7 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %5, i32 0, i32 11, !dbg !15
  store volatile i8 36, i8* %State7, align 1, !dbg !16
  %6 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !17
  %Instance = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %6, i32 0, i32 0, !dbg !17
  %7 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance, align 4, !dbg !17
  %CR1 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %7, i32 0, i32 0, !dbg !17
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !17
  %and = and i32 %8, -2, !dbg !17
  store volatile i32 %and, i32* %CR1, align 4, !dbg !17
  %9 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !18
  %Instance8 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %9, i32 0, i32 0, !dbg !19
  %10 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance8, align 4, !dbg !19
  %CR19 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %10, i32 0, i32 0, !dbg !20
  %11 = load volatile i32, i32* %CR19, align 4, !dbg !21
  %and10 = and i32 %11, -4097, !dbg !21
  store volatile i32 %and10, i32* %CR19, align 4, !dbg !21
  %12 = load i32, i32* %AnalogFilter.addr, align 4, !dbg !22
  %13 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !23
  %Instance11 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %13, i32 0, i32 0, !dbg !24
  %14 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance11, align 4, !dbg !24
  %CR112 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %14, i32 0, i32 0, !dbg !25
  %15 = load volatile i32, i32* %CR112, align 4, !dbg !26
  %or = or i32 %15, %12, !dbg !26
  store volatile i32 %or, i32* %CR112, align 4, !dbg !26
  %16 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !27
  %Instance13 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %16, i32 0, i32 0, !dbg !27
  %17 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance13, align 4, !dbg !27
  %CR114 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %17, i32 0, i32 0, !dbg !27
  %18 = load volatile i32, i32* %CR114, align 4, !dbg !27
  %or15 = or i32 %18, 1, !dbg !27
  store volatile i32 %or15, i32* %CR114, align 4, !dbg !27
  %19 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !28
  %State16 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %19, i32 0, i32 11, !dbg !29
  store volatile i8 32, i8* %State16, align 1, !dbg !30
  br label %do.body17, !dbg !31

do.body17:                                        ; preds = %do.end
  %20 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !31
  %Lock18 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %20, i32 0, i32 10, !dbg !31
  store i8 0, i8* %Lock18, align 4, !dbg !31
  br label %do.end19, !dbg !31

do.end19:                                         ; preds = %do.body17
  store i8 0, i8* %retval, align 1, !dbg !32
  br label %return, !dbg !32

if.else20:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !33
  br label %return, !dbg !33

return:                                           ; preds = %if.else20, %do.end19, %if.then5
  %21 = load i8, i8* %retval, align 1, !dbg !34
  ret i8 %21, !dbg !34
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_I2CEx_ConfigDigitalFilter(%struct.__I2C_HandleTypeDef* %hi2c, i32 %DigitalFilter) #0 !dbg !35 {
entry:
  %retval = alloca i8, align 1
  %hi2c.addr = alloca %struct.__I2C_HandleTypeDef*, align 4
  %DigitalFilter.addr = alloca i32, align 4
  %tmpreg = alloca i32, align 4
  store %struct.__I2C_HandleTypeDef* %hi2c, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4
  store i32 %DigitalFilter, i32* %DigitalFilter.addr, align 4
  %0 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !36
  %State = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %0, i32 0, i32 11, !dbg !37
  %1 = load volatile i8, i8* %State, align 1, !dbg !37
  %conv = zext i8 %1 to i32, !dbg !36
  %cmp = icmp eq i32 %conv, 32, !dbg !38
  br i1 %cmp, label %if.then, label %if.else20, !dbg !36

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !39

do.body:                                          ; preds = %if.then
  %2 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !39
  %Lock = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %2, i32 0, i32 10, !dbg !39
  %3 = load i8, i8* %Lock, align 4, !dbg !39
  %conv2 = zext i8 %3 to i32, !dbg !39
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !39
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !39

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !39
  br label %return, !dbg !39

if.else:                                          ; preds = %do.body
  %4 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !39
  %Lock6 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %4, i32 0, i32 10, !dbg !39
  store i8 1, i8* %Lock6, align 4, !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !39

do.end:                                           ; preds = %if.end
  %5 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !40
  %State7 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %5, i32 0, i32 11, !dbg !41
  store volatile i8 36, i8* %State7, align 1, !dbg !42
  %6 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !43
  %Instance = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %6, i32 0, i32 0, !dbg !43
  %7 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance, align 4, !dbg !43
  %CR1 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %7, i32 0, i32 0, !dbg !43
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !43
  %and = and i32 %8, -2, !dbg !43
  store volatile i32 %and, i32* %CR1, align 4, !dbg !43
  %9 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !44
  %Instance8 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %9, i32 0, i32 0, !dbg !45
  %10 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance8, align 4, !dbg !45
  %CR19 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %10, i32 0, i32 0, !dbg !46
  %11 = load volatile i32, i32* %CR19, align 4, !dbg !46
  store i32 %11, i32* %tmpreg, align 4, !dbg !47
  %12 = load i32, i32* %tmpreg, align 4, !dbg !48
  %and10 = and i32 %12, -3841, !dbg !48
  store i32 %and10, i32* %tmpreg, align 4, !dbg !48
  %13 = load i32, i32* %DigitalFilter.addr, align 4, !dbg !49
  %shl = shl i32 %13, 8, !dbg !50
  %14 = load i32, i32* %tmpreg, align 4, !dbg !51
  %or = or i32 %14, %shl, !dbg !51
  store i32 %or, i32* %tmpreg, align 4, !dbg !51
  %15 = load i32, i32* %tmpreg, align 4, !dbg !52
  %16 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !53
  %Instance11 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %16, i32 0, i32 0, !dbg !54
  %17 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance11, align 4, !dbg !54
  %CR112 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %17, i32 0, i32 0, !dbg !55
  store volatile i32 %15, i32* %CR112, align 4, !dbg !56
  %18 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !57
  %Instance13 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %18, i32 0, i32 0, !dbg !57
  %19 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance13, align 4, !dbg !57
  %CR114 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %19, i32 0, i32 0, !dbg !57
  %20 = load volatile i32, i32* %CR114, align 4, !dbg !57
  %or15 = or i32 %20, 1, !dbg !57
  store volatile i32 %or15, i32* %CR114, align 4, !dbg !57
  %21 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !58
  %State16 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %21, i32 0, i32 11, !dbg !59
  store volatile i8 32, i8* %State16, align 1, !dbg !60
  br label %do.body17, !dbg !61

do.body17:                                        ; preds = %do.end
  %22 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !61
  %Lock18 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %22, i32 0, i32 10, !dbg !61
  store i8 0, i8* %Lock18, align 4, !dbg !61
  br label %do.end19, !dbg !61

do.end19:                                         ; preds = %do.body17
  store i8 0, i8* %retval, align 1, !dbg !62
  br label %return, !dbg !62

if.else20:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !63
  br label %return, !dbg !63

return:                                           ; preds = %if.else20, %do.end19, %if.then5
  %23 = load i8, i8* %retval, align 1, !dbg !64
  ret i8 %23, !dbg !64
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_I2CEx_EnableWakeUp(%struct.__I2C_HandleTypeDef* %hi2c) #0 !dbg !65 {
entry:
  %retval = alloca i8, align 1
  %hi2c.addr = alloca %struct.__I2C_HandleTypeDef*, align 4
  store %struct.__I2C_HandleTypeDef* %hi2c, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4
  %0 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !66
  %State = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %0, i32 0, i32 11, !dbg !67
  %1 = load volatile i8, i8* %State, align 1, !dbg !67
  %conv = zext i8 %1 to i32, !dbg !66
  %cmp = icmp eq i32 %conv, 32, !dbg !68
  br i1 %cmp, label %if.then, label %if.else17, !dbg !66

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !69

do.body:                                          ; preds = %if.then
  %2 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !69
  %Lock = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %2, i32 0, i32 10, !dbg !69
  %3 = load i8, i8* %Lock, align 4, !dbg !69
  %conv2 = zext i8 %3 to i32, !dbg !69
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !69
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !69

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !69
  br label %return, !dbg !69

if.else:                                          ; preds = %do.body
  %4 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !69
  %Lock6 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %4, i32 0, i32 10, !dbg !69
  store i8 1, i8* %Lock6, align 4, !dbg !69
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !69

do.end:                                           ; preds = %if.end
  %5 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !70
  %State7 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %5, i32 0, i32 11, !dbg !71
  store volatile i8 36, i8* %State7, align 1, !dbg !72
  %6 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !73
  %Instance = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %6, i32 0, i32 0, !dbg !73
  %7 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance, align 4, !dbg !73
  %CR1 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %7, i32 0, i32 0, !dbg !73
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !73
  %and = and i32 %8, -2, !dbg !73
  store volatile i32 %and, i32* %CR1, align 4, !dbg !73
  %9 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !74
  %Instance8 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %9, i32 0, i32 0, !dbg !75
  %10 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance8, align 4, !dbg !75
  %CR19 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %10, i32 0, i32 0, !dbg !76
  %11 = load volatile i32, i32* %CR19, align 4, !dbg !77
  %or = or i32 %11, 262144, !dbg !77
  store volatile i32 %or, i32* %CR19, align 4, !dbg !77
  %12 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !78
  %Instance10 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %12, i32 0, i32 0, !dbg !78
  %13 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance10, align 4, !dbg !78
  %CR111 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %13, i32 0, i32 0, !dbg !78
  %14 = load volatile i32, i32* %CR111, align 4, !dbg !78
  %or12 = or i32 %14, 1, !dbg !78
  store volatile i32 %or12, i32* %CR111, align 4, !dbg !78
  %15 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !79
  %State13 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %15, i32 0, i32 11, !dbg !80
  store volatile i8 32, i8* %State13, align 1, !dbg !81
  br label %do.body14, !dbg !82

do.body14:                                        ; preds = %do.end
  %16 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !82
  %Lock15 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %16, i32 0, i32 10, !dbg !82
  store i8 0, i8* %Lock15, align 4, !dbg !82
  br label %do.end16, !dbg !82

do.end16:                                         ; preds = %do.body14
  store i8 0, i8* %retval, align 1, !dbg !83
  br label %return, !dbg !83

if.else17:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !84
  br label %return, !dbg !84

return:                                           ; preds = %if.else17, %do.end16, %if.then5
  %17 = load i8, i8* %retval, align 1, !dbg !85
  ret i8 %17, !dbg !85
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_I2CEx_DisableWakeUp(%struct.__I2C_HandleTypeDef* %hi2c) #0 !dbg !86 {
entry:
  %retval = alloca i8, align 1
  %hi2c.addr = alloca %struct.__I2C_HandleTypeDef*, align 4
  store %struct.__I2C_HandleTypeDef* %hi2c, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4
  %0 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !87
  %State = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %0, i32 0, i32 11, !dbg !88
  %1 = load volatile i8, i8* %State, align 1, !dbg !88
  %conv = zext i8 %1 to i32, !dbg !87
  %cmp = icmp eq i32 %conv, 32, !dbg !89
  br i1 %cmp, label %if.then, label %if.else17, !dbg !87

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !90

do.body:                                          ; preds = %if.then
  %2 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !90
  %Lock = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %2, i32 0, i32 10, !dbg !90
  %3 = load i8, i8* %Lock, align 4, !dbg !90
  %conv2 = zext i8 %3 to i32, !dbg !90
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !90
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !90

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !90
  br label %return, !dbg !90

if.else:                                          ; preds = %do.body
  %4 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !90
  %Lock6 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %4, i32 0, i32 10, !dbg !90
  store i8 1, i8* %Lock6, align 4, !dbg !90
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !90

do.end:                                           ; preds = %if.end
  %5 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !91
  %State7 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %5, i32 0, i32 11, !dbg !92
  store volatile i8 36, i8* %State7, align 1, !dbg !93
  %6 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !94
  %Instance = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %6, i32 0, i32 0, !dbg !94
  %7 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance, align 4, !dbg !94
  %CR1 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %7, i32 0, i32 0, !dbg !94
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !94
  %and = and i32 %8, -2, !dbg !94
  store volatile i32 %and, i32* %CR1, align 4, !dbg !94
  %9 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !95
  %Instance8 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %9, i32 0, i32 0, !dbg !96
  %10 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance8, align 4, !dbg !96
  %CR19 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %10, i32 0, i32 0, !dbg !97
  %11 = load volatile i32, i32* %CR19, align 4, !dbg !98
  %and10 = and i32 %11, -262145, !dbg !98
  store volatile i32 %and10, i32* %CR19, align 4, !dbg !98
  %12 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !99
  %Instance11 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %12, i32 0, i32 0, !dbg !99
  %13 = load %struct.I2C_TypeDef*, %struct.I2C_TypeDef** %Instance11, align 4, !dbg !99
  %CR112 = getelementptr inbounds %struct.I2C_TypeDef, %struct.I2C_TypeDef* %13, i32 0, i32 0, !dbg !99
  %14 = load volatile i32, i32* %CR112, align 4, !dbg !99
  %or = or i32 %14, 1, !dbg !99
  store volatile i32 %or, i32* %CR112, align 4, !dbg !99
  %15 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !100
  %State13 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %15, i32 0, i32 11, !dbg !101
  store volatile i8 32, i8* %State13, align 1, !dbg !102
  br label %do.body14, !dbg !103

do.body14:                                        ; preds = %do.end
  %16 = load %struct.__I2C_HandleTypeDef*, %struct.__I2C_HandleTypeDef** %hi2c.addr, align 4, !dbg !103
  %Lock15 = getelementptr inbounds %struct.__I2C_HandleTypeDef, %struct.__I2C_HandleTypeDef* %16, i32 0, i32 10, !dbg !103
  store i8 0, i8* %Lock15, align 4, !dbg !103
  br label %do.end16, !dbg !103

do.end16:                                         ; preds = %do.body14
  store i8 0, i8* %retval, align 1, !dbg !104
  br label %return, !dbg !104

if.else17:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !105
  br label %return, !dbg !105

return:                                           ; preds = %if.else17, %do.end16, %if.then5
  %17 = load i8, i8* %retval, align 1, !dbg !106
  ret i8 %17, !dbg !106
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_I2CEx_EnableFastModePlus(i32 %ConfigFastModePlus) #0 !dbg !107 {
entry:
  %ConfigFastModePlus.addr = alloca i32, align 4
  %tmpreg = alloca i32, align 4
  store i32 %ConfigFastModePlus, i32* %ConfigFastModePlus.addr, align 4
  br label %do.body, !dbg !108

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !108
  %or = or i32 %0, 1, !dbg !108
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !108
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !108
  %and = and i32 %1, 1, !dbg !108
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !108
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !108
  br label %do.end, !dbg !108

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %ConfigFastModePlus.addr, align 4, !dbg !109
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !109
  %or1 = or i32 %4, %3, !dbg !109
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_I2CEx_DisableFastModePlus(i32 %ConfigFastModePlus) #0 !dbg !111 {
entry:
  %ConfigFastModePlus.addr = alloca i32, align 4
  %tmpreg = alloca i32, align 4
  store i32 %ConfigFastModePlus, i32* %ConfigFastModePlus.addr, align 4
  br label %do.body, !dbg !112

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !112
  %or = or i32 %0, 1, !dbg !112
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !112
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !112
  %and = and i32 %1, 1, !dbg !112
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !112
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !112
  br label %do.end, !dbg !112

do.end:                                           ; preds = %do.body
  %3 = load i32, i32* %ConfigFastModePlus.addr, align 4, !dbg !113
  %neg = xor i32 %3, -1, !dbg !113
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !113
  %and1 = and i32 %4, %neg, !dbg !113
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !113
  ret void, !dbg !114
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c_ex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_I2CEx_ConfigAnalogFilter", scope: !1, file: !1, line: 97, type: !9, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 103, column: 7, scope: !8)
!11 = !DILocation(line: 103, column: 13, scope: !8)
!12 = !DILocation(line: 103, column: 19, scope: !8)
!13 = !DILocation(line: 106, column: 5, scope: !8)
!14 = !DILocation(line: 108, column: 5, scope: !8)
!15 = !DILocation(line: 108, column: 11, scope: !8)
!16 = !DILocation(line: 108, column: 17, scope: !8)
!17 = !DILocation(line: 111, column: 5, scope: !8)
!18 = !DILocation(line: 114, column: 5, scope: !8)
!19 = !DILocation(line: 114, column: 11, scope: !8)
!20 = !DILocation(line: 114, column: 21, scope: !8)
!21 = !DILocation(line: 114, column: 25, scope: !8)
!22 = !DILocation(line: 117, column: 28, scope: !8)
!23 = !DILocation(line: 117, column: 5, scope: !8)
!24 = !DILocation(line: 117, column: 11, scope: !8)
!25 = !DILocation(line: 117, column: 21, scope: !8)
!26 = !DILocation(line: 117, column: 25, scope: !8)
!27 = !DILocation(line: 119, column: 5, scope: !8)
!28 = !DILocation(line: 121, column: 5, scope: !8)
!29 = !DILocation(line: 121, column: 11, scope: !8)
!30 = !DILocation(line: 121, column: 17, scope: !8)
!31 = !DILocation(line: 124, column: 5, scope: !8)
!32 = !DILocation(line: 126, column: 5, scope: !8)
!33 = !DILocation(line: 130, column: 5, scope: !8)
!34 = !DILocation(line: 132, column: 1, scope: !8)
!35 = distinct !DISubprogram(name: "HAL_I2CEx_ConfigDigitalFilter", scope: !1, file: !1, line: 141, type: !9, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 149, column: 7, scope: !35)
!37 = !DILocation(line: 149, column: 13, scope: !35)
!38 = !DILocation(line: 149, column: 19, scope: !35)
!39 = !DILocation(line: 152, column: 5, scope: !35)
!40 = !DILocation(line: 154, column: 5, scope: !35)
!41 = !DILocation(line: 154, column: 11, scope: !35)
!42 = !DILocation(line: 154, column: 17, scope: !35)
!43 = !DILocation(line: 157, column: 5, scope: !35)
!44 = !DILocation(line: 160, column: 14, scope: !35)
!45 = !DILocation(line: 160, column: 20, scope: !35)
!46 = !DILocation(line: 160, column: 30, scope: !35)
!47 = !DILocation(line: 160, column: 12, scope: !35)
!48 = !DILocation(line: 163, column: 12, scope: !35)
!49 = !DILocation(line: 166, column: 15, scope: !35)
!50 = !DILocation(line: 166, column: 29, scope: !35)
!51 = !DILocation(line: 166, column: 12, scope: !35)
!52 = !DILocation(line: 169, column: 27, scope: !35)
!53 = !DILocation(line: 169, column: 5, scope: !35)
!54 = !DILocation(line: 169, column: 11, scope: !35)
!55 = !DILocation(line: 169, column: 21, scope: !35)
!56 = !DILocation(line: 169, column: 25, scope: !35)
!57 = !DILocation(line: 171, column: 5, scope: !35)
!58 = !DILocation(line: 173, column: 5, scope: !35)
!59 = !DILocation(line: 173, column: 11, scope: !35)
!60 = !DILocation(line: 173, column: 17, scope: !35)
!61 = !DILocation(line: 176, column: 5, scope: !35)
!62 = !DILocation(line: 178, column: 5, scope: !35)
!63 = !DILocation(line: 182, column: 5, scope: !35)
!64 = !DILocation(line: 184, column: 1, scope: !35)
!65 = distinct !DISubprogram(name: "HAL_I2CEx_EnableWakeUp", scope: !1, file: !1, line: 192, type: !9, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!66 = !DILocation(line: 197, column: 7, scope: !65)
!67 = !DILocation(line: 197, column: 13, scope: !65)
!68 = !DILocation(line: 197, column: 19, scope: !65)
!69 = !DILocation(line: 200, column: 5, scope: !65)
!70 = !DILocation(line: 202, column: 5, scope: !65)
!71 = !DILocation(line: 202, column: 11, scope: !65)
!72 = !DILocation(line: 202, column: 17, scope: !65)
!73 = !DILocation(line: 205, column: 5, scope: !65)
!74 = !DILocation(line: 208, column: 5, scope: !65)
!75 = !DILocation(line: 208, column: 11, scope: !65)
!76 = !DILocation(line: 208, column: 21, scope: !65)
!77 = !DILocation(line: 208, column: 25, scope: !65)
!78 = !DILocation(line: 210, column: 5, scope: !65)
!79 = !DILocation(line: 212, column: 5, scope: !65)
!80 = !DILocation(line: 212, column: 11, scope: !65)
!81 = !DILocation(line: 212, column: 17, scope: !65)
!82 = !DILocation(line: 215, column: 5, scope: !65)
!83 = !DILocation(line: 217, column: 5, scope: !65)
!84 = !DILocation(line: 221, column: 5, scope: !65)
!85 = !DILocation(line: 223, column: 1, scope: !65)
!86 = distinct !DISubprogram(name: "HAL_I2CEx_DisableWakeUp", scope: !1, file: !1, line: 231, type: !9, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DILocation(line: 236, column: 7, scope: !86)
!88 = !DILocation(line: 236, column: 13, scope: !86)
!89 = !DILocation(line: 236, column: 19, scope: !86)
!90 = !DILocation(line: 239, column: 5, scope: !86)
!91 = !DILocation(line: 241, column: 5, scope: !86)
!92 = !DILocation(line: 241, column: 11, scope: !86)
!93 = !DILocation(line: 241, column: 17, scope: !86)
!94 = !DILocation(line: 244, column: 5, scope: !86)
!95 = !DILocation(line: 247, column: 5, scope: !86)
!96 = !DILocation(line: 247, column: 11, scope: !86)
!97 = !DILocation(line: 247, column: 21, scope: !86)
!98 = !DILocation(line: 247, column: 25, scope: !86)
!99 = !DILocation(line: 249, column: 5, scope: !86)
!100 = !DILocation(line: 251, column: 5, scope: !86)
!101 = !DILocation(line: 251, column: 11, scope: !86)
!102 = !DILocation(line: 251, column: 17, scope: !86)
!103 = !DILocation(line: 254, column: 5, scope: !86)
!104 = !DILocation(line: 256, column: 5, scope: !86)
!105 = !DILocation(line: 260, column: 5, scope: !86)
!106 = !DILocation(line: 262, column: 1, scope: !86)
!107 = distinct !DISubprogram(name: "HAL_I2CEx_EnableFastModePlus", scope: !1, file: !1, line: 281, type: !9, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!108 = !DILocation(line: 287, column: 3, scope: !107)
!109 = !DILocation(line: 290, column: 3, scope: !107)
!110 = !DILocation(line: 291, column: 1, scope: !107)
!111 = distinct !DISubprogram(name: "HAL_I2CEx_DisableFastModePlus", scope: !1, file: !1, line: 310, type: !9, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DILocation(line: 316, column: 3, scope: !111)
!113 = !DILocation(line: 319, column: 3, scope: !111)
!114 = !DILocation(line: 320, column: 1, scope: !111)
