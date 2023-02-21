; ModuleID = './Core/Src/main.c'
source_filename = "./Core/Src/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.RoutedDevice = type { i8, i8, i8* }
%struct.SwitchPattern = type { i8, i8, i8** }
%struct.SwitchMemoryItem = type { i64, i8, i8* }
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
%struct.CoreDebug_Type = type { i32, i32, i32, i32, [1 x i32], i32, i32 }
%struct.DWT_Type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [934 x i32], i32, [1 x i32], i32 }
%struct.timeval = type { i64, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }

@printstr = dso_local global [50 x i8] zeroinitializer, align 1
@UartReady = dso_local global i8 0, align 1
@SWITCH_MAKUUHUONE_KIRKAS = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:1;\00", align 1
@SWITCH_OLOHUONE_KIRKAS = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:2;\00", align 1
@SWITCH_MAKUUHUONE_HIMMEA = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:3;\00", align 1
@SWITCH_OLOHUONE_HIMMEA = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:4;\00", align 1
@SWITCH_KAIKKI_KIRKAS = internal constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:11799578;unit:12;group:0;\00", align 1
@SWITCH_KAIKKI_HIMMEA = internal constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:11799578;unit:11;group:0;\00", align 1
@.str = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:19437866;unit:12;group:0;\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:19437866;unit:11;group:0;\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:19413362;unit:12;group:0;\00", align 1
@.str.3 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:19413362;unit:11;group:0;\00", align 1
@.str.4 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:21953510;unit:12;group:0;\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:21953510;unit:11;group:0;\00", align 1
@.str.6 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:20256766;unit:12;group:0;\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:20256766;unit:11;group:0;\00", align 1
@SWITCH_KAJARIT_DUMMY_1 = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:5;\00", align 1
@SWITCH_KAJARIT_DUMMY_2 = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:6;\00", align 1
@SWITCH_KAJARIT_DUMMY_3 = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:7;\00", align 1
@SWITCH_KAJARIT_DUMMY_4 = internal constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:8;\00", align 1
@DEVICE_ROUTINGS = dso_local constant [20 x %struct.RoutedDevice] [%struct.RoutedDevice { i8 0, i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_MAKUUHUONE_KIRKAS, i32 0, i32 0) }, %struct.RoutedDevice { i8 0, i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_OLOHUONE_KIRKAS, i32 0, i32 0) }, %struct.RoutedDevice { i8 0, i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_MAKUUHUONE_HIMMEA, i32 0, i32 0) }, %struct.RoutedDevice { i8 0, i8 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_OLOHUONE_HIMMEA, i32 0, i32 0) }, %struct.RoutedDevice { i8 6, i8 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @SWITCH_KAIKKI_KIRKAS, i32 0, i32 0) }, %struct.RoutedDevice { i8 5, i8 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @SWITCH_KAIKKI_HIMMEA, i32 0, i32 0) }, %struct.RoutedDevice { i8 2, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0) }, %struct.RoutedDevice { i8 4, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i32 0, i32 0) }, %struct.RoutedDevice { i8 2, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i32 0, i32 0) }, %struct.RoutedDevice { i8 4, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i32 0, i32 0) }, %struct.RoutedDevice { i8 2, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i32 0, i32 0) }, %struct.RoutedDevice { i8 4, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i32 0, i32 0) }, %struct.RoutedDevice { i8 1, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.6, i32 0, i32 0) }, %struct.RoutedDevice { i8 3, i8 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i32 0, i32 0) }, %struct.RoutedDevice { i8 7, i8 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @SWITCH_KAIKKI_KIRKAS, i32 0, i32 0) }, %struct.RoutedDevice { i8 7, i8 2, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @SWITCH_KAIKKI_HIMMEA, i32 0, i32 0) }, %struct.RoutedDevice { i8 7, i8 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_KAJARIT_DUMMY_1, i32 0, i32 0) }, %struct.RoutedDevice { i8 7, i8 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_KAJARIT_DUMMY_2, i32 0, i32 0) }, %struct.RoutedDevice { i8 7, i8 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_KAJARIT_DUMMY_3, i32 0, i32 0) }, %struct.RoutedDevice { i8 7, i8 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_KAJARIT_DUMMY_4, i32 0, i32 0) }], align 4
@DEVICE_COUNT = dso_local constant i32 20, align 4
@PATTERN_KIRKAS_HIMMEA = dso_local global [5 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_MAKUUHUONE_KIRKAS, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_OLOHUONE_KIRKAS, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_MAKUUHUONE_HIMMEA, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_OLOHUONE_HIMMEA, i32 0, i32 0), i8* null], align 4
@PATTERN_HIMMEA_KIRKAS = dso_local global [5 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_OLOHUONE_HIMMEA, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_MAKUUHUONE_HIMMEA, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_OLOHUONE_KIRKAS, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @SWITCH_MAKUUHUONE_KIRKAS, i32 0, i32 0), i8* null], align 4
@SWITCH_PATTERNS = dso_local constant [6 x %struct.SwitchPattern] [%struct.SwitchPattern { i8 7, i8 2, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PATTERN_KIRKAS_HIMMEA, i32 0, i32 0) }, %struct.SwitchPattern { i8 7, i8 2, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PATTERN_HIMMEA_KIRKAS, i32 0, i32 0) }, %struct.SwitchPattern { i8 5, i8 2, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PATTERN_KIRKAS_HIMMEA, i32 0, i32 0) }, %struct.SwitchPattern { i8 5, i8 2, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PATTERN_HIMMEA_KIRKAS, i32 0, i32 0) }, %struct.SwitchPattern { i8 6, i8 2, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PATTERN_KIRKAS_HIMMEA, i32 0, i32 0) }, %struct.SwitchPattern { i8 6, i8 2, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @PATTERN_HIMMEA_KIRKAS, i32 0, i32 0) }], align 4
@PATTERN_COUNT = dso_local constant i32 6, align 4
@SWITCH_MEMORY_ITEMS = dso_local constant i32 4, align 4
@PATTERN_TIMEOUT_MS = dso_local constant i64 4000, align 8
@METHOD_TURNON = dso_local constant [15 x i8] c"method:turnon;\00", align 1
@METHOD_TURNOFF = dso_local constant [16 x i8] c"method:turnoff;\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c" This operation is illegal.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %s \0D\0A\00", align 1
@__func__.listen_to_events = private unnamed_addr constant [17 x i8] c"listen_to_events\00", align 1
@g_switch_memory = internal global [4 x %struct.SwitchMemoryItem] zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c" device none\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"try to Turn on %d\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"IGNORED\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"try to Turn off %d\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown method %s\0D\0A\00", align 1
@OutBuf = common dso_local global [50 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"start: [%f]\0D\0A\00", align 1
@SystemCoreClock = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [64 x i8] c"class:command;protocol:arctech;model:codeswitch;house:D;unit:5;\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:11799578;unit:12;group:0;\00", align 1
@.str.18 = private unnamed_addr constant [82 x i8] c"class:command;protocol:arctech;model:selflearning;house:11799578;unit:11;group:0;\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"end:[%f]\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"duration: [%f]\0D\0A\00", align 1
@huart1 = common dso_local global %struct.__UART_HandleTypeDef zeroinitializer, align 4
@.str.21 = private unnamed_addr constant [24 x i8] c"PATTERN %d Turn on %d\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"PATTERN %d Turn off %d\0D\0A\00", align 1
@__func__.react_to_pattern = private unnamed_addr constant [17 x i8] c"react_to_pattern\00", align 1

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
define dso_local arm_aapcs_vfpcc i32 @_gettimeofday(%struct.timeval* %tv, i8* %tzvp) #0 !dbg !18 {
entry:
  %tv.addr = alloca %struct.timeval*, align 4
  %tzvp.addr = alloca i8*, align 4
  %t = alloca i64, align 8
  store %struct.timeval* %tv, %struct.timeval** %tv.addr, align 4
  store i8* %tzvp, i8** %tzvp.addr, align 4
  store i64 0, i64* %t, align 8, !dbg !19
  %0 = load i64, i64* %t, align 8, !dbg !20
  %div = udiv i64 %0, 1000000000, !dbg !21
  %1 = load %struct.timeval*, %struct.timeval** %tv.addr, align 4, !dbg !22
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0, !dbg !23
  store i64 %div, i64* %tv_sec, align 8, !dbg !24
  %2 = load i64, i64* %t, align 8, !dbg !25
  %rem = urem i64 %2, 1000000000, !dbg !26
  %div1 = udiv i64 %rem, 1000, !dbg !27
  %conv = trunc i64 %div1 to i32, !dbg !28
  %3 = load %struct.timeval*, %struct.timeval** %tv.addr, align 4, !dbg !29
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !30
  store i32 %conv, i32* %tv_usec, align 8, !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @judge_legality(i8* %endfunc, i32 %id) #0 !dbg !33 {
entry:
  %endfunc.addr = alloca i8*, align 4
  %id.addr = alloca i32, align 4
  %warningstr = alloca [50 x i8], align 1
  %ret = alloca i32, align 4
  store i8* %endfunc, i8** %endfunc.addr, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = bitcast [50 x i8]* %warningstr to i8*, !dbg !34
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !34
  %1 = load i8*, i8** %endfunc.addr, align 4, !dbg !35
  %2 = load i32, i32* %id.addr, align 4, !dbg !36
  %call = call arm_aapcs_vfpcc i32 @trust_interface(i8* %1, i32 %2), !dbg !37
  store i32 %call, i32* %ret, align 4, !dbg !38
  %3 = load i32, i32* %ret, align 4, !dbg !39
  %cmp = icmp ne i32 %3, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %warningstr, i32 0, i32 0, !dbg !41
  %call1 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)), !dbg !42
  %arraydecay2 = getelementptr inbounds [50 x i8], [50 x i8]* %warningstr, i32 0, i32 0, !dbg !43
  call arm_aapcs_vfpcc void @print(i8* %arraydecay2, i32 50), !dbg !44
  br label %while.body, !dbg !45

