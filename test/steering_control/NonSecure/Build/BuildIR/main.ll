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
%struct.CoreDebug_Type = type { i32, i32, i32, i32, [1 x i32], i32, i32 }
%struct.DWT_Type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [934 x i32], i32, [1 x i32], i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }

@UartReady = dso_local global i8 0, align 1
@OutBuf = dso_local global [50 x i8] zeroinitializer, align 1
@debug = dso_local constant i8 1, align 1
@inputsOut = dso_local constant i8 1, align 1
@voltageOut = dso_local constant i8 0, align 1
@dirInitial = dso_local constant i32 1, align 4
@modeThreshold = dso_local constant i32 1200, align 4
@killThreshold = dso_local constant i32 1600, align 4
@noSignalThreshold = dso_local constant i32 500, align 4
@inSteer = dso_local constant i32 2, align 4
@inMotor = dso_local constant i32 3, align 4
@inMode = dso_local constant i32 4, align 4
@motorPin = dso_local constant i32 6, align 4
@steerPin = dso_local constant i32 5, align 4
@ledPin = dso_local constant i32 13, align 4
@voltSensePin = dso_local constant i32 12, align 4
@LEDstatus = dso_local global i8 0, align 1
@rxMode = dso_local global i32 0, align 4
@huart1 = common dso_local global %struct.__UART_HandleTypeDef zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c" This operation is illegal.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"throttle\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"steering\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Ready to receive commands...\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"error\0D\0A\00", align 1
@mode = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Entered manual control mode.\0D\0A\00", align 1
@rxSteer = common dso_local global i32 0, align 4
@rxMotor = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"rxSteer: %d; rxMotor: %d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Entered autonomous control mode.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"start: [%f]\0D\0A\00", align 1
@SystemCoreClock = external dso_local global i32, align 4
@command = common dso_local global [5 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"motor\00", align 1
@value = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"Set the %s to %d\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"steer\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"Someone done goofed... (you sent something you weren't meant to!)\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"end:[%f]\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"duration: [%f]\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Starting steering control\0D\0A\00", align 1
@sensitiveAddr = common dso_local global i32 0, align 4
@memory = common dso_local global [2048 x i8] zeroinitializer, align 1
@bitmap = common dso_local global [10000 x i8] zeroinitializer, align 1
@global_ebp = common dso_local global i32* null, align 4
@global_esp = common dso_local global i32* null, align 4
@cfi_trigger_count = common dso_local global i32 0, align 4
@dfi_trigger_count = common dso_local global i32 0, align 4
@voltage = common dso_local global float 0.000000e+00, align 4

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
define dso_local arm_aapcs_vfpcc void @straightAndStop() #0 !dbg !50 {
entry:
  call arm_aapcs_vfpcc void @analogWrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 90), !dbg !51
  call arm_aapcs_vfpcc void @analogWrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 90), !dbg !52
  ret void, !dbg !53
}

declare dso_local arm_aapcs_vfpcc void @analogWrite(i8*, i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @setup() #0 !dbg !54 {
entry:
  call arm_aapcs_vfpcc void @Serial_begin(i32 115200), !dbg !55
  call arm_aapcs_vfpcc void @pinMode(i32 13, i32 1), !dbg !56
  call arm_aapcs_vfpcc void @pinMode(i32 6, i32 1), !dbg !57
  call arm_aapcs_vfpcc void @pinMode(i32 12, i32 0), !dbg !58
  call arm_aapcs_vfpcc void @pinMode(i32 4, i32 0), !dbg !59
  call arm_aapcs_vfpcc void @pinMode(i32 3, i32 0), !dbg !60
  call arm_aapcs_vfpcc void @pinMode(i32 2, i32 0), !dbg !61
  call arm_aapcs_vfpcc void @straightAndStop(), !dbg !62
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i32 31), !dbg !63
  call arm_aapcs_vfpcc void @HAL_Delay(i32 10), !dbg !64
  ret void, !dbg !65
}

