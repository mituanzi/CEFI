; ModuleID = './Core/Src/main.c'
source_filename = "./Core/Src/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.__UART_HandleTypeDef = type { %struct.USART_TypeDef*, %struct.UART_InitTypeDef, %struct.UART_AdvFeatureInitTypeDef, i8*, i16, i16, i8*, i16, i16, i16, i32, i16, i16, i32, void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)*, %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef*, i8, i32, i32, i32 }
%struct.USART_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UART_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UART_AdvFeatureInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__DMA_HandleTypeDef = type { %struct.DMA_Channel_TypeDef*, %struct.DMA_InitTypeDef, i8, i8, i8*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, i32, %struct.DMA_TypeDef*, i32, %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef*, i32, %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef*, i32 }
%struct.DMA_Channel_TypeDef = type { i32, i32, i32, i32, i32 }
%struct.DMA_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DMA_TypeDef = type { i32, i32 }
%struct.DMAMUX_Channel_TypeDef = type { i32 }
%struct.DMAMUX_ChannelStatus_TypeDef = type { i32, i32 }
%struct.DMAMUX_RequestGen_TypeDef = type { i32 }
%struct.DMAMUX_RequestGenStatus_TypeDef = type { i32, i32 }
%struct.LiquidCrystalStruct = type { i32 }
%struct.CoreDebug_Type = type { i32, i32, i32, i32, [1 x i32], i32, i32 }
%struct.DWT_Type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [934 x i32], i32, [1 x i32], i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }

@UartReady = dso_local global i8 0, align 1
@OutBuf = dso_local global [50 x i8] zeroinitializer, align 1
@ustepsPerMM = dso_local global i32 2560, align 4
@ustepsPerML = dso_local global i32 6826, align 4
@motorDirPin = dso_local global i32 2, align 4
@motorStepPin = dso_local global i32 3, align 4
@triggerPin = dso_local global i32 0, align 4
@bigTriggerPin = dso_local global i32 0, align 4
@adc_key_val = dso_local global [5 x i32] [i32 30, i32 150, i32 360, i32 535, i32 760], align 4
@NUM_KEYS = dso_local global i32 5, align 4
@key = dso_local global i32 5, align 4
@mLBolusStepsLength = dso_local constant i32 9, align 4
@mLBolusSteps = dso_local global [9 x float] [float 0x3F50624DE0000000, float 0x3F747AE140000000, float 0x3F847AE140000000, float 0x3FA99999A0000000, float 0x3FB99999A0000000, float 5.000000e-01, float 1.000000e+00, float 5.000000e+00, float 1.000000e+01], align 4
@mLBolus = dso_local global float 5.000000e-01, align 4
@mLBigBolus = dso_local global float 1.000000e+00, align 4
@mLUsed = dso_local global float 0.000000e+00, align 4
@mLBolusStepIdx = dso_local global i32 3, align 4
@mLBolusStep = dso_local global float 0x3FA99999A0000000, align 4
@stepperPos = dso_local global i32 0, align 4
@lastKeyRepeatAt = dso_local global i32 0, align 4
@keyRepeatDelay = dso_local global i32 400, align 4
@keyDebounce = dso_local global i32 125, align 4
@prevKey = dso_local global i32 5, align 4
@uiState = dso_local global i32 0, align 4
@prevBigTrigger = dso_local global i32 0, align 4
@prevTrigger = dso_local global i32 0, align 4
@serialStr = dso_local global [80 x i8] zeroinitializer, align 1
@serialStrReady = dso_local global i8 0, align 1
@serialStrLen = dso_local global i32 0, align 4
@huart1 = common dso_local global %struct.__UART_HandleTypeDef zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c" This operation is illegal.\0D\0A\00", align 1
@lcd = common dso_local global %struct.LiquidCrystalStruct zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"SyringePump v2.0\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"mLBolus =[%f]\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid command: [\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"]\0D\0A\00", align 1
@adc_key_in = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Used %d.%d mL\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Bolus %d.%d mL\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Menu> BolusStep\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Starting syringe pump\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"start: [%f]\0D\0A\00", align 1
@SystemCoreClock = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"It is %d\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"end:[%f]\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"duration: [%f]\0D\0A\00", align 1
@sensitiveAddr = common dso_local global i32 0, align 4
@memory = common dso_local global [2048 x i8] zeroinitializer, align 1
@bitmap = common dso_local global [10000 x i8] zeroinitializer, align 1
@global_ebp = common dso_local global i32* null, align 4
@global_esp = common dso_local global i32* null, align 4
@cfi_trigger_count = common dso_local global i32 0, align 4
@dfi_trigger_count = common dso_local global i32 0, align 4
@charBuf = common dso_local global [16 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @DWT_Init() #0 !dbg !8 {
entry:
  %retval = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.CoreDebug_Type, %struct.CoreDebug_Type* inttoptr (i32 -536810000 to %struct.CoreDebug_Type*), i32 0, i32 3), align 4, !dbg !11
  %or = or i32 %0, 16842752, !dbg !11
  store volatile i32 %or, i32* getelementptr inbounds (%struct.CoreDebug_Type, %struct.CoreDebug_Type* inttoptr (i32 -536810000 to %struct.CoreDebug_Type*), i32 0, i32 3), align 4, !dbg !11
  store volatile i32 0, i32* getelementptr inbounds (%struct.DWT_Type, %struct.DWT_Type* inttoptr (i32 -536866816 to %struct.DWT_Type*), i32 0, i32 1), align 4, !dbg !12
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.DWT_Type, %struct.DWT_Type* inttoptr (i32 -536866816 to %struct.DWT_Type*), i32 0, i32 0), align 4, !dbg !13
  %or1 = or i32 %1, 1, !dbg !13
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.DWT_Type, %struct.DWT_Type* inttoptr (i32 -536866816 to %struct.DWT_Type*), i32 0, i32 0), align 4, !dbg !13
  %2 = load i32, i32* %retval, align 4, !dbg !14
  ret i32 %2, !dbg !14
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @DWT_GetTick() #0 !dbg !15 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DWT_Type, %struct.DWT_Type* inttoptr (i32 -536866816 to %struct.DWT_Type*), i32 0, i32 1), align 4, !dbg !16
  ret i32 %0, !dbg !17
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @print(i8* %str, i32 %len) #0 !dbg !18 {
entry:
  %str.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4, !dbg !19
  %1 = load i32, i32* %len.addr, align 4, !dbg !20
  %conv = trunc i32 %1 to i16, !dbg !20
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit_IT(%struct.__UART_HandleTypeDef* @huart1, i8* %0, i16 zeroext %conv), !dbg !21
  %conv1 = zext i8 %call to i32, !dbg !21
  %cmp = icmp ne i32 %conv1, 0, !dbg !22
  br i1 %cmp, label %if.then, label %if.end, !dbg !21

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !23
  br label %if.end, !dbg !24

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !25

while.cond:                                       ; preds = %while.body, %if.end
  %call3 = call arm_aapcs_vfpcc i32 @HAL_UART_GetState(%struct.__UART_HandleTypeDef* @huart1), !dbg !26
  %cmp4 = icmp ne i32 %call3, 32, !dbg !27
  br i1 %cmp4, label %while.body, label %while.end, !dbg !25

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !25, !llvm.loop !28

while.end:                                        ; preds = %while.cond
  store volatile i8 0, i8* @UartReady, align 1, !dbg !30
  ret void, !dbg !31
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit_IT(%struct.__UART_HandleTypeDef*, i8*, i16 zeroext) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @Error_Handler() #0 !dbg !32 {
entry:
  ret void, !dbg !33
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_UART_GetState(%struct.__UART_HandleTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @judge_legality(i8* %endfunc, i32 %id) #0 !dbg !34 {
entry:
  %endfunc.addr = alloca i8*, align 4
  %id.addr = alloca i32, align 4
  %warningstr = alloca [50 x i8], align 1
  %ret = alloca i32, align 4
  store i8* %endfunc, i8** %endfunc.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = bitcast [50 x i8]* %warningstr to i8*, !dbg !35
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !35
  %1 = load i8*, i8** %endfunc.addr, align 4, !dbg !36
  %2 = load i32, i32* %id.addr, align 4, !dbg !37
  %call = call arm_aapcs_vfpcc i32 @trust_interface(i8* %1, i32 %2), !dbg !38
  store i32 %call, i32* %ret, align 4, !dbg !39
  %3 = load i32, i32* %ret, align 4, !dbg !40
  %cmp = icmp ne i32 %3, 1, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !40

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %warningstr, i32 0, i32 0, !dbg !42
  %call1 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)), !dbg !43
  %arraydecay2 = getelementptr inbounds [50 x i8], [50 x i8]* %warningstr, i32 0, i32 0, !dbg !44
  call arm_aapcs_vfpcc void @print(i8* %arraydecay2, i32 50), !dbg !45
  br label %while.body, !dbg !46

while.body:                                       ; preds = %if.then, %while.body
  br label %while.body, !dbg !46, !llvm.loop !47

if.end:                                           ; preds = %entry
  ret void, !dbg !49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

declare dso_local arm_aapcs_vfpcc i32 @trust_interface(i8*, i32) #1

declare dso_local arm_aapcs_vfpcc i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @setup() #0 !dbg !50 {
entry:
  call arm_aapcs_vfpcc void @lcd_begin(%struct.LiquidCrystalStruct* @lcd, i32 16, i32 2), !dbg !51
  call arm_aapcs_vfpcc void @lcd_clear(%struct.LiquidCrystalStruct* @lcd), !dbg !52
  call arm_aapcs_vfpcc void @lcd_print(%struct.LiquidCrystalStruct* @lcd, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 16), !dbg !53
  %0 = load i32, i32* @triggerPin, align 4, !dbg !54
  call arm_aapcs_vfpcc void @pinMode(i32 %0, i32 0), !dbg !55
  %1 = load i32, i32* @bigTriggerPin, align 4, !dbg !56
  call arm_aapcs_vfpcc void @pinMode(i32 %1, i32 0), !dbg !57
  %2 = load i32, i32* @triggerPin, align 4, !dbg !58
  call arm_aapcs_vfpcc void @digitalWrite(i32 %2, i32 0), !dbg !59
  %3 = load i32, i32* @bigTriggerPin, align 4, !dbg !60
  call arm_aapcs_vfpcc void @digitalWrite(i32 %3, i32 0), !dbg !61
  %4 = load i32, i32* @motorDirPin, align 4, !dbg !62
  call arm_aapcs_vfpcc void @pinMode(i32 %4, i32 1), !dbg !63
  %5 = load i32, i32* @motorStepPin, align 4, !dbg !64
  call arm_aapcs_vfpcc void @pinMode(i32 %5, i32 1), !dbg !65
  call arm_aapcs_vfpcc void @Serial_begin(i32 115200), !dbg !66
  ret void, !dbg !67
}