while.body:                                       ; preds = %if.then, %while.body
  br label %while.body, !dbg !45, !llvm.loop !46

if.end:                                           ; preds = %entry
  ret void, !dbg !48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local arm_aapcs_vfpcc i32 @trust_interface(i8*, i32) #2

declare dso_local arm_aapcs_vfpcc i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @print(i8* %str, i32 %len) #0 !dbg !49 {
entry:
  %str.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4, !dbg !50
  %1 = load i32, i32* %len.addr, align 4, !dbg !51
  %conv = trunc i32 %1 to i16, !dbg !51
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit_IT(%struct.__UART_HandleTypeDef* @huart1, i8* %0, i16 zeroext %conv), !dbg !52
  %conv1 = zext i8 %call to i32, !dbg !52
  %cmp = icmp ne i32 %conv1, 0, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !56

while.cond:                                       ; preds = %while.body, %if.end
  %call3 = call arm_aapcs_vfpcc i32 @HAL_UART_GetState(%struct.__UART_HandleTypeDef* @huart1), !dbg !57
  %cmp4 = icmp ne i32 %call3, 32, !dbg !58
  br i1 %cmp4, label %while.body, label %while.end, !dbg !56

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !56, !llvm.loop !59

while.end:                                        ; preds = %while.cond
  store volatile i8 0, i8* @UartReady, align 1, !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @negative_status_response(i8* %str, i32 %len) #0 !dbg !63 {
entry:
  %str.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %str.addr, align 4, !dbg !64
  %1 = load i32, i32* %len.addr, align 4, !dbg !65
  call arm_aapcs_vfpcc void @print(i8* %0, i32 %1), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @listen_to_events(i8* %data, i32 %controllerId, i32 %callbackId, i8* %context) #0 !dbg !68 {
entry:
  %data.addr = alloca i8*, align 4
  %controllerId.addr = alloca i32, align 4
  %callbackId.addr = alloca i32, align 4
  %context.addr = alloca i8*, align 4
  %now = alloca i32, align 4
  %memory_added_pattern = alloca i8, align 1
  %funcstr = alloca [30 x i8], align 1
  %device_id = alloca i32, align 4
  %device_routing = alloca %struct.RoutedDevice*, align 4
  %prefix_length = alloca i32, align 4
  %method_start = alloca i8*, align 4
  %i = alloca i32, align 4
  %method = alloca i8, align 1
  %new_item = alloca %struct.SwitchMemoryItem, align 8
  %method_start29 = alloca i8*, align 4
  store i8* %data, i8** %data.addr, align 4
  store i32 %controllerId, i32* %controllerId.addr, align 4
  store i32 %callbackId, i32* %callbackId.addr, align 4
  store i8* %context, i8** %context.addr, align 4
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !69
  store i32 %call, i32* %now, align 4, !dbg !70
  store i8 0, i8* %memory_added_pattern, align 1, !dbg !71
  %0 = bitcast [30 x i8]* %funcstr to i8*, !dbg !72
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 30, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %funcstr, i32 0, i32 0, !dbg !73
  %call1 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.listen_to_events, i32 0, i32 0)), !dbg !74
  %arraydecay2 = getelementptr inbounds [30 x i8], [30 x i8]* %funcstr, i32 0, i32 0, !dbg !75
  call arm_aapcs_vfpcc void @print(i8* %arraydecay2, i32 30), !dbg !76
  store i32 0, i32* %device_id, align 4, !dbg !77
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc65, %entry
  %1 = load i32, i32* %device_id, align 4, !dbg !79
  %cmp = icmp ult i32 %1, 20, !dbg !80
  br i1 %cmp, label %for.body, label %for.end67, !dbg !81

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %device_id, align 4, !dbg !82
  %arrayidx = getelementptr inbounds [20 x %struct.RoutedDevice], [20 x %struct.RoutedDevice]* @DEVICE_ROUTINGS, i32 0, i32 %2, !dbg !83
  store %struct.RoutedDevice* %arrayidx, %struct.RoutedDevice** %device_routing, align 4, !dbg !84
  %3 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !85
  %switchPrefix = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %3, i32 0, i32 2, !dbg !86
  %4 = load i8*, i8** %switchPrefix, align 4, !dbg !86
  %call3 = call arm_aapcs_vfpcc i32 @strlen(i8* %4), !dbg !87
  store i32 %call3, i32* %prefix_length, align 4, !dbg !88
  %5 = load i8*, i8** %data.addr, align 4, !dbg !89
  %6 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !90
  %switchPrefix4 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %6, i32 0, i32 2, !dbg !91
  %7 = load i8*, i8** %switchPrefix4, align 4, !dbg !91
  %8 = load i32, i32* %prefix_length, align 4, !dbg !92
  %call5 = call arm_aapcs_vfpcc i32 @strncmp(i8* %5, i8* %7, i32 %8), !dbg !93
  %cmp6 = icmp eq i32 %call5, 0, !dbg !94
  br i1 %cmp6, label %if.then, label %if.end18, !dbg !93

if.then:                                          ; preds = %for.body
  %9 = load i8*, i8** %data.addr, align 4, !dbg !95
  %10 = load i32, i32* %prefix_length, align 4, !dbg !96
  %add.ptr = getelementptr inbounds i8, i8* %9, i32 %10, !dbg !97
  store i8* %add.ptr, i8** %method_start, align 4, !dbg !98
  store i32 1, i32* %i, align 4, !dbg !99
  br label %for.cond7, !dbg !100

for.cond7:                                        ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4, !dbg !101
  %cmp8 = icmp ult i32 %11, 4, !dbg !102
  br i1 %cmp8, label %for.body9, label %for.end, !dbg !103

for.body9:                                        ; preds = %for.cond7
  %12 = load i32, i32* %i, align 4, !dbg !104
  %sub = sub i32 %12, 1, !dbg !105
  %arrayidx10 = getelementptr inbounds [4 x %struct.SwitchMemoryItem], [4 x %struct.SwitchMemoryItem]* @g_switch_memory, i32 0, i32 %sub, !dbg !106
  %13 = load i32, i32* %i, align 4, !dbg !107
  %arrayidx11 = getelementptr inbounds [4 x %struct.SwitchMemoryItem], [4 x %struct.SwitchMemoryItem]* @g_switch_memory, i32 0, i32 %13, !dbg !108
  %14 = bitcast %struct.SwitchMemoryItem* %arrayidx10 to i8*, !dbg !108
  %15 = bitcast %struct.SwitchMemoryItem* %arrayidx11 to i8*, !dbg !108
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 %14, i8* align 8 %15, i32 16, i1 false), !dbg !108
  br label %for.inc, !dbg !109

for.inc:                                          ; preds = %for.body9
  %16 = load i32, i32* %i, align 4, !dbg !110
  %inc = add i32 %16, 1, !dbg !110
  store i32 %inc, i32* %i, align 4, !dbg !110
  br label %for.cond7, !dbg !103, !llvm.loop !111

for.end:                                          ; preds = %for.cond7
  store i8 1, i8* %method, align 1, !dbg !112
  %17 = load i8*, i8** %method_start, align 4, !dbg !113
  %call12 = call arm_aapcs_vfpcc i32 @strcmp(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @METHOD_TURNOFF, i32 0, i32 0)), !dbg !114
  %cmp13 = icmp eq i32 %call12, 0, !dbg !115
  br i1 %cmp13, label %if.then14, label %if.end, !dbg !114

if.then14:                                        ; preds = %for.end
  store i8 2, i8* %method, align 1, !dbg !116
  br label %if.end, !dbg !117