declare dso_local arm_aapcs_vfpcc void @Serial_begin(i32) #1

declare dso_local arm_aapcs_vfpcc void @pinMode(i32, i32) #1

declare dso_local arm_aapcs_vfpcc void @HAL_Delay(i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @loop() #0 !dbg !66 {
entry:
  %rxSteerRaw = alloca i32, align 4
  %rxMotorRaw = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 1500, i32* @rxMode, align 4, !dbg !67
  call arm_aapcs_vfpcc void @HAL_Delay(i32 10), !dbg !68
  %0 = load i8, i8* @LEDstatus, align 1, !dbg !69
  %tobool = trunc i8 %0 to i1, !dbg !69
  %lnot = xor i1 %tobool, true, !dbg !70
  %frombool = zext i1 %lnot to i8, !dbg !71
  store i8 %frombool, i8* @LEDstatus, align 1, !dbg !71
  %1 = load i8, i8* @LEDstatus, align 1, !dbg !72
  %tobool1 = trunc i8 %1 to i1, !dbg !72
  %conv = zext i1 %tobool1 to i32, !dbg !72
  call arm_aapcs_vfpcc void @digitalWrite(i32 13, i32 %conv), !dbg !73
  %2 = load i32, i32* @rxMode, align 4, !dbg !74
  %cmp = icmp sgt i32 %2, 1600, !dbg !75
  br i1 %cmp, label %if.then, label %if.else, !dbg !74

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @straightAndStop(), !dbg !76
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 8), !dbg !77
  br label %if.end53, !dbg !78

if.else:                                          ; preds = %entry
  %3 = load i32, i32* @rxMode, align 4, !dbg !79
  %cmp3 = icmp slt i32 %3, 1200, !dbg !80
  br i1 %cmp3, label %land.lhs.true, label %if.else13, !dbg !81

land.lhs.true:                                    ; preds = %if.else
  %4 = load i32, i32* @rxMode, align 4, !dbg !82
  %cmp5 = icmp sgt i32 %4, 900, !dbg !83
  br i1 %cmp5, label %if.then7, label %if.else13, !dbg !84

if.then7:                                         ; preds = %land.lhs.true
  %5 = load i8, i8* @mode, align 1, !dbg !85
  %tobool8 = trunc i8 %5 to i1, !dbg !85
  %conv9 = zext i1 %tobool8 to i32, !dbg !85
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !86
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !85

if.then12:                                        ; preds = %if.then7
  call arm_aapcs_vfpcc void @straightAndStop(), !dbg !87
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0), i32 31), !dbg !88
  store i8 0, i8* @mode, align 1, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then12, %if.then7
  store i32 0, i32* %rxSteerRaw, align 4, !dbg !91
  call arm_aapcs_vfpcc void @HAL_Delay(i32 10), !dbg !92
  store i32 15000, i32* %rxMotorRaw, align 4, !dbg !93
  store i32 0, i32* @rxSteer, align 4, !dbg !94
  store i32 1500, i32* @rxMotor, align 4, !dbg !95
  br label %while.body, !dbg !96

while.body:                                       ; preds = %if.end, %while.body
  %6 = load i32, i32* @rxSteer, align 4, !dbg !97
  %7 = load i32, i32* @rxMotor, align 4, !dbg !98
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32 %6, i32 %7), !dbg !99
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !100
  br label %while.body, !dbg !96, !llvm.loop !101

if.else13:                                        ; preds = %land.lhs.true, %if.else
  %8 = load i8, i8* @mode, align 1, !dbg !103
  %tobool14 = trunc i8 %8 to i1, !dbg !103
  %conv15 = zext i1 %tobool14 to i32, !dbg !103
  %cmp16 = icmp eq i32 %conv15, 0, !dbg !104
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !103

if.then18:                                        ; preds = %if.else13
  call arm_aapcs_vfpcc void @straightAndStop(), !dbg !105
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 35), !dbg !106
  br label %if.end19, !dbg !107