declare dso_local arm_aapcs_vfpcc void @lcd_begin(%struct.LiquidCrystalStruct*, i32, i32) #1

declare dso_local arm_aapcs_vfpcc void @lcd_clear(%struct.LiquidCrystalStruct*) #1

declare dso_local arm_aapcs_vfpcc void @lcd_print(%struct.LiquidCrystalStruct*, i8*, i32) #1

declare dso_local arm_aapcs_vfpcc void @pinMode(i32, i32) #1

declare dso_local arm_aapcs_vfpcc void @digitalWrite(i32, i32) #1

declare dso_local arm_aapcs_vfpcc void @Serial_begin(i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @loop(i32 %count) #0 !dbg !68 {
entry:
  %count.addr = alloca i32, align 4
  store i32 %count, i32* %count.addr, align 4
  %0 = load i8, i8* @serialStrReady, align 1, !dbg !69
  %tobool = trunc i8 %0 to i1, !dbg !69
  br i1 %tobool, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @processSerial(), !dbg !70
  br label %if.end, !dbg !71

if.end:                                           ; preds = %if.then, %entry
  %1 = load float, float* @mLBolus, align 4, !dbg !72
  %conv = fpext float %1 to double, !dbg !72
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), double %conv), !dbg !73
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !74
  ret void, !dbg !75
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @checkTriggers() #0 !dbg !76 {
entry:
  %pushTriggerValue = alloca i32, align 4
  %bigTriggerValue = alloca i32, align 4
  %mLBolusTemp = alloca float, align 4
  %0 = load i32, i32* @triggerPin, align 4, !dbg !77
  %call = call arm_aapcs_vfpcc i32 @digitalRead(i32 %0), !dbg !78
  store i32 %call, i32* %pushTriggerValue, align 4, !dbg !79
  %1 = load i32, i32* %pushTriggerValue, align 4, !dbg !80
  %cmp = icmp eq i32 %1, 0, !dbg !81
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !82

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @prevTrigger, align 4, !dbg !83
  %cmp1 = icmp eq i32 %2, 1, !dbg !84
  br i1 %cmp1, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %land.lhs.true
  call arm_aapcs_vfpcc void @bolus(i32 0), !dbg !85
  call arm_aapcs_vfpcc void @updateScreen(), !dbg !86
  br label %if.end, !dbg !87

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, i32* %pushTriggerValue, align 4, !dbg !88
  store i32 %3, i32* @prevTrigger, align 4, !dbg !89
  %4 = load i32, i32* @bigTriggerPin, align 4, !dbg !90
  %call2 = call arm_aapcs_vfpcc i32 @digitalRead(i32 %4), !dbg !91
  store i32 %call2, i32* %bigTriggerValue, align 4, !dbg !92
  %5 = load i32, i32* %bigTriggerValue, align 4, !dbg !93
  %cmp3 = icmp eq i32 %5, 0, !dbg !94
  br i1 %cmp3, label %land.lhs.true4, label %if.end7, !dbg !95

land.lhs.true4:                                   ; preds = %if.end
  %6 = load i32, i32* @prevBigTrigger, align 4, !dbg !96
  %cmp5 = icmp eq i32 %6, 1, !dbg !97
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !93

if.then6:                                         ; preds = %land.lhs.true4
  %7 = load float, float* @mLBolus, align 4, !dbg !98
  store float %7, float* %mLBolusTemp, align 4, !dbg !99
  %8 = load float, float* @mLBigBolus, align 4, !dbg !100
  store float %8, float* @mLBolus, align 4, !dbg !101
  call arm_aapcs_vfpcc void @bolus(i32 0), !dbg !102
  %9 = load float, float* %mLBolusTemp, align 4, !dbg !103
  store float %9, float* @mLBolus, align 4, !dbg !104
  call arm_aapcs_vfpcc void @updateScreen(), !dbg !105
  br label %if.end7, !dbg !106

if.end7:                                          ; preds = %if.then6, %land.lhs.true4, %if.end
  %10 = load i32, i32* %bigTriggerValue, align 4, !dbg !107
  store i32 %10, i32* @prevBigTrigger, align 4, !dbg !108
  ret void, !dbg !109
}

declare dso_local arm_aapcs_vfpcc i32 @digitalRead(i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @bolus(i32 %direction) #0 !dbg !110 {
entry:
  %direction.addr = alloca i32, align 4
  %steps = alloca i32, align 4
  %usDelay = alloca float, align 4
  store i32 %direction, i32* %direction.addr, align 4
  %0 = load float, float* @mLBolus, align 4, !dbg !111
  %1 = load i32, i32* @ustepsPerML, align 4, !dbg !112
  %conv = sitofp i32 %1 to float, !dbg !112
  %mul = fmul float %0, %conv, !dbg !113
  %conv1 = fptosi float %mul to i32, !dbg !114
  store i32 %conv1, i32* %steps, align 4, !dbg !115
  %2 = load i32, i32* %direction.addr, align 4, !dbg !116
  %cmp = icmp eq i32 %2, 0, !dbg !117
  br i1 %cmp, label %if.then, label %if.else, !dbg !116

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @led_on(), !dbg !118
  %3 = load i32, i32* @motorDirPin, align 4, !dbg !119
  call arm_aapcs_vfpcc void @digitalWrite(i32 %3, i32 0), !dbg !120
  %4 = load float, float* @mLBolus, align 4, !dbg !121
  %5 = load i32, i32* @ustepsPerML, align 4, !dbg !122
  %conv3 = sitofp i32 %5 to float, !dbg !122
  %mul4 = fmul float %4, %conv3, !dbg !123
  %conv5 = fptosi float %mul4 to i32, !dbg !121
  store i32 %conv5, i32* %steps, align 4, !dbg !124
  %6 = load float, float* @mLBolus, align 4, !dbg !125
  %7 = load float, float* @mLUsed, align 4, !dbg !126
  %add = fadd float %7, %6, !dbg !126
  store float %add, float* @mLUsed, align 4, !dbg !126
  br label %if.end15, !dbg !127

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %direction.addr, align 4, !dbg !128
  %cmp6 = icmp eq i32 %8, 1, !dbg !129
  br i1 %cmp6, label %if.then8, label %if.end14, !dbg !128

if.then8:                                         ; preds = %if.else
  call arm_aapcs_vfpcc void @led_off(), !dbg !130
  %9 = load i32, i32* @motorDirPin, align 4, !dbg !131
  call arm_aapcs_vfpcc void @digitalWrite(i32 %9, i32 1), !dbg !132
  %10 = load float, float* @mLUsed, align 4, !dbg !133
  %11 = load float, float* @mLBolus, align 4, !dbg !134
  %sub = fsub float %10, %11, !dbg !135
  %cmp9 = fcmp ogt float %sub, 0.000000e+00, !dbg !136
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !137

if.then11:                                        ; preds = %if.then8
  %12 = load float, float* @mLBolus, align 4, !dbg !138
  %13 = load float, float* @mLUsed, align 4, !dbg !139
  %sub12 = fsub float %13, %12, !dbg !139
  store float %sub12, float* @mLUsed, align 4, !dbg !139
  br label %if.end, !dbg !140

if.else13:                                        ; preds = %if.then8
  store float 0.000000e+00, float* @mLUsed, align 4, !dbg !141
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end14, !dbg !142

if.end14:                                         ; preds = %if.end, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  store float 1.000000e+02, float* %usDelay, align 4, !dbg !143
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @readSerial() #0 !dbg !145 {
entry:
  %i = alloca i32, align 4
  %inChar = alloca i8, align 1
  store i32 0, i32* %i, align 4, !dbg !146
  br label %while.cond, !dbg !147

while.cond:                                       ; preds = %if.end, %entry
  %call = call arm_aapcs_vfpcc i32 bitcast (i32 (...)* @Serial_available to i32 ()*)(), !dbg !148
  %tobool = icmp ne i32 %call, 0, !dbg !147
  br i1 %tobool, label %while.body, label %while.end, !dbg !147

while.body:                                       ; preds = %while.cond
  %call1 = call arm_aapcs_vfpcc i32 bitcast (i32 (...)* @Serial_read to i32 ()*)(), !dbg !149
  %conv = trunc i32 %call1 to i8, !dbg !150
  store i8 %conv, i8* %inChar, align 1, !dbg !151
  %0 = load i8, i8* %inChar, align 1, !dbg !152
  %conv2 = zext i8 %0 to i32, !dbg !152
  %cmp = icmp slt i32 %conv2, 32, !dbg !153
  br i1 %cmp, label %if.then, label %if.else, !dbg !152

if.then:                                          ; preds = %while.body
  store i8 1, i8* @serialStrReady, align 1, !dbg !154
  br label %if.end, !dbg !155

if.else:                                          ; preds = %while.body
  %1 = load i8, i8* %inChar, align 1, !dbg !156
  %2 = load i32, i32* @serialStrLen, align 4, !dbg !157
  %arrayidx = getelementptr inbounds [80 x i8], [80 x i8]* @serialStr, i32 0, i32 %2, !dbg !158
  store i8 %1, i8* %arrayidx, align 1, !dbg !159
  %3 = load i32, i32* @serialStrLen, align 4, !dbg !160
  %inc = add nsw i32 %3, 1, !dbg !160
  store i32 %inc, i32* @serialStrLen, align 4, !dbg !160
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !147, !llvm.loop !161

while.end:                                        ; preds = %while.cond
  ret void, !dbg !163
}

declare dso_local arm_aapcs_vfpcc i32 @Serial_available(...) #1