if.end:                                           ; preds = %if.then14, %for.end
  %timestamp = getelementptr inbounds %struct.SwitchMemoryItem, %struct.SwitchMemoryItem* %new_item, i32 0, i32 0, !dbg !118
  %18 = load i32, i32* %now, align 4, !dbg !119
  %conv = zext i32 %18 to i64, !dbg !119
  store i64 %conv, i64* %timestamp, align 8, !dbg !118
  %method15 = getelementptr inbounds %struct.SwitchMemoryItem, %struct.SwitchMemoryItem* %new_item, i32 0, i32 1, !dbg !118
  %19 = load i8, i8* %method, align 1, !dbg !120
  store i8 %19, i8* %method15, align 8, !dbg !118
  %switchPrefix16 = getelementptr inbounds %struct.SwitchMemoryItem, %struct.SwitchMemoryItem* %new_item, i32 0, i32 2, !dbg !118
  %20 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !121
  %switchPrefix17 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %20, i32 0, i32 2, !dbg !122
  %21 = load i8*, i8** %switchPrefix17, align 4, !dbg !122
  store i8* %21, i8** %switchPrefix16, align 4, !dbg !118
  %22 = bitcast %struct.SwitchMemoryItem* %new_item to i8*, !dbg !123
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 8 bitcast (%struct.SwitchMemoryItem* getelementptr inbounds ([4 x %struct.SwitchMemoryItem], [4 x %struct.SwitchMemoryItem]* @g_switch_memory, i32 0, i32 3) to i8*), i8* align 8 %22, i32 16, i1 false), !dbg !123
  store i8 1, i8* %memory_added_pattern, align 1, !dbg !124
  br label %if.end18, !dbg !125

if.end18:                                         ; preds = %if.end, %for.body
  %23 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !126
  %targetDevice = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %23, i32 0, i32 0, !dbg !127
  %24 = load i8, i8* %targetDevice, align 4, !dbg !127
  %conv19 = zext i8 %24 to i32, !dbg !126
  %cmp20 = icmp eq i32 %conv19, 0, !dbg !128
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !126

if.then22:                                        ; preds = %if.end18
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 15), !dbg !129
  br label %for.inc65, !dbg !130

if.end23:                                         ; preds = %if.end18
  %25 = load i8*, i8** %data.addr, align 4, !dbg !131
  %26 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !132
  %switchPrefix24 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %26, i32 0, i32 2, !dbg !133
  %27 = load i8*, i8** %switchPrefix24, align 4, !dbg !133
  %28 = load i32, i32* %prefix_length, align 4, !dbg !134
  %call25 = call arm_aapcs_vfpcc i32 @strncmp(i8* %25, i8* %27, i32 %28), !dbg !135
  %cmp26 = icmp eq i32 %call25, 0, !dbg !136
  br i1 %cmp26, label %if.then28, label %if.end64, !dbg !135

if.then28:                                        ; preds = %if.end23
  %29 = load i8*, i8** %data.addr, align 4, !dbg !137
  %30 = load i32, i32* %prefix_length, align 4, !dbg !138
  %add.ptr30 = getelementptr inbounds i8, i8* %29, i32 %30, !dbg !139
  store i8* %add.ptr30, i8** %method_start29, align 4, !dbg !140
  %31 = load i8*, i8** %method_start29, align 4, !dbg !141
  %call31 = call arm_aapcs_vfpcc i32 @strcmp(i8* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @METHOD_TURNON, i32 0, i32 0)), !dbg !142
  %cmp32 = icmp eq i32 %call31, 0, !dbg !143
  br i1 %cmp32, label %if.then34, label %if.else43, !dbg !142

if.then34:                                        ; preds = %if.then28
  %32 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !144
  %targetDevice35 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %32, i32 0, i32 0, !dbg !145
  %33 = load i8, i8* %targetDevice35, align 4, !dbg !145
  %conv36 = zext i8 %33 to i32, !dbg !144
  %call37 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i32 %conv36), !dbg !146
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i32 50), !dbg !147
  %34 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !148
  %react = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %34, i32 0, i32 1, !dbg !149
  %35 = load i8, i8* %react, align 1, !dbg !149
  %conv38 = zext i8 %35 to i32, !dbg !148
  %and = and i32 %conv38, 1, !dbg !150
  %tobool = icmp ne i32 %and, 0, !dbg !150
  br i1 %tobool, label %if.then39, label %if.else, !dbg !148

if.then39:                                        ; preds = %if.then34
  %36 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !151
  %targetDevice40 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %36, i32 0, i32 0, !dbg !152
  %37 = load i8, i8* %targetDevice40, align 4, !dbg !152
  %conv41 = zext i8 %37 to i32, !dbg !151
  call arm_aapcs_vfpcc void @tdTurnOn(i32 8, i32 %conv41), !dbg !153
  br label %if.end42, !dbg !154

if.else:                                          ; preds = %if.then34
  call arm_aapcs_vfpcc void @negative_status_response(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 10), !dbg !155
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then39
  br label %if.end63, !dbg !156

if.else43:                                        ; preds = %if.then28
  %38 = load i8*, i8** %method_start29, align 4, !dbg !157
  %call44 = call arm_aapcs_vfpcc i32 @strcmp(i8* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @METHOD_TURNOFF, i32 0, i32 0)), !dbg !158
  %cmp45 = icmp eq i32 %call44, 0, !dbg !159
  br i1 %cmp45, label %if.then47, label %if.else60, !dbg !158

if.then47:                                        ; preds = %if.else43
  %39 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !160
  %targetDevice48 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %39, i32 0, i32 0, !dbg !161
  %40 = load i8, i8* %targetDevice48, align 4, !dbg !161
  %conv49 = zext i8 %40 to i32, !dbg !160
  %call50 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i32 %conv49), !dbg !162
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i32 50), !dbg !163
  %41 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !164
  %react51 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %41, i32 0, i32 1, !dbg !165
  %42 = load i8, i8* %react51, align 1, !dbg !165
  %conv52 = zext i8 %42 to i32, !dbg !164
  %and53 = and i32 %conv52, 2, !dbg !166
  %tobool54 = icmp ne i32 %and53, 0, !dbg !166
  br i1 %tobool54, label %if.then55, label %if.else58, !dbg !164

if.then55:                                        ; preds = %if.then47
  %43 = load %struct.RoutedDevice*, %struct.RoutedDevice** %device_routing, align 4, !dbg !167
  %targetDevice56 = getelementptr inbounds %struct.RoutedDevice, %struct.RoutedDevice* %43, i32 0, i32 0, !dbg !168
  %44 = load i8, i8* %targetDevice56, align 4, !dbg !168
  %conv57 = zext i8 %44 to i32, !dbg !167
  call arm_aapcs_vfpcc void @tdTurnOff(i32 8, i32 %conv57), !dbg !169
  br label %if.end59, !dbg !170

if.else58:                                        ; preds = %if.then47
  call arm_aapcs_vfpcc void @negative_status_response(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 10), !dbg !171
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then55
  br label %if.end62, !dbg !172

if.else60:                                        ; preds = %if.else43
  %45 = load i8*, i8** %data.addr, align 4, !dbg !173
  %call61 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i8* %45), !dbg !174
  call arm_aapcs_vfpcc void @negative_status_response(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i32 50), !dbg !175
  br label %if.end62

if.end62:                                         ; preds = %if.else60, %if.end59
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end42
  br label %if.end64, !dbg !176

if.end64:                                         ; preds = %if.end63, %if.end23
  br label %for.inc65, !dbg !177

for.inc65:                                        ; preds = %if.end64, %if.then22
  %46 = load i32, i32* %device_id, align 4, !dbg !178
  %inc66 = add i32 %46, 1, !dbg !178
  store i32 %inc66, i32* %device_id, align 4, !dbg !178
  br label %for.cond, !dbg !81, !llvm.loop !179

for.end67:                                        ; preds = %for.cond
  %47 = load i8, i8* %memory_added_pattern, align 1, !dbg !180
  %tobool68 = trunc i8 %47 to i1, !dbg !180
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !181

if.then69:                                        ; preds = %for.end67
  %48 = load i32, i32* %now, align 4, !dbg !182
  %conv70 = zext i32 %48 to i64, !dbg !182
  call arm_aapcs_vfpcc void @react_to_pattern(i64 %conv70), !dbg !183
  br label %if.end71, !dbg !184

if.end71:                                         ; preds = %if.then69, %for.end67
  ret void, !dbg !185
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #2

declare dso_local arm_aapcs_vfpcc i32 @strlen(i8*) #2