if.end19:                                         ; preds = %if.then18, %if.else13
  store i8 1, i8* @mode, align 1, !dbg !108
  br label %while.body20, !dbg !109

while.body20:                                     ; preds = %if.end19
  %call21 = call arm_aapcs_vfpcc i32 @DWT_GetTick(), !dbg !110
  store i32 %call21, i32* %start, align 4, !dbg !111
  %9 = load i32, i32* %start, align 4, !dbg !112
  %conv22 = uitofp i32 %9 to double, !dbg !113
  %10 = load i32, i32* @SystemCoreClock, align 4, !dbg !114
  %conv23 = uitofp i32 %10 to double, !dbg !115
  %div = fdiv double %conv22, %conv23, !dbg !116
  %call24 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), double %div), !dbg !117
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !118
  store i32 1, i32* %i, align 4, !dbg !119
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %while.body20
  %11 = load i32, i32* %i, align 4, !dbg !121
  %cmp25 = icmp slt i32 %11, 10, !dbg !122
  br i1 %cmp25, label %for.body, label %for.end, !dbg !123

for.body:                                         ; preds = %for.cond
  %call27 = call arm_aapcs_vfpcc i8* @strcpy(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @command, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)), !dbg !124
  %12 = load i32, i32* %i, align 4, !dbg !125
  %mul = mul nsw i32 %12, 10, !dbg !126
  %add = add nsw i32 %mul, 9, !dbg !127
  store i32 %add, i32* @value, align 4, !dbg !128
  %13 = load i32, i32* @value, align 4, !dbg !129
  %call28 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @command, i32 0, i32 0), i32 %13), !dbg !130
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !131
  %call29 = call arm_aapcs_vfpcc i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @command, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)), !dbg !132
  %cmp30 = icmp eq i32 %call29, 0, !dbg !133
  br i1 %cmp30, label %if.then32, label %if.else33, !dbg !132

if.then32:                                        ; preds = %for.body
  %14 = load i32, i32* @value, align 4, !dbg !134
  call arm_aapcs_vfpcc void @analogWrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 %14), !dbg !135
  br label %if.end40, !dbg !136

if.else33:                                        ; preds = %for.body
  %call34 = call arm_aapcs_vfpcc i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @command, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)), !dbg !137
  %cmp35 = icmp eq i32 %call34, 0, !dbg !138
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !137

if.then37:                                        ; preds = %if.else33
  %15 = load i32, i32* @value, align 4, !dbg !139
  call arm_aapcs_vfpcc void @analogWrite(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 %15), !dbg !140
  br label %if.end39, !dbg !141

if.else38:                                        ; preds = %if.else33
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0), i32 68), !dbg !142
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then32
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %if.end40
  %16 = load i32, i32* %i, align 4, !dbg !144
  %inc = add nsw i32 %16, 1, !dbg !144
  store i32 %inc, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !123, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  %call41 = call arm_aapcs_vfpcc i32 @DWT_GetTick(), !dbg !146
  store i32 %call41, i32* %end, align 4, !dbg !147
  %17 = load i32, i32* %end, align 4, !dbg !148
  %conv42 = uitofp i32 %17 to double, !dbg !149
  %18 = load i32, i32* @SystemCoreClock, align 4, !dbg !150
  %conv43 = uitofp i32 %18 to double, !dbg !151
  %div44 = fdiv double %conv42, %conv43, !dbg !152
  %call45 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), double %div44), !dbg !153
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !154
  %19 = load i32, i32* %end, align 4, !dbg !155
  %20 = load i32, i32* %start, align 4, !dbg !156
  %sub = sub i32 %19, %20, !dbg !157
  %conv46 = uitofp i32 %sub to double, !dbg !158
  %div47 = fdiv double %conv46, 1.000000e+01, !dbg !159
  %21 = load i32, i32* @SystemCoreClock, align 4, !dbg !160
  %conv48 = uitofp i32 %21 to double, !dbg !161
  %div49 = fdiv double %div47, %conv48, !dbg !162
  %call50 = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), double %div49), !dbg !163
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @OutBuf, i32 0, i32 0), i32 50), !dbg !164
  br label %while.body52, !dbg !165