declare dso_local arm_aapcs_vfpcc i32 @Serial_read(...) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @processSerial() #0 !dbg !164 {
entry:
  %uLbolus = alloca i32, align 4
  %0 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @serialStr, i32 0, i32 0), align 1, !dbg !165
  %conv = zext i8 %0 to i32, !dbg !165
  %cmp = icmp eq i32 %conv, 43, !dbg !166
  br i1 %cmp, label %if.then, label %if.else, !dbg !165

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @bolus(i32 0), !dbg !167
  call arm_aapcs_vfpcc void @updateScreen(), !dbg !168
  br label %if.end19, !dbg !169

if.else:                                          ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @serialStr, i32 0, i32 0), align 1, !dbg !170
  %conv2 = zext i8 %1 to i32, !dbg !170
  %cmp3 = icmp eq i32 %conv2, 45, !dbg !171
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !170

if.then5:                                         ; preds = %if.else
  call arm_aapcs_vfpcc void @bolus(i32 1), !dbg !172
  call arm_aapcs_vfpcc void @updateScreen(), !dbg !173
  br label %if.end18, !dbg !174

if.else6:                                         ; preds = %if.else
  %2 = load i32, i32* @serialStrLen, align 4, !dbg !175
  %call = call arm_aapcs_vfpcc i32 @toUInt(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @serialStr, i32 0, i32 0), i32 %2), !dbg !176
  %cmp7 = icmp ne i32 %call, 0, !dbg !177
  br i1 %cmp7, label %if.then9, label %if.else14, !dbg !176

if.then9:                                         ; preds = %if.else6
  %3 = load i32, i32* @serialStrLen, align 4, !dbg !178
  %call10 = call arm_aapcs_vfpcc i32 @toUInt(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @serialStr, i32 0, i32 0), i32 %3), !dbg !179
  store i32 %call10, i32* %uLbolus, align 4, !dbg !180
  %4 = load i32, i32* %uLbolus, align 4, !dbg !181
  %conv11 = sitofp i32 %4 to float, !dbg !182
  %conv12 = fpext float %conv11 to double, !dbg !182
  %div = fdiv double %conv12, 1.000000e+03, !dbg !183
  %conv13 = fptrunc double %div to float, !dbg !182
  store float %conv13, float* @mLBolus, align 4, !dbg !184
  call arm_aapcs_vfpcc void @updateScreen(), !dbg !185
  br label %if.end, !dbg !186

if.else14:                                        ; preds = %if.else6
  %call15 = call arm_aapcs_vfpcc i32 @Serial_write(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 18), !dbg !187
  %5 = load i32, i32* @serialStrLen, align 4, !dbg !188
  %call16 = call arm_aapcs_vfpcc i32 @Serial_write(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @serialStr, i32 0, i32 0), i32 %5), !dbg !189
  %call17 = call arm_aapcs_vfpcc i32 @Serial_write(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 3), !dbg !190
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then9
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  store i8 0, i8* @serialStrReady, align 1, !dbg !191
  store i32 0, i32* @serialStrLen, align 4, !dbg !192
  ret void, !dbg !193
}

declare dso_local arm_aapcs_vfpcc i32 @toUInt(i8*, i32) #1

declare dso_local arm_aapcs_vfpcc i32 @Serial_write(i8*, i32) #1

declare dso_local arm_aapcs_vfpcc void @led_on() #1

declare dso_local arm_aapcs_vfpcc void @led_off() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @readKey() #0 !dbg !194 {
entry:
  %currentTime = alloca i32, align 4
  %timeSinceLastPress = alloca i32, align 4
  %processThisKey = alloca i8, align 1
  %call = call arm_aapcs_vfpcc i32 @analogRead(i32 0), !dbg !195
  store i32 %call, i32* @adc_key_in, align 4, !dbg !196
  %0 = load i32, i32* @adc_key_in, align 4, !dbg !197
  %call1 = call arm_aapcs_vfpcc i32 @get_key(i32 %0), !dbg !198
  store i32 %call1, i32* @key, align 4, !dbg !199
  %call2 = call arm_aapcs_vfpcc i32 bitcast (i32 (...)* @millis to i32 ()*)(), !dbg !200
  store i32 %call2, i32* %currentTime, align 4, !dbg !201
  %1 = load i32, i32* %currentTime, align 4, !dbg !202
  %2 = load i32, i32* @lastKeyRepeatAt, align 4, !dbg !203
  %sub = sub nsw i32 %1, %2, !dbg !204
  store i32 %sub, i32* %timeSinceLastPress, align 4, !dbg !205
  store i8 0, i8* %processThisKey, align 1, !dbg !206
  %3 = load i32, i32* @prevKey, align 4, !dbg !207
  %4 = load i32, i32* @key, align 4, !dbg !208
  %cmp = icmp eq i32 %3, %4, !dbg !209
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !210

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %timeSinceLastPress, align 4, !dbg !211
  %6 = load i32, i32* @keyRepeatDelay, align 4, !dbg !212
  %cmp3 = icmp sgt i32 %5, %6, !dbg !213
  br i1 %cmp3, label %if.then, label %if.end, !dbg !207

if.then:                                          ; preds = %land.lhs.true
  store i8 1, i8* %processThisKey, align 1, !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* @prevKey, align 4, !dbg !216
  %cmp4 = icmp eq i32 %7, 5, !dbg !217
  br i1 %cmp4, label %land.lhs.true5, label %if.end8, !dbg !218

land.lhs.true5:                                   ; preds = %if.end
  %8 = load i32, i32* %timeSinceLastPress, align 4, !dbg !219
  %9 = load i32, i32* @keyDebounce, align 4, !dbg !220
  %cmp6 = icmp sgt i32 %8, %9, !dbg !221
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !216

if.then7:                                         ; preds = %land.lhs.true5
  store i8 1, i8* %processThisKey, align 1, !dbg !222
  br label %if.end8, !dbg !223

if.end8:                                          ; preds = %if.then7, %land.lhs.true5, %if.end
  %10 = load i32, i32* @key, align 4, !dbg !224
  %cmp9 = icmp eq i32 %10, 5, !dbg !225
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !224

if.then10:                                        ; preds = %if.end8
  store i8 0, i8* %processThisKey, align 1, !dbg !226
  br label %if.end11, !dbg !227

if.end11:                                         ; preds = %if.then10, %if.end8
  %11 = load i32, i32* @key, align 4, !dbg !228
  store i32 %11, i32* @prevKey, align 4, !dbg !229
  %12 = load i8, i8* %processThisKey, align 1, !dbg !230
  %tobool = trunc i8 %12 to i1, !dbg !230
  br i1 %tobool, label %if.then12, label %if.end13, !dbg !230

if.then12:                                        ; preds = %if.end11
  %13 = load i32, i32* @key, align 4, !dbg !231
  call arm_aapcs_vfpcc void @doKeyAction(i32 %13), !dbg !232
  %14 = load i32, i32* %currentTime, align 4, !dbg !233
  store i32 %14, i32* @lastKeyRepeatAt, align 4, !dbg !234
  br label %if.end13, !dbg !235

if.end13:                                         ; preds = %if.then12, %if.end11
  ret void, !dbg !236
}

declare dso_local arm_aapcs_vfpcc i32 @analogRead(i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @get_key(i32 %input) #0 !dbg !237 {
entry:
  %retval = alloca i32, align 4
  %input.addr = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %input, i32* %input.addr, align 4
  store i32 0, i32* %k, align 4, !dbg !238
  br label %for.cond, !dbg !239

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4, !dbg !240
  %1 = load i32, i32* @NUM_KEYS, align 4, !dbg !241
  %cmp = icmp slt i32 %0, %1, !dbg !242
  br i1 %cmp, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %input.addr, align 4, !dbg !244
  %3 = load i32, i32* %k, align 4, !dbg !245
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @adc_key_val, i32 0, i32 %3, !dbg !246
  %4 = load i32, i32* %arrayidx, align 4, !dbg !246
  %cmp1 = icmp ult i32 %2, %4, !dbg !247
  br i1 %cmp1, label %if.then, label %if.end, !dbg !244

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %k, align 4, !dbg !248
  store i32 %5, i32* %retval, align 4, !dbg !249
  br label %return, !dbg !249

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !250

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %k, align 4, !dbg !251
  %inc = add nsw i32 %6, 1, !dbg !251
  store i32 %inc, i32* %k, align 4, !dbg !251
  br label %for.cond, !dbg !243, !llvm.loop !252

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %k, align 4, !dbg !253
  %8 = load i32, i32* @NUM_KEYS, align 4, !dbg !254
  %cmp2 = icmp sge i32 %7, %8, !dbg !255
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !253

if.then3:                                         ; preds = %for.end
  store i32 5, i32* %k, align 4, !dbg !256
  br label %if.end4, !dbg !257

if.end4:                                          ; preds = %if.then3, %for.end
  %9 = load i32, i32* %k, align 4, !dbg !258
  store i32 %9, i32* %retval, align 4, !dbg !259
  br label %return, !dbg !259

return:                                           ; preds = %if.end4, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !260
  ret i32 %10, !dbg !260
}

declare dso_local arm_aapcs_vfpcc i32 @millis(...) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @doKeyAction(i32 %key) #0 !dbg !261 {
entry:
  %key.addr = alloca i32, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4, !dbg !262
  %cmp = icmp eq i32 %0, 5, !dbg !263
  br i1 %cmp, label %if.then, label %if.end, !dbg !262

if.then:                                          ; preds = %entry
  br label %return, !dbg !264

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %key.addr, align 4, !dbg !265
  %cmp1 = icmp eq i32 %1, 4, !dbg !266
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !265

if.then2:                                         ; preds = %if.end
  %2 = load i32, i32* @uiState, align 4, !dbg !267
  %cmp3 = icmp eq i32 %2, 0, !dbg !268
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !267

if.then4:                                         ; preds = %if.then2
  store i32 1, i32* @uiState, align 4, !dbg !269
  br label %if.end5, !dbg !270

if.else:                                          ; preds = %if.then2
  store i32 0, i32* @uiState, align 4, !dbg !271
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  br label %if.end6, !dbg !272