declare dso_local arm_aapcs_vfpcc i32 @strncmp(i8*, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #1

declare dso_local arm_aapcs_vfpcc i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @tdTurnOn(i32 %pattern_index, i32 %intDeviceId) #0 !dbg !186 {
entry:
  %pattern_index.addr = alloca i32, align 4
  %intDeviceId.addr = alloca i32, align 4
  store i32 %pattern_index, i32* %pattern_index.addr, align 4
  store i32 %intDeviceId, i32* %intDeviceId.addr, align 4
  %0 = load i32, i32* %pattern_index.addr, align 4, !dbg !187
  %1 = load i32, i32* %intDeviceId.addr, align 4, !dbg !188
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i32 %0, i32 %1), !dbg !189
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i32 50), !dbg !190
  ret void, !dbg !191
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @tdTurnOff(i32 %pattern_index, i32 %intDeviceId) #0 !dbg !192 {
entry:
  %pattern_index.addr = alloca i32, align 4
  %intDeviceId.addr = alloca i32, align 4
  store i32 %pattern_index, i32* %pattern_index.addr, align 4
  store i32 %intDeviceId, i32* %intDeviceId.addr, align 4
  %0 = load i32, i32* %pattern_index.addr, align 4, !dbg !193
  %1 = load i32, i32* %intDeviceId.addr, align 4, !dbg !194
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0), i32 %0, i32 %1), !dbg !195
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @printstr, i32 0, i32 0), i32 50), !dbg !196
  ret void, !dbg !197
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @react_to_pattern(i64 %now) #0 !dbg !198 {
entry:
  %now.addr = alloca i64, align 8
  %min_timestamp = alloca i64, align 8
  %funcstr = alloca [50 x i8], align 1
  %pattern_index = alloca i32, align 4
  %pattern = alloca %struct.SwitchPattern*, align 4
  %has_match = alloca i8, align 1
  %switch_memory_index = alloca i32, align 4
  %memory_item = alloca %struct.SwitchMemoryItem*, align 4
  store i64 %now, i64* %now.addr, align 8
  %0 = load i64, i64* %now.addr, align 8, !dbg !199
  %sub = sub i64 %0, 4000, !dbg !200
  store i64 %sub, i64* %min_timestamp, align 8, !dbg !201
  %1 = bitcast [50 x i8]* %funcstr to i8*, !dbg !202
  call void @llvm.memset.p0i8.i32(i8* align 1 %1, i8 0, i32 50, i1 false), !dbg !202
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %funcstr, i32 0, i32 0, !dbg !203
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.react_to_pattern, i32 0, i32 0)), !dbg !204
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %funcstr, i32 0, i32 0, !dbg !205
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !206
  store i32 0, i32* %pattern_index, align 4, !dbg !207
  br label %for.cond, !dbg !208

for.cond:                                         ; preds = %for.inc39, %entry
  %2 = load i32, i32* %pattern_index, align 4, !dbg !209
  %cmp = icmp ult i32 %2, 6, !dbg !210
  br i1 %cmp, label %for.body, label %for.end41, !dbg !211

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %pattern_index, align 4, !dbg !212
  %arrayidx = getelementptr inbounds [6 x %struct.SwitchPattern], [6 x %struct.SwitchPattern]* @SWITCH_PATTERNS, i32 0, i32 %3, !dbg !213
  store %struct.SwitchPattern* %arrayidx, %struct.SwitchPattern** %pattern, align 4, !dbg !214
  store i8 1, i8* %has_match, align 1, !dbg !215
  store i32 0, i32* %switch_memory_index, align 4, !dbg !216
  br label %for.cond2, !dbg !217

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %switch_memory_index, align 4, !dbg !218
  %cmp3 = icmp ult i32 %4, 4, !dbg !219
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !220

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %switch_memory_index, align 4, !dbg !221
  %arrayidx5 = getelementptr inbounds [4 x %struct.SwitchMemoryItem], [4 x %struct.SwitchMemoryItem]* @g_switch_memory, i32 0, i32 %5, !dbg !222
  store %struct.SwitchMemoryItem* %arrayidx5, %struct.SwitchMemoryItem** %memory_item, align 4, !dbg !223
  %6 = load %struct.SwitchMemoryItem*, %struct.SwitchMemoryItem** %memory_item, align 4, !dbg !224
  %timestamp = getelementptr inbounds %struct.SwitchMemoryItem, %struct.SwitchMemoryItem* %6, i32 0, i32 0, !dbg !225
  %7 = load i64, i64* %timestamp, align 8, !dbg !225
  %8 = load i64, i64* %min_timestamp, align 8, !dbg !226
  %cmp6 = icmp ult i64 %7, %8, !dbg !227
  br i1 %cmp6, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %for.body4
  store i8 0, i8* %has_match, align 1, !dbg !228
  br label %for.end, !dbg !229

if.end:                                           ; preds = %for.body4
  %9 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !230
  %react = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %9, i32 0, i32 1, !dbg !231
  %10 = load i8, i8* %react, align 1, !dbg !231
  %conv = zext i8 %10 to i32, !dbg !230
  %11 = load %struct.SwitchMemoryItem*, %struct.SwitchMemoryItem** %memory_item, align 4, !dbg !232
  %method = getelementptr inbounds %struct.SwitchMemoryItem, %struct.SwitchMemoryItem* %11, i32 0, i32 1, !dbg !233
  %12 = load i8, i8* %method, align 8, !dbg !233
  %conv7 = zext i8 %12 to i32, !dbg !232
  %and = and i32 %conv, %conv7, !dbg !234
  %tobool = icmp ne i32 %and, 0, !dbg !234
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !235

if.then8:                                         ; preds = %if.end
  store i8 0, i8* %has_match, align 1, !dbg !236
  br label %for.end, !dbg !237

if.end9:                                          ; preds = %if.end
  %13 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !238
  %switchPrefixes = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %13, i32 0, i32 2, !dbg !239
  %14 = load i8**, i8*** %switchPrefixes, align 4, !dbg !239
  %15 = load i32, i32* %switch_memory_index, align 4, !dbg !240
  %arrayidx10 = getelementptr inbounds i8*, i8** %14, i32 %15, !dbg !238
  %16 = load i8*, i8** %arrayidx10, align 4, !dbg !238
  %cmp11 = icmp eq i8* %16, null, !dbg !241
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !238

if.then13:                                        ; preds = %if.end9
  br label %for.end, !dbg !242

if.end14:                                         ; preds = %if.end9
  %17 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !243
  %switchPrefixes15 = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %17, i32 0, i32 2, !dbg !244
  %18 = load i8**, i8*** %switchPrefixes15, align 4, !dbg !244
  %19 = load i32, i32* %switch_memory_index, align 4, !dbg !245
  %arrayidx16 = getelementptr inbounds i8*, i8** %18, i32 %19, !dbg !243
  %20 = load i8*, i8** %arrayidx16, align 4, !dbg !243
  %21 = load %struct.SwitchMemoryItem*, %struct.SwitchMemoryItem** %memory_item, align 4, !dbg !246
  %switchPrefix = getelementptr inbounds %struct.SwitchMemoryItem, %struct.SwitchMemoryItem* %21, i32 0, i32 2, !dbg !247
  %22 = load i8*, i8** %switchPrefix, align 4, !dbg !247
  %cmp17 = icmp ne i8* %20, %22, !dbg !248
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !243

if.then19:                                        ; preds = %if.end14
  store i8 0, i8* %has_match, align 1, !dbg !249
  br label %for.end, !dbg !250

if.end20:                                         ; preds = %if.end14
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %if.end20
  %23 = load i32, i32* %switch_memory_index, align 4, !dbg !252
  %inc = add i32 %23, 1, !dbg !252
  store i32 %inc, i32* %switch_memory_index, align 4, !dbg !252
  br label %for.cond2, !dbg !220, !llvm.loop !253

for.end:                                          ; preds = %if.then19, %if.then13, %if.then8, %if.then, %for.cond2
  %24 = load i8, i8* %has_match, align 1, !dbg !254
  %tobool21 = trunc i8 %24 to i1, !dbg !254
  br i1 %tobool21, label %if.then22, label %if.end38, !dbg !254

if.then22:                                        ; preds = %for.end
  %25 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !255
  %react23 = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %25, i32 0, i32 1, !dbg !256
  %26 = load i8, i8* %react23, align 1, !dbg !256
  %conv24 = zext i8 %26 to i32, !dbg !255
  %and25 = and i32 %conv24, 1, !dbg !257
  %tobool26 = icmp ne i32 %and25, 0, !dbg !257
  br i1 %tobool26, label %if.then27, label %if.else, !dbg !255

if.then27:                                        ; preds = %if.then22
  %27 = load i32, i32* %pattern_index, align 4, !dbg !258
  %28 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !259
  %targetDevice = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %28, i32 0, i32 0, !dbg !260
  %29 = load i8, i8* %targetDevice, align 4, !dbg !260
  %conv28 = zext i8 %29 to i32, !dbg !259
  call arm_aapcs_vfpcc void @tdTurnOn(i32 %27, i32 %conv28), !dbg !261
  br label %if.end37, !dbg !262

if.else:                                          ; preds = %if.then22
  %30 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !263
  %react29 = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %30, i32 0, i32 1, !dbg !264
  %31 = load i8, i8* %react29, align 1, !dbg !264
  %conv30 = zext i8 %31 to i32, !dbg !263
  %and31 = and i32 %conv30, 2, !dbg !265
  %tobool32 = icmp ne i32 %and31, 0, !dbg !265
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !263