while.body52:                                     ; preds = %for.end, %while.body52
  br label %while.body52, !dbg !165, !llvm.loop !166

if.end53:                                         ; preds = %if.then
  ret void, !dbg !168
}

declare dso_local arm_aapcs_vfpcc void @digitalWrite(i32, i32) #1

declare dso_local arm_aapcs_vfpcc i8* @strcpy(i8*, i8*) #1

declare dso_local arm_aapcs_vfpcc i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @init() #0 !dbg !169 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_Init(), !dbg !170
  call arm_aapcs_vfpcc void @MX_GPIO_Init(), !dbg !171
  call arm_aapcs_vfpcc void @MX_USART1_UART_Init(), !dbg !172
  %call1 = call arm_aapcs_vfpcc i32 @DWT_Init(), !dbg !173
  ret void, !dbg !174
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_Init() #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @MX_GPIO_Init() #0 !dbg !175 {
entry:
  %tmpreg = alloca i32, align 4
  %tmpreg2 = alloca i32, align 4
  br label %do.body, !dbg !176

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !176
  %or = or i32 %0, 4, !dbg !176
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !176
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !176
  %and = and i32 %1, 4, !dbg !176
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !176
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !176
  br label %do.end, !dbg !176

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !177

do.body1:                                         ; preds = %do.end
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !177
  %or3 = or i32 %3, 1, !dbg !177
  store volatile i32 %or3, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !177
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !177
  %and4 = and i32 %4, 1, !dbg !177
  store volatile i32 %and4, i32* %tmpreg2, align 4, !dbg !177
  %5 = load volatile i32, i32* %tmpreg2, align 4, !dbg !177
  br label %do.end5, !dbg !177

do.end5:                                          ; preds = %do.body1
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @MX_USART1_UART_Init() #0 !dbg !179 {
entry:
  store %struct.USART_TypeDef* inttoptr (i32 1073821696 to %struct.USART_TypeDef*), %struct.USART_TypeDef** getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 0), align 4, !dbg !180
  store i32 115200, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 0), align 4, !dbg !181
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 1), align 4, !dbg !182
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 2), align 4, !dbg !183
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 3), align 4, !dbg !184
  store i32 12, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 4), align 4, !dbg !185
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 5), align 4, !dbg !186
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 6), align 4, !dbg !187
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 7), align 4, !dbg !188
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 1, i32 8), align 4, !dbg !189
  store i32 0, i32* getelementptr inbounds (%struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* @huart1, i32 0, i32 2, i32 0), align 4, !dbg !190
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_UART_Init(%struct.__UART_HandleTypeDef* @huart1), !dbg !191
  %conv = zext i8 %call to i32, !dbg !191
  %cmp = icmp ne i32 %conv, 0, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !191

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !193
  br label %if.end, !dbg !194

if.end:                                           ; preds = %if.then, %entry
  %call2 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetTxFifoThreshold(%struct.__UART_HandleTypeDef* @huart1, i32 0), !dbg !195
  %conv3 = zext i8 %call2 to i32, !dbg !195
  %cmp4 = icmp ne i32 %conv3, 0, !dbg !196
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !195

if.then6:                                         ; preds = %if.end
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !197
  br label %if.end7, !dbg !198

if.end7:                                          ; preds = %if.then6, %if.end
  %call8 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetRxFifoThreshold(%struct.__UART_HandleTypeDef* @huart1, i32 0), !dbg !199
  %conv9 = zext i8 %call8 to i32, !dbg !199
  %cmp10 = icmp ne i32 %conv9, 0, !dbg !200
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !199

if.then12:                                        ; preds = %if.end7
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !201
  br label %if.end13, !dbg !202