if.end6:                                          ; preds = %if.end5, %if.end
  %3 = load i32, i32* @uiState, align 4, !dbg !273
  %cmp7 = icmp eq i32 %3, 0, !dbg !274
  br i1 %cmp7, label %if.then8, label %if.else26, !dbg !273

if.then8:                                         ; preds = %if.end6
  %4 = load i32, i32* %key.addr, align 4, !dbg !275
  %cmp9 = icmp eq i32 %4, 3, !dbg !276
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !275

if.then10:                                        ; preds = %if.then8
  call arm_aapcs_vfpcc void @bolus(i32 1), !dbg !277
  br label %if.end11, !dbg !278

if.end11:                                         ; preds = %if.then10, %if.then8
  %5 = load i32, i32* %key.addr, align 4, !dbg !279
  %cmp12 = icmp eq i32 %5, 0, !dbg !280
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !279

if.then13:                                        ; preds = %if.end11
  call arm_aapcs_vfpcc void @bolus(i32 0), !dbg !281
  br label %if.end14, !dbg !282

if.end14:                                         ; preds = %if.then13, %if.end11
  %6 = load i32, i32* %key.addr, align 4, !dbg !283
  %cmp15 = icmp eq i32 %6, 1, !dbg !284
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !283

if.then16:                                        ; preds = %if.end14
  %7 = load float, float* @mLBolusStep, align 4, !dbg !285
  %8 = load float, float* @mLBolus, align 4, !dbg !286
  %add = fadd float %8, %7, !dbg !286
  store float %add, float* @mLBolus, align 4, !dbg !286
  br label %if.end17, !dbg !287

if.end17:                                         ; preds = %if.then16, %if.end14
  %9 = load i32, i32* %key.addr, align 4, !dbg !288
  %cmp18 = icmp eq i32 %9, 2, !dbg !289
  br i1 %cmp18, label %if.then19, label %if.end25, !dbg !288

if.then19:                                        ; preds = %if.end17
  %10 = load float, float* @mLBolus, align 4, !dbg !290
  %11 = load float, float* @mLBolusStep, align 4, !dbg !291
  %sub = fsub float %10, %11, !dbg !292
  %cmp20 = fcmp ogt float %sub, 0.000000e+00, !dbg !293
  br i1 %cmp20, label %if.then21, label %if.else23, !dbg !294

if.then21:                                        ; preds = %if.then19
  %12 = load float, float* @mLBolusStep, align 4, !dbg !295
  %13 = load float, float* @mLBolus, align 4, !dbg !296
  %sub22 = fsub float %13, %12, !dbg !296
  store float %sub22, float* @mLBolus, align 4, !dbg !296
  br label %if.end24, !dbg !297

if.else23:                                        ; preds = %if.then19
  store float 0.000000e+00, float* @mLBolus, align 4, !dbg !298
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then21
  br label %if.end25, !dbg !299

if.end25:                                         ; preds = %if.end24, %if.end17
  br label %if.end50, !dbg !300

if.else26:                                        ; preds = %if.end6
  %14 = load i32, i32* @uiState, align 4, !dbg !301
  %cmp27 = icmp eq i32 %14, 1, !dbg !302
  br i1 %cmp27, label %if.then28, label %if.end49, !dbg !301

if.then28:                                        ; preds = %if.else26
  %15 = load i32, i32* %key.addr, align 4, !dbg !303
  %cmp29 = icmp eq i32 %15, 3, !dbg !304
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !303

if.then30:                                        ; preds = %if.then28
  br label %if.end31, !dbg !305

if.end31:                                         ; preds = %if.then30, %if.then28
  %16 = load i32, i32* %key.addr, align 4, !dbg !306
  %cmp32 = icmp eq i32 %16, 0, !dbg !307
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !306

if.then33:                                        ; preds = %if.end31
  br label %if.end34, !dbg !308

if.end34:                                         ; preds = %if.then33, %if.end31
  %17 = load i32, i32* %key.addr, align 4, !dbg !309
  %cmp35 = icmp eq i32 %17, 1, !dbg !310
  br i1 %cmp35, label %if.then36, label %if.end40, !dbg !309

if.then36:                                        ; preds = %if.end34
  %18 = load i32, i32* @mLBolusStepIdx, align 4, !dbg !311
  %cmp37 = icmp slt i32 %18, 8, !dbg !312
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !311

if.then38:                                        ; preds = %if.then36
  %19 = load i32, i32* @mLBolusStepIdx, align 4, !dbg !313
  %inc = add nsw i32 %19, 1, !dbg !313
  store i32 %inc, i32* @mLBolusStepIdx, align 4, !dbg !313
  %20 = load i32, i32* @mLBolusStepIdx, align 4, !dbg !314
  %arrayidx = getelementptr inbounds [9 x float], [9 x float]* @mLBolusSteps, i32 0, i32 %20, !dbg !315
  %21 = load float, float* %arrayidx, align 4, !dbg !315
  store float %21, float* @mLBolusStep, align 4, !dbg !316
  br label %if.end39, !dbg !317

if.end39:                                         ; preds = %if.then38, %if.then36
  br label %if.end40, !dbg !318

if.end40:                                         ; preds = %if.end39, %if.end34
  %22 = load i32, i32* %key.addr, align 4, !dbg !319
  %cmp41 = icmp eq i32 %22, 2, !dbg !320
  br i1 %cmp41, label %if.then42, label %if.end48, !dbg !319

if.then42:                                        ; preds = %if.end40
  %23 = load i32, i32* @mLBolusStepIdx, align 4, !dbg !321
  %cmp43 = icmp sgt i32 %23, 0, !dbg !322
  br i1 %cmp43, label %if.then44, label %if.end47, !dbg !321

if.then44:                                        ; preds = %if.then42
  %24 = load i32, i32* @mLBolusStepIdx, align 4, !dbg !323
  %sub45 = sub nsw i32 %24, 1, !dbg !323
  store i32 %sub45, i32* @mLBolusStepIdx, align 4, !dbg !323
  %25 = load i32, i32* @mLBolusStepIdx, align 4, !dbg !324
  %arrayidx46 = getelementptr inbounds [9 x float], [9 x float]* @mLBolusSteps, i32 0, i32 %25, !dbg !325
  %26 = load float, float* %arrayidx46, align 4, !dbg !325
  store float %26, float* @mLBolusStep, align 4, !dbg !326
  br label %if.end47, !dbg !327

if.end47:                                         ; preds = %if.then44, %if.then42
  br label %if.end48, !dbg !328

if.end48:                                         ; preds = %if.end47, %if.end40
  br label %if.end49, !dbg !329

if.end49:                                         ; preds = %if.end48, %if.else26
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end25
  call arm_aapcs_vfpcc void @updateScreen(), !dbg !330
  br label %return, !dbg !331

return:                                           ; preds = %if.end50, %if.then
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @updateScreen() #0 !dbg !332 {
entry:
  %s1 = alloca [80 x i8], align 1
  %s2 = alloca [80 x i8], align 1
  %s1Len = alloca i32, align 4
  %s2Len = alloca i32, align 4
  store i32 0, i32* %s1Len, align 4, !dbg !333
  store i32 0, i32* %s2Len, align 4, !dbg !334
  %0 = load i32, i32* @uiState, align 4, !dbg !335
  %cmp = icmp eq i32 %0, 0, !dbg !336
  br i1 %cmp, label %if.then, label %if.else, !dbg !335

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %s1, i32 0, i32 0, !dbg !337
  %1 = load float, float* @mLUsed, align 4, !dbg !338
  %conv = fptosi float %1 to i32, !dbg !339
  %2 = load float, float* @mLUsed, align 4, !dbg !340
  %conv1 = fpext float %2 to double, !dbg !340
  %mul = fmul double %conv1, 1.000000e+03, !dbg !340
  %add = fadd double %mul, 5.000000e-01, !dbg !340
  %3 = load float, float* @mLUsed, align 4, !dbg !340
  %conv2 = fptosi float %3 to i32, !dbg !340
  %conv3 = sitofp i32 %conv2 to double, !dbg !340
  %mul4 = fmul double %conv3, 1.000000e+03, !dbg !340
  %sub = fsub double %add, %mul4, !dbg !340
  %conv5 = fptosi double %sub to i32, !dbg !340
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 %conv, i32 %conv5), !dbg !341
  store i32 %call, i32* %s1Len, align 4, !dbg !342
  %arraydecay6 = getelementptr inbounds [80 x i8], [80 x i8]* %s2, i32 0, i32 0, !dbg !343
  %4 = load float, float* @mLBolus, align 4, !dbg !344
  %conv7 = fptosi float %4 to i32, !dbg !345
  %5 = load float, float* @mLBolus, align 4, !dbg !346
  %conv8 = fpext float %5 to double, !dbg !346
  %mul9 = fmul double %conv8, 1.000000e+03, !dbg !346
  %add10 = fadd double %mul9, 5.000000e-01, !dbg !346
  %6 = load float, float* @mLBolus, align 4, !dbg !346
  %conv11 = fptosi float %6 to i32, !dbg !346
  %conv12 = sitofp i32 %conv11 to double, !dbg !346
  %mul13 = fmul double %conv12, 1.000000e+03, !dbg !346
  %sub14 = fsub double %add10, %mul13, !dbg !346
  %conv15 = fptosi double %sub14 to i32, !dbg !346
  %call16 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 %conv7, i32 %conv15), !dbg !347
  store i32 %call16, i32* %s2Len, align 4, !dbg !348
  br label %if.end33, !dbg !349

if.else:                                          ; preds = %entry
  %7 = load i32, i32* @uiState, align 4, !dbg !350
  %cmp17 = icmp eq i32 %7, 1, !dbg !351
  br i1 %cmp17, label %if.then19, label %if.end, !dbg !350