if.then33:                                        ; preds = %if.else
  %32 = load i32, i32* %pattern_index, align 4, !dbg !266
  %33 = load %struct.SwitchPattern*, %struct.SwitchPattern** %pattern, align 4, !dbg !267
  %targetDevice34 = getelementptr inbounds %struct.SwitchPattern, %struct.SwitchPattern* %33, i32 0, i32 0, !dbg !268
  %34 = load i8, i8* %targetDevice34, align 4, !dbg !268
  %conv35 = zext i8 %34 to i32, !dbg !267
  call arm_aapcs_vfpcc void @tdTurnOff(i32 %32, i32 %conv35), !dbg !269
  br label %if.end36, !dbg !270

if.end36:                                         ; preds = %if.then33, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then27
  br label %if.end38, !dbg !271

if.end38:                                         ; preds = %if.end37, %for.end
  br label %for.inc39, !dbg !272

for.inc39:                                        ; preds = %if.end38
  %35 = load i32, i32* %pattern_index, align 4, !dbg !273
  %inc40 = add i32 %35, 1, !dbg !273
  store i32 %inc40, i32* %pattern_index, align 4, !dbg !273
  br label %for.cond, !dbg !211, !llvm.loop !274

for.end41:                                        ; preds = %for.cond
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @init() #0 !dbg !276 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_Init(), !dbg !277
  call arm_aapcs_vfpcc void @MX_GPIO_Init(), !dbg !278
  call arm_aapcs_vfpcc void @MX_USART1_UART_Init(), !dbg !279
  %call1 = call arm_aapcs_vfpcc i32 @DWT_Init(), !dbg !280
  ret void, !dbg !281
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_Init() #2

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @MX_GPIO_Init() #0 !dbg !282 {
entry:
  %tmpreg = alloca i32, align 4
  %tmpreg2 = alloca i32, align 4
  br label %do.body, !dbg !283

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !283
  %or = or i32 %0, 4, !dbg !283
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !283
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !283
  %and = and i32 %1, 4, !dbg !283
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !283
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !283
  br label %do.end, !dbg !283

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !284

do.body1:                                         ; preds = %do.end
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !284
  %or3 = or i32 %3, 1, !dbg !284
  store volatile i32 %or3, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !284
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !284
  %and4 = and i32 %4, 1, !dbg !284
  store volatile i32 %and4, i32* %tmpreg2, align 4, !dbg !284
  %5 = load volatile i32, i32* %tmpreg2, align 4, !dbg !284
  br label %do.end5, !dbg !284

do.end5:                                          ; preds = %do.body1
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @MX_USART1_UART_Init() #0 !dbg !286 {
entry:
  store %struct.USART_TypeDef* inttoptr (i32 1073821696 to %struct.USART_TypeDef*), %struct.USART_TypeDef** getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 0), align 4, !dbg !287
  store i32 115200, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 0), align 4, !dbg !288
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 1), align 4, !dbg !289
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 2), align 4, !dbg !290
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 3), align 4, !dbg !291
  store i32 12, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 4), align 4, !dbg !292
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 5), align 4, !dbg !293
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 6), align 4, !dbg !294
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 7), align 4, !dbg !295
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 8), align 4, !dbg !296
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 2, i32 0), align 4, !dbg !297
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_UART_Init(%struct.__UART_HandleTypeDef* @huart1), !dbg !298
  %conv = zext i8 %call to i32, !dbg !298
  %cmp = icmp ne i32 %conv, 0, !dbg !299
  br i1 %cmp, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %entry
  %call2 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetTxFifoThreshold(%struct.__UART_HandleTypeDef* @huart1, i32 0), !dbg !302
  %conv3 = zext i8 %call2 to i32, !dbg !302
  %cmp4 = icmp ne i32 %conv3, 0, !dbg !303
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !302

if.then6:                                         ; preds = %if.end
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !304
  br label %if.end7, !dbg !305

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetRxFifoThreshold(%struct.__UART_HandleTypeDef* @huart1, i32 0), !dbg !306
  %conv9 = zext i8 %call8 to i32, !dbg !306
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !307
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !306

if.then12:                                        ; preds = %if.end7
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !308
  br label %if.end13, !dbg !309

if.end13:                                         ; preds = %if.then12, %if.end7
  %call14 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableFifoMode(%struct.__UART_HandleTypeDef* @huart1), !dbg !310
  %conv15 = zext i8 %call14 to i32, !dbg !310
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !311
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !310

if.then18:                                        ; preds = %if.end13
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !312
  br label %if.end19, !dbg !313

if.end19:                                         ; preds = %if.then18, %if.end13
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !315 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @init(), !dbg !316
  %call = call arm_aapcs_vfpcc i32 @main_logic(), !dbg !317
  ret i32 0, !dbg !318
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @main_logic() #0 !dbg !319 {
entry:
  %data = alloca [100 x i8], align 1
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %count = alloca i32, align 4
  %call = call arm_aapcs_vfpcc i32 @DWT_GetTick(), !dbg !320
  store i32 %call, i32* %start, align 4, !dbg !321
  %0 = load i32, i32* %start, align 4, !dbg !322
  %conv = uitofp i32 %0 to double, !dbg !323
  %1 = load i32, i32* @SystemCoreClock, align 4, !dbg !324
  %conv1 = uitofp i32 %1 to double, !dbg !325
  %div = fdiv double %conv, %conv1, !dbg !326
  %call2 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), double %div), !dbg !327
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !328
  store i32 0, i32* %count, align 4, !dbg !329
  br label %for.cond, !dbg !330

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %count, align 4, !dbg !331
  %cmp = icmp slt i32 %2, 10, !dbg !332
  br i1 %cmp, label %for.body, label %for.end, !dbg !333

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %count, align 4, !dbg !334
  %cmp4 = icmp slt i32 %3, 2, !dbg !335
  br i1 %cmp4, label %if.then, label %if.else, !dbg !334

if.then:                                          ; preds = %for.body
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %data, i32 0, i32 0, !dbg !336
  %call6 = call arm_aapcs_vfpcc i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16, i32 0, i32 0)), !dbg !337
  br label %if.end29, !dbg !337

if.else:                                          ; preds = %for.body
  %4 = load i32, i32* %count, align 4, !dbg !338
  %cmp7 = icmp slt i32 %4, 4, !dbg !339
  br i1 %cmp7, label %if.then9, label %if.else12, !dbg !338

if.then9:                                         ; preds = %if.else
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %data, i32 0, i32 0, !dbg !340
  %call11 = call arm_aapcs_vfpcc i8* @strcpy(i8* %arraydecay10, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i32 0, i32 0)), !dbg !341
  br label %if.end28, !dbg !341

if.else12:                                        ; preds = %if.else
  %5 = load i32, i32* %count, align 4, !dbg !342
  %cmp13 = icmp slt i32 %5, 6, !dbg !343
  br i1 %cmp13, label %if.then15, label %if.else18, !dbg !342

if.then15:                                        ; preds = %if.else12
  %arraydecay16 = getelementptr inbounds [100 x i8], [100 x i8]* %data, i32 0, i32 0, !dbg !344
  %call17 = call arm_aapcs_vfpcc i8* @strcpy(i8* %arraydecay16, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0)), !dbg !345
  br label %if.end27, !dbg !345

if.else18:                                        ; preds = %if.else12
  %6 = load i32, i32* %count, align 4, !dbg !346
  %cmp19 = icmp slt i32 %6, 8, !dbg !347
  br i1 %cmp19, label %if.then21, label %if.else24, !dbg !346

if.then21:                                        ; preds = %if.else18
  %arraydecay22 = getelementptr inbounds [100 x i8], [100 x i8]* %data, i32 0, i32 0, !dbg !348
  %call23 = call arm_aapcs_vfpcc i8* @strcpy(i8* %arraydecay22, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i32 0, i32 0)), !dbg !349
  br label %if.end, !dbg !349

if.else24:                                        ; preds = %if.else18
  %arraydecay25 = getelementptr inbounds [100 x i8], [100 x i8]* %data, i32 0, i32 0, !dbg !350
  %call26 = call arm_aapcs_vfpcc i8* @strcpy(i8* %arraydecay25, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.18, i32 0, i32 0)), !dbg !351
  br label %if.end

if.end:                                           ; preds = %if.else24, %if.then21
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then15
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then9
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then
  %arraydecay30 = getelementptr inbounds [100 x i8], [100 x i8]* %data, i32 0, i32 0, !dbg !352
  call arm_aapcs_vfpcc void @listen_to_events(i8* %arraydecay30, i32 0, i32 0, i8* null), !dbg !353
  br label %for.inc, !dbg !354

for.inc:                                          ; preds = %if.end29
  %7 = load i32, i32* %count, align 4, !dbg !355
  %inc = add nsw i32 %7, 1, !dbg !355
  store i32 %inc, i32* %count, align 4, !dbg !355
  br label %for.cond, !dbg !333, !llvm.loop !356