if.end13:                                         ; preds = %if.then12, %if.end7
  %call14 = call arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableFifoMode(%struct.__UART_HandleTypeDef* @huart1), !dbg !203
  %conv15 = zext i8 %call14 to i32, !dbg !203
  %cmp16 = icmp ne i32 %conv15, 0, !dbg !204
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !203

if.then18:                                        ; preds = %if.end13
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !205
  br label %if.end19, !dbg !206

if.end19:                                         ; preds = %if.then18, %if.end13
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @main() #0 !dbg !208 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call arm_aapcs_vfpcc void @init(), !dbg !209
  %call = call arm_aapcs_vfpcc i32 @main_logic(), !dbg !210
  ret i32 0, !dbg !211
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @main_logic() #0 !dbg !212 {
entry:
  %retval = alloca i32, align 4
  call arm_aapcs_vfpcc void @print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i32 0, i32 0), i32 28), !dbg !213
  call arm_aapcs_vfpcc void @setup(), !dbg !214
  call arm_aapcs_vfpcc void @loop(), !dbg !215
  %0 = load i32, i32* %retval, align 4, !dbg !216
  ret i32 %0, !dbg !216
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
!1 = !DIFile(filename: "Core/Src/main.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "DWT_Init", scope: !9, file: !9, line: 94, type: !10, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/main.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 95, column: 19, scope: !8)
!12 = !DILocation(line: 98, column: 14, scope: !8)
!13 = !DILocation(line: 99, column: 12, scope: !8)
!14 = !DILocation(line: 100, column: 1, scope: !8)
!15 = distinct !DISubprogram(name: "DWT_GetTick", scope: !9, file: !9, line: 102, type: !10, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 103, column: 14, scope: !15)
!17 = !DILocation(line: 103, column: 2, scope: !15)
!18 = distinct !DISubprogram(name: "print", scope: !9, file: !9, line: 106, type: !10, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 110, column: 49, scope: !18)
!20 = !DILocation(line: 110, column: 54, scope: !18)
!21 = !DILocation(line: 110, column: 7, scope: !18)
!22 = !DILocation(line: 110, column: 59, scope: !18)
!23 = !DILocation(line: 111, column: 5, scope: !18)
!24 = !DILocation(line: 112, column: 3, scope: !18)
!25 = !DILocation(line: 115, column: 3, scope: !18)
!26 = !DILocation(line: 115, column: 9, scope: !18)
!27 = !DILocation(line: 115, column: 36, scope: !18)
!28 = distinct !{!28, !25, !29}
!29 = !DILocation(line: 117, column: 3, scope: !18)
!30 = !DILocation(line: 119, column: 13, scope: !18)
!31 = !DILocation(line: 121, column: 1, scope: !18)
!32 = distinct !DISubprogram(name: "Error_Handler", scope: !9, file: !9, line: 436, type: !10, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = !DILocation(line: 442, column: 1, scope: !32)
!34 = distinct !DISubprogram(name: "judge_legality", scope: !9, file: !9, line: 123, type: !10, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 125, column: 17, scope: !34)
!36 = !DILocation(line: 126, column: 29, scope: !34)
!37 = !DILocation(line: 126, column: 38, scope: !34)
!38 = !DILocation(line: 126, column: 13, scope: !34)
!39 = !DILocation(line: 126, column: 7, scope: !34)
!40 = !DILocation(line: 128, column: 6, scope: !34)
!41 = !DILocation(line: 128, column: 9, scope: !34)
!42 = !DILocation(line: 130, column: 10, scope: !34)
!43 = !DILocation(line: 130, column: 2, scope: !34)
!44 = !DILocation(line: 131, column: 11, scope: !34)
!45 = !DILocation(line: 131, column: 5, scope: !34)
!46 = !DILocation(line: 132, column: 5, scope: !34)
!47 = distinct !{!47, !46, !48}
!48 = !DILocation(line: 135, column: 5, scope: !34)
!49 = !DILocation(line: 142, column: 3, scope: !34)
!50 = distinct !DISubprogram(name: "straightAndStop", scope: !9, file: !9, line: 145, type: !10, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DILocation(line: 146, column: 3, scope: !50)
!52 = !DILocation(line: 147, column: 3, scope: !50)
!53 = !DILocation(line: 148, column: 1, scope: !50)
!54 = distinct !DISubprogram(name: "setup", scope: !9, file: !9, line: 150, type: !10, scopeLine: 150, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 151, column: 3, scope: !54)
!56 = !DILocation(line: 154, column: 3, scope: !54)
!57 = !DILocation(line: 155, column: 3, scope: !54)
!58 = !DILocation(line: 156, column: 3, scope: !54)
!59 = !DILocation(line: 157, column: 3, scope: !54)
!60 = !DILocation(line: 158, column: 3, scope: !54)
!61 = !DILocation(line: 159, column: 3, scope: !54)
!62 = !DILocation(line: 166, column: 3, scope: !54)
!63 = !DILocation(line: 168, column: 4, scope: !54)
!64 = !DILocation(line: 169, column: 3, scope: !54)
!65 = !DILocation(line: 172, column: 1, scope: !54)
!66 = distinct !DISubprogram(name: "loop", scope: !9, file: !9, line: 174, type: !10, scopeLine: 174, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DILocation(line: 176, column: 10, scope: !66)
!68 = !DILocation(line: 178, column: 3, scope: !66)
!69 = !DILocation(line: 188, column: 16, scope: !66)
!70 = !DILocation(line: 188, column: 15, scope: !66)
!71 = !DILocation(line: 188, column: 13, scope: !66)
!72 = !DILocation(line: 189, column: 24, scope: !66)
!73 = !DILocation(line: 189, column: 3, scope: !66)
!74 = !DILocation(line: 192, column: 7, scope: !66)
!75 = !DILocation(line: 192, column: 14, scope: !66)
!76 = !DILocation(line: 193, column: 5, scope: !66)
!77 = !DILocation(line: 194, column: 5, scope: !66)
!78 = !DILocation(line: 196, column: 3, scope: !66)
!79 = !DILocation(line: 198, column: 13, scope: !66)
!80 = !DILocation(line: 198, column: 20, scope: !66)
!81 = !DILocation(line: 198, column: 37, scope: !66)
!82 = !DILocation(line: 198, column: 41, scope: !66)
!83 = !DILocation(line: 198, column: 48, scope: !66)
!84 = !DILocation(line: 198, column: 12, scope: !66)
!85 = !DILocation(line: 199, column: 9, scope: !66)
!86 = !DILocation(line: 199, column: 14, scope: !66)
!87 = !DILocation(line: 200, column: 7, scope: !66)
!88 = !DILocation(line: 201, column: 7, scope: !66)
!89 = !DILocation(line: 202, column: 12, scope: !66)
!90 = !DILocation(line: 203, column: 5, scope: !66)
!91 = !DILocation(line: 205, column: 9, scope: !66)
!92 = !DILocation(line: 206, column: 5, scope: !66)
!93 = !DILocation(line: 211, column: 9, scope: !66)
!94 = !DILocation(line: 212, column: 13, scope: !66)
!95 = !DILocation(line: 213, column: 13, scope: !66)
!96 = !DILocation(line: 216, column: 7, scope: !66)
!97 = !DILocation(line: 218, column: 57, scope: !66)
!98 = !DILocation(line: 218, column: 66, scope: !66)
!99 = !DILocation(line: 218, column: 9, scope: !66)
!100 = !DILocation(line: 219, column: 9, scope: !66)
!101 = distinct !{!101, !96, !102}
!102 = !DILocation(line: 220, column: 7, scope: !66)
!103 = !DILocation(line: 233, column: 9, scope: !66)
!104 = !DILocation(line: 233, column: 14, scope: !66)
!105 = !DILocation(line: 234, column: 7, scope: !66)
!106 = !DILocation(line: 235, column: 7, scope: !66)
!107 = !DILocation(line: 236, column: 5, scope: !66)
!108 = !DILocation(line: 238, column: 10, scope: !66)
!109 = !DILocation(line: 240, column: 5, scope: !66)
!110 = !DILocation(line: 249, column: 15, scope: !66)
!111 = !DILocation(line: 249, column: 13, scope: !66)
!112 = !DILocation(line: 250, column: 52, scope: !66)
!113 = !DILocation(line: 250, column: 43, scope: !66)
!114 = !DILocation(line: 250, column: 60, scope: !66)
!115 = !DILocation(line: 250, column: 59, scope: !66)
!116 = !DILocation(line: 250, column: 58, scope: !66)
!117 = !DILocation(line: 250, column: 7, scope: !66)
!118 = !DILocation(line: 251, column: 7, scope: !66)
!119 = !DILocation(line: 253, column: 15, scope: !66)
!120 = !DILocation(line: 253, column: 11, scope: !66)
!121 = !DILocation(line: 253, column: 19, scope: !66)
!122 = !DILocation(line: 253, column: 20, scope: !66)
!123 = !DILocation(line: 253, column: 7, scope: !66)
!124 = !DILocation(line: 258, column: 9, scope: !66)
!125 = !DILocation(line: 260, column: 17, scope: !66)
!126 = !DILocation(line: 260, column: 18, scope: !66)
!127 = !DILocation(line: 260, column: 21, scope: !66)
!128 = !DILocation(line: 260, column: 15, scope: !66)
!129 = !DILocation(line: 264, column: 62, scope: !66)
!130 = !DILocation(line: 264, column: 13, scope: !66)
!131 = !DILocation(line: 265, column: 13, scope: !66)
!132 = !DILocation(line: 269, column: 13, scope: !66)
!133 = !DILocation(line: 269, column: 36, scope: !66)
!134 = !DILocation(line: 270, column: 35, scope: !66)
!135 = !DILocation(line: 270, column: 11, scope: !66)
!136 = !DILocation(line: 271, column: 9, scope: !66)
!137 = !DILocation(line: 273, column: 18, scope: !66)
!138 = !DILocation(line: 273, column: 42, scope: !66)
!139 = !DILocation(line: 274, column: 35, scope: !66)
!140 = !DILocation(line: 274, column: 11, scope: !66)
!141 = !DILocation(line: 275, column: 9, scope: !66)
!142 = !DILocation(line: 279, column: 13, scope: !66)
!143 = !DILocation(line: 281, column: 7, scope: !66)
!144 = !DILocation(line: 253, column: 25, scope: !66)
!145 = distinct !{!145, !123, !143}
!146 = !DILocation(line: 284, column: 13, scope: !66)
!147 = !DILocation(line: 284, column: 11, scope: !66)
!148 = !DILocation(line: 286, column: 49, scope: !66)
!149 = !DILocation(line: 286, column: 40, scope: !66)
!150 = !DILocation(line: 286, column: 55, scope: !66)
!151 = !DILocation(line: 286, column: 54, scope: !66)
!152 = !DILocation(line: 286, column: 53, scope: !66)
!153 = !DILocation(line: 286, column: 7, scope: !66)
!154 = !DILocation(line: 287, column: 7, scope: !66)
!155 = !DILocation(line: 290, column: 56, scope: !66)
!156 = !DILocation(line: 290, column: 60, scope: !66)
!157 = !DILocation(line: 290, column: 59, scope: !66)
!158 = !DILocation(line: 290, column: 55, scope: !66)
!159 = !DILocation(line: 290, column: 66, scope: !66)
!160 = !DILocation(line: 290, column: 74, scope: !66)
!161 = !DILocation(line: 290, column: 73, scope: !66)
!162 = !DILocation(line: 290, column: 72, scope: !66)
!163 = !DILocation(line: 290, column: 7, scope: !66)
!164 = !DILocation(line: 291, column: 7, scope: !66)
!165 = !DILocation(line: 294, column: 7, scope: !66)
!166 = distinct !{!166, !165, !167}
!167 = !DILocation(line: 296, column: 7, scope: !66)
!168 = !DILocation(line: 299, column: 1, scope: !66)
!169 = distinct !DISubprogram(name: "init", scope: !9, file: !9, line: 308, type: !10, scopeLine: 308, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!170 = !DILocation(line: 314, column: 3, scope: !169)
!171 = !DILocation(line: 317, column: 3, scope: !169)
!172 = !DILocation(line: 318, column: 3, scope: !169)
!173 = !DILocation(line: 320, column: 3, scope: !169)
!174 = !DILocation(line: 321, column: 2, scope: !169)
!175 = distinct !DISubprogram(name: "MX_GPIO_Init", scope: !9, file: !9, line: 419, type: !10, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!176 = !DILocation(line: 423, column: 3, scope: !175)
!177 = !DILocation(line: 424, column: 3, scope: !175)
!178 = !DILocation(line: 426, column: 1, scope: !175)
!179 = distinct !DISubprogram(name: "MX_USART1_UART_Init", scope: !9, file: !9, line: 371, type: !10, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!180 = !DILocation(line: 381, column: 19, scope: !179)
!181 = !DILocation(line: 382, column: 24, scope: !179)
!182 = !DILocation(line: 383, column: 26, scope: !179)
!183 = !DILocation(line: 384, column: 24, scope: !179)
!184 = !DILocation(line: 385, column: 22, scope: !179)
!185 = !DILocation(line: 386, column: 20, scope: !179)
!186 = !DILocation(line: 387, column: 25, scope: !179)
!187 = !DILocation(line: 388, column: 28, scope: !179)
!188 = !DILocation(line: 389, column: 30, scope: !179)
!189 = !DILocation(line: 390, column: 30, scope: !179)
!190 = !DILocation(line: 391, column: 38, scope: !179)
!191 = !DILocation(line: 392, column: 7, scope: !179)
!192 = !DILocation(line: 392, column: 30, scope: !179)
!193 = !DILocation(line: 394, column: 5, scope: !179)
!194 = !DILocation(line: 395, column: 3, scope: !179)
!195 = !DILocation(line: 396, column: 7, scope: !179)
!196 = !DILocation(line: 396, column: 73, scope: !179)
!197 = !DILocation(line: 398, column: 5, scope: !179)
!198 = !DILocation(line: 399, column: 3, scope: !179)
!199 = !DILocation(line: 400, column: 7, scope: !179)
!200 = !DILocation(line: 400, column: 73, scope: !179)
!201 = !DILocation(line: 402, column: 5, scope: !179)
!202 = !DILocation(line: 403, column: 3, scope: !179)
!203 = !DILocation(line: 404, column: 7, scope: !179)
!204 = !DILocation(line: 404, column: 43, scope: !179)
!205 = !DILocation(line: 406, column: 5, scope: !179)
!206 = !DILocation(line: 407, column: 3, scope: !179)
!207 = !DILocation(line: 412, column: 1, scope: !179)
!208 = distinct !DISubprogram(name: "main", scope: !9, file: !9, line: 323, type: !10, scopeLine: 323, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!209 = !DILocation(line: 324, column: 3, scope: !208)
!210 = !DILocation(line: 325, column: 3, scope: !208)
!211 = !DILocation(line: 327, column: 3, scope: !208)
!212 = distinct !DISubprogram(name: "main_logic", scope: !9, file: !9, line: 334, type: !10, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!213 = !DILocation(line: 353, column: 3, scope: !212)
!214 = !DILocation(line: 354, column: 3, scope: !212)
!215 = !DILocation(line: 356, column: 3, scope: !212)
!216 = !DILocation(line: 364, column: 1, scope: !212)