if.then19:                                        ; preds = %if.else
  %arraydecay20 = getelementptr inbounds [80 x i8], [80 x i8]* %s1, i32 0, i32 0, !dbg !352
  %call21 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)), !dbg !353
  store i32 %call21, i32* %s1Len, align 4, !dbg !354
  %arraydecay22 = getelementptr inbounds [80 x i8], [80 x i8]* %s2, i32 0, i32 0, !dbg !355
  %8 = load float, float* @mLBolusStep, align 4, !dbg !356
  %conv23 = fptosi float %8 to i32, !dbg !357
  %9 = load float, float* @mLBolusStep, align 4, !dbg !358
  %conv24 = fpext float %9 to double, !dbg !358
  %mul25 = fmul double %conv24, 1.000000e+03, !dbg !358
  %add26 = fadd double %mul25, 5.000000e-01, !dbg !358
  %10 = load float, float* @mLBolusStep, align 4, !dbg !358
  %conv27 = fptosi float %10 to i32, !dbg !358
  %conv28 = sitofp i32 %conv27 to double, !dbg !358
  %mul29 = fmul double %conv28, 1.000000e+03, !dbg !358
  %sub30 = fsub double %add26, %mul29, !dbg !358
  %conv31 = fptosi double %sub30 to i32, !dbg !358
  %call32 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %conv23, i32 %conv31), !dbg !359
  store i32 %call32, i32* %s2Len, align 4, !dbg !360
  br label %if.end, !dbg !361

if.end:                                           ; preds = %if.then19, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then
  call arm_aapcs_vfpcc void @lcd_clear(%struct.LiquidCrystalStruct* @lcd), !dbg !362
  call arm_aapcs_vfpcc void @lcd_setCursor(%struct.LiquidCrystalStruct* @lcd, i32 0, i32 0), !dbg !363
  %arraydecay34 = getelementptr inbounds [80 x i8], [80 x i8]* %s1, i32 0, i32 0, !dbg !364
  %11 = load i32, i32* %s1Len, align 4, !dbg !365
  call arm_aapcs_vfpcc void @lcd_print(%struct.LiquidCrystalStruct* @lcd, i8* %arraydecay34, i32 %11), !dbg !366
  call arm_aapcs_vfpcc void @lcd_setCursor(%struct.LiquidCrystalStruct* @lcd, i32 0, i32 1), !dbg !367
  %arraydecay35 = getelementptr inbounds [80 x i8], [80 x i8]* %s2, i32 0, i32 0, !dbg !368
  %12 = load i32, i32* %s2Len, align 4, !dbg !369
  call arm_aapcs_vfpcc void @lcd_print(%struct.LiquidCrystalStruct* @lcd, i8* %arraydecay35, i32 %12), !dbg !370
  ret void, !dbg !371
}

declare dso_local arm_aapcs_vfpcc void @lcd_setCursor(%struct.LiquidCrystalStruct*, i32, i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @init() #0 !dbg !372 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_Init(), !dbg !373
  call arm_aapcs_vfpcc void @MX_GPIO_Init(), !dbg !374
  call arm_aapcs_vfpcc void @MX_USART1_UART_Init(), !dbg !375
  %call1 = call arm_aapcs_vfpcc i32 @DWT_Init(), !dbg !376
  ret void, !dbg !377
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_Init() #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @MX_GPIO_Init() #0 !dbg !378 {
entry:
  %tmpreg = alloca i32, align 4
  %tmpreg2 = alloca i32, align 4
  br label %do.body, !dbg !379

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !379
  %or = or i32 %0, 4, !dbg !379
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !379
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !379
  %and = and i32 %1, 4, !dbg !379
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !379
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !379
  br label %do.end, !dbg !379

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !380

do.body1:                                         ; preds = %do.end
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !380
  %or3 = or i32 %3, 1, !dbg !380
  store volatile i32 %or3, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !380
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !380
  %and4 = and i32 %4, 1, !dbg !380
  store volatile i32 %and4, i32* %tmpreg2, align 4, !dbg !380
  %5 = load volatile i32, i32* %tmpreg2, align 4, !dbg !380
  br label %do.end5, !dbg !380

do.end5:                                          ; preds = %do.body1
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @MX_USART1_UART_Init() #0 !dbg !382 {
entry:
  store %struct.USART_TypeDef* inttoptr (i32 1073821696 to %struct.USART_TypeDef*), %struct.USART_TypeDef** getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 0), align 4, !dbg !383
  store i32 115200, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 0), align 4, !dbg !384
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 1), align 4, !dbg !385
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 2), align 4, !dbg !386
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 3), align 4, !dbg !387
  store i32 12, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 4), align 4, !dbg !388
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 5), align 4, !dbg !389
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 6), align 4, !dbg !390
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 7), align 4, !dbg !391
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 8), align 4, !dbg !392
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 2, i32 0), align 4, !dbg !393
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_UART_Init(%struct.__UART_HandleTypeDef* @huart1), !dbg !394
  %conv = zext i8 %call to i32, !dbg !394
  %cmp = icmp ne i32 %conv, 0, !dbg !395
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !396
  br label %if.end, !dbg !397

if.end:                                           ; preds = %if.then, %entry
  %call2 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetTxFifoThreshold(%struct.__UART_HandleTypeDef* @huart1, i32 0), !dbg !398
  %conv3 = zext i8 %call2 to i32, !dbg !398
  %cmp4 = icmp ne i32 %conv3, 0, !dbg !399
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !398

if.then6:                                         ; preds = %if.end
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !400
  br label %if.end7, !dbg !401

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetRxFifoThreshold(%struct.__UART_HandleTypeDef* @huart1, i32 0), !dbg !402
  %conv9 = zext i8 %call8 to i32, !dbg !402
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !403
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !402

if.then12:                                        ; preds = %if.end7
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !404
  br label %if.end13, !dbg !405

if.end13:                                         ; preds = %if.then12, %if.end7
  %call14 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableFifoMode(%struct.__UART_HandleTypeDef* @huart1), !dbg !406
  %conv15 = zext i8 %call14 to i32, !dbg !406
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !407
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !406

if.then18:                                        ; preds = %if.end13
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !408
  br label %if.end19, !dbg !409

if.end19:                                         ; preds = %if.then18, %if.end13
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !411 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @init(), !dbg !412
  %call = call arm_aapcs_vfpcc i32 @main_logic(), !dbg !413
  ret i32 0, !dbg !414
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @main_logic() #0 !dbg !415 {
entry:
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %count = alloca i32, align 4
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 24), !dbg !416
  call arm_aapcs_vfpcc void @setup(), !dbg !417
  %call = call arm_aapcs_vfpcc i32 @DWT_GetTick(), !dbg !418
  store i32 %call, i32* %start, align 4, !dbg !419
  %0 = load i32, i32* %start, align 4, !dbg !420
  %conv = uitofp i32 %0 to double, !dbg !421
  %1 = load i32, i32* @SystemCoreClock, align 4, !dbg !422
  %conv1 = uitofp i32 %1 to double, !dbg !423
  %div = fdiv double %conv, %conv1, !dbg !424
  %call2 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), double %div), !dbg !425
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !426
  store i32 1, i32* %count, align 4, !dbg !427
  br label %for.cond, !dbg !428

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !dbg !429
  %cmp = icmp slt i32 %2, 11, !dbg !430
  br i1 %cmp, label %for.body, label %for.end, !dbg !431

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %count, align 4, !dbg !432
  %conv4 = sitofp i32 %3 to double, !dbg !432
  %mul = fmul double 1.000000e-03, %conv4, !dbg !433
  %conv5 = fptrunc double %mul to float, !dbg !434
  store float %conv5, float* @mLBolus, align 4, !dbg !435
  store i8 1, i8* @serialStrReady, align 1, !dbg !436
  %4 = load i32, i32* %count, align 4, !dbg !437
  %call6 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @serialStr, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 %4), !dbg !438
  store i32 80, i32* @serialStrLen, align 4, !dbg !439
  %5 = load i32, i32* %count, align 4, !dbg !440
  call arm_aapcs_vfpcc void @loop(i32 %5), !dbg !441
  br label %for.inc, !dbg !442

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %count, align 4, !dbg !443
  %inc = add nsw i32 %6, 1, !dbg !443
  store i32 %inc, i32* %count, align 4, !dbg !443
  br label %for.cond, !dbg !431, !llvm.loop !444

for.end:                                          ; preds = %for.cond
  %call7 = call arm_aapcs_vfpcc i32 @DWT_GetTick(), !dbg !445
  store i32 %call7, i32* %end, align 4, !dbg !446
  %7 = load i32, i32* %end, align 4, !dbg !447
  %conv8 = uitofp i32 %7 to double, !dbg !448
  %8 = load i32, i32* @SystemCoreClock, align 4, !dbg !449
  %conv9 = uitofp i32 %8 to double, !dbg !450
  %div10 = fdiv double %conv8, %conv9, !dbg !451
  %call11 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), double %div10), !dbg !452
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !453
  %9 = load i32, i32* %end, align 4, !dbg !454
  %10 = load i32, i32* %start, align 4, !dbg !455
  %sub = sub i32 %9, %10, !dbg !456
  %conv12 = uitofp i32 %sub to double, !dbg !457
  %div13 = fdiv double %conv12, 1.000000e+01, !dbg !458
  %11 = load i32, i32* @SystemCoreClock, align 4, !dbg !459
  %conv14 = uitofp i32 %11 to double, !dbg !460
  %div15 = fdiv double %div13, %conv14, !dbg !461
  %call16 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), double %div15), !dbg !462
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !463
  br label %while.body, !dbg !464