for.end:                                          ; preds = %for.cond
  %call31 = call arm_aapcs_vfpcc i32 @DWT_GetTick(), !dbg !357
  store i32 %call31, i32* %end, align 4, !dbg !358
  %8 = load i32, i32* %end, align 4, !dbg !359
  %conv32 = uitofp i32 %8 to double, !dbg !360
  %9 = load i32, i32* @SystemCoreClock, align 4, !dbg !361
  %conv33 = uitofp i32 %9 to double, !dbg !362
  %div34 = fdiv double %conv32, %conv33, !dbg !363
  %call35 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), double %div34), !dbg !364
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !365
  %10 = load i32, i32* %end, align 4, !dbg !366
  %11 = load i32, i32* %start, align 4, !dbg !367
  %sub = sub i32 %10, %11, !dbg !368
  %conv36 = uitofp i32 %sub to double, !dbg !369
  %div37 = fdiv double %conv36, 1.000000e+01, !dbg !370
  %12 = load i32, i32* @SystemCoreClock, align 4, !dbg !371
  %conv38 = uitofp i32 %12 to double, !dbg !372
  %div39 = fdiv double %div37, %conv38, !dbg !373
  %call40 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), double %div39), !dbg !374
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !375
  br label %while.body, !dbg !376

while.body:                                       ; preds = %for.end, %while.body
  br label %while.body, !dbg !376, !llvm.loop !377
}

declare dso_local arm_aapcs_vfpcc i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @Error_Handler() #0 !dbg !379 {
entry:
  ret void, !dbg !380
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit_IT(%struct.__UART_HandleTypeDef*, i8*, i16 zeroext) #2

declare dso_local arm_aapcs_vfpcc i32 @HAL_UART_GetState(%struct.__UART_HandleTypeDef*) #2

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Init(%struct.__UART_HandleTypeDef*) #2

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetTxFifoThreshold(%struct.__UART_HandleTypeDef*, i32) #2

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetRxFifoThreshold(%struct.__UART_HandleTypeDef*, i32) #2

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableFifoMode(%struct.__UART_HandleTypeDef*) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/main.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "DWT_Init", scope: !9, file: !9, line: 197, type: !10, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/main.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 198, column: 19, scope: !8)
!12 = !DILocation(line: 201, column: 14, scope: !8)
!13 = !DILocation(line: 202, column: 12, scope: !8)
!14 = !DILocation(line: 203, column: 1, scope: !8)
!15 = distinct !DISubprogram(name: "DWT_GetTick", scope: !9, file: !9, line: 205, type: !10, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 206, column: 14, scope: !15)
!17 = !DILocation(line: 206, column: 2, scope: !15)
!18 = distinct !DISubprogram(name: "_gettimeofday", scope: !9, file: !9, line: 209, type: !10, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 211, column: 14, scope: !18)
!20 = !DILocation(line: 212, column: 18, scope: !18)
!21 = !DILocation(line: 212, column: 20, scope: !18)
!22 = !DILocation(line: 212, column: 5, scope: !18)
!23 = !DILocation(line: 212, column: 9, scope: !18)
!24 = !DILocation(line: 212, column: 16, scope: !18)
!25 = !DILocation(line: 213, column: 21, scope: !18)
!26 = !DILocation(line: 213, column: 23, scope: !18)
!27 = !DILocation(line: 213, column: 38, scope: !18)
!28 = !DILocation(line: 213, column: 19, scope: !18)
!29 = !DILocation(line: 213, column: 5, scope: !18)
!30 = !DILocation(line: 213, column: 9, scope: !18)
!31 = !DILocation(line: 213, column: 17, scope: !18)
!32 = !DILocation(line: 214, column: 5, scope: !18)
!33 = distinct !DISubprogram(name: "judge_legality", scope: !9, file: !9, line: 233, type: !10, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!34 = !DILocation(line: 235, column: 17, scope: !33)
!35 = !DILocation(line: 236, column: 29, scope: !33)
!36 = !DILocation(line: 236, column: 38, scope: !33)
!37 = !DILocation(line: 236, column: 13, scope: !33)
!38 = !DILocation(line: 236, column: 7, scope: !33)
!39 = !DILocation(line: 238, column: 6, scope: !33)
!40 = !DILocation(line: 238, column: 9, scope: !33)
!41 = !DILocation(line: 240, column: 12, scope: !33)
!42 = !DILocation(line: 240, column: 4, scope: !33)
!43 = !DILocation(line: 241, column: 11, scope: !33)
!44 = !DILocation(line: 241, column: 5, scope: !33)
!45 = !DILocation(line: 242, column: 5, scope: !33)
!46 = distinct !{!46, !45, !47}
!47 = !DILocation(line: 245, column: 5, scope: !33)
!48 = !DILocation(line: 252, column: 3, scope: !33)
!49 = distinct !DISubprogram(name: "print", scope: !9, file: !9, line: 217, type: !10, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 221, column: 49, scope: !49)
!51 = !DILocation(line: 221, column: 54, scope: !49)
!52 = !DILocation(line: 221, column: 7, scope: !49)
!53 = !DILocation(line: 221, column: 59, scope: !49)
!54 = !DILocation(line: 222, column: 5, scope: !49)
!55 = !DILocation(line: 223, column: 3, scope: !49)
!56 = !DILocation(line: 225, column: 3, scope: !49)
!57 = !DILocation(line: 225, column: 9, scope: !49)
!58 = !DILocation(line: 225, column: 36, scope: !49)
!59 = distinct !{!59, !56, !60}
!60 = !DILocation(line: 227, column: 3, scope: !49)
!61 = !DILocation(line: 229, column: 13, scope: !49)
!62 = !DILocation(line: 231, column: 1, scope: !49)
!63 = distinct !DISubprogram(name: "negative_status_response", scope: !9, file: !9, line: 267, type: !10, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocation(line: 269, column: 8, scope: !63)
!65 = !DILocation(line: 269, column: 13, scope: !63)
!66 = !DILocation(line: 269, column: 2, scope: !63)
!67 = !DILocation(line: 270, column: 1, scope: !63)
!68 = distinct !DISubprogram(name: "listen_to_events", scope: !9, file: !9, line: 320, type: !10, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocation(line: 323, column: 18, scope: !68)
!70 = !DILocation(line: 323, column: 12, scope: !68)
!71 = !DILocation(line: 325, column: 8, scope: !68)
!72 = !DILocation(line: 328, column: 17, scope: !68)
!73 = !DILocation(line: 329, column: 11, scope: !68)
!74 = !DILocation(line: 329, column: 3, scope: !68)
!75 = !DILocation(line: 330, column: 9, scope: !68)
!76 = !DILocation(line: 330, column: 3, scope: !68)
!77 = !DILocation(line: 332, column: 15, scope: !68)
!78 = !DILocation(line: 332, column: 8, scope: !68)
!79 = !DILocation(line: 332, column: 30, scope: !68)
!80 = !DILocation(line: 332, column: 40, scope: !68)
!81 = !DILocation(line: 332, column: 3, scope: !68)
!82 = !DILocation(line: 333, column: 61, scope: !68)
!83 = !DILocation(line: 333, column: 45, scope: !68)
!84 = !DILocation(line: 333, column: 27, scope: !68)
!85 = !DILocation(line: 334, column: 43, scope: !68)
!86 = !DILocation(line: 334, column: 59, scope: !68)
!87 = !DILocation(line: 334, column: 36, scope: !68)
!88 = !DILocation(line: 334, column: 20, scope: !68)
!89 = !DILocation(line: 335, column: 19, scope: !68)
!90 = !DILocation(line: 335, column: 25, scope: !68)
!91 = !DILocation(line: 335, column: 41, scope: !68)
!92 = !DILocation(line: 335, column: 55, scope: !68)
!93 = !DILocation(line: 335, column: 11, scope: !68)
!94 = !DILocation(line: 335, column: 70, scope: !68)
!95 = !DILocation(line: 336, column: 38, scope: !68)
!96 = !DILocation(line: 336, column: 45, scope: !68)
!97 = !DILocation(line: 336, column: 43, scope: !68)
!98 = !DILocation(line: 336, column: 23, scope: !68)
!99 = !DILocation(line: 337, column: 23, scope: !68)
!100 = !DILocation(line: 337, column: 16, scope: !68)
!101 = !DILocation(line: 337, column: 30, scope: !68)
!102 = !DILocation(line: 337, column: 32, scope: !68)
!103 = !DILocation(line: 337, column: 11, scope: !68)
!104 = !DILocation(line: 338, column: 31, scope: !68)
!105 = !DILocation(line: 338, column: 33, scope: !68)
!106 = !DILocation(line: 338, column: 15, scope: !68)
!107 = !DILocation(line: 338, column: 56, scope: !68)
!108 = !DILocation(line: 338, column: 40, scope: !68)
!109 = !DILocation(line: 339, column: 11, scope: !68)
!110 = !DILocation(line: 337, column: 57, scope: !68)
!111 = distinct !{!111, !103, !109}
!112 = !DILocation(line: 341, column: 24, scope: !68)
!113 = !DILocation(line: 342, column: 22, scope: !68)
!114 = !DILocation(line: 342, column: 15, scope: !68)
!115 = !DILocation(line: 342, column: 52, scope: !68)
!116 = !DILocation(line: 343, column: 22, scope: !68)
!117 = !DILocation(line: 344, column: 11, scope: !68)
!118 = !DILocation(line: 345, column: 39, scope: !68)
!119 = !DILocation(line: 345, column: 40, scope: !68)
!120 = !DILocation(line: 345, column: 45, scope: !68)
!121 = !DILocation(line: 345, column: 53, scope: !68)
!122 = !DILocation(line: 345, column: 69, scope: !68)
!123 = !DILocation(line: 346, column: 54, scope: !68)
!124 = !DILocation(line: 347, column: 32, scope: !68)
!125 = !DILocation(line: 348, column: 7, scope: !68)
!126 = !DILocation(line: 349, column: 11, scope: !68)
!127 = !DILocation(line: 349, column: 27, scope: !68)
!128 = !DILocation(line: 349, column: 40, scope: !68)
!129 = !DILocation(line: 350, column: 11, scope: !68)
!130 = !DILocation(line: 351, column: 11, scope: !68)
!131 = !DILocation(line: 353, column: 19, scope: !68)
!132 = !DILocation(line: 353, column: 25, scope: !68)
!133 = !DILocation(line: 353, column: 41, scope: !68)
!134 = !DILocation(line: 353, column: 55, scope: !68)
!135 = !DILocation(line: 353, column: 11, scope: !68)
!136 = !DILocation(line: 353, column: 70, scope: !68)
!137 = !DILocation(line: 354, column: 38, scope: !68)
!138 = !DILocation(line: 354, column: 45, scope: !68)
!139 = !DILocation(line: 354, column: 43, scope: !68)
!140 = !DILocation(line: 354, column: 23, scope: !68)
!141 = !DILocation(line: 356, column: 22, scope: !68)
!142 = !DILocation(line: 356, column: 15, scope: !68)
!143 = !DILocation(line: 356, column: 51, scope: !68)
!144 = !DILocation(line: 358, column: 57, scope: !68)
!145 = !DILocation(line: 358, column: 73, scope: !68)
!146 = !DILocation(line: 358, column: 15, scope: !68)
!147 = !DILocation(line: 359, column: 15, scope: !68)
!148 = !DILocation(line: 361, column: 19, scope: !68)
!149 = !DILocation(line: 361, column: 35, scope: !68)
!150 = !DILocation(line: 361, column: 41, scope: !68)
!151 = !DILocation(line: 362, column: 31, scope: !68)
!152 = !DILocation(line: 362, column: 47, scope: !68)
!153 = !DILocation(line: 362, column: 19, scope: !68)
!154 = !DILocation(line: 363, column: 15, scope: !68)
!155 = !DILocation(line: 364, column: 19, scope: !68)
!156 = !DILocation(line: 366, column: 11, scope: !68)
!157 = !DILocation(line: 366, column: 29, scope: !68)
!158 = !DILocation(line: 366, column: 22, scope: !68)
!159 = !DILocation(line: 366, column: 59, scope: !68)
!160 = !DILocation(line: 368, column: 58, scope: !68)
!161 = !DILocation(line: 368, column: 74, scope: !68)
!162 = !DILocation(line: 368, column: 15, scope: !68)
!163 = !DILocation(line: 369, column: 15, scope: !68)
!164 = !DILocation(line: 371, column: 19, scope: !68)
!165 = !DILocation(line: 371, column: 35, scope: !68)
!166 = !DILocation(line: 371, column: 41, scope: !68)
!167 = !DILocation(line: 372, column: 33, scope: !68)
!168 = !DILocation(line: 372, column: 49, scope: !68)
!169 = !DILocation(line: 372, column: 20, scope: !68)
!170 = !DILocation(line: 373, column: 15, scope: !68)
!171 = !DILocation(line: 374, column: 19, scope: !68)
!172 = !DILocation(line: 376, column: 11, scope: !68)
!173 = !DILocation(line: 377, column: 57, scope: !68)
!174 = !DILocation(line: 377, column: 15, scope: !68)
!175 = !DILocation(line: 378, column: 15, scope: !68)
!176 = !DILocation(line: 380, column: 7, scope: !68)
!177 = !DILocation(line: 381, column: 3, scope: !68)
!178 = !DILocation(line: 332, column: 65, scope: !68)
!179 = distinct !{!179, !81, !177}
!180 = !DILocation(line: 383, column: 8, scope: !68)
!181 = !DILocation(line: 383, column: 7, scope: !68)
!182 = !DILocation(line: 384, column: 24, scope: !68)
!183 = !DILocation(line: 384, column: 7, scope: !68)
!184 = !DILocation(line: 385, column: 3, scope: !68)
!185 = !DILocation(line: 388, column: 1, scope: !68)
!186 = distinct !DISubprogram(name: "tdTurnOn", scope: !9, file: !9, line: 255, type: !10, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!187 = !DILocation(line: 257, column: 48, scope: !186)
!188 = !DILocation(line: 257, column: 63, scope: !186)
!189 = !DILocation(line: 257, column: 2, scope: !186)
!190 = !DILocation(line: 258, column: 2, scope: !186)
!191 = !DILocation(line: 259, column: 1, scope: !186)
!192 = distinct !DISubprogram(name: "tdTurnOff", scope: !9, file: !9, line: 261, type: !10, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!193 = !DILocation(line: 263, column: 49, scope: !192)
!194 = !DILocation(line: 263, column: 64, scope: !192)
!195 = !DILocation(line: 263, column: 2, scope: !192)
!196 = !DILocation(line: 264, column: 2, scope: !192)
!197 = !DILocation(line: 265, column: 1, scope: !192)
!198 = distinct !DISubprogram(name: "react_to_pattern", scope: !9, file: !9, line: 272, type: !10, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!199 = !DILocation(line: 274, column: 30, scope: !198)
!200 = !DILocation(line: 274, column: 34, scope: !198)
!201 = !DILocation(line: 274, column: 14, scope: !198)
!202 = !DILocation(line: 276, column: 19, scope: !198)
!203 = !DILocation(line: 277, column: 13, scope: !198)
!204 = !DILocation(line: 277, column: 5, scope: !198)
!205 = !DILocation(line: 278, column: 11, scope: !198)
!206 = !DILocation(line: 278, column: 5, scope: !198)
!207 = !DILocation(line: 280, column: 17, scope: !198)
!208 = !DILocation(line: 280, column: 10, scope: !198)
!209 = !DILocation(line: 280, column: 36, scope: !198)
!210 = !DILocation(line: 280, column: 50, scope: !198)
!211 = !DILocation(line: 280, column: 5, scope: !198)
!212 = !DILocation(line: 281, column: 57, scope: !198)
!213 = !DILocation(line: 281, column: 41, scope: !198)
!214 = !DILocation(line: 281, column: 30, scope: !198)
!215 = !DILocation(line: 282, column: 14, scope: !198)
!216 = !DILocation(line: 283, column: 21, scope: !198)
!217 = !DILocation(line: 283, column: 14, scope: !198)
!218 = !DILocation(line: 284, column: 14, scope: !198)
!219 = !DILocation(line: 284, column: 34, scope: !198)
!220 = !DILocation(line: 283, column: 9, scope: !198)
!221 = !DILocation(line: 286, column: 68, scope: !198)
!222 = !DILocation(line: 286, column: 52, scope: !198)
!223 = !DILocation(line: 286, column: 37, scope: !198)
!224 = !DILocation(line: 287, column: 17, scope: !198)
!225 = !DILocation(line: 287, column: 30, scope: !198)
!226 = !DILocation(line: 287, column: 42, scope: !198)
!227 = !DILocation(line: 287, column: 40, scope: !198)
!228 = !DILocation(line: 288, column: 27, scope: !198)
!229 = !DILocation(line: 289, column: 17, scope: !198)
!230 = !DILocation(line: 291, column: 19, scope: !198)
!231 = !DILocation(line: 291, column: 28, scope: !198)
!232 = !DILocation(line: 291, column: 36, scope: !198)
!233 = !DILocation(line: 291, column: 49, scope: !198)
!234 = !DILocation(line: 291, column: 34, scope: !198)
!235 = !DILocation(line: 291, column: 17, scope: !198)
!236 = !DILocation(line: 292, column: 27, scope: !198)
!237 = !DILocation(line: 293, column: 17, scope: !198)
!238 = !DILocation(line: 295, column: 17, scope: !198)
!239 = !DILocation(line: 295, column: 26, scope: !198)
!240 = !DILocation(line: 295, column: 41, scope: !198)
!241 = !DILocation(line: 295, column: 62, scope: !198)
!242 = !DILocation(line: 296, column: 17, scope: !198)
!243 = !DILocation(line: 298, column: 17, scope: !198)
!244 = !DILocation(line: 298, column: 26, scope: !198)
!245 = !DILocation(line: 298, column: 41, scope: !198)
!246 = !DILocation(line: 298, column: 65, scope: !198)
!247 = !DILocation(line: 298, column: 78, scope: !198)
!248 = !DILocation(line: 298, column: 62, scope: !198)
!249 = !DILocation(line: 299, column: 27, scope: !198)
!250 = !DILocation(line: 300, column: 17, scope: !198)
!251 = !DILocation(line: 302, column: 9, scope: !198)
!252 = !DILocation(line: 285, column: 33, scope: !198)
!253 = distinct !{!253, !220, !251}
!254 = !DILocation(line: 303, column: 13, scope: !198)
!255 = !DILocation(line: 304, column: 17, scope: !198)
!256 = !DILocation(line: 304, column: 26, scope: !198)
!257 = !DILocation(line: 304, column: 32, scope: !198)
!258 = !DILocation(line: 308, column: 25, scope: !198)
!259 = !DILocation(line: 308, column: 40, scope: !198)
!260 = !DILocation(line: 308, column: 49, scope: !198)
!261 = !DILocation(line: 308, column: 16, scope: !198)
!262 = !DILocation(line: 309, column: 13, scope: !198)
!263 = !DILocation(line: 309, column: 24, scope: !198)
!264 = !DILocation(line: 309, column: 33, scope: !198)
!265 = !DILocation(line: 309, column: 39, scope: !198)
!266 = !DILocation(line: 313, column: 26, scope: !198)
!267 = !DILocation(line: 313, column: 41, scope: !198)
!268 = !DILocation(line: 313, column: 50, scope: !198)
!269 = !DILocation(line: 313, column: 16, scope: !198)
!270 = !DILocation(line: 314, column: 13, scope: !198)
!271 = !DILocation(line: 315, column: 9, scope: !198)
!272 = !DILocation(line: 316, column: 5, scope: !198)
!273 = !DILocation(line: 280, column: 80, scope: !198)
!274 = distinct !{!274, !211, !272}
!275 = !DILocation(line: 317, column: 1, scope: !198)
!276 = distinct !DISubprogram(name: "init", scope: !9, file: !9, line: 395, type: !10, scopeLine: 395, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!277 = !DILocation(line: 401, column: 3, scope: !276)
!278 = !DILocation(line: 404, column: 3, scope: !276)
!279 = !DILocation(line: 405, column: 3, scope: !276)
!280 = !DILocation(line: 407, column: 3, scope: !276)
!281 = !DILocation(line: 408, column: 2, scope: !276)
!282 = distinct !DISubprogram(name: "MX_GPIO_Init", scope: !9, file: !9, line: 571, type: !10, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!283 = !DILocation(line: 575, column: 3, scope: !282)
!284 = !DILocation(line: 576, column: 3, scope: !282)
!285 = !DILocation(line: 578, column: 1, scope: !282)
!286 = distinct !DISubprogram(name: "MX_USART1_UART_Init", scope: !9, file: !9, line: 523, type: !10, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!287 = !DILocation(line: 533, column: 19, scope: !286)
!288 = !DILocation(line: 534, column: 24, scope: !286)
!289 = !DILocation(line: 535, column: 26, scope: !286)
!290 = !DILocation(line: 536, column: 24, scope: !286)
!291 = !DILocation(line: 537, column: 22, scope: !286)
!292 = !DILocation(line: 538, column: 20, scope: !286)
!293 = !DILocation(line: 539, column: 25, scope: !286)
!294 = !DILocation(line: 540, column: 28, scope: !286)
!295 = !DILocation(line: 541, column: 30, scope: !286)
!296 = !DILocation(line: 542, column: 30, scope: !286)
!297 = !DILocation(line: 543, column: 38, scope: !286)
!298 = !DILocation(line: 544, column: 7, scope: !286)
!299 = !DILocation(line: 544, column: 30, scope: !286)
!300 = !DILocation(line: 546, column: 5, scope: !286)
!301 = !DILocation(line: 547, column: 3, scope: !286)
!302 = !DILocation(line: 548, column: 7, scope: !286)
!303 = !DILocation(line: 548, column: 73, scope: !286)
!304 = !DILocation(line: 550, column: 5, scope: !286)
!305 = !DILocation(line: 551, column: 3, scope: !286)
!306 = !DILocation(line: 552, column: 7, scope: !286)
!307 = !DILocation(line: 552, column: 73, scope: !286)
!308 = !DILocation(line: 554, column: 5, scope: !286)
!309 = !DILocation(line: 555, column: 3, scope: !286)
!310 = !DILocation(line: 556, column: 7, scope: !286)
!311 = !DILocation(line: 556, column: 43, scope: !286)
!312 = !DILocation(line: 558, column: 5, scope: !286)
!313 = !DILocation(line: 559, column: 3, scope: !286)
!314 = !DILocation(line: 564, column: 1, scope: !286)
!315 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 410, type: !10, scopeLine: 410, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!316 = !DILocation(line: 411, column: 3, scope: !315)
!317 = !DILocation(line: 412, column: 3, scope: !315)
!318 = !DILocation(line: 413, column: 3, scope: !315)
!319 = distinct !DISubprogram(name: "main_logic", scope: !9, file: !9, line: 416, type: !10, scopeLine: 417, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!320 = !DILocation(line: 438, column: 11, scope: !319)
!321 = !DILocation(line: 438, column: 9, scope: !319)
!322 = !DILocation(line: 441, column: 48, scope: !319)
!323 = !DILocation(line: 441, column: 39, scope: !319)
!324 = !DILocation(line: 441, column: 56, scope: !319)
!325 = !DILocation(line: 441, column: 55, scope: !319)
!326 = !DILocation(line: 441, column: 54, scope: !319)
!327 = !DILocation(line: 441, column: 3, scope: !319)
!328 = !DILocation(line: 442, column: 3, scope: !319)
!329 = !DILocation(line: 446, column: 12, scope: !319)
!330 = !DILocation(line: 446, column: 8, scope: !319)
!331 = !DILocation(line: 446, column: 24, scope: !319)
!332 = !DILocation(line: 446, column: 30, scope: !319)
!333 = !DILocation(line: 446, column: 3, scope: !319)
!334 = !DILocation(line: 480, column: 8, scope: !319)
!335 = !DILocation(line: 480, column: 13, scope: !319)
!336 = !DILocation(line: 481, column: 13, scope: !319)
!337 = !DILocation(line: 481, column: 6, scope: !319)
!338 = !DILocation(line: 482, column: 13, scope: !319)
!339 = !DILocation(line: 482, column: 18, scope: !319)
!340 = !DILocation(line: 483, column: 13, scope: !319)
!341 = !DILocation(line: 483, column: 6, scope: !319)
!342 = !DILocation(line: 484, column: 13, scope: !319)
!343 = !DILocation(line: 484, column: 18, scope: !319)
!344 = !DILocation(line: 485, column: 13, scope: !319)
!345 = !DILocation(line: 485, column: 6, scope: !319)
!346 = !DILocation(line: 486, column: 13, scope: !319)
!347 = !DILocation(line: 486, column: 18, scope: !319)
!348 = !DILocation(line: 487, column: 13, scope: !319)
!349 = !DILocation(line: 487, column: 6, scope: !319)
!350 = !DILocation(line: 489, column: 13, scope: !319)
!351 = !DILocation(line: 489, column: 6, scope: !319)
!352 = !DILocation(line: 492, column: 22, scope: !319)
!353 = !DILocation(line: 492, column: 5, scope: !319)
!354 = !DILocation(line: 493, column: 4, scope: !319)
!355 = !DILocation(line: 446, column: 41, scope: !319)
!356 = distinct !{!356, !333, !354}
!357 = !DILocation(line: 496, column: 9, scope: !319)
!358 = !DILocation(line: 496, column: 7, scope: !319)
!359 = !DILocation(line: 498, column: 45, scope: !319)
!360 = !DILocation(line: 498, column: 36, scope: !319)
!361 = !DILocation(line: 498, column: 51, scope: !319)
!362 = !DILocation(line: 498, column: 50, scope: !319)
!363 = !DILocation(line: 498, column: 49, scope: !319)
!364 = !DILocation(line: 498, column: 3, scope: !319)
!365 = !DILocation(line: 499, column: 3, scope: !319)
!366 = !DILocation(line: 502, column: 52, scope: !319)
!367 = !DILocation(line: 502, column: 56, scope: !319)
!368 = !DILocation(line: 502, column: 55, scope: !319)
!369 = !DILocation(line: 502, column: 51, scope: !319)
!370 = !DILocation(line: 502, column: 62, scope: !319)
!371 = !DILocation(line: 502, column: 70, scope: !319)
!372 = !DILocation(line: 502, column: 69, scope: !319)
!373 = !DILocation(line: 502, column: 68, scope: !319)
!374 = !DILocation(line: 502, column: 3, scope: !319)
!375 = !DILocation(line: 503, column: 3, scope: !319)
!376 = !DILocation(line: 509, column: 3, scope: !319)
!377 = distinct !{!377, !376, !378}
!378 = !DILocation(line: 514, column: 3, scope: !319)
!379 = distinct !DISubprogram(name: "Error_Handler", scope: !9, file: !9, line: 588, type: !10, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!380 = !DILocation(line: 594, column: 1, scope: !379)