while.body:                                       ; preds = %for.end, %while.body
  br label %while.body, !dbg !464, !llvm.loop !465
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Init(%struct.__UART_HandleTypeDef*) #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetTxFifoThreshold(%struct.__UART_HandleTypeDef*, i32) #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetRxFifoThreshold(%struct.__UART_HandleTypeDef*, i32) #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableFifoMode(%struct.__UART_HandleTypeDef*) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/main.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "DWT_Init", scope: !9, file: !9, line: 138, type: !10, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/main.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 139, column: 19, scope: !8)
!12 = !DILocation(line: 142, column: 14, scope: !8)
!13 = !DILocation(line: 143, column: 12, scope: !8)
!14 = !DILocation(line: 144, column: 1, scope: !8)
!15 = distinct !DISubprogram(name: "DWT_GetTick", scope: !9, file: !9, line: 146, type: !10, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 147, column: 14, scope: !15)
!17 = !DILocation(line: 147, column: 2, scope: !15)
!18 = distinct !DISubprogram(name: "print", scope: !9, file: !9, line: 150, type: !10, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 154, column: 49, scope: !18)
!20 = !DILocation(line: 154, column: 54, scope: !18)
!21 = !DILocation(line: 154, column: 7, scope: !18)
!22 = !DILocation(line: 154, column: 59, scope: !18)
!23 = !DILocation(line: 155, column: 5, scope: !18)
!24 = !DILocation(line: 156, column: 3, scope: !18)
!25 = !DILocation(line: 159, column: 3, scope: !18)
!26 = !DILocation(line: 159, column: 9, scope: !18)
!27 = !DILocation(line: 159, column: 36, scope: !18)
!28 = distinct !{!28, !25, !29}
!29 = !DILocation(line: 161, column: 3, scope: !18)
!30 = !DILocation(line: 163, column: 13, scope: !18)
!31 = !DILocation(line: 165, column: 1, scope: !18)
!32 = distinct !DISubprogram(name: "Error_Handler", scope: !9, file: !9, line: 702, type: !10, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = !DILocation(line: 708, column: 1, scope: !32)
!34 = distinct !DISubprogram(name: "judge_legality", scope: !9, file: !9, line: 167, type: !10, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 169, column: 17, scope: !34)
!36 = !DILocation(line: 170, column: 29, scope: !34)
!37 = !DILocation(line: 170, column: 38, scope: !34)
!38 = !DILocation(line: 170, column: 13, scope: !34)
!39 = !DILocation(line: 170, column: 7, scope: !34)
!40 = !DILocation(line: 172, column: 6, scope: !34)
!41 = !DILocation(line: 172, column: 9, scope: !34)
!42 = !DILocation(line: 174, column: 10, scope: !34)
!43 = !DILocation(line: 174, column: 2, scope: !34)
!44 = !DILocation(line: 175, column: 11, scope: !34)
!45 = !DILocation(line: 175, column: 5, scope: !34)
!46 = !DILocation(line: 176, column: 5, scope: !34)
!47 = distinct !{!47, !46, !48}
!48 = !DILocation(line: 179, column: 5, scope: !34)
!49 = !DILocation(line: 186, column: 3, scope: !34)
!50 = distinct !DISubprogram(name: "setup", scope: !9, file: !9, line: 189, type: !10, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DILocation(line: 191, column: 2, scope: !50)
!52 = !DILocation(line: 192, column: 2, scope: !50)
!53 = !DILocation(line: 194, column: 2, scope: !50)
!54 = !DILocation(line: 197, column: 10, scope: !50)
!55 = !DILocation(line: 197, column: 2, scope: !50)
!56 = !DILocation(line: 198, column: 10, scope: !50)
!57 = !DILocation(line: 198, column: 2, scope: !50)
!58 = !DILocation(line: 199, column: 15, scope: !50)
!59 = !DILocation(line: 199, column: 2, scope: !50)
!60 = !DILocation(line: 200, column: 15, scope: !50)
!61 = !DILocation(line: 200, column: 2, scope: !50)
!62 = !DILocation(line: 203, column: 10, scope: !50)
!63 = !DILocation(line: 203, column: 2, scope: !50)
!64 = !DILocation(line: 204, column: 10, scope: !50)
!65 = !DILocation(line: 204, column: 2, scope: !50)
!66 = !DILocation(line: 210, column: 2, scope: !50)
!67 = !DILocation(line: 211, column: 1, scope: !50)
!68 = distinct !DISubprogram(name: "loop", scope: !9, file: !9, line: 222, type: !10, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocation(line: 237, column: 5, scope: !68)
!70 = !DILocation(line: 240, column: 3, scope: !68)
!71 = !DILocation(line: 243, column: 2, scope: !68)
!72 = !DILocation(line: 245, column: 39, scope: !68)
!73 = !DILocation(line: 245, column: 2, scope: !68)
!74 = !DILocation(line: 246, column: 2, scope: !68)
!75 = !DILocation(line: 247, column: 1, scope: !68)
!76 = distinct !DISubprogram(name: "checkTriggers", scope: !9, file: !9, line: 249, type: !10, scopeLine: 249, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!77 = !DILocation(line: 251, column: 37, scope: !76)
!78 = !DILocation(line: 251, column: 25, scope: !76)
!79 = !DILocation(line: 251, column: 6, scope: !76)
!80 = !DILocation(line: 252, column: 5, scope: !76)
!81 = !DILocation(line: 252, column: 22, scope: !76)
!82 = !DILocation(line: 252, column: 30, scope: !76)
!83 = !DILocation(line: 252, column: 33, scope: !76)
!84 = !DILocation(line: 252, column: 45, scope: !76)
!85 = !DILocation(line: 253, column: 3, scope: !76)
!86 = !DILocation(line: 254, column: 3, scope: !76)
!87 = !DILocation(line: 255, column: 2, scope: !76)
!88 = !DILocation(line: 256, column: 16, scope: !76)
!89 = !DILocation(line: 256, column: 14, scope: !76)
!90 = !DILocation(line: 259, column: 36, scope: !76)
!91 = !DILocation(line: 259, column: 24, scope: !76)
!92 = !DILocation(line: 259, column: 6, scope: !76)
!93 = !DILocation(line: 260, column: 5, scope: !76)
!94 = !DILocation(line: 260, column: 21, scope: !76)
!95 = !DILocation(line: 260, column: 29, scope: !76)
!96 = !DILocation(line: 260, column: 32, scope: !76)
!97 = !DILocation(line: 260, column: 47, scope: !76)
!98 = !DILocation(line: 262, column: 23, scope: !76)
!99 = !DILocation(line: 262, column: 9, scope: !76)
!100 = !DILocation(line: 263, column: 13, scope: !76)
!101 = !DILocation(line: 263, column: 11, scope: !76)
!102 = !DILocation(line: 264, column: 3, scope: !76)
!103 = !DILocation(line: 265, column: 13, scope: !76)
!104 = !DILocation(line: 265, column: 11, scope: !76)
!105 = !DILocation(line: 267, column: 3, scope: !76)
!106 = !DILocation(line: 268, column: 2, scope: !76)
!107 = !DILocation(line: 269, column: 19, scope: !76)
!108 = !DILocation(line: 269, column: 17, scope: !76)
!109 = !DILocation(line: 270, column: 1, scope: !76)
!110 = distinct !DISubprogram(name: "bolus", scope: !9, file: !9, line: 314, type: !10, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!111 = !DILocation(line: 318, column: 16, scope: !110)
!112 = !DILocation(line: 318, column: 26, scope: !110)
!113 = !DILocation(line: 318, column: 24, scope: !110)
!114 = !DILocation(line: 318, column: 15, scope: !110)
!115 = !DILocation(line: 318, column: 7, scope: !110)
!116 = !DILocation(line: 319, column: 5, scope: !110)
!117 = !DILocation(line: 319, column: 15, scope: !110)
!118 = !DILocation(line: 320, column: 3, scope: !110)
!119 = !DILocation(line: 321, column: 16, scope: !110)
!120 = !DILocation(line: 321, column: 3, scope: !110)
!121 = !DILocation(line: 322, column: 11, scope: !110)
!122 = !DILocation(line: 322, column: 21, scope: !110)
!123 = !DILocation(line: 322, column: 19, scope: !110)
!124 = !DILocation(line: 322, column: 9, scope: !110)
!125 = !DILocation(line: 323, column: 13, scope: !110)
!126 = !DILocation(line: 323, column: 10, scope: !110)
!127 = !DILocation(line: 324, column: 2, scope: !110)
!128 = !DILocation(line: 325, column: 10, scope: !110)
!129 = !DILocation(line: 325, column: 20, scope: !110)
!130 = !DILocation(line: 326, column: 3, scope: !110)
!131 = !DILocation(line: 327, column: 16, scope: !110)
!132 = !DILocation(line: 327, column: 3, scope: !110)
!133 = !DILocation(line: 328, column: 7, scope: !110)
!134 = !DILocation(line: 328, column: 14, scope: !110)
!135 = !DILocation(line: 328, column: 13, scope: !110)
!136 = !DILocation(line: 328, column: 23, scope: !110)
!137 = !DILocation(line: 328, column: 6, scope: !110)
!138 = !DILocation(line: 329, column: 14, scope: !110)
!139 = !DILocation(line: 329, column: 11, scope: !110)
!140 = !DILocation(line: 330, column: 3, scope: !110)
!141 = !DILocation(line: 332, column: 11, scope: !110)
!142 = !DILocation(line: 334, column: 2, scope: !110)
!143 = !DILocation(line: 336, column: 8, scope: !110)
!144 = !DILocation(line: 346, column: 1, scope: !110)
!145 = distinct !DISubprogram(name: "readSerial", scope: !9, file: !9, line: 272, type: !10, scopeLine: 272, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!146 = !DILocation(line: 276, column: 6, scope: !145)
!147 = !DILocation(line: 277, column: 2, scope: !145)
!148 = !DILocation(line: 277, column: 9, scope: !145)
!149 = !DILocation(line: 278, column: 23, scope: !145)
!150 = !DILocation(line: 278, column: 17, scope: !145)
!151 = !DILocation(line: 278, column: 8, scope: !145)
!152 = !DILocation(line: 279, column: 7, scope: !145)
!153 = !DILocation(line: 279, column: 14, scope: !145)
!154 = !DILocation(line: 280, column: 19, scope: !145)
!155 = !DILocation(line: 281, column: 3, scope: !145)
!156 = !DILocation(line: 283, column: 30, scope: !145)
!157 = !DILocation(line: 283, column: 14, scope: !145)
!158 = !DILocation(line: 283, column: 4, scope: !145)
!159 = !DILocation(line: 283, column: 28, scope: !145)
!160 = !DILocation(line: 284, column: 16, scope: !145)
!161 = distinct !{!161, !147, !162}
!162 = !DILocation(line: 287, column: 2, scope: !145)
!163 = !DILocation(line: 288, column: 1, scope: !145)
!164 = distinct !DISubprogram(name: "processSerial", scope: !9, file: !9, line: 290, type: !10, scopeLine: 290, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocation(line: 292, column: 5, scope: !164)
!166 = !DILocation(line: 292, column: 18, scope: !164)
!167 = !DILocation(line: 293, column: 3, scope: !164)
!168 = !DILocation(line: 294, column: 3, scope: !164)
!169 = !DILocation(line: 295, column: 2, scope: !164)
!170 = !DILocation(line: 296, column: 10, scope: !164)
!171 = !DILocation(line: 296, column: 23, scope: !164)
!172 = !DILocation(line: 297, column: 3, scope: !164)
!173 = !DILocation(line: 298, column: 3, scope: !164)
!174 = !DILocation(line: 299, column: 2, scope: !164)
!175 = !DILocation(line: 300, column: 28, scope: !164)
!176 = !DILocation(line: 300, column: 10, scope: !164)
!177 = !DILocation(line: 300, column: 42, scope: !164)
!178 = !DILocation(line: 301, column: 35, scope: !164)
!179 = !DILocation(line: 301, column: 17, scope: !164)
!180 = !DILocation(line: 301, column: 7, scope: !164)
!181 = !DILocation(line: 302, column: 20, scope: !164)
!182 = !DILocation(line: 302, column: 13, scope: !164)
!183 = !DILocation(line: 302, column: 28, scope: !164)
!184 = !DILocation(line: 302, column: 11, scope: !164)
!185 = !DILocation(line: 303, column: 3, scope: !164)
!186 = !DILocation(line: 304, column: 2, scope: !164)
!187 = !DILocation(line: 306, column: 3, scope: !164)
!188 = !DILocation(line: 307, column: 27, scope: !164)
!189 = !DILocation(line: 307, column: 3, scope: !164)
!190 = !DILocation(line: 308, column: 3, scope: !164)
!191 = !DILocation(line: 310, column: 17, scope: !164)
!192 = !DILocation(line: 311, column: 15, scope: !164)
!193 = !DILocation(line: 312, column: 1, scope: !164)
!194 = distinct !DISubprogram(name: "readKey", scope: !9, file: !9, line: 348, type: !10, scopeLine: 348, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocation(line: 354, column: 15, scope: !194)
!196 = !DILocation(line: 354, column: 13, scope: !194)
!197 = !DILocation(line: 355, column: 16, scope: !194)
!198 = !DILocation(line: 355, column: 8, scope: !194)
!199 = !DILocation(line: 355, column: 6, scope: !194)
!200 = !DILocation(line: 357, column: 21, scope: !194)
!201 = !DILocation(line: 357, column: 7, scope: !194)
!202 = !DILocation(line: 358, column: 29, scope: !194)
!203 = !DILocation(line: 358, column: 41, scope: !194)
!204 = !DILocation(line: 358, column: 40, scope: !194)
!205 = !DILocation(line: 358, column: 7, scope: !194)
!206 = !DILocation(line: 360, column: 10, scope: !194)
!207 = !DILocation(line: 361, column: 6, scope: !194)
!208 = !DILocation(line: 361, column: 17, scope: !194)
!209 = !DILocation(line: 361, column: 14, scope: !194)
!210 = !DILocation(line: 361, column: 21, scope: !194)
!211 = !DILocation(line: 361, column: 24, scope: !194)
!212 = !DILocation(line: 361, column: 45, scope: !194)
!213 = !DILocation(line: 361, column: 43, scope: !194)
!214 = !DILocation(line: 362, column: 18, scope: !194)
!215 = !DILocation(line: 363, column: 2, scope: !194)
!216 = !DILocation(line: 364, column: 5, scope: !194)
!217 = !DILocation(line: 364, column: 13, scope: !194)
!218 = !DILocation(line: 364, column: 25, scope: !194)
!219 = !DILocation(line: 364, column: 28, scope: !194)
!220 = !DILocation(line: 364, column: 49, scope: !194)
!221 = !DILocation(line: 364, column: 47, scope: !194)
!222 = !DILocation(line: 365, column: 18, scope: !194)
!223 = !DILocation(line: 366, column: 2, scope: !194)
!224 = !DILocation(line: 367, column: 5, scope: !194)
!225 = !DILocation(line: 367, column: 9, scope: !194)
!226 = !DILocation(line: 368, column: 18, scope: !194)
!227 = !DILocation(line: 369, column: 2, scope: !194)
!228 = !DILocation(line: 371, column: 12, scope: !194)
!229 = !DILocation(line: 371, column: 10, scope: !194)
!230 = !DILocation(line: 373, column: 5, scope: !194)
!231 = !DILocation(line: 374, column: 15, scope: !194)
!232 = !DILocation(line: 374, column: 3, scope: !194)
!233 = !DILocation(line: 375, column: 21, scope: !194)
!234 = !DILocation(line: 375, column: 19, scope: !194)
!235 = !DILocation(line: 376, column: 2, scope: !194)
!236 = !DILocation(line: 377, column: 1, scope: !194)
!237 = distinct !DISubprogram(name: "get_key", scope: !9, file: !9, line: 464, type: !10, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!238 = !DILocation(line: 466, column: 9, scope: !237)
!239 = !DILocation(line: 466, column: 7, scope: !237)
!240 = !DILocation(line: 466, column: 14, scope: !237)
!241 = !DILocation(line: 466, column: 18, scope: !237)
!242 = !DILocation(line: 466, column: 16, scope: !237)
!243 = !DILocation(line: 466, column: 2, scope: !237)
!244 = !DILocation(line: 467, column: 7, scope: !237)
!245 = !DILocation(line: 467, column: 41, scope: !237)
!246 = !DILocation(line: 467, column: 29, scope: !237)
!247 = !DILocation(line: 467, column: 13, scope: !237)
!248 = !DILocation(line: 468, column: 14, scope: !237)
!249 = !DILocation(line: 468, column: 7, scope: !237)
!250 = !DILocation(line: 470, column: 2, scope: !237)
!251 = !DILocation(line: 466, column: 29, scope: !237)
!252 = distinct !{!252, !243, !250}
!253 = !DILocation(line: 471, column: 6, scope: !237)
!254 = !DILocation(line: 471, column: 11, scope: !237)
!255 = !DILocation(line: 471, column: 8, scope: !237)
!256 = !DILocation(line: 472, column: 6, scope: !237)
!257 = !DILocation(line: 473, column: 2, scope: !237)
!258 = !DILocation(line: 474, column: 9, scope: !237)
!259 = !DILocation(line: 474, column: 2, scope: !237)
!260 = !DILocation(line: 475, column: 1, scope: !237)
!261 = distinct !DISubprogram(name: "doKeyAction", scope: !9, file: !9, line: 379, type: !10, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DILocation(line: 380, column: 5, scope: !261)
!263 = !DILocation(line: 380, column: 9, scope: !261)
!264 = !DILocation(line: 381, column: 3, scope: !261)
!265 = !DILocation(line: 384, column: 5, scope: !261)
!266 = !DILocation(line: 384, column: 9, scope: !261)
!267 = !DILocation(line: 385, column: 6, scope: !261)
!268 = !DILocation(line: 385, column: 14, scope: !261)
!269 = !DILocation(line: 386, column: 12, scope: !261)
!270 = !DILocation(line: 387, column: 3, scope: !261)
!271 = !DILocation(line: 389, column: 12, scope: !261)
!272 = !DILocation(line: 391, column: 2, scope: !261)
!273 = !DILocation(line: 393, column: 5, scope: !261)
!274 = !DILocation(line: 393, column: 13, scope: !261)
!275 = !DILocation(line: 394, column: 6, scope: !261)
!276 = !DILocation(line: 394, column: 10, scope: !261)
!277 = !DILocation(line: 395, column: 4, scope: !261)
!278 = !DILocation(line: 396, column: 3, scope: !261)
!279 = !DILocation(line: 397, column: 6, scope: !261)
!280 = !DILocation(line: 397, column: 10, scope: !261)
!281 = !DILocation(line: 398, column: 4, scope: !261)
!282 = !DILocation(line: 399, column: 3, scope: !261)
!283 = !DILocation(line: 400, column: 6, scope: !261)
!284 = !DILocation(line: 400, column: 10, scope: !261)
!285 = !DILocation(line: 401, column: 15, scope: !261)
!286 = !DILocation(line: 401, column: 12, scope: !261)
!287 = !DILocation(line: 402, column: 3, scope: !261)
!288 = !DILocation(line: 403, column: 6, scope: !261)
!289 = !DILocation(line: 403, column: 10, scope: !261)
!290 = !DILocation(line: 404, column: 8, scope: !261)
!291 = !DILocation(line: 404, column: 18, scope: !261)
!292 = !DILocation(line: 404, column: 16, scope: !261)
!293 = !DILocation(line: 404, column: 31, scope: !261)
!294 = !DILocation(line: 404, column: 7, scope: !261)
!295 = !DILocation(line: 405, column: 16, scope: !261)
!296 = !DILocation(line: 405, column: 13, scope: !261)
!297 = !DILocation(line: 406, column: 4, scope: !261)
!298 = !DILocation(line: 408, column: 13, scope: !261)
!299 = !DILocation(line: 410, column: 3, scope: !261)
!300 = !DILocation(line: 411, column: 2, scope: !261)
!301 = !DILocation(line: 412, column: 10, scope: !261)
!302 = !DILocation(line: 412, column: 18, scope: !261)
!303 = !DILocation(line: 413, column: 6, scope: !261)
!304 = !DILocation(line: 413, column: 10, scope: !261)
!305 = !DILocation(line: 415, column: 3, scope: !261)
!306 = !DILocation(line: 416, column: 6, scope: !261)
!307 = !DILocation(line: 416, column: 10, scope: !261)
!308 = !DILocation(line: 418, column: 3, scope: !261)
!309 = !DILocation(line: 419, column: 6, scope: !261)
!310 = !DILocation(line: 419, column: 10, scope: !261)
!311 = !DILocation(line: 420, column: 7, scope: !261)
!312 = !DILocation(line: 420, column: 22, scope: !261)
!313 = !DILocation(line: 421, column: 19, scope: !261)
!314 = !DILocation(line: 422, column: 32, scope: !261)
!315 = !DILocation(line: 422, column: 19, scope: !261)
!316 = !DILocation(line: 422, column: 17, scope: !261)
!317 = !DILocation(line: 423, column: 4, scope: !261)
!318 = !DILocation(line: 424, column: 3, scope: !261)
!319 = !DILocation(line: 425, column: 6, scope: !261)
!320 = !DILocation(line: 425, column: 10, scope: !261)
!321 = !DILocation(line: 426, column: 7, scope: !261)
!322 = !DILocation(line: 426, column: 22, scope: !261)
!323 = !DILocation(line: 427, column: 20, scope: !261)
!324 = !DILocation(line: 428, column: 32, scope: !261)
!325 = !DILocation(line: 428, column: 19, scope: !261)
!326 = !DILocation(line: 428, column: 17, scope: !261)
!327 = !DILocation(line: 429, column: 4, scope: !261)
!328 = !DILocation(line: 430, column: 3, scope: !261)
!329 = !DILocation(line: 431, column: 2, scope: !261)
!330 = !DILocation(line: 433, column: 2, scope: !261)
!331 = !DILocation(line: 434, column: 1, scope: !261)
!332 = distinct !DISubprogram(name: "updateScreen", scope: !9, file: !9, line: 436, type: !10, scopeLine: 436, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!333 = !DILocation(line: 440, column: 6, scope: !332)
!334 = !DILocation(line: 441, column: 6, scope: !332)
!335 = !DILocation(line: 443, column: 5, scope: !332)
!336 = !DILocation(line: 443, column: 13, scope: !332)
!337 = !DILocation(line: 444, column: 19, scope: !332)
!338 = !DILocation(line: 444, column: 45, scope: !332)
!339 = !DILocation(line: 444, column: 40, scope: !332)
!340 = !DILocation(line: 444, column: 53, scope: !332)
!341 = !DILocation(line: 444, column: 11, scope: !332)
!342 = !DILocation(line: 444, column: 9, scope: !332)
!343 = !DILocation(line: 445, column: 19, scope: !332)
!344 = !DILocation(line: 445, column: 46, scope: !332)
!345 = !DILocation(line: 445, column: 41, scope: !332)
!346 = !DILocation(line: 445, column: 55, scope: !332)
!347 = !DILocation(line: 445, column: 11, scope: !332)
!348 = !DILocation(line: 445, column: 9, scope: !332)
!349 = !DILocation(line: 446, column: 2, scope: !332)
!350 = !DILocation(line: 447, column: 10, scope: !332)
!351 = !DILocation(line: 447, column: 18, scope: !332)
!352 = !DILocation(line: 448, column: 19, scope: !332)
!353 = !DILocation(line: 448, column: 11, scope: !332)
!354 = !DILocation(line: 448, column: 9, scope: !332)
!355 = !DILocation(line: 449, column: 19, scope: !332)
!356 = !DILocation(line: 449, column: 37, scope: !332)
!357 = !DILocation(line: 449, column: 32, scope: !332)
!358 = !DILocation(line: 449, column: 50, scope: !332)
!359 = !DILocation(line: 449, column: 11, scope: !332)
!360 = !DILocation(line: 449, column: 9, scope: !332)
!361 = !DILocation(line: 450, column: 2, scope: !332)
!362 = !DILocation(line: 453, column: 2, scope: !332)
!363 = !DILocation(line: 455, column: 2, scope: !332)
!364 = !DILocation(line: 456, column: 18, scope: !332)
!365 = !DILocation(line: 456, column: 22, scope: !332)
!366 = !DILocation(line: 456, column: 2, scope: !332)
!367 = !DILocation(line: 458, column: 2, scope: !332)
!368 = !DILocation(line: 459, column: 18, scope: !332)
!369 = !DILocation(line: 459, column: 22, scope: !332)
!370 = !DILocation(line: 459, column: 2, scope: !332)
!371 = !DILocation(line: 460, column: 1, scope: !332)
!372 = distinct !DISubprogram(name: "init", scope: !9, file: !9, line: 486, type: !10, scopeLine: 486, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!373 = !DILocation(line: 492, column: 3, scope: !372)
!374 = !DILocation(line: 495, column: 3, scope: !372)
!375 = !DILocation(line: 496, column: 3, scope: !372)
!376 = !DILocation(line: 498, column: 3, scope: !372)
!377 = !DILocation(line: 499, column: 2, scope: !372)
!378 = distinct !DISubprogram(name: "MX_GPIO_Init", scope: !9, file: !9, line: 685, type: !10, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!379 = !DILocation(line: 689, column: 3, scope: !378)
!380 = !DILocation(line: 690, column: 3, scope: !378)
!381 = !DILocation(line: 692, column: 1, scope: !378)
!382 = distinct !DISubprogram(name: "MX_USART1_UART_Init", scope: !9, file: !9, line: 637, type: !10, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!383 = !DILocation(line: 647, column: 19, scope: !382)
!384 = !DILocation(line: 648, column: 24, scope: !382)
!385 = !DILocation(line: 649, column: 26, scope: !382)
!386 = !DILocation(line: 650, column: 24, scope: !382)
!387 = !DILocation(line: 651, column: 22, scope: !382)
!388 = !DILocation(line: 652, column: 20, scope: !382)
!389 = !DILocation(line: 653, column: 25, scope: !382)
!390 = !DILocation(line: 654, column: 28, scope: !382)
!391 = !DILocation(line: 655, column: 30, scope: !382)
!392 = !DILocation(line: 656, column: 30, scope: !382)
!393 = !DILocation(line: 657, column: 38, scope: !382)
!394 = !DILocation(line: 658, column: 7, scope: !382)
!395 = !DILocation(line: 658, column: 30, scope: !382)
!396 = !DILocation(line: 660, column: 5, scope: !382)
!397 = !DILocation(line: 661, column: 3, scope: !382)
!398 = !DILocation(line: 662, column: 7, scope: !382)
!399 = !DILocation(line: 662, column: 73, scope: !382)
!400 = !DILocation(line: 664, column: 5, scope: !382)
!401 = !DILocation(line: 665, column: 3, scope: !382)
!402 = !DILocation(line: 666, column: 7, scope: !382)
!403 = !DILocation(line: 666, column: 73, scope: !382)
!404 = !DILocation(line: 668, column: 5, scope: !382)
!405 = !DILocation(line: 669, column: 3, scope: !382)
!406 = !DILocation(line: 670, column: 7, scope: !382)
!407 = !DILocation(line: 670, column: 43, scope: !382)
!408 = !DILocation(line: 672, column: 5, scope: !382)
!409 = !DILocation(line: 673, column: 3, scope: !382)
!410 = !DILocation(line: 678, column: 1, scope: !382)
!411 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 501, type: !10, scopeLine: 501, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!412 = !DILocation(line: 502, column: 3, scope: !411)
!413 = !DILocation(line: 503, column: 3, scope: !411)
!414 = !DILocation(line: 505, column: 3, scope: !411)
!415 = distinct !DISubprogram(name: "main_logic", scope: !9, file: !9, line: 512, type: !10, scopeLine: 513, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!416 = !DILocation(line: 531, column: 3, scope: !415)
!417 = !DILocation(line: 532, column: 3, scope: !415)
!418 = !DILocation(line: 537, column: 11, scope: !415)
!419 = !DILocation(line: 537, column: 9, scope: !415)
!420 = !DILocation(line: 540, column: 48, scope: !415)
!421 = !DILocation(line: 540, column: 39, scope: !415)
!422 = !DILocation(line: 540, column: 56, scope: !415)
!423 = !DILocation(line: 540, column: 55, scope: !415)
!424 = !DILocation(line: 540, column: 54, scope: !415)
!425 = !DILocation(line: 540, column: 3, scope: !415)
!426 = !DILocation(line: 541, column: 3, scope: !415)
!427 = !DILocation(line: 543, column: 11, scope: !415)
!428 = !DILocation(line: 543, column: 7, scope: !415)
!429 = !DILocation(line: 543, column: 22, scope: !415)
!430 = !DILocation(line: 543, column: 28, scope: !415)
!431 = !DILocation(line: 543, column: 3, scope: !415)
!432 = !DILocation(line: 545, column: 20, scope: !415)
!433 = !DILocation(line: 545, column: 18, scope: !415)
!434 = !DILocation(line: 545, column: 12, scope: !415)
!435 = !DILocation(line: 545, column: 10, scope: !415)
!436 = !DILocation(line: 546, column: 17, scope: !415)
!437 = !DILocation(line: 559, column: 33, scope: !415)
!438 = !DILocation(line: 559, column: 2, scope: !415)
!439 = !DILocation(line: 560, column: 15, scope: !415)
!440 = !DILocation(line: 562, column: 9, scope: !415)
!441 = !DILocation(line: 562, column: 4, scope: !415)
!442 = !DILocation(line: 564, column: 3, scope: !415)
!443 = !DILocation(line: 543, column: 39, scope: !415)
!444 = distinct !{!444, !431, !442}
!445 = !DILocation(line: 569, column: 9, scope: !415)
!446 = !DILocation(line: 569, column: 7, scope: !415)
!447 = !DILocation(line: 572, column: 45, scope: !415)
!448 = !DILocation(line: 572, column: 36, scope: !415)
!449 = !DILocation(line: 572, column: 51, scope: !415)
!450 = !DILocation(line: 572, column: 50, scope: !415)
!451 = !DILocation(line: 572, column: 49, scope: !415)
!452 = !DILocation(line: 572, column: 3, scope: !415)
!453 = !DILocation(line: 573, column: 3, scope: !415)
!454 = !DILocation(line: 577, column: 52, scope: !415)
!455 = !DILocation(line: 577, column: 56, scope: !415)
!456 = !DILocation(line: 577, column: 55, scope: !415)
!457 = !DILocation(line: 577, column: 51, scope: !415)
!458 = !DILocation(line: 577, column: 62, scope: !415)
!459 = !DILocation(line: 577, column: 70, scope: !415)
!460 = !DILocation(line: 577, column: 69, scope: !415)
!461 = !DILocation(line: 577, column: 68, scope: !415)
!462 = !DILocation(line: 577, column: 3, scope: !415)
!463 = !DILocation(line: 578, column: 3, scope: !415)
!464 = !DILocation(line: 623, column: 3, scope: !415)
!465 = distinct !{!465, !464, !466}
!466 = !DILocation(line: 628, column: 3, scope: !415)
