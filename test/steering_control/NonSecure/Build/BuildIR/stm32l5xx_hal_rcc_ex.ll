; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc_ex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc_ex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.RCC_PeriphCLKInitTypeDef = type { i32, %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_PLLSAI1InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_PLLSAI2InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.PWR_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32 }
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.RCC_CRSInitTypeDef = type { i32, i32, i32, i32, i32, i32 }
%struct.CRS_TypeDef = type { i32, i32, i32, i32 }
%struct.RCC_CRSSynchroInfoTypeDef = type { i32, i32, i32, i32 }

@MSIRangeTable = external dso_local constant [16 x i32], align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_PeriphCLKConfig(%struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit) #0 !dbg !8 {
entry:
  %PeriphClkInit.addr = alloca %struct.RCC_PeriphCLKInitTypeDef*, align 4
  %ret = alloca i8, align 1
  %status = alloca i8, align 1
  %tmpregister = alloca i32, align 4
  %tickstart = alloca i32, align 4
  %pwrclkchanged = alloca i8, align 1
  %tmpreg = alloca i32, align 4
  store %struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4
  store i8 0, i8* %ret, align 1, !dbg !10
  store i8 0, i8* %status, align 1, !dbg !11
  %0 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !12
  %PeriphClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %0, i32 0, i32 0, !dbg !13
  %1 = load i32, i32* %PeriphClockSelection, align 4, !dbg !13
  %and = and i32 %1, 2048, !dbg !14
  %cmp = icmp eq i32 %and, 2048, !dbg !15
  br i1 %cmp, label %if.then, label %if.end11, !dbg !16

if.then:                                          ; preds = %entry
  %2 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !17
  %Sai1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %2, i32 0, i32 17, !dbg !18
  %3 = load i32, i32* %Sai1ClockSelection, align 4, !dbg !18
  switch i32 %3, label %sw.default [
    i32 64, label %sw.bb
    i32 0, label %sw.bb1
    i32 32, label %sw.bb2
    i32 96, label %sw.bb4
    i32 128, label %sw.bb4
  ], !dbg !19

sw.bb:                                            ; preds = %if.then
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !20
  %or = or i32 %4, 65536, !dbg !20
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !20
  br label %sw.epilog, !dbg !21

sw.bb1:                                           ; preds = %if.then
  %5 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !22
  %PLLSAI1 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %5, i32 0, i32 1, !dbg !23
  %call = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1, i32 0), !dbg !24
  store i8 %call, i8* %ret, align 1, !dbg !25
  br label %sw.epilog, !dbg !26

sw.bb2:                                           ; preds = %if.then
  %6 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !27
  %PLLSAI2 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %6, i32 0, i32 2, !dbg !28
  %call3 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI2_Config(%struct.RCC_PLLSAI2InitTypeDef* %PLLSAI2, i32 0), !dbg !29
  store i8 %call3, i8* %ret, align 1, !dbg !30
  br label %sw.epilog, !dbg !31

sw.bb4:                                           ; preds = %if.then, %if.then
  br label %sw.epilog, !dbg !32

sw.default:                                       ; preds = %if.then
  store i8 1, i8* %ret, align 1, !dbg !33
  br label %sw.epilog, !dbg !34

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  %7 = load i8, i8* %ret, align 1, !dbg !35
  %conv = zext i8 %7 to i32, !dbg !35
  %cmp5 = icmp eq i32 %conv, 0, !dbg !36
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !35

if.then7:                                         ; preds = %sw.epilog
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !37
  %and8 = and i32 %8, -225, !dbg !37
  %9 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !37
  %Sai1ClockSelection9 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %9, i32 0, i32 17, !dbg !37
  %10 = load i32, i32* %Sai1ClockSelection9, align 4, !dbg !37
  %or10 = or i32 %and8, %10, !dbg !37
  store volatile i32 %or10, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %sw.epilog
  %11 = load i8, i8* %ret, align 1, !dbg !39
  store i8 %11, i8* %status, align 1, !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  br label %if.end11, !dbg !41

if.end11:                                         ; preds = %if.end, %entry
  %12 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !42
  %PeriphClockSelection12 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %12, i32 0, i32 0, !dbg !43
  %13 = load i32, i32* %PeriphClockSelection12, align 4, !dbg !43
  %and13 = and i32 %13, 4096, !dbg !44
  %cmp14 = icmp eq i32 %and13, 4096, !dbg !45
  br i1 %cmp14, label %if.then16, label %if.end37, !dbg !46

if.then16:                                        ; preds = %if.end11
  %14 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !47
  %Sai2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %14, i32 0, i32 18, !dbg !48
  %15 = load i32, i32* %Sai2ClockSelection, align 4, !dbg !48
  switch i32 %15, label %sw.default26 [
    i32 512, label %sw.bb17
    i32 0, label %sw.bb19
    i32 256, label %sw.bb22
    i32 768, label %sw.bb25
    i32 1024, label %sw.bb25
  ], !dbg !49

sw.bb17:                                          ; preds = %if.then16
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !50
  %or18 = or i32 %16, 65536, !dbg !50
  store volatile i32 %or18, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !50
  br label %sw.epilog27, !dbg !51

sw.bb19:                                          ; preds = %if.then16
  %17 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !52
  %PLLSAI120 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %17, i32 0, i32 1, !dbg !53
  %call21 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI120, i32 0), !dbg !54
  store i8 %call21, i8* %ret, align 1, !dbg !55
  br label %sw.epilog27, !dbg !56

sw.bb22:                                          ; preds = %if.then16
  %18 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !57
  %PLLSAI223 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %18, i32 0, i32 2, !dbg !58
  %call24 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI2_Config(%struct.RCC_PLLSAI2InitTypeDef* %PLLSAI223, i32 0), !dbg !59
  store i8 %call24, i8* %ret, align 1, !dbg !60
  br label %sw.epilog27, !dbg !61

sw.bb25:                                          ; preds = %if.then16, %if.then16
  br label %sw.epilog27, !dbg !62

sw.default26:                                     ; preds = %if.then16
  store i8 1, i8* %ret, align 1, !dbg !63
  br label %sw.epilog27, !dbg !64

sw.epilog27:                                      ; preds = %sw.default26, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb17
  %19 = load i8, i8* %ret, align 1, !dbg !65
  %conv28 = zext i8 %19 to i32, !dbg !65
  %cmp29 = icmp eq i32 %conv28, 0, !dbg !66
  br i1 %cmp29, label %if.then31, label %if.else35, !dbg !65

if.then31:                                        ; preds = %sw.epilog27
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !67
  %and32 = and i32 %20, -1793, !dbg !67
  %21 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !67
  %Sai2ClockSelection33 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %21, i32 0, i32 18, !dbg !67
  %22 = load i32, i32* %Sai2ClockSelection33, align 4, !dbg !67
  %or34 = or i32 %and32, %22, !dbg !67
  store volatile i32 %or34, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !67
  br label %if.end36, !dbg !68

if.else35:                                        ; preds = %sw.epilog27
  %23 = load i8, i8* %ret, align 1, !dbg !69
  store i8 %23, i8* %status, align 1, !dbg !70
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then31
  br label %if.end37, !dbg !71

if.end37:                                         ; preds = %if.end36, %if.end11
  %24 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !72
  %PeriphClockSelection38 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %24, i32 0, i32 0, !dbg !73
  %25 = load i32, i32* %PeriphClockSelection38, align 4, !dbg !73
  %and39 = and i32 %25, 131072, !dbg !74
  %cmp40 = icmp eq i32 %and39, 131072, !dbg !75
  br i1 %cmp40, label %if.then42, label %if.end109, !dbg !76

if.then42:                                        ; preds = %if.end37
  store i8 0, i8* %pwrclkchanged, align 1, !dbg !77
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !78
  %and43 = and i32 %26, 268435456, !dbg !78
  %cmp44 = icmp eq i32 %and43, 0, !dbg !78
  br i1 %cmp44, label %if.then46, label %if.end49, !dbg !78

if.then46:                                        ; preds = %if.then42
  br label %do.body, !dbg !79

do.body:                                          ; preds = %if.then46
  %27 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !79
  %or47 = or i32 %27, 268435456, !dbg !79
  store volatile i32 %or47, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !79
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !79
  %and48 = and i32 %28, 268435456, !dbg !79
  store volatile i32 %and48, i32* %tmpreg, align 4, !dbg !79
  %29 = load volatile i32, i32* %tmpreg, align 4, !dbg !79
  br label %do.end, !dbg !79

do.end:                                           ; preds = %do.body
  store i8 1, i8* %pwrclkchanged, align 1, !dbg !80
  br label %if.end49, !dbg !81

if.end49:                                         ; preds = %do.end, %if.then42
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !82
  %or50 = or i32 %30, 256, !dbg !82
  store volatile i32 %or50, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !82
  %call51 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !83
  store i32 %call51, i32* %tickstart, align 4, !dbg !84
  br label %while.cond, !dbg !85

while.cond:                                       ; preds = %if.end59, %if.end49
  %31 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !86
  %and52 = and i32 %31, 256, !dbg !87
  %cmp53 = icmp eq i32 %and52, 0, !dbg !88
  br i1 %cmp53, label %while.body, label %while.end, !dbg !85

while.body:                                       ; preds = %while.cond
  %call55 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !89
  %32 = load i32, i32* %tickstart, align 4, !dbg !90
  %sub = sub i32 %call55, %32, !dbg !91
  %cmp56 = icmp ugt i32 %sub, 2, !dbg !92
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !93

if.then58:                                        ; preds = %while.body
  store i8 3, i8* %ret, align 1, !dbg !94
  br label %while.end, !dbg !95

if.end59:                                         ; preds = %while.body
  br label %while.cond, !dbg !85, !llvm.loop !96

while.end:                                        ; preds = %if.then58, %while.cond
  %33 = load i8, i8* %ret, align 1, !dbg !98
  %conv60 = zext i8 %33 to i32, !dbg !98
  %cmp61 = icmp eq i32 %conv60, 0, !dbg !99
  br i1 %cmp61, label %if.then63, label %if.else101, !dbg !98

if.then63:                                        ; preds = %while.end
  %34 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !100
  %and64 = and i32 %34, 768, !dbg !100
  store i32 %and64, i32* %tmpregister, align 4, !dbg !101
  %35 = load i32, i32* %tmpregister, align 4, !dbg !102
  %cmp65 = icmp ne i32 %35, 0, !dbg !103
  br i1 %cmp65, label %land.lhs.true, label %if.end73, !dbg !104

land.lhs.true:                                    ; preds = %if.then63
  %36 = load i32, i32* %tmpregister, align 4, !dbg !105
  %37 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !106
  %RTCClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %37, i32 0, i32 26, !dbg !107
  %38 = load i32, i32* %RTCClockSelection, align 4, !dbg !107
  %cmp67 = icmp ne i32 %36, %38, !dbg !108
  br i1 %cmp67, label %if.then69, label %if.end73, !dbg !109

if.then69:                                        ; preds = %land.lhs.true
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !110
  %and70 = and i32 %39, -769, !dbg !110
  store i32 %and70, i32* %tmpregister, align 4, !dbg !111
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !112
  %or71 = or i32 %40, 65536, !dbg !112
  store volatile i32 %or71, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !112
  %41 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !113
  %and72 = and i32 %41, -65537, !dbg !113
  store volatile i32 %and72, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !113
  %42 = load i32, i32* %tmpregister, align 4, !dbg !114
  store volatile i32 %42, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !115
  br label %if.end73, !dbg !116

if.end73:                                         ; preds = %if.then69, %land.lhs.true, %if.then63
  %43 = load i32, i32* %tmpregister, align 4, !dbg !117
  %and74 = and i32 %43, 1, !dbg !117
  %cmp75 = icmp eq i32 %and74, 1, !dbg !117
  br i1 %cmp75, label %if.then77, label %if.end91, !dbg !117

if.then77:                                        ; preds = %if.end73
  %call78 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !118
  store i32 %call78, i32* %tickstart, align 4, !dbg !119
  br label %while.cond79, !dbg !120

while.cond79:                                     ; preds = %if.end89, %if.then77
  %44 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !121
  %and80 = and i32 %44, 2, !dbg !121
  %cmp81 = icmp eq i32 %and80, 0, !dbg !122
  br i1 %cmp81, label %while.body83, label %while.end90, !dbg !120

while.body83:                                     ; preds = %while.cond79
  %call84 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !123
  %45 = load i32, i32* %tickstart, align 4, !dbg !124
  %sub85 = sub i32 %call84, %45, !dbg !125
  %cmp86 = icmp ugt i32 %sub85, 5000, !dbg !126
  br i1 %cmp86, label %if.then88, label %if.end89, !dbg !127

if.then88:                                        ; preds = %while.body83
  store i8 3, i8* %ret, align 1, !dbg !128
  br label %while.end90, !dbg !129

if.end89:                                         ; preds = %while.body83
  br label %while.cond79, !dbg !120, !llvm.loop !130

while.end90:                                      ; preds = %if.then88, %while.cond79
  br label %if.end91, !dbg !132

if.end91:                                         ; preds = %while.end90, %if.end73
  %46 = load i8, i8* %ret, align 1, !dbg !133
  %conv92 = zext i8 %46 to i32, !dbg !133
  %cmp93 = icmp eq i32 %conv92, 0, !dbg !134
  br i1 %cmp93, label %if.then95, label %if.else99, !dbg !133

if.then95:                                        ; preds = %if.end91
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !135
  %and96 = and i32 %47, -769, !dbg !135
  %48 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !135
  %RTCClockSelection97 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %48, i32 0, i32 26, !dbg !135
  %49 = load i32, i32* %RTCClockSelection97, align 4, !dbg !135
  %or98 = or i32 %and96, %49, !dbg !135
  store volatile i32 %or98, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !135
  br label %if.end100, !dbg !136

if.else99:                                        ; preds = %if.end91
  %50 = load i8, i8* %ret, align 1, !dbg !137
  store i8 %50, i8* %status, align 1, !dbg !138
  br label %if.end100

if.end100:                                        ; preds = %if.else99, %if.then95
  br label %if.end102, !dbg !139

if.else101:                                       ; preds = %while.end
  %51 = load i8, i8* %ret, align 1, !dbg !140
  store i8 %51, i8* %status, align 1, !dbg !141
  br label %if.end102

if.end102:                                        ; preds = %if.else101, %if.end100
  %52 = load i8, i8* %pwrclkchanged, align 1, !dbg !142
  %conv103 = zext i8 %52 to i32, !dbg !142
  %cmp104 = icmp eq i32 %conv103, 1, !dbg !143
  br i1 %cmp104, label %if.then106, label %if.end108, !dbg !142

if.then106:                                       ; preds = %if.end102
  %53 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !144
  %and107 = and i32 %53, -268435457, !dbg !144
  store volatile i32 %and107, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !144
  br label %if.end108, !dbg !145

if.end108:                                        ; preds = %if.then106, %if.end102
  br label %if.end109, !dbg !146

if.end109:                                        ; preds = %if.end108, %if.end37
  %54 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !147
  %PeriphClockSelection110 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %54, i32 0, i32 0, !dbg !148
  %55 = load i32, i32* %PeriphClockSelection110, align 4, !dbg !148
  %and111 = and i32 %55, 1, !dbg !149
  %cmp112 = icmp eq i32 %and111, 1, !dbg !150
  br i1 %cmp112, label %if.then114, label %if.end117, !dbg !151

if.then114:                                       ; preds = %if.end109
  %56 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !152
  %and115 = and i32 %56, -4, !dbg !152
  %57 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !152
  %Usart1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %57, i32 0, i32 3, !dbg !152
  %58 = load i32, i32* %Usart1ClockSelection, align 4, !dbg !152
  %or116 = or i32 %and115, %58, !dbg !152
  store volatile i32 %or116, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !152
  br label %if.end117, !dbg !153

if.end117:                                        ; preds = %if.then114, %if.end109
  %59 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !154
  %PeriphClockSelection118 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %59, i32 0, i32 0, !dbg !155
  %60 = load i32, i32* %PeriphClockSelection118, align 4, !dbg !155
  %and119 = and i32 %60, 2, !dbg !156
  %cmp120 = icmp eq i32 %and119, 2, !dbg !157
  br i1 %cmp120, label %if.then122, label %if.end125, !dbg !158

if.then122:                                       ; preds = %if.end117
  %61 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !159
  %and123 = and i32 %61, -13, !dbg !159
  %62 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !159
  %Usart2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %62, i32 0, i32 4, !dbg !159
  %63 = load i32, i32* %Usart2ClockSelection, align 4, !dbg !159
  %or124 = or i32 %and123, %63, !dbg !159
  store volatile i32 %or124, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !159
  br label %if.end125, !dbg !160

if.end125:                                        ; preds = %if.then122, %if.end117
  %64 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !161
  %PeriphClockSelection126 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %64, i32 0, i32 0, !dbg !162
  %65 = load i32, i32* %PeriphClockSelection126, align 4, !dbg !162
  %and127 = and i32 %65, 4, !dbg !163
  %cmp128 = icmp eq i32 %and127, 4, !dbg !164
  br i1 %cmp128, label %if.then130, label %if.end133, !dbg !165

if.then130:                                       ; preds = %if.end125
  %66 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !166
  %and131 = and i32 %66, -49, !dbg !166
  %67 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !166
  %Usart3ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %67, i32 0, i32 5, !dbg !166
  %68 = load i32, i32* %Usart3ClockSelection, align 4, !dbg !166
  %or132 = or i32 %and131, %68, !dbg !166
  store volatile i32 %or132, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !166
  br label %if.end133, !dbg !167

if.end133:                                        ; preds = %if.then130, %if.end125
  %69 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !168
  %PeriphClockSelection134 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %69, i32 0, i32 0, !dbg !169
  %70 = load i32, i32* %PeriphClockSelection134, align 4, !dbg !169
  %and135 = and i32 %70, 8, !dbg !170
  %cmp136 = icmp eq i32 %and135, 8, !dbg !171
  br i1 %cmp136, label %if.then138, label %if.end141, !dbg !172

if.then138:                                       ; preds = %if.end133
  %71 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !173
  %and139 = and i32 %71, -193, !dbg !173
  %72 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !173
  %Uart4ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %72, i32 0, i32 6, !dbg !173
  %73 = load i32, i32* %Uart4ClockSelection, align 4, !dbg !173
  %or140 = or i32 %and139, %73, !dbg !173
  store volatile i32 %or140, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !173
  br label %if.end141, !dbg !174

if.end141:                                        ; preds = %if.then138, %if.end133
  %74 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !175
  %PeriphClockSelection142 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %74, i32 0, i32 0, !dbg !176
  %75 = load i32, i32* %PeriphClockSelection142, align 4, !dbg !176
  %and143 = and i32 %75, 16, !dbg !177
  %cmp144 = icmp eq i32 %and143, 16, !dbg !178
  br i1 %cmp144, label %if.then146, label %if.end149, !dbg !179

if.then146:                                       ; preds = %if.end141
  %76 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !180
  %and147 = and i32 %76, -769, !dbg !180
  %77 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !180
  %Uart5ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %77, i32 0, i32 7, !dbg !180
  %78 = load i32, i32* %Uart5ClockSelection, align 4, !dbg !180
  %or148 = or i32 %and147, %78, !dbg !180
  store volatile i32 %or148, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !180
  br label %if.end149, !dbg !181

if.end149:                                        ; preds = %if.then146, %if.end141
  %79 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !182
  %PeriphClockSelection150 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %79, i32 0, i32 0, !dbg !183
  %80 = load i32, i32* %PeriphClockSelection150, align 4, !dbg !183
  %and151 = and i32 %80, 32, !dbg !184
  %cmp152 = icmp eq i32 %and151, 32, !dbg !185
  br i1 %cmp152, label %if.then154, label %if.end157, !dbg !186

if.then154:                                       ; preds = %if.end149
  %81 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !187
  %and155 = and i32 %81, -3073, !dbg !187
  %82 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !187
  %Lpuart1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %82, i32 0, i32 8, !dbg !187
  %83 = load i32, i32* %Lpuart1ClockSelection, align 4, !dbg !187
  %or156 = or i32 %and155, %83, !dbg !187
  store volatile i32 %or156, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !187
  br label %if.end157, !dbg !188

if.end157:                                        ; preds = %if.then154, %if.end149
  %84 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !189
  %PeriphClockSelection158 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %84, i32 0, i32 0, !dbg !190
  %85 = load i32, i32* %PeriphClockSelection158, align 4, !dbg !190
  %and159 = and i32 %85, 512, !dbg !191
  %cmp160 = icmp eq i32 %and159, 512, !dbg !192
  br i1 %cmp160, label %if.then162, label %if.end165, !dbg !193

if.then162:                                       ; preds = %if.end157
  %86 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !194
  %and163 = and i32 %86, -786433, !dbg !194
  %87 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !194
  %Lptim1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %87, i32 0, i32 13, !dbg !194
  %88 = load i32, i32* %Lptim1ClockSelection, align 4, !dbg !194
  %or164 = or i32 %and163, %88, !dbg !194
  store volatile i32 %or164, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !194
  br label %if.end165, !dbg !195

if.end165:                                        ; preds = %if.then162, %if.end157
  %89 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !196
  %PeriphClockSelection166 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %89, i32 0, i32 0, !dbg !197
  %90 = load i32, i32* %PeriphClockSelection166, align 4, !dbg !197
  %and167 = and i32 %90, 1024, !dbg !198
  %cmp168 = icmp eq i32 %and167, 1024, !dbg !199
  br i1 %cmp168, label %if.then170, label %if.end173, !dbg !200

if.then170:                                       ; preds = %if.end165
  %91 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !201
  %and171 = and i32 %91, -3145729, !dbg !201
  %92 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !201
  %Lptim2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %92, i32 0, i32 14, !dbg !201
  %93 = load i32, i32* %Lptim2ClockSelection, align 4, !dbg !201
  %or172 = or i32 %and171, %93, !dbg !201
  store volatile i32 %or172, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !201
  br label %if.end173, !dbg !202

if.end173:                                        ; preds = %if.then170, %if.end165
  %94 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !203
  %PeriphClockSelection174 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %94, i32 0, i32 0, !dbg !204
  %95 = load i32, i32* %PeriphClockSelection174, align 4, !dbg !204
  %and175 = and i32 %95, 4194304, !dbg !205
  %cmp176 = icmp eq i32 %and175, 4194304, !dbg !206
  br i1 %cmp176, label %if.then178, label %if.end181, !dbg !207

if.then178:                                       ; preds = %if.end173
  %96 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !208
  %and179 = and i32 %96, -12582913, !dbg !208
  %97 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !208
  %Lptim3ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %97, i32 0, i32 15, !dbg !208
  %98 = load i32, i32* %Lptim3ClockSelection, align 4, !dbg !208
  %or180 = or i32 %and179, %98, !dbg !208
  store volatile i32 %or180, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !208
  br label %if.end181, !dbg !209

if.end181:                                        ; preds = %if.then178, %if.end173
  %99 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !210
  %PeriphClockSelection182 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %99, i32 0, i32 0, !dbg !211
  %100 = load i32, i32* %PeriphClockSelection182, align 4, !dbg !211
  %and183 = and i32 %100, 33554432, !dbg !212
  %cmp184 = icmp eq i32 %and183, 33554432, !dbg !213
  br i1 %cmp184, label %if.then186, label %if.end204, !dbg !214

if.then186:                                       ; preds = %if.end181
  %101 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !215
  %FdcanClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %101, i32 0, i32 16, !dbg !216
  %102 = load i32, i32* %FdcanClockSelection, align 4, !dbg !216
  switch i32 %102, label %sw.default193 [
    i32 0, label %sw.bb187
    i32 16777216, label %sw.bb188
    i32 33554432, label %sw.bb190
  ], !dbg !217

sw.bb187:                                         ; preds = %if.then186
  br label %sw.epilog194, !dbg !218

sw.bb188:                                         ; preds = %if.then186
  %103 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !219
  %or189 = or i32 %103, 1048576, !dbg !219
  store volatile i32 %or189, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !219
  br label %sw.epilog194, !dbg !220

sw.bb190:                                         ; preds = %if.then186
  %104 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !221
  %PLLSAI1191 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %104, i32 0, i32 1, !dbg !222
  %call192 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1191, i32 0), !dbg !223
  store i8 %call192, i8* %ret, align 1, !dbg !224
  br label %sw.epilog194, !dbg !225

sw.default193:                                    ; preds = %if.then186
  store i8 1, i8* %ret, align 1, !dbg !226
  br label %sw.epilog194, !dbg !227

sw.epilog194:                                     ; preds = %sw.default193, %sw.bb190, %sw.bb188, %sw.bb187
  %105 = load i8, i8* %ret, align 1, !dbg !228
  %conv195 = zext i8 %105 to i32, !dbg !228
  %cmp196 = icmp eq i32 %conv195, 0, !dbg !229
  br i1 %cmp196, label %if.then198, label %if.else202, !dbg !228

if.then198:                                       ; preds = %sw.epilog194
  %106 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !230
  %and199 = and i32 %106, -50331649, !dbg !230
  %107 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !230
  %FdcanClockSelection200 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %107, i32 0, i32 16, !dbg !230
  %108 = load i32, i32* %FdcanClockSelection200, align 4, !dbg !230
  %or201 = or i32 %and199, %108, !dbg !230
  store volatile i32 %or201, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !230
  br label %if.end203, !dbg !231

if.else202:                                       ; preds = %sw.epilog194
  %109 = load i8, i8* %ret, align 1, !dbg !232
  store i8 %109, i8* %status, align 1, !dbg !233
  br label %if.end203

if.end203:                                        ; preds = %if.else202, %if.then198
  br label %if.end204, !dbg !234

if.end204:                                        ; preds = %if.end203, %if.end181
  %110 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !235
  %PeriphClockSelection205 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %110, i32 0, i32 0, !dbg !236
  %111 = load i32, i32* %PeriphClockSelection205, align 4, !dbg !236
  %and206 = and i32 %111, 64, !dbg !237
  %cmp207 = icmp eq i32 %and206, 64, !dbg !238
  br i1 %cmp207, label %if.then209, label %if.end212, !dbg !239

if.then209:                                       ; preds = %if.end204
  %112 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !240
  %and210 = and i32 %112, -12289, !dbg !240
  %113 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !240
  %I2c1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %113, i32 0, i32 9, !dbg !240
  %114 = load i32, i32* %I2c1ClockSelection, align 4, !dbg !240
  %or211 = or i32 %and210, %114, !dbg !240
  store volatile i32 %or211, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !240
  br label %if.end212, !dbg !241

if.end212:                                        ; preds = %if.then209, %if.end204
  %115 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !242
  %PeriphClockSelection213 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %115, i32 0, i32 0, !dbg !243
  %116 = load i32, i32* %PeriphClockSelection213, align 4, !dbg !243
  %and214 = and i32 %116, 128, !dbg !244
  %cmp215 = icmp eq i32 %and214, 128, !dbg !245
  br i1 %cmp215, label %if.then217, label %if.end220, !dbg !246

if.then217:                                       ; preds = %if.end212
  %117 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !247
  %and218 = and i32 %117, -49153, !dbg !247
  %118 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !247
  %I2c2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %118, i32 0, i32 10, !dbg !247
  %119 = load i32, i32* %I2c2ClockSelection, align 4, !dbg !247
  %or219 = or i32 %and218, %119, !dbg !247
  store volatile i32 %or219, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !247
  br label %if.end220, !dbg !248

if.end220:                                        ; preds = %if.then217, %if.end212
  %120 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !249
  %PeriphClockSelection221 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %120, i32 0, i32 0, !dbg !250
  %121 = load i32, i32* %PeriphClockSelection221, align 4, !dbg !250
  %and222 = and i32 %121, 256, !dbg !251
  %cmp223 = icmp eq i32 %and222, 256, !dbg !252
  br i1 %cmp223, label %if.then225, label %if.end228, !dbg !253

if.then225:                                       ; preds = %if.end220
  %122 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !254
  %and226 = and i32 %122, -196609, !dbg !254
  %123 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !254
  %I2c3ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %123, i32 0, i32 11, !dbg !254
  %124 = load i32, i32* %I2c3ClockSelection, align 4, !dbg !254
  %or227 = or i32 %and226, %124, !dbg !254
  store volatile i32 %or227, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !254
  br label %if.end228, !dbg !255

if.end228:                                        ; preds = %if.then225, %if.end220
  %125 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !256
  %PeriphClockSelection229 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %125, i32 0, i32 0, !dbg !257
  %126 = load i32, i32* %PeriphClockSelection229, align 4, !dbg !257
  %and230 = and i32 %126, 1048576, !dbg !258
  %cmp231 = icmp eq i32 %and230, 1048576, !dbg !259
  br i1 %cmp231, label %if.then233, label %if.end236, !dbg !260

if.then233:                                       ; preds = %if.end228
  %127 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !261
  %and234 = and i32 %127, -4, !dbg !261
  %128 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !261
  %I2c4ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %128, i32 0, i32 12, !dbg !261
  %129 = load i32, i32* %I2c4ClockSelection, align 4, !dbg !261
  %or235 = or i32 %and234, %129, !dbg !261
  store volatile i32 %or235, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !261
  br label %if.end236, !dbg !262

if.end236:                                        ; preds = %if.then233, %if.end228
  %130 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !263
  %PeriphClockSelection237 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %130, i32 0, i32 0, !dbg !264
  %131 = load i32, i32* %PeriphClockSelection237, align 4, !dbg !264
  %and238 = and i32 %131, 8192, !dbg !265
  %cmp239 = icmp eq i32 %and238, 8192, !dbg !266
  br i1 %cmp239, label %if.then241, label %if.end263, !dbg !267

if.then241:                                       ; preds = %if.end236
  %132 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !268
  %and242 = and i32 %132, -201326593, !dbg !268
  %133 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !268
  %UsbClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %133, i32 0, i32 19, !dbg !268
  %134 = load i32, i32* %UsbClockSelection, align 4, !dbg !268
  %or243 = or i32 %and242, %134, !dbg !268
  store volatile i32 %or243, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !268
  %135 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !269
  %UsbClockSelection244 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %135, i32 0, i32 19, !dbg !270
  %136 = load i32, i32* %UsbClockSelection244, align 4, !dbg !270
  %cmp245 = icmp eq i32 %136, 134217728, !dbg !271
  br i1 %cmp245, label %if.then247, label %if.else249, !dbg !269

if.then247:                                       ; preds = %if.then241
  %137 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !272
  %or248 = or i32 %137, 1048576, !dbg !272
  store volatile i32 %or248, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !272
  br label %if.end262, !dbg !273

if.else249:                                       ; preds = %if.then241
  %138 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !274
  %UsbClockSelection250 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %138, i32 0, i32 19, !dbg !275
  %139 = load i32, i32* %UsbClockSelection250, align 4, !dbg !275
  %cmp251 = icmp eq i32 %139, 67108864, !dbg !276
  br i1 %cmp251, label %if.then253, label %if.end261, !dbg !274

if.then253:                                       ; preds = %if.else249
  %140 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !277
  %PLLSAI1254 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %140, i32 0, i32 1, !dbg !278
  %call255 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1254, i32 1), !dbg !279
  store i8 %call255, i8* %ret, align 1, !dbg !280
  %141 = load i8, i8* %ret, align 1, !dbg !281
  %conv256 = zext i8 %141 to i32, !dbg !281
  %cmp257 = icmp ne i32 %conv256, 0, !dbg !282
  br i1 %cmp257, label %if.then259, label %if.end260, !dbg !281

if.then259:                                       ; preds = %if.then253
  %142 = load i8, i8* %ret, align 1, !dbg !283
  store i8 %142, i8* %status, align 1, !dbg !284
  br label %if.end260, !dbg !285

if.end260:                                        ; preds = %if.then259, %if.then253
  br label %if.end261, !dbg !286

if.end261:                                        ; preds = %if.end260, %if.else249
  br label %if.end262

if.end262:                                        ; preds = %if.end261, %if.then247
  br label %if.end263, !dbg !287

if.end263:                                        ; preds = %if.end262, %if.end236
  %143 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !288
  %PeriphClockSelection264 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %143, i32 0, i32 0, !dbg !289
  %144 = load i32, i32* %PeriphClockSelection264, align 4, !dbg !289
  %and265 = and i32 %144, 524288, !dbg !290
  %cmp266 = icmp eq i32 %and265, 524288, !dbg !291
  br i1 %cmp266, label %if.then268, label %if.end308, !dbg !292

if.then268:                                       ; preds = %if.end263
  br label %do.body269, !dbg !293

do.body269:                                       ; preds = %if.then268
  %145 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !293
  %Sdmmc1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %145, i32 0, i32 20, !dbg !293
  %146 = load i32, i32* %Sdmmc1ClockSelection, align 4, !dbg !293
  %cmp270 = icmp eq i32 %146, 16384, !dbg !293
  br i1 %cmp270, label %if.then272, label %if.else274, !dbg !293

if.then272:                                       ; preds = %do.body269
  %147 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !293
  %or273 = or i32 %147, 16384, !dbg !293
  store volatile i32 %or273, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !293
  br label %if.end279, !dbg !293

if.else274:                                       ; preds = %do.body269
  %148 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !293
  %and275 = and i32 %148, -201326593, !dbg !293
  %149 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !293
  %Sdmmc1ClockSelection276 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %149, i32 0, i32 20, !dbg !293
  %150 = load i32, i32* %Sdmmc1ClockSelection276, align 4, !dbg !293
  %or277 = or i32 %and275, %150, !dbg !293
  store volatile i32 %or277, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !293
  %151 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !293
  %and278 = and i32 %151, -16385, !dbg !293
  store volatile i32 %and278, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !293
  br label %if.end279

if.end279:                                        ; preds = %if.else274, %if.then272
  br label %do.end280, !dbg !293

do.end280:                                        ; preds = %if.end279
  %152 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !294
  %Sdmmc1ClockSelection281 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %152, i32 0, i32 20, !dbg !295
  %153 = load i32, i32* %Sdmmc1ClockSelection281, align 4, !dbg !295
  %cmp282 = icmp eq i32 %153, 67108864, !dbg !296
  br i1 %cmp282, label %if.then284, label %if.else292, !dbg !294

if.then284:                                       ; preds = %do.end280
  %154 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !297
  %PLLSAI1285 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %154, i32 0, i32 1, !dbg !298
  %call286 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1285, i32 1), !dbg !299
  store i8 %call286, i8* %ret, align 1, !dbg !300
  %155 = load i8, i8* %ret, align 1, !dbg !301
  %conv287 = zext i8 %155 to i32, !dbg !301
  %cmp288 = icmp ne i32 %conv287, 0, !dbg !302
  br i1 %cmp288, label %if.then290, label %if.end291, !dbg !301

if.then290:                                       ; preds = %if.then284
  %156 = load i8, i8* %ret, align 1, !dbg !303
  store i8 %156, i8* %status, align 1, !dbg !304
  br label %if.end291, !dbg !305

if.end291:                                        ; preds = %if.then290, %if.then284
  br label %if.end307, !dbg !306

if.else292:                                       ; preds = %do.end280
  %157 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !307
  %Sdmmc1ClockSelection293 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %157, i32 0, i32 20, !dbg !308
  %158 = load i32, i32* %Sdmmc1ClockSelection293, align 4, !dbg !308
  %cmp294 = icmp eq i32 %158, 134217728, !dbg !309
  br i1 %cmp294, label %if.then296, label %if.else298, !dbg !307

if.then296:                                       ; preds = %if.else292
  %159 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !310
  %or297 = or i32 %159, 1048576, !dbg !310
  store volatile i32 %or297, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !310
  br label %if.end306, !dbg !311

if.else298:                                       ; preds = %if.else292
  %160 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !312
  %Sdmmc1ClockSelection299 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %160, i32 0, i32 20, !dbg !313
  %161 = load i32, i32* %Sdmmc1ClockSelection299, align 4, !dbg !313
  %cmp300 = icmp eq i32 %161, 16384, !dbg !314
  br i1 %cmp300, label %if.then302, label %if.else304, !dbg !312

if.then302:                                       ; preds = %if.else298
  %162 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !315
  %or303 = or i32 %162, 65536, !dbg !315
  store volatile i32 %or303, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !315
  br label %if.end305, !dbg !316

if.else304:                                       ; preds = %if.else298
  br label %if.end305

if.end305:                                        ; preds = %if.else304, %if.then302
  br label %if.end306

if.end306:                                        ; preds = %if.end305, %if.then296
  br label %if.end307

if.end307:                                        ; preds = %if.end306, %if.end291
  br label %if.end308, !dbg !317

if.end308:                                        ; preds = %if.end307, %if.end263
  %163 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !318
  %PeriphClockSelection309 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %163, i32 0, i32 0, !dbg !319
  %164 = load i32, i32* %PeriphClockSelection309, align 4, !dbg !319
  %and310 = and i32 %164, 262144, !dbg !320
  %cmp311 = icmp eq i32 %and310, 262144, !dbg !321
  br i1 %cmp311, label %if.then313, label %if.end336, !dbg !322

if.then313:                                       ; preds = %if.end308
  %165 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !323
  %and314 = and i32 %165, -201326593, !dbg !323
  %166 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !323
  %RngClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %166, i32 0, i32 21, !dbg !323
  %167 = load i32, i32* %RngClockSelection, align 4, !dbg !323
  %or315 = or i32 %and314, %167, !dbg !323
  store volatile i32 %or315, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !323
  %168 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !324
  %RngClockSelection316 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %168, i32 0, i32 21, !dbg !325
  %169 = load i32, i32* %RngClockSelection316, align 4, !dbg !325
  %cmp317 = icmp eq i32 %169, 134217728, !dbg !326
  br i1 %cmp317, label %if.then319, label %if.else321, !dbg !324

if.then319:                                       ; preds = %if.then313
  %170 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !327
  %or320 = or i32 %170, 1048576, !dbg !327
  store volatile i32 %or320, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !327
  br label %if.end335, !dbg !328

if.else321:                                       ; preds = %if.then313
  %171 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !329
  %RngClockSelection322 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %171, i32 0, i32 21, !dbg !330
  %172 = load i32, i32* %RngClockSelection322, align 4, !dbg !330
  %cmp323 = icmp eq i32 %172, 67108864, !dbg !331
  br i1 %cmp323, label %if.then325, label %if.else333, !dbg !329

if.then325:                                       ; preds = %if.else321
  %173 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !332
  %PLLSAI1326 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %173, i32 0, i32 1, !dbg !333
  %call327 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1326, i32 1), !dbg !334
  store i8 %call327, i8* %ret, align 1, !dbg !335
  %174 = load i8, i8* %ret, align 1, !dbg !336
  %conv328 = zext i8 %174 to i32, !dbg !336
  %cmp329 = icmp ne i32 %conv328, 0, !dbg !337
  br i1 %cmp329, label %if.then331, label %if.end332, !dbg !336

if.then331:                                       ; preds = %if.then325
  %175 = load i8, i8* %ret, align 1, !dbg !338
  store i8 %175, i8* %status, align 1, !dbg !339
  br label %if.end332, !dbg !340

if.end332:                                        ; preds = %if.then331, %if.then325
  br label %if.end334, !dbg !341

if.else333:                                       ; preds = %if.else321
  br label %if.end334

if.end334:                                        ; preds = %if.else333, %if.end332
  br label %if.end335

if.end335:                                        ; preds = %if.end334, %if.then319
  br label %if.end336, !dbg !342

if.end336:                                        ; preds = %if.end335, %if.end308
  %176 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !343
  %PeriphClockSelection337 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %176, i32 0, i32 0, !dbg !344
  %177 = load i32, i32* %PeriphClockSelection337, align 4, !dbg !344
  %and338 = and i32 %177, 16384, !dbg !345
  %cmp339 = icmp eq i32 %and338, 16384, !dbg !346
  br i1 %cmp339, label %if.then341, label %if.end356, !dbg !347

if.then341:                                       ; preds = %if.end336
  %178 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !348
  %and342 = and i32 %178, -805306369, !dbg !348
  %179 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !348
  %AdcClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %179, i32 0, i32 22, !dbg !348
  %180 = load i32, i32* %AdcClockSelection, align 4, !dbg !348
  %or343 = or i32 %and342, %180, !dbg !348
  store volatile i32 %or343, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !348
  %181 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !349
  %AdcClockSelection344 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %181, i32 0, i32 22, !dbg !350
  %182 = load i32, i32* %AdcClockSelection344, align 4, !dbg !350
  %cmp345 = icmp eq i32 %182, 268435456, !dbg !351
  br i1 %cmp345, label %if.then347, label %if.end355, !dbg !349

if.then347:                                       ; preds = %if.then341
  %183 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !352
  %PLLSAI1348 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %183, i32 0, i32 1, !dbg !353
  %call349 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1348, i32 2), !dbg !354
  store i8 %call349, i8* %ret, align 1, !dbg !355
  %184 = load i8, i8* %ret, align 1, !dbg !356
  %conv350 = zext i8 %184 to i32, !dbg !356
  %cmp351 = icmp ne i32 %conv350, 0, !dbg !357
  br i1 %cmp351, label %if.then353, label %if.end354, !dbg !356

if.then353:                                       ; preds = %if.then347
  %185 = load i8, i8* %ret, align 1, !dbg !358
  store i8 %185, i8* %status, align 1, !dbg !359
  br label %if.end354, !dbg !360

if.end354:                                        ; preds = %if.then353, %if.then347
  br label %if.end355, !dbg !361

if.end355:                                        ; preds = %if.end354, %if.then341
  br label %if.end356, !dbg !362

if.end356:                                        ; preds = %if.end355, %if.end336
  %186 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !363
  %PeriphClockSelection357 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %186, i32 0, i32 0, !dbg !364
  %187 = load i32, i32* %PeriphClockSelection357, align 4, !dbg !364
  %and358 = and i32 %187, 65536, !dbg !365
  %cmp359 = icmp eq i32 %and358, 65536, !dbg !366
  br i1 %cmp359, label %if.then361, label %if.end364, !dbg !367

if.then361:                                       ; preds = %if.end356
  %188 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !368
  %and362 = and i32 %188, -5, !dbg !368
  %189 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !368
  %Dfsdm1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %189, i32 0, i32 23, !dbg !368
  %190 = load i32, i32* %Dfsdm1ClockSelection, align 4, !dbg !368
  %or363 = or i32 %and362, %190, !dbg !368
  store volatile i32 %or363, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !368
  br label %if.end364, !dbg !369

if.end364:                                        ; preds = %if.then361, %if.end356
  %191 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !370
  %PeriphClockSelection365 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %191, i32 0, i32 0, !dbg !371
  %192 = load i32, i32* %PeriphClockSelection365, align 4, !dbg !371
  %and366 = and i32 %192, 2097152, !dbg !372
  %cmp367 = icmp eq i32 %and366, 2097152, !dbg !373
  br i1 %cmp367, label %if.then369, label %if.end372, !dbg !374

if.then369:                                       ; preds = %if.end364
  %193 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !375
  %and370 = and i32 %193, -25, !dbg !375
  %194 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !375
  %Dfsdm1AudioClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %194, i32 0, i32 24, !dbg !375
  %195 = load i32, i32* %Dfsdm1AudioClockSelection, align 4, !dbg !375
  %or371 = or i32 %and370, %195, !dbg !375
  store volatile i32 %or371, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !375
  br label %if.end372, !dbg !376

if.end372:                                        ; preds = %if.then369, %if.end364
  %196 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !377
  %PeriphClockSelection373 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %196, i32 0, i32 0, !dbg !378
  %197 = load i32, i32* %PeriphClockSelection373, align 4, !dbg !378
  %and374 = and i32 %197, 16777216, !dbg !379
  %cmp375 = icmp eq i32 %and374, 16777216, !dbg !380
  br i1 %cmp375, label %if.then377, label %if.end386, !dbg !381

if.then377:                                       ; preds = %if.end372
  %198 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !382
  %and378 = and i32 %198, -3145729, !dbg !382
  %199 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !382
  %OspiClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %199, i32 0, i32 25, !dbg !382
  %200 = load i32, i32* %OspiClockSelection, align 4, !dbg !382
  %or379 = or i32 %and378, %200, !dbg !382
  store volatile i32 %or379, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !382
  %201 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !383
  %OspiClockSelection380 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %201, i32 0, i32 25, !dbg !384
  %202 = load i32, i32* %OspiClockSelection380, align 4, !dbg !384
  %cmp381 = icmp eq i32 %202, 2097152, !dbg !385
  br i1 %cmp381, label %if.then383, label %if.end385, !dbg !383

if.then383:                                       ; preds = %if.then377
  %203 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !386
  %or384 = or i32 %203, 1048576, !dbg !386
  store volatile i32 %or384, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !386
  br label %if.end385, !dbg !387

if.end385:                                        ; preds = %if.then383, %if.then377
  br label %if.end386, !dbg !388

if.end386:                                        ; preds = %if.end385, %if.end372
  %204 = load i8, i8* %status, align 1, !dbg !389
  ret i8 %204, !dbg !390
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI1_Config(%struct.RCC_PLLSAI1InitTypeDef* %pPllSai1, i32 %Divider) #0 !dbg !391 {
entry:
  %pPllSai1.addr = alloca %struct.RCC_PLLSAI1InitTypeDef*, align 4
  %Divider.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store %struct.RCC_PLLSAI1InitTypeDef* %pPllSai1, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4
  store i32 %Divider, i32* %Divider.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !392
  %0 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !393
  %PLLSAI1Source = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %0, i32 0, i32 0, !dbg !394
  %1 = load i32, i32* %PLLSAI1Source, align 4, !dbg !394
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb6
  ], !dbg !395

sw.bb:                                            ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !396
  %and = and i32 %2, 2, !dbg !396
  %cmp = icmp eq i32 %and, 0, !dbg !396
  br i1 %cmp, label %if.then, label %if.end, !dbg !396

if.then:                                          ; preds = %sw.bb
  store i8 1, i8* %status, align 1, !dbg !397
  br label %if.end, !dbg !398

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !399

sw.bb1:                                           ; preds = %entry
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !400
  %and2 = and i32 %3, 1024, !dbg !400
  %cmp3 = icmp eq i32 %and2, 0, !dbg !400
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !400

if.then4:                                         ; preds = %sw.bb1
  store i8 1, i8* %status, align 1, !dbg !401
  br label %if.end5, !dbg !402

if.end5:                                          ; preds = %if.then4, %sw.bb1
  br label %sw.epilog, !dbg !403

sw.bb6:                                           ; preds = %entry
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !404
  %and7 = and i32 %4, 393216, !dbg !404
  %cmp8 = icmp eq i32 %and7, 0, !dbg !404
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !404

if.then9:                                         ; preds = %sw.bb6
  store i8 1, i8* %status, align 1, !dbg !405
  br label %if.end10, !dbg !406

if.end10:                                         ; preds = %if.then9, %sw.bb6
  br label %sw.epilog, !dbg !407

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !408
  br label %sw.epilog, !dbg !409

sw.epilog:                                        ; preds = %sw.default, %if.end10, %if.end5, %if.end
  %5 = load i8, i8* %status, align 1, !dbg !410
  %conv = zext i8 %5 to i32, !dbg !410
  %cmp11 = icmp eq i32 %conv, 0, !dbg !411
  br i1 %cmp11, label %if.then13, label %if.end92, !dbg !410

if.then13:                                        ; preds = %sw.epilog
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !412
  %and14 = and i32 %6, -67108865, !dbg !412
  store volatile i32 %and14, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !412
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !413
  store i32 %call, i32* %tickstart, align 4, !dbg !414
  br label %while.cond, !dbg !415

while.cond:                                       ; preds = %if.end22, %if.then13
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !416
  %and15 = and i32 %7, 134217728, !dbg !416
  %cmp16 = icmp ne i32 %and15, 0, !dbg !417
  br i1 %cmp16, label %while.body, label %while.end, !dbg !415

while.body:                                       ; preds = %while.cond
  %call18 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !418
  %8 = load i32, i32* %tickstart, align 4, !dbg !419
  %sub = sub i32 %call18, %8, !dbg !420
  %cmp19 = icmp ugt i32 %sub, 2, !dbg !421
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !422

if.then21:                                        ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !423
  br label %while.end, !dbg !424

if.end22:                                         ; preds = %while.body
  br label %while.cond, !dbg !415, !llvm.loop !425

while.end:                                        ; preds = %if.then21, %while.cond
  %9 = load i8, i8* %status, align 1, !dbg !427
  %conv23 = zext i8 %9 to i32, !dbg !427
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !428
  br i1 %cmp24, label %if.then26, label %if.end91, !dbg !427

if.then26:                                        ; preds = %while.end
  %10 = load i32, i32* %Divider.addr, align 4, !dbg !429
  %cmp27 = icmp eq i32 %10, 0, !dbg !430
  br i1 %cmp27, label %if.then29, label %if.else, !dbg !429

if.then29:                                        ; preds = %if.then26
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !431
  %and30 = and i32 %11, 134184972, !dbg !431
  %12 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !431
  %PLLSAI1N = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %12, i32 0, i32 2, !dbg !431
  %13 = load i32, i32* %PLLSAI1N, align 4, !dbg !431
  %shl = shl i32 %13, 8, !dbg !431
  %14 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !431
  %PLLSAI1P = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %14, i32 0, i32 3, !dbg !431
  %15 = load i32, i32* %PLLSAI1P, align 4, !dbg !431
  %shl31 = shl i32 %15, 27, !dbg !431
  %or = or i32 %shl, %shl31, !dbg !431
  %16 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !431
  %PLLSAI1M = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %16, i32 0, i32 1, !dbg !431
  %17 = load i32, i32* %PLLSAI1M, align 4, !dbg !431
  %sub32 = sub i32 %17, 1, !dbg !431
  %shl33 = shl i32 %sub32, 4, !dbg !431
  %or34 = or i32 %or, %shl33, !dbg !431
  %18 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !431
  %PLLSAI1Source35 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %18, i32 0, i32 0, !dbg !431
  %19 = load i32, i32* %PLLSAI1Source35, align 4, !dbg !431
  %or36 = or i32 %or34, %19, !dbg !431
  %or37 = or i32 %and30, %or36, !dbg !431
  store volatile i32 %or37, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !431
  br label %if.end70, !dbg !432

if.else:                                          ; preds = %if.then26
  %20 = load i32, i32* %Divider.addr, align 4, !dbg !433
  %cmp38 = icmp eq i32 %20, 1, !dbg !434
  br i1 %cmp38, label %if.then40, label %if.else54, !dbg !433

if.then40:                                        ; preds = %if.else
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !435
  %and41 = and i32 %21, -6324212, !dbg !435
  %22 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !435
  %PLLSAI1N42 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %22, i32 0, i32 2, !dbg !435
  %23 = load i32, i32* %PLLSAI1N42, align 4, !dbg !435
  %shl43 = shl i32 %23, 8, !dbg !435
  %24 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !435
  %PLLSAI1Q = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %24, i32 0, i32 4, !dbg !435
  %25 = load i32, i32* %PLLSAI1Q, align 4, !dbg !435
  %shr = lshr i32 %25, 1, !dbg !435
  %sub44 = sub i32 %shr, 1, !dbg !435
  %shl45 = shl i32 %sub44, 21, !dbg !435
  %or46 = or i32 %shl43, %shl45, !dbg !435
  %26 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !435
  %PLLSAI1M47 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %26, i32 0, i32 1, !dbg !435
  %27 = load i32, i32* %PLLSAI1M47, align 4, !dbg !435
  %sub48 = sub i32 %27, 1, !dbg !435
  %shl49 = shl i32 %sub48, 4, !dbg !435
  %or50 = or i32 %or46, %shl49, !dbg !435
  %28 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !435
  %PLLSAI1Source51 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %28, i32 0, i32 0, !dbg !435
  %29 = load i32, i32* %PLLSAI1Source51, align 4, !dbg !435
  %or52 = or i32 %or50, %29, !dbg !435
  %or53 = or i32 %and41, %or52, !dbg !435
  store volatile i32 %or53, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !435
  br label %if.end69, !dbg !436

if.else54:                                        ; preds = %if.else
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !437
  %and55 = and i32 %30, -100696052, !dbg !437
  %31 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !437
  %PLLSAI1N56 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %31, i32 0, i32 2, !dbg !437
  %32 = load i32, i32* %PLLSAI1N56, align 4, !dbg !437
  %shl57 = shl i32 %32, 8, !dbg !437
  %33 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !437
  %PLLSAI1R = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %33, i32 0, i32 5, !dbg !437
  %34 = load i32, i32* %PLLSAI1R, align 4, !dbg !437
  %shr58 = lshr i32 %34, 1, !dbg !437
  %sub59 = sub i32 %shr58, 1, !dbg !437
  %shl60 = shl i32 %sub59, 25, !dbg !437
  %or61 = or i32 %shl57, %shl60, !dbg !437
  %35 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !437
  %PLLSAI1M62 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %35, i32 0, i32 1, !dbg !437
  %36 = load i32, i32* %PLLSAI1M62, align 4, !dbg !437
  %sub63 = sub i32 %36, 1, !dbg !437
  %shl64 = shl i32 %sub63, 4, !dbg !437
  %or65 = or i32 %or61, %shl64, !dbg !437
  %37 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !437
  %PLLSAI1Source66 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %37, i32 0, i32 0, !dbg !437
  %38 = load i32, i32* %PLLSAI1Source66, align 4, !dbg !437
  %or67 = or i32 %or65, %38, !dbg !437
  %or68 = or i32 %and55, %or67, !dbg !437
  store volatile i32 %or68, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !437
  br label %if.end69

if.end69:                                         ; preds = %if.else54, %if.then40
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then29
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !438
  %or71 = or i32 %39, 67108864, !dbg !438
  store volatile i32 %or71, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !438
  %call72 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !439
  store i32 %call72, i32* %tickstart, align 4, !dbg !440
  br label %while.cond73, !dbg !441

while.cond73:                                     ; preds = %if.end83, %if.end70
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !442
  %and74 = and i32 %40, 134217728, !dbg !442
  %cmp75 = icmp eq i32 %and74, 0, !dbg !443
  br i1 %cmp75, label %while.body77, label %while.end84, !dbg !441

while.body77:                                     ; preds = %while.cond73
  %call78 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !444
  %41 = load i32, i32* %tickstart, align 4, !dbg !445
  %sub79 = sub i32 %call78, %41, !dbg !446
  %cmp80 = icmp ugt i32 %sub79, 2, !dbg !447
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !448

if.then82:                                        ; preds = %while.body77
  store i8 3, i8* %status, align 1, !dbg !449
  br label %while.end84, !dbg !450

if.end83:                                         ; preds = %while.body77
  br label %while.cond73, !dbg !441, !llvm.loop !451

while.end84:                                      ; preds = %if.then82, %while.cond73
  %42 = load i8, i8* %status, align 1, !dbg !453
  %conv85 = zext i8 %42 to i32, !dbg !453
  %cmp86 = icmp eq i32 %conv85, 0, !dbg !454
  br i1 %cmp86, label %if.then88, label %if.end90, !dbg !453

if.then88:                                        ; preds = %while.end84
  %43 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %pPllSai1.addr, align 4, !dbg !455
  %PLLSAI1ClockOut = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %43, i32 0, i32 6, !dbg !455
  %44 = load i32, i32* %PLLSAI1ClockOut, align 4, !dbg !455
  %45 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !455
  %or89 = or i32 %45, %44, !dbg !455
  store volatile i32 %or89, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !455
  br label %if.end90, !dbg !456

if.end90:                                         ; preds = %if.then88, %while.end84
  br label %if.end91, !dbg !457

if.end91:                                         ; preds = %if.end90, %while.end
  br label %if.end92, !dbg !458

if.end92:                                         ; preds = %if.end91, %sw.epilog
  %46 = load i8, i8* %status, align 1, !dbg !459
  ret i8 %46, !dbg !460
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSAI2_Config(%struct.RCC_PLLSAI2InitTypeDef* %pPllSai2, i32 %Divider) #0 !dbg !461 {
entry:
  %pPllSai2.addr = alloca %struct.RCC_PLLSAI2InitTypeDef*, align 4
  %Divider.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store %struct.RCC_PLLSAI2InitTypeDef* %pPllSai2, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4
  store i32 %Divider, i32* %Divider.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !462
  %0 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4, !dbg !463
  %PLLSAI2Source = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %0, i32 0, i32 0, !dbg !464
  %1 = load i32, i32* %PLLSAI2Source, align 4, !dbg !464
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb6
  ], !dbg !465

sw.bb:                                            ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !466
  %and = and i32 %2, 2, !dbg !466
  %cmp = icmp eq i32 %and, 0, !dbg !466
  br i1 %cmp, label %if.then, label %if.end, !dbg !466

if.then:                                          ; preds = %sw.bb
  store i8 1, i8* %status, align 1, !dbg !467
  br label %if.end, !dbg !468

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !469

sw.bb1:                                           ; preds = %entry
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !470
  %and2 = and i32 %3, 1024, !dbg !470
  %cmp3 = icmp eq i32 %and2, 0, !dbg !470
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !470

if.then4:                                         ; preds = %sw.bb1
  store i8 1, i8* %status, align 1, !dbg !471
  br label %if.end5, !dbg !472

if.end5:                                          ; preds = %if.then4, %sw.bb1
  br label %sw.epilog, !dbg !473

sw.bb6:                                           ; preds = %entry
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !474
  %and7 = and i32 %4, 393216, !dbg !474
  %cmp8 = icmp eq i32 %and7, 0, !dbg !474
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !474

if.then9:                                         ; preds = %sw.bb6
  store i8 1, i8* %status, align 1, !dbg !475
  br label %if.end10, !dbg !476

if.end10:                                         ; preds = %if.then9, %sw.bb6
  br label %sw.epilog, !dbg !477

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !478
  br label %sw.epilog, !dbg !479

sw.epilog:                                        ; preds = %sw.default, %if.end10, %if.end5, %if.end
  %5 = load i8, i8* %status, align 1, !dbg !480
  %conv = zext i8 %5 to i32, !dbg !480
  %cmp11 = icmp eq i32 %conv, 0, !dbg !481
  br i1 %cmp11, label %if.then13, label %if.end60, !dbg !480

if.then13:                                        ; preds = %sw.epilog
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !482
  %and14 = and i32 %6, -268435457, !dbg !482
  store volatile i32 %and14, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !482
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !483
  store i32 %call, i32* %tickstart, align 4, !dbg !484
  br label %while.cond, !dbg !485

while.cond:                                       ; preds = %if.end22, %if.then13
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !486
  %and15 = and i32 %7, 536870912, !dbg !486
  %cmp16 = icmp ne i32 %and15, 0, !dbg !487
  br i1 %cmp16, label %while.body, label %while.end, !dbg !485

while.body:                                       ; preds = %while.cond
  %call18 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !488
  %8 = load i32, i32* %tickstart, align 4, !dbg !489
  %sub = sub i32 %call18, %8, !dbg !490
  %cmp19 = icmp ugt i32 %sub, 2, !dbg !491
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !492

if.then21:                                        ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !493
  br label %while.end, !dbg !494

if.end22:                                         ; preds = %while.body
  br label %while.cond, !dbg !485, !llvm.loop !495

while.end:                                        ; preds = %if.then21, %while.cond
  %9 = load i8, i8* %status, align 1, !dbg !497
  %conv23 = zext i8 %9 to i32, !dbg !497
  %cmp24 = icmp eq i32 %conv23, 0, !dbg !498
  br i1 %cmp24, label %if.then26, label %if.end59, !dbg !497

if.then26:                                        ; preds = %while.end
  %10 = load i32, i32* %Divider.addr, align 4, !dbg !499
  %cmp27 = icmp eq i32 %10, 0, !dbg !500
  br i1 %cmp27, label %if.then29, label %if.end38, !dbg !499

if.then29:                                        ; preds = %if.then26
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !501
  %and30 = and i32 %11, 134184972, !dbg !501
  %12 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4, !dbg !501
  %PLLSAI2N = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %12, i32 0, i32 2, !dbg !501
  %13 = load i32, i32* %PLLSAI2N, align 4, !dbg !501
  %shl = shl i32 %13, 8, !dbg !501
  %14 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4, !dbg !501
  %PLLSAI2P = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %14, i32 0, i32 3, !dbg !501
  %15 = load i32, i32* %PLLSAI2P, align 4, !dbg !501
  %shl31 = shl i32 %15, 27, !dbg !501
  %or = or i32 %shl, %shl31, !dbg !501
  %16 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4, !dbg !501
  %PLLSAI2M = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %16, i32 0, i32 1, !dbg !501
  %17 = load i32, i32* %PLLSAI2M, align 4, !dbg !501
  %sub32 = sub i32 %17, 1, !dbg !501
  %shl33 = shl i32 %sub32, 4, !dbg !501
  %or34 = or i32 %or, %shl33, !dbg !501
  %18 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4, !dbg !501
  %PLLSAI2Source35 = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %18, i32 0, i32 0, !dbg !501
  %19 = load i32, i32* %PLLSAI2Source35, align 4, !dbg !501
  %or36 = or i32 %or34, %19, !dbg !501
  %or37 = or i32 %and30, %or36, !dbg !501
  store volatile i32 %or37, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !501
  br label %if.end38, !dbg !502

if.end38:                                         ; preds = %if.then29, %if.then26
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !503
  %or39 = or i32 %20, 268435456, !dbg !503
  store volatile i32 %or39, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !503
  %call40 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !504
  store i32 %call40, i32* %tickstart, align 4, !dbg !505
  br label %while.cond41, !dbg !506

while.cond41:                                     ; preds = %if.end51, %if.end38
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !507
  %and42 = and i32 %21, 536870912, !dbg !507
  %cmp43 = icmp eq i32 %and42, 0, !dbg !508
  br i1 %cmp43, label %while.body45, label %while.end52, !dbg !506

while.body45:                                     ; preds = %while.cond41
  %call46 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !509
  %22 = load i32, i32* %tickstart, align 4, !dbg !510
  %sub47 = sub i32 %call46, %22, !dbg !511
  %cmp48 = icmp ugt i32 %sub47, 2, !dbg !512
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !513

if.then50:                                        ; preds = %while.body45
  store i8 3, i8* %status, align 1, !dbg !514
  br label %while.end52, !dbg !515

if.end51:                                         ; preds = %while.body45
  br label %while.cond41, !dbg !506, !llvm.loop !516

while.end52:                                      ; preds = %if.then50, %while.cond41
  %23 = load i8, i8* %status, align 1, !dbg !518
  %conv53 = zext i8 %23 to i32, !dbg !518
  %cmp54 = icmp eq i32 %conv53, 0, !dbg !519
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !518

if.then56:                                        ; preds = %while.end52
  %24 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %pPllSai2.addr, align 4, !dbg !520
  %PLLSAI2ClockOut = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %24, i32 0, i32 4, !dbg !520
  %25 = load i32, i32* %PLLSAI2ClockOut, align 4, !dbg !520
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !520
  %or57 = or i32 %26, %25, !dbg !520
  store volatile i32 %or57, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !520
  br label %if.end58, !dbg !521

if.end58:                                         ; preds = %if.then56, %while.end52
  br label %if.end59, !dbg !522

if.end59:                                         ; preds = %if.end58, %while.end
  br label %if.end60, !dbg !523

if.end60:                                         ; preds = %if.end59, %sw.epilog
  %27 = load i8, i8* %status, align 1, !dbg !524
  ret i8 %27, !dbg !525
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_GetPeriphCLKConfig(%struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit) #0 !dbg !526 {
entry:
  %PeriphClkInit.addr = alloca %struct.RCC_PeriphCLKInitTypeDef*, align 4
  store %struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4
  %0 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !527
  %PeriphClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %0, i32 0, i32 0, !dbg !528
  store i32 58687487, i32* %PeriphClockSelection, align 4, !dbg !529
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !530
  %and = and i32 %1, 3, !dbg !531
  %shr = lshr i32 %and, 0, !dbg !532
  %2 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !533
  %PLLSAI1 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %2, i32 0, i32 1, !dbg !534
  %PLLSAI1Source = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1, i32 0, i32 0, !dbg !535
  store i32 %shr, i32* %PLLSAI1Source, align 4, !dbg !536
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !537
  %and1 = and i32 %3, 240, !dbg !538
  %shr2 = lshr i32 %and1, 4, !dbg !539
  %add = add i32 %shr2, 1, !dbg !540
  %4 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !541
  %PLLSAI13 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %4, i32 0, i32 1, !dbg !542
  %PLLSAI1M = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI13, i32 0, i32 1, !dbg !543
  store i32 %add, i32* %PLLSAI1M, align 4, !dbg !544
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !545
  %and4 = and i32 %5, 32512, !dbg !546
  %shr5 = lshr i32 %and4, 8, !dbg !547
  %6 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !548
  %PLLSAI16 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %6, i32 0, i32 1, !dbg !549
  %PLLSAI1N = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI16, i32 0, i32 2, !dbg !550
  store i32 %shr5, i32* %PLLSAI1N, align 4, !dbg !551
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !552
  %and7 = and i32 %7, 131072, !dbg !553
  %shr8 = lshr i32 %and7, 17, !dbg !554
  %shl = shl i32 %shr8, 4, !dbg !555
  %add9 = add i32 %shl, 7, !dbg !556
  %8 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !557
  %PLLSAI110 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %8, i32 0, i32 1, !dbg !558
  %PLLSAI1P = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI110, i32 0, i32 3, !dbg !559
  store i32 %add9, i32* %PLLSAI1P, align 4, !dbg !560
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !561
  %and11 = and i32 %9, 6291456, !dbg !562
  %shr12 = lshr i32 %and11, 21, !dbg !563
  %add13 = add i32 %shr12, 1, !dbg !564
  %mul = mul i32 %add13, 2, !dbg !565
  %10 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !566
  %PLLSAI114 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %10, i32 0, i32 1, !dbg !567
  %PLLSAI1Q = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI114, i32 0, i32 4, !dbg !568
  store i32 %mul, i32* %PLLSAI1Q, align 4, !dbg !569
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !570
  %and15 = and i32 %11, 100663296, !dbg !571
  %shr16 = lshr i32 %and15, 25, !dbg !572
  %add17 = add i32 %shr16, 1, !dbg !573
  %mul18 = mul i32 %add17, 2, !dbg !574
  %12 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !575
  %PLLSAI119 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %12, i32 0, i32 1, !dbg !576
  %PLLSAI1R = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI119, i32 0, i32 5, !dbg !577
  store i32 %mul18, i32* %PLLSAI1R, align 4, !dbg !578
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !579
  %and20 = and i32 %13, 3, !dbg !580
  %shr21 = lshr i32 %and20, 0, !dbg !581
  %14 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !582
  %PLLSAI2 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %14, i32 0, i32 2, !dbg !583
  %PLLSAI2Source = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %PLLSAI2, i32 0, i32 0, !dbg !584
  store i32 %shr21, i32* %PLLSAI2Source, align 4, !dbg !585
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !586
  %and22 = and i32 %15, 240, !dbg !587
  %shr23 = lshr i32 %and22, 4, !dbg !588
  %add24 = add i32 %shr23, 1, !dbg !589
  %16 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !590
  %PLLSAI225 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %16, i32 0, i32 2, !dbg !591
  %PLLSAI2M = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %PLLSAI225, i32 0, i32 1, !dbg !592
  store i32 %add24, i32* %PLLSAI2M, align 4, !dbg !593
  %17 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !594
  %and26 = and i32 %17, 32512, !dbg !595
  %shr27 = lshr i32 %and26, 8, !dbg !596
  %18 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !597
  %PLLSAI228 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %18, i32 0, i32 2, !dbg !598
  %PLLSAI2N = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %PLLSAI228, i32 0, i32 2, !dbg !599
  store i32 %shr27, i32* %PLLSAI2N, align 4, !dbg !600
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !601
  %and29 = and i32 %19, 131072, !dbg !602
  %shr30 = lshr i32 %and29, 17, !dbg !603
  %shl31 = shl i32 %shr30, 4, !dbg !604
  %add32 = add i32 %shl31, 7, !dbg !605
  %20 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !606
  %PLLSAI233 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %20, i32 0, i32 2, !dbg !607
  %PLLSAI2P = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %PLLSAI233, i32 0, i32 3, !dbg !608
  store i32 %add32, i32* %PLLSAI2P, align 4, !dbg !609
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !610
  %and34 = and i32 %21, 3, !dbg !610
  %22 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !611
  %Usart1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %22, i32 0, i32 3, !dbg !612
  store i32 %and34, i32* %Usart1ClockSelection, align 4, !dbg !613
  %23 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !614
  %and35 = and i32 %23, 12, !dbg !614
  %24 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !615
  %Usart2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %24, i32 0, i32 4, !dbg !616
  store i32 %and35, i32* %Usart2ClockSelection, align 4, !dbg !617
  %25 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !618
  %and36 = and i32 %25, 48, !dbg !618
  %26 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !619
  %Usart3ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %26, i32 0, i32 5, !dbg !620
  store i32 %and36, i32* %Usart3ClockSelection, align 4, !dbg !621
  %27 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !622
  %and37 = and i32 %27, 192, !dbg !622
  %28 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !623
  %Uart4ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %28, i32 0, i32 6, !dbg !624
  store i32 %and37, i32* %Uart4ClockSelection, align 4, !dbg !625
  %29 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !626
  %and38 = and i32 %29, 768, !dbg !626
  %30 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !627
  %Uart5ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %30, i32 0, i32 7, !dbg !628
  store i32 %and38, i32* %Uart5ClockSelection, align 4, !dbg !629
  %31 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !630
  %and39 = and i32 %31, 3072, !dbg !630
  %32 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !631
  %Lpuart1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %32, i32 0, i32 8, !dbg !632
  store i32 %and39, i32* %Lpuart1ClockSelection, align 4, !dbg !633
  %33 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !634
  %and40 = and i32 %33, 12288, !dbg !634
  %34 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !635
  %I2c1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %34, i32 0, i32 9, !dbg !636
  store i32 %and40, i32* %I2c1ClockSelection, align 4, !dbg !637
  %35 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !638
  %and41 = and i32 %35, 49152, !dbg !638
  %36 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !639
  %I2c2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %36, i32 0, i32 10, !dbg !640
  store i32 %and41, i32* %I2c2ClockSelection, align 4, !dbg !641
  %37 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !642
  %and42 = and i32 %37, 196608, !dbg !642
  %38 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !643
  %I2c3ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %38, i32 0, i32 11, !dbg !644
  store i32 %and42, i32* %I2c3ClockSelection, align 4, !dbg !645
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !646
  %and43 = and i32 %39, 3, !dbg !646
  %40 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !647
  %I2c4ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %40, i32 0, i32 12, !dbg !648
  store i32 %and43, i32* %I2c4ClockSelection, align 4, !dbg !649
  %41 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !650
  %and44 = and i32 %41, 786432, !dbg !650
  %42 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !651
  %Lptim1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %42, i32 0, i32 13, !dbg !652
  store i32 %and44, i32* %Lptim1ClockSelection, align 4, !dbg !653
  %43 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !654
  %and45 = and i32 %43, 3145728, !dbg !654
  %44 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !655
  %Lptim2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %44, i32 0, i32 14, !dbg !656
  store i32 %and45, i32* %Lptim2ClockSelection, align 4, !dbg !657
  %45 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !658
  %and46 = and i32 %45, 12582912, !dbg !658
  %46 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !659
  %Lptim3ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %46, i32 0, i32 15, !dbg !660
  store i32 %and46, i32* %Lptim3ClockSelection, align 4, !dbg !661
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !662
  %and47 = and i32 %47, 50331648, !dbg !662
  %48 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !663
  %FdcanClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %48, i32 0, i32 16, !dbg !664
  store i32 %and47, i32* %FdcanClockSelection, align 4, !dbg !665
  %49 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !666
  %and48 = and i32 %49, 224, !dbg !666
  %50 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !667
  %Sai1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %50, i32 0, i32 17, !dbg !668
  store i32 %and48, i32* %Sai1ClockSelection, align 4, !dbg !669
  %51 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !670
  %and49 = and i32 %51, 1792, !dbg !670
  %52 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !671
  %Sai2ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %52, i32 0, i32 18, !dbg !672
  store i32 %and49, i32* %Sai2ClockSelection, align 4, !dbg !673
  %53 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !674
  %and50 = and i32 %53, 768, !dbg !674
  %54 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !675
  %RTCClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %54, i32 0, i32 26, !dbg !676
  store i32 %and50, i32* %RTCClockSelection, align 4, !dbg !677
  %55 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !678
  %and51 = and i32 %55, 201326592, !dbg !678
  %56 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !679
  %UsbClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %56, i32 0, i32 19, !dbg !680
  store i32 %and51, i32* %UsbClockSelection, align 4, !dbg !681
  %57 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !682
  %and52 = and i32 %57, 16384, !dbg !682
  %cmp = icmp ne i32 %and52, 0, !dbg !682
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !682

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !682

cond.false:                                       ; preds = %entry
  %58 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !682
  %and53 = and i32 %58, 201326592, !dbg !682
  br label %cond.end, !dbg !682

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 16384, %cond.true ], [ %and53, %cond.false ], !dbg !682
  %59 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !683
  %Sdmmc1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %59, i32 0, i32 20, !dbg !684
  store i32 %cond, i32* %Sdmmc1ClockSelection, align 4, !dbg !685
  %60 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !686
  %and54 = and i32 %60, 201326592, !dbg !686
  %61 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !687
  %RngClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %61, i32 0, i32 21, !dbg !688
  store i32 %and54, i32* %RngClockSelection, align 4, !dbg !689
  %62 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !690
  %and55 = and i32 %62, 805306368, !dbg !690
  %63 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !691
  %AdcClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %63, i32 0, i32 22, !dbg !692
  store i32 %and55, i32* %AdcClockSelection, align 4, !dbg !693
  %64 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !694
  %and56 = and i32 %64, 4, !dbg !694
  %65 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !695
  %Dfsdm1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %65, i32 0, i32 23, !dbg !696
  store i32 %and56, i32* %Dfsdm1ClockSelection, align 4, !dbg !697
  %66 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !698
  %and57 = and i32 %66, 24, !dbg !698
  %67 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !699
  %Dfsdm1AudioClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %67, i32 0, i32 24, !dbg !700
  store i32 %and57, i32* %Dfsdm1AudioClockSelection, align 4, !dbg !701
  %68 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !702
  %and58 = and i32 %68, 3145728, !dbg !702
  %69 = load %struct.RCC_PeriphCLKInitTypeDef*, %struct.RCC_PeriphCLKInitTypeDef** %PeriphClkInit.addr, align 4, !dbg !703
  %OspiClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %69, i32 0, i32 25, !dbg !704
  store i32 %and58, i32* %OspiClockSelection, align 4, !dbg !705
  ret void, !dbg !706
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_RCCEx_GetPeriphCLKFreq(i32 %PeriphClk) #0 !dbg !707 {
entry:
  %PeriphClk.addr = alloca i32, align 4
  %frequency = alloca i32, align 4
  %srcclk = alloca i32, align 4
  %pllvco = alloca i32, align 4
  %plln = alloca i32, align 4
  %pllp = alloca i32, align 4
  %pll_oscsource = alloca i32, align 4
  store i32 %PeriphClk, i32* %PeriphClk.addr, align 4
  store i32 0, i32* %frequency, align 4, !dbg !708
  %0 = load i32, i32* %PeriphClk.addr, align 4, !dbg !709
  %cmp = icmp eq i32 %0, 131072, !dbg !710
  br i1 %cmp, label %if.then, label %if.else, !dbg !709

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !711
  %and = and i32 %1, 768, !dbg !711
  store i32 %and, i32* %srcclk, align 4, !dbg !712
  %2 = load i32, i32* %srcclk, align 4, !dbg !713
  switch i32 %2, label %sw.default [
    i32 256, label %sw.bb
    i32 512, label %sw.bb4
    i32 768, label %sw.bb9
  ], !dbg !714

sw.bb:                                            ; preds = %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !715
  %and1 = and i32 %3, 2, !dbg !715
  %cmp2 = icmp eq i32 %and1, 2, !dbg !715
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !715

if.then3:                                         ; preds = %sw.bb
  store i32 32768, i32* %frequency, align 4, !dbg !716
  br label %if.end, !dbg !717

if.end:                                           ; preds = %if.then3, %sw.bb
  br label %sw.epilog, !dbg !718

sw.bb4:                                           ; preds = %if.then
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !719
  %and5 = and i32 %4, 2, !dbg !719
  %cmp6 = icmp eq i32 %and5, 2, !dbg !719
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !719

if.then7:                                         ; preds = %sw.bb4
  store i32 32000, i32* %frequency, align 4, !dbg !720
  br label %if.end8, !dbg !721

if.end8:                                          ; preds = %if.then7, %sw.bb4
  br label %sw.epilog, !dbg !722

sw.bb9:                                           ; preds = %if.then
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !723
  %and10 = and i32 %5, 131072, !dbg !723
  %cmp11 = icmp eq i32 %and10, 131072, !dbg !723
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !723

if.then12:                                        ; preds = %sw.bb9
  store i32 250000, i32* %frequency, align 4, !dbg !724
  br label %if.end13, !dbg !725

if.end13:                                         ; preds = %if.then12, %sw.bb9
  br label %sw.epilog, !dbg !726

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !727

sw.epilog:                                        ; preds = %sw.default, %if.end13, %if.end8, %if.end
  br label %if.end544, !dbg !728

if.else:                                          ; preds = %entry
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !729
  %and14 = and i32 %6, 3, !dbg !729
  store i32 %and14, i32* %pll_oscsource, align 4, !dbg !730
  %7 = load i32, i32* %pll_oscsource, align 4, !dbg !731
  switch i32 %7, label %sw.default38 [
    i32 1, label %sw.bb15
    i32 2, label %sw.bb26
    i32 3, label %sw.bb32
  ], !dbg !732

sw.bb15:                                          ; preds = %if.else
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !733
  %and16 = and i32 %8, 2, !dbg !733
  %cmp17 = icmp eq i32 %and16, 2, !dbg !733
  br i1 %cmp17, label %if.then18, label %if.else24, !dbg !733

if.then18:                                        ; preds = %sw.bb15
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !734
  %and19 = and i32 %9, 8, !dbg !734
  %cmp20 = icmp ne i32 %and19, 0, !dbg !734
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !734

cond.true:                                        ; preds = %if.then18
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !734
  %and21 = and i32 %10, 240, !dbg !734
  br label %cond.end, !dbg !734

cond.false:                                       ; preds = %if.then18
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !734
  %and22 = and i32 %11, 3840, !dbg !734
  %shr = lshr i32 %and22, 4, !dbg !734
  br label %cond.end, !dbg !734

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and21, %cond.true ], [ %shr, %cond.false ], !dbg !734
  %shr23 = lshr i32 %cond, 4, !dbg !735
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %shr23, !dbg !736
  %12 = load i32, i32* %arrayidx, align 4, !dbg !736
  store i32 %12, i32* %pllvco, align 4, !dbg !737
  br label %if.end25, !dbg !738

if.else24:                                        ; preds = %sw.bb15
  store i32 0, i32* %pllvco, align 4, !dbg !739
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %cond.end
  br label %sw.epilog39, !dbg !740

sw.bb26:                                          ; preds = %if.else
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !741
  %and27 = and i32 %13, 1024, !dbg !741
  %cmp28 = icmp eq i32 %and27, 1024, !dbg !741
  br i1 %cmp28, label %if.then29, label %if.else30, !dbg !741

if.then29:                                        ; preds = %sw.bb26
  store i32 16000000, i32* %pllvco, align 4, !dbg !742
  br label %if.end31, !dbg !743

if.else30:                                        ; preds = %sw.bb26
  store i32 0, i32* %pllvco, align 4, !dbg !744
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then29
  br label %sw.epilog39, !dbg !745

sw.bb32:                                          ; preds = %if.else
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !746
  %and33 = and i32 %14, 131072, !dbg !746
  %cmp34 = icmp eq i32 %and33, 131072, !dbg !746
  br i1 %cmp34, label %if.then35, label %if.else36, !dbg !746

if.then35:                                        ; preds = %sw.bb32
  store i32 8000000, i32* %pllvco, align 4, !dbg !747
  br label %if.end37, !dbg !748

if.else36:                                        ; preds = %sw.bb32
  store i32 0, i32* %pllvco, align 4, !dbg !749
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.then35
  br label %sw.epilog39, !dbg !750

sw.default38:                                     ; preds = %if.else
  store i32 0, i32* %pllvco, align 4, !dbg !751
  br label %sw.epilog39, !dbg !752

sw.epilog39:                                      ; preds = %sw.default38, %if.end37, %if.end31, %if.end25
  %15 = load i32, i32* %PeriphClk.addr, align 4, !dbg !753
  switch i32 %15, label %sw.default542 [
    i32 2048, label %sw.bb40
    i32 4096, label %sw.bb41
    i32 8192, label %sw.bb43
    i32 262144, label %sw.bb43
    i32 524288, label %sw.bb107
    i32 1, label %sw.bb206
    i32 2, label %sw.bb224
    i32 4, label %sw.bb242
    i32 8, label %sw.bb260
    i32 16, label %sw.bb278
    i32 32, label %sw.bb296
    i32 16384, label %sw.bb314
    i32 65536, label %sw.bb338
    i32 2097152, label %sw.bb346
    i32 64, label %sw.bb373
    i32 128, label %sw.bb386
    i32 256, label %sw.bb399
    i32 1048576, label %sw.bb412
    i32 512, label %sw.bb425
    i32 1024, label %sw.bb446
    i32 4194304, label %sw.bb467
    i32 33554432, label %sw.bb488
  ], !dbg !754

sw.bb40:                                          ; preds = %sw.epilog39
  %16 = load i32, i32* %pllvco, align 4, !dbg !755
  %call = call arm_aapcs_vfpcc i32 @RCCEx_GetSAIxPeriphCLKFreq(i32 2048, i32 %16), !dbg !756
  store i32 %call, i32* %frequency, align 4, !dbg !757
  br label %sw.epilog543, !dbg !758

sw.bb41:                                          ; preds = %sw.epilog39
  %17 = load i32, i32* %pllvco, align 4, !dbg !759
  %call42 = call arm_aapcs_vfpcc i32 @RCCEx_GetSAIxPeriphCLKFreq(i32 4096, i32 %17), !dbg !760
  store i32 %call42, i32* %frequency, align 4, !dbg !761
  br label %sw.epilog543, !dbg !762

sw.bb43:                                          ; preds = %sw.epilog39, %sw.epilog39
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !763
  %and44 = and i32 %18, 201326592, !dbg !763
  store i32 %and44, i32* %srcclk, align 4, !dbg !764
  %19 = load i32, i32* %srcclk, align 4, !dbg !765
  switch i32 %19, label %sw.default105 [
    i32 201326592, label %sw.bb45
    i32 134217728, label %sw.bb61
    i32 67108864, label %sw.bb78
    i32 0, label %sw.bb100
  ], !dbg !766

sw.bb45:                                          ; preds = %sw.bb43
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !767
  %and46 = and i32 %20, 2, !dbg !767
  %cmp47 = icmp eq i32 %and46, 2, !dbg !767
  br i1 %cmp47, label %if.then48, label %if.end60, !dbg !767

if.then48:                                        ; preds = %sw.bb45
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !768
  %and49 = and i32 %21, 8, !dbg !768
  %cmp50 = icmp ne i32 %and49, 0, !dbg !768
  br i1 %cmp50, label %cond.true51, label %cond.false53, !dbg !768

cond.true51:                                      ; preds = %if.then48
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !768
  %and52 = and i32 %22, 240, !dbg !768
  br label %cond.end56, !dbg !768

cond.false53:                                     ; preds = %if.then48
  %23 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !768
  %and54 = and i32 %23, 3840, !dbg !768
  %shr55 = lshr i32 %and54, 4, !dbg !768
  br label %cond.end56, !dbg !768

cond.end56:                                       ; preds = %cond.false53, %cond.true51
  %cond57 = phi i32 [ %and52, %cond.true51 ], [ %shr55, %cond.false53 ], !dbg !768
  %shr58 = lshr i32 %cond57, 4, !dbg !769
  %arrayidx59 = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %shr58, !dbg !770
  %24 = load i32, i32* %arrayidx59, align 4, !dbg !770
  store i32 %24, i32* %frequency, align 4, !dbg !771
  br label %if.end60, !dbg !772

if.end60:                                         ; preds = %cond.end56, %sw.bb45
  br label %sw.epilog106, !dbg !773

sw.bb61:                                          ; preds = %sw.bb43
  %25 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !774
  %and62 = and i32 %25, 33554432, !dbg !774
  %cmp63 = icmp eq i32 %and62, 33554432, !dbg !774
  br i1 %cmp63, label %if.then64, label %if.end77, !dbg !774

if.then64:                                        ; preds = %sw.bb61
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !775
  %and65 = and i32 %26, 1048576, !dbg !775
  %cmp66 = icmp eq i32 %and65, 1048576, !dbg !775
  br i1 %cmp66, label %if.then67, label %if.end76, !dbg !775

if.then67:                                        ; preds = %if.then64
  %27 = load i32, i32* %pllvco, align 4, !dbg !776
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !777
  %and68 = and i32 %28, 240, !dbg !777
  %shr69 = lshr i32 %and68, 4, !dbg !778
  %add = add i32 %shr69, 1, !dbg !779
  %div = udiv i32 %27, %add, !dbg !780
  store i32 %div, i32* %pllvco, align 4, !dbg !781
  %29 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !782
  %and70 = and i32 %29, 32512, !dbg !782
  %shr71 = lshr i32 %and70, 8, !dbg !783
  store i32 %shr71, i32* %plln, align 4, !dbg !784
  %30 = load i32, i32* %pllvco, align 4, !dbg !785
  %31 = load i32, i32* %plln, align 4, !dbg !786
  %mul = mul i32 %30, %31, !dbg !787
  %32 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !788
  %and72 = and i32 %32, 6291456, !dbg !788
  %shr73 = lshr i32 %and72, 21, !dbg !789
  %add74 = add i32 %shr73, 1, !dbg !790
  %shl = shl i32 %add74, 1, !dbg !791
  %div75 = udiv i32 %mul, %shl, !dbg !792
  store i32 %div75, i32* %frequency, align 4, !dbg !793
  br label %if.end76, !dbg !794

if.end76:                                         ; preds = %if.then67, %if.then64
  br label %if.end77, !dbg !795

if.end77:                                         ; preds = %if.end76, %sw.bb61
  br label %sw.epilog106, !dbg !796

sw.bb78:                                          ; preds = %sw.bb43
  %33 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !797
  %and79 = and i32 %33, 134217728, !dbg !797
  %cmp80 = icmp eq i32 %and79, 134217728, !dbg !797
  br i1 %cmp80, label %if.then81, label %if.end99, !dbg !797

if.then81:                                        ; preds = %sw.bb78
  %34 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !798
  %and82 = and i32 %34, 1048576, !dbg !798
  %cmp83 = icmp eq i32 %and82, 1048576, !dbg !798
  br i1 %cmp83, label %if.then84, label %if.end98, !dbg !798

if.then84:                                        ; preds = %if.then81
  %call85 = call arm_aapcs_vfpcc i32 @RCCEx_PLLSAI1_GetVCOFreq(), !dbg !799
  store i32 %call85, i32* %pllvco, align 4, !dbg !800
  %35 = load i32, i32* %pllvco, align 4, !dbg !801
  %36 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !802
  %and86 = and i32 %36, 240, !dbg !802
  %shr87 = lshr i32 %and86, 4, !dbg !803
  %add88 = add i32 %shr87, 1, !dbg !804
  %div89 = udiv i32 %35, %add88, !dbg !805
  store i32 %div89, i32* %pllvco, align 4, !dbg !806
  %37 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !807
  %and90 = and i32 %37, 32512, !dbg !807
  %shr91 = lshr i32 %and90, 8, !dbg !808
  store i32 %shr91, i32* %plln, align 4, !dbg !809
  %38 = load i32, i32* %pllvco, align 4, !dbg !810
  %39 = load i32, i32* %plln, align 4, !dbg !811
  %mul92 = mul i32 %38, %39, !dbg !812
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !813
  %and93 = and i32 %40, 6291456, !dbg !813
  %shr94 = lshr i32 %and93, 21, !dbg !814
  %add95 = add i32 %shr94, 1, !dbg !815
  %shl96 = shl i32 %add95, 1, !dbg !816
  %div97 = udiv i32 %mul92, %shl96, !dbg !817
  store i32 %div97, i32* %frequency, align 4, !dbg !818
  br label %if.end98, !dbg !819

if.end98:                                         ; preds = %if.then84, %if.then81
  br label %if.end99, !dbg !820

if.end99:                                         ; preds = %if.end98, %sw.bb78
  br label %sw.epilog106, !dbg !821

sw.bb100:                                         ; preds = %sw.bb43
  %41 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !822
  %and101 = and i32 %41, 2, !dbg !822
  %cmp102 = icmp eq i32 %and101, 2, !dbg !822
  br i1 %cmp102, label %if.then103, label %if.end104, !dbg !822

if.then103:                                       ; preds = %sw.bb100
  store i32 48000000, i32* %frequency, align 4, !dbg !823
  br label %if.end104, !dbg !824

if.end104:                                        ; preds = %if.then103, %sw.bb100
  br label %sw.epilog106, !dbg !825

sw.default105:                                    ; preds = %sw.bb43
  br label %sw.epilog106, !dbg !826

sw.epilog106:                                     ; preds = %sw.default105, %if.end104, %if.end99, %if.end77, %if.end60
  br label %sw.epilog543, !dbg !827

sw.bb107:                                         ; preds = %sw.epilog39
  %42 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !828
  %and108 = and i32 %42, 16384, !dbg !828
  %cmp109 = icmp eq i32 %and108, 16384, !dbg !828
  br i1 %cmp109, label %if.then110, label %if.else137, !dbg !828

if.then110:                                       ; preds = %sw.bb107
  %43 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !829
  %and111 = and i32 %43, 33554432, !dbg !829
  %cmp112 = icmp eq i32 %and111, 33554432, !dbg !829
  br i1 %cmp112, label %if.then113, label %if.end136, !dbg !829

if.then113:                                       ; preds = %if.then110
  %44 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !830
  %and114 = and i32 %44, 65536, !dbg !830
  %cmp115 = icmp eq i32 %and114, 65536, !dbg !830
  br i1 %cmp115, label %if.then116, label %if.end135, !dbg !830

if.then116:                                       ; preds = %if.then113
  %45 = load i32, i32* %pllvco, align 4, !dbg !831
  %46 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !832
  %and117 = and i32 %46, 240, !dbg !832
  %shr118 = lshr i32 %and117, 4, !dbg !833
  %add119 = add i32 %shr118, 1, !dbg !834
  %div120 = udiv i32 %45, %add119, !dbg !835
  store i32 %div120, i32* %pllvco, align 4, !dbg !836
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !837
  %and121 = and i32 %47, 32512, !dbg !837
  %shr122 = lshr i32 %and121, 8, !dbg !838
  store i32 %shr122, i32* %plln, align 4, !dbg !839
  %48 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !840
  %and123 = and i32 %48, -134217728, !dbg !840
  %shr124 = lshr i32 %and123, 27, !dbg !841
  store i32 %shr124, i32* %pllp, align 4, !dbg !842
  %49 = load i32, i32* %pllp, align 4, !dbg !843
  %cmp125 = icmp eq i32 %49, 0, !dbg !844
  br i1 %cmp125, label %if.then126, label %if.end132, !dbg !843

if.then126:                                       ; preds = %if.then116
  %50 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !845
  %and127 = and i32 %50, 131072, !dbg !845
  %cmp128 = icmp ne i32 %and127, 0, !dbg !846
  br i1 %cmp128, label %if.then129, label %if.else130, !dbg !845

if.then129:                                       ; preds = %if.then126
  store i32 17, i32* %pllp, align 4, !dbg !847
  br label %if.end131, !dbg !848

if.else130:                                       ; preds = %if.then126
  store i32 7, i32* %pllp, align 4, !dbg !849
  br label %if.end131

if.end131:                                        ; preds = %if.else130, %if.then129
  br label %if.end132, !dbg !850

if.end132:                                        ; preds = %if.end131, %if.then116
  %51 = load i32, i32* %pllvco, align 4, !dbg !851
  %52 = load i32, i32* %plln, align 4, !dbg !852
  %mul133 = mul i32 %51, %52, !dbg !853
  %53 = load i32, i32* %pllp, align 4, !dbg !854
  %div134 = udiv i32 %mul133, %53, !dbg !855
  store i32 %div134, i32* %frequency, align 4, !dbg !856
  br label %if.end135, !dbg !857

if.end135:                                        ; preds = %if.end132, %if.then113
  br label %if.end136, !dbg !858

if.end136:                                        ; preds = %if.end135, %if.then110
  br label %if.end205, !dbg !859

if.else137:                                       ; preds = %sw.bb107
  %54 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !860
  %and138 = and i32 %54, 201326592, !dbg !860
  store i32 %and138, i32* %srcclk, align 4, !dbg !861
  %55 = load i32, i32* %srcclk, align 4, !dbg !862
  switch i32 %55, label %sw.default203 [
    i32 201326592, label %sw.bb139
    i32 134217728, label %sw.bb155
    i32 67108864, label %sw.bb176
    i32 0, label %sw.bb198
  ], !dbg !863

sw.bb139:                                         ; preds = %if.else137
  %56 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !864
  %and140 = and i32 %56, 2, !dbg !864
  %cmp141 = icmp eq i32 %and140, 2, !dbg !864
  br i1 %cmp141, label %if.then142, label %if.end154, !dbg !864

if.then142:                                       ; preds = %sw.bb139
  %57 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !865
  %and143 = and i32 %57, 8, !dbg !865
  %cmp144 = icmp ne i32 %and143, 0, !dbg !865
  br i1 %cmp144, label %cond.true145, label %cond.false147, !dbg !865

cond.true145:                                     ; preds = %if.then142
  %58 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !865
  %and146 = and i32 %58, 240, !dbg !865
  br label %cond.end150, !dbg !865

cond.false147:                                    ; preds = %if.then142
  %59 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !865
  %and148 = and i32 %59, 3840, !dbg !865
  %shr149 = lshr i32 %and148, 4, !dbg !865
  br label %cond.end150, !dbg !865

cond.end150:                                      ; preds = %cond.false147, %cond.true145
  %cond151 = phi i32 [ %and146, %cond.true145 ], [ %shr149, %cond.false147 ], !dbg !865
  %shr152 = lshr i32 %cond151, 4, !dbg !866
  %arrayidx153 = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %shr152, !dbg !867
  %60 = load i32, i32* %arrayidx153, align 4, !dbg !867
  store i32 %60, i32* %frequency, align 4, !dbg !868
  br label %if.end154, !dbg !869

if.end154:                                        ; preds = %cond.end150, %sw.bb139
  br label %sw.epilog204, !dbg !870

sw.bb155:                                         ; preds = %if.else137
  %61 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !871
  %and156 = and i32 %61, 33554432, !dbg !871
  %cmp157 = icmp eq i32 %and156, 33554432, !dbg !871
  br i1 %cmp157, label %if.then158, label %if.end175, !dbg !871

if.then158:                                       ; preds = %sw.bb155
  %62 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !872
  %and159 = and i32 %62, 1048576, !dbg !872
  %cmp160 = icmp eq i32 %and159, 1048576, !dbg !872
  br i1 %cmp160, label %if.then161, label %if.end174, !dbg !872

if.then161:                                       ; preds = %if.then158
  %63 = load i32, i32* %pllvco, align 4, !dbg !873
  %64 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !874
  %and162 = and i32 %64, 240, !dbg !874
  %shr163 = lshr i32 %and162, 4, !dbg !875
  %add164 = add i32 %shr163, 1, !dbg !876
  %div165 = udiv i32 %63, %add164, !dbg !877
  store i32 %div165, i32* %pllvco, align 4, !dbg !878
  %65 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !879
  %and166 = and i32 %65, 32512, !dbg !879
  %shr167 = lshr i32 %and166, 8, !dbg !880
  store i32 %shr167, i32* %plln, align 4, !dbg !881
  %66 = load i32, i32* %pllvco, align 4, !dbg !882
  %67 = load i32, i32* %plln, align 4, !dbg !883
  %mul168 = mul i32 %66, %67, !dbg !884
  %68 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !885
  %and169 = and i32 %68, 6291456, !dbg !885
  %shr170 = lshr i32 %and169, 21, !dbg !886
  %add171 = add i32 %shr170, 1, !dbg !887
  %shl172 = shl i32 %add171, 1, !dbg !888
  %div173 = udiv i32 %mul168, %shl172, !dbg !889
  store i32 %div173, i32* %frequency, align 4, !dbg !890
  br label %if.end174, !dbg !891

if.end174:                                        ; preds = %if.then161, %if.then158
  br label %if.end175, !dbg !892

if.end175:                                        ; preds = %if.end174, %sw.bb155
  br label %sw.epilog204, !dbg !893

sw.bb176:                                         ; preds = %if.else137
  %69 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !894
  %and177 = and i32 %69, 134217728, !dbg !894
  %cmp178 = icmp eq i32 %and177, 134217728, !dbg !894
  br i1 %cmp178, label %if.then179, label %if.end197, !dbg !894

if.then179:                                       ; preds = %sw.bb176
  %70 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !895
  %and180 = and i32 %70, 1048576, !dbg !895
  %cmp181 = icmp eq i32 %and180, 1048576, !dbg !895
  br i1 %cmp181, label %if.then182, label %if.end196, !dbg !895

if.then182:                                       ; preds = %if.then179
  %call183 = call arm_aapcs_vfpcc i32 @RCCEx_PLLSAI1_GetVCOFreq(), !dbg !896
  store i32 %call183, i32* %pllvco, align 4, !dbg !897
  %71 = load i32, i32* %pllvco, align 4, !dbg !898
  %72 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !899
  %and184 = and i32 %72, 240, !dbg !899
  %shr185 = lshr i32 %and184, 4, !dbg !900
  %add186 = add i32 %shr185, 1, !dbg !901
  %div187 = udiv i32 %71, %add186, !dbg !902
  store i32 %div187, i32* %pllvco, align 4, !dbg !903
  %73 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !904
  %and188 = and i32 %73, 32512, !dbg !904
  %shr189 = lshr i32 %and188, 8, !dbg !905
  store i32 %shr189, i32* %plln, align 4, !dbg !906
  %74 = load i32, i32* %pllvco, align 4, !dbg !907
  %75 = load i32, i32* %plln, align 4, !dbg !908
  %mul190 = mul i32 %74, %75, !dbg !909
  %76 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !910
  %and191 = and i32 %76, 6291456, !dbg !910
  %shr192 = lshr i32 %and191, 21, !dbg !911
  %add193 = add i32 %shr192, 1, !dbg !912
  %shl194 = shl i32 %add193, 1, !dbg !913
  %div195 = udiv i32 %mul190, %shl194, !dbg !914
  store i32 %div195, i32* %frequency, align 4, !dbg !915
  br label %if.end196, !dbg !916

if.end196:                                        ; preds = %if.then182, %if.then179
  br label %if.end197, !dbg !917

if.end197:                                        ; preds = %if.end196, %sw.bb176
  br label %sw.epilog204, !dbg !918

sw.bb198:                                         ; preds = %if.else137
  %77 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !919
  %and199 = and i32 %77, 2, !dbg !919
  %cmp200 = icmp eq i32 %and199, 2, !dbg !919
  br i1 %cmp200, label %if.then201, label %if.end202, !dbg !919

if.then201:                                       ; preds = %sw.bb198
  store i32 48000000, i32* %frequency, align 4, !dbg !920
  br label %if.end202, !dbg !921

if.end202:                                        ; preds = %if.then201, %sw.bb198
  br label %sw.epilog204, !dbg !922

sw.default203:                                    ; preds = %if.else137
  br label %sw.epilog204, !dbg !923

sw.epilog204:                                     ; preds = %sw.default203, %if.end202, %if.end197, %if.end175, %if.end154
  br label %if.end205

if.end205:                                        ; preds = %sw.epilog204, %if.end136
  br label %sw.epilog543, !dbg !924

sw.bb206:                                         ; preds = %sw.epilog39
  %78 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !925
  %and207 = and i32 %78, 3, !dbg !925
  store i32 %and207, i32* %srcclk, align 4, !dbg !926
  %79 = load i32, i32* %srcclk, align 4, !dbg !927
  switch i32 %79, label %sw.default222 [
    i32 0, label %sw.bb208
    i32 1, label %sw.bb210
    i32 2, label %sw.bb212
    i32 3, label %sw.bb217
  ], !dbg !928

sw.bb208:                                         ; preds = %sw.bb206
  %call209 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq(), !dbg !929
  store i32 %call209, i32* %frequency, align 4, !dbg !930
  br label %sw.epilog223, !dbg !931

sw.bb210:                                         ; preds = %sw.bb206
  %call211 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !932
  store i32 %call211, i32* %frequency, align 4, !dbg !933
  br label %sw.epilog223, !dbg !934

sw.bb212:                                         ; preds = %sw.bb206
  %80 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !935
  %and213 = and i32 %80, 1024, !dbg !935
  %cmp214 = icmp eq i32 %and213, 1024, !dbg !935
  br i1 %cmp214, label %if.then215, label %if.end216, !dbg !935

if.then215:                                       ; preds = %sw.bb212
  store i32 16000000, i32* %frequency, align 4, !dbg !936
  br label %if.end216, !dbg !937

if.end216:                                        ; preds = %if.then215, %sw.bb212
  br label %sw.epilog223, !dbg !938

sw.bb217:                                         ; preds = %sw.bb206
  %81 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !939
  %and218 = and i32 %81, 2, !dbg !939
  %cmp219 = icmp eq i32 %and218, 2, !dbg !939
  br i1 %cmp219, label %if.then220, label %if.end221, !dbg !939

if.then220:                                       ; preds = %sw.bb217
  store i32 32768, i32* %frequency, align 4, !dbg !940
  br label %if.end221, !dbg !941

if.end221:                                        ; preds = %if.then220, %sw.bb217
  br label %sw.epilog223, !dbg !942

sw.default222:                                    ; preds = %sw.bb206
  br label %sw.epilog223, !dbg !943

sw.epilog223:                                     ; preds = %sw.default222, %if.end221, %if.end216, %sw.bb210, %sw.bb208
  br label %sw.epilog543, !dbg !944

sw.bb224:                                         ; preds = %sw.epilog39
  %82 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !945
  %and225 = and i32 %82, 12, !dbg !945
  store i32 %and225, i32* %srcclk, align 4, !dbg !946
  %83 = load i32, i32* %srcclk, align 4, !dbg !947
  switch i32 %83, label %sw.default240 [
    i32 0, label %sw.bb226
    i32 4, label %sw.bb228
    i32 8, label %sw.bb230
    i32 12, label %sw.bb235
  ], !dbg !948

sw.bb226:                                         ; preds = %sw.bb224
  %call227 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !949
  store i32 %call227, i32* %frequency, align 4, !dbg !950
  br label %sw.epilog241, !dbg !951

sw.bb228:                                         ; preds = %sw.bb224
  %call229 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !952
  store i32 %call229, i32* %frequency, align 4, !dbg !953
  br label %sw.epilog241, !dbg !954

sw.bb230:                                         ; preds = %sw.bb224
  %84 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !955
  %and231 = and i32 %84, 1024, !dbg !955
  %cmp232 = icmp eq i32 %and231, 1024, !dbg !955
  br i1 %cmp232, label %if.then233, label %if.end234, !dbg !955

if.then233:                                       ; preds = %sw.bb230
  store i32 16000000, i32* %frequency, align 4, !dbg !956
  br label %if.end234, !dbg !957

if.end234:                                        ; preds = %if.then233, %sw.bb230
  br label %sw.epilog241, !dbg !958

sw.bb235:                                         ; preds = %sw.bb224
  %85 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !959
  %and236 = and i32 %85, 2, !dbg !959
  %cmp237 = icmp eq i32 %and236, 2, !dbg !959
  br i1 %cmp237, label %if.then238, label %if.end239, !dbg !959

if.then238:                                       ; preds = %sw.bb235
  store i32 32768, i32* %frequency, align 4, !dbg !960
  br label %if.end239, !dbg !961

if.end239:                                        ; preds = %if.then238, %sw.bb235
  br label %sw.epilog241, !dbg !962

sw.default240:                                    ; preds = %sw.bb224
  br label %sw.epilog241, !dbg !963

sw.epilog241:                                     ; preds = %sw.default240, %if.end239, %if.end234, %sw.bb228, %sw.bb226
  br label %sw.epilog543, !dbg !964

sw.bb242:                                         ; preds = %sw.epilog39
  %86 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !965
  %and243 = and i32 %86, 48, !dbg !965
  store i32 %and243, i32* %srcclk, align 4, !dbg !966
  %87 = load i32, i32* %srcclk, align 4, !dbg !967
  switch i32 %87, label %sw.default258 [
    i32 0, label %sw.bb244
    i32 16, label %sw.bb246
    i32 32, label %sw.bb248
    i32 48, label %sw.bb253
  ], !dbg !968

sw.bb244:                                         ; preds = %sw.bb242
  %call245 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !969
  store i32 %call245, i32* %frequency, align 4, !dbg !970
  br label %sw.epilog259, !dbg !971

sw.bb246:                                         ; preds = %sw.bb242
  %call247 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !972
  store i32 %call247, i32* %frequency, align 4, !dbg !973
  br label %sw.epilog259, !dbg !974

sw.bb248:                                         ; preds = %sw.bb242
  %88 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !975
  %and249 = and i32 %88, 1024, !dbg !975
  %cmp250 = icmp eq i32 %and249, 1024, !dbg !975
  br i1 %cmp250, label %if.then251, label %if.end252, !dbg !975

if.then251:                                       ; preds = %sw.bb248
  store i32 16000000, i32* %frequency, align 4, !dbg !976
  br label %if.end252, !dbg !977

if.end252:                                        ; preds = %if.then251, %sw.bb248
  br label %sw.epilog259, !dbg !978

sw.bb253:                                         ; preds = %sw.bb242
  %89 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !979
  %and254 = and i32 %89, 2, !dbg !979
  %cmp255 = icmp eq i32 %and254, 2, !dbg !979
  br i1 %cmp255, label %if.then256, label %if.end257, !dbg !979

if.then256:                                       ; preds = %sw.bb253
  store i32 32768, i32* %frequency, align 4, !dbg !980
  br label %if.end257, !dbg !981

if.end257:                                        ; preds = %if.then256, %sw.bb253
  br label %sw.epilog259, !dbg !982

sw.default258:                                    ; preds = %sw.bb242
  br label %sw.epilog259, !dbg !983

sw.epilog259:                                     ; preds = %sw.default258, %if.end257, %if.end252, %sw.bb246, %sw.bb244
  br label %sw.epilog543, !dbg !984

sw.bb260:                                         ; preds = %sw.epilog39
  %90 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !985
  %and261 = and i32 %90, 192, !dbg !985
  store i32 %and261, i32* %srcclk, align 4, !dbg !986
  %91 = load i32, i32* %srcclk, align 4, !dbg !987
  switch i32 %91, label %sw.default276 [
    i32 0, label %sw.bb262
    i32 64, label %sw.bb264
    i32 128, label %sw.bb266
    i32 192, label %sw.bb271
  ], !dbg !988

sw.bb262:                                         ; preds = %sw.bb260
  %call263 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !989
  store i32 %call263, i32* %frequency, align 4, !dbg !990
  br label %sw.epilog277, !dbg !991

sw.bb264:                                         ; preds = %sw.bb260
  %call265 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !992
  store i32 %call265, i32* %frequency, align 4, !dbg !993
  br label %sw.epilog277, !dbg !994

sw.bb266:                                         ; preds = %sw.bb260
  %92 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !995
  %and267 = and i32 %92, 1024, !dbg !995
  %cmp268 = icmp eq i32 %and267, 1024, !dbg !995
  br i1 %cmp268, label %if.then269, label %if.end270, !dbg !995

if.then269:                                       ; preds = %sw.bb266
  store i32 16000000, i32* %frequency, align 4, !dbg !996
  br label %if.end270, !dbg !997

if.end270:                                        ; preds = %if.then269, %sw.bb266
  br label %sw.epilog277, !dbg !998

sw.bb271:                                         ; preds = %sw.bb260
  %93 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !999
  %and272 = and i32 %93, 2, !dbg !999
  %cmp273 = icmp eq i32 %and272, 2, !dbg !999
  br i1 %cmp273, label %if.then274, label %if.end275, !dbg !999

if.then274:                                       ; preds = %sw.bb271
  store i32 32768, i32* %frequency, align 4, !dbg !1000
  br label %if.end275, !dbg !1001

if.end275:                                        ; preds = %if.then274, %sw.bb271
  br label %sw.epilog277, !dbg !1002

sw.default276:                                    ; preds = %sw.bb260
  br label %sw.epilog277, !dbg !1003

sw.epilog277:                                     ; preds = %sw.default276, %if.end275, %if.end270, %sw.bb264, %sw.bb262
  br label %sw.epilog543, !dbg !1004

sw.bb278:                                         ; preds = %sw.epilog39
  %94 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1005
  %and279 = and i32 %94, 768, !dbg !1005
  store i32 %and279, i32* %srcclk, align 4, !dbg !1006
  %95 = load i32, i32* %srcclk, align 4, !dbg !1007
  switch i32 %95, label %sw.default294 [
    i32 0, label %sw.bb280
    i32 256, label %sw.bb282
    i32 512, label %sw.bb284
    i32 768, label %sw.bb289
  ], !dbg !1008

sw.bb280:                                         ; preds = %sw.bb278
  %call281 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1009
  store i32 %call281, i32* %frequency, align 4, !dbg !1010
  br label %sw.epilog295, !dbg !1011

sw.bb282:                                         ; preds = %sw.bb278
  %call283 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1012
  store i32 %call283, i32* %frequency, align 4, !dbg !1013
  br label %sw.epilog295, !dbg !1014

sw.bb284:                                         ; preds = %sw.bb278
  %96 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1015
  %and285 = and i32 %96, 1024, !dbg !1015
  %cmp286 = icmp eq i32 %and285, 1024, !dbg !1015
  br i1 %cmp286, label %if.then287, label %if.end288, !dbg !1015

if.then287:                                       ; preds = %sw.bb284
  store i32 16000000, i32* %frequency, align 4, !dbg !1016
  br label %if.end288, !dbg !1017

if.end288:                                        ; preds = %if.then287, %sw.bb284
  br label %sw.epilog295, !dbg !1018

sw.bb289:                                         ; preds = %sw.bb278
  %97 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1019
  %and290 = and i32 %97, 2, !dbg !1019
  %cmp291 = icmp eq i32 %and290, 2, !dbg !1019
  br i1 %cmp291, label %if.then292, label %if.end293, !dbg !1019

if.then292:                                       ; preds = %sw.bb289
  store i32 32768, i32* %frequency, align 4, !dbg !1020
  br label %if.end293, !dbg !1021

if.end293:                                        ; preds = %if.then292, %sw.bb289
  br label %sw.epilog295, !dbg !1022

sw.default294:                                    ; preds = %sw.bb278
  br label %sw.epilog295, !dbg !1023

sw.epilog295:                                     ; preds = %sw.default294, %if.end293, %if.end288, %sw.bb282, %sw.bb280
  br label %sw.epilog543, !dbg !1024

sw.bb296:                                         ; preds = %sw.epilog39
  %98 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1025
  %and297 = and i32 %98, 3072, !dbg !1025
  store i32 %and297, i32* %srcclk, align 4, !dbg !1026
  %99 = load i32, i32* %srcclk, align 4, !dbg !1027
  switch i32 %99, label %sw.default312 [
    i32 0, label %sw.bb298
    i32 1024, label %sw.bb300
    i32 2048, label %sw.bb302
    i32 3072, label %sw.bb307
  ], !dbg !1028

sw.bb298:                                         ; preds = %sw.bb296
  %call299 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1029
  store i32 %call299, i32* %frequency, align 4, !dbg !1030
  br label %sw.epilog313, !dbg !1031

sw.bb300:                                         ; preds = %sw.bb296
  %call301 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1032
  store i32 %call301, i32* %frequency, align 4, !dbg !1033
  br label %sw.epilog313, !dbg !1034

sw.bb302:                                         ; preds = %sw.bb296
  %100 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1035
  %and303 = and i32 %100, 1024, !dbg !1035
  %cmp304 = icmp eq i32 %and303, 1024, !dbg !1035
  br i1 %cmp304, label %if.then305, label %if.end306, !dbg !1035

if.then305:                                       ; preds = %sw.bb302
  store i32 16000000, i32* %frequency, align 4, !dbg !1036
  br label %if.end306, !dbg !1037

if.end306:                                        ; preds = %if.then305, %sw.bb302
  br label %sw.epilog313, !dbg !1038

sw.bb307:                                         ; preds = %sw.bb296
  %101 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1039
  %and308 = and i32 %101, 2, !dbg !1039
  %cmp309 = icmp eq i32 %and308, 2, !dbg !1039
  br i1 %cmp309, label %if.then310, label %if.end311, !dbg !1039

if.then310:                                       ; preds = %sw.bb307
  store i32 32768, i32* %frequency, align 4, !dbg !1040
  br label %if.end311, !dbg !1041

if.end311:                                        ; preds = %if.then310, %sw.bb307
  br label %sw.epilog313, !dbg !1042

sw.default312:                                    ; preds = %sw.bb296
  br label %sw.epilog313, !dbg !1043

sw.epilog313:                                     ; preds = %sw.default312, %if.end311, %if.end306, %sw.bb300, %sw.bb298
  br label %sw.epilog543, !dbg !1044

sw.bb314:                                         ; preds = %sw.epilog39
  %102 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1045
  %and315 = and i32 %102, 805306368, !dbg !1045
  store i32 %and315, i32* %srcclk, align 4, !dbg !1046
  %103 = load i32, i32* %srcclk, align 4, !dbg !1047
  switch i32 %103, label %sw.default336 [
    i32 805306368, label %sw.bb316
    i32 268435456, label %sw.bb318
  ], !dbg !1048

sw.bb316:                                         ; preds = %sw.bb314
  %call317 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1049
  store i32 %call317, i32* %frequency, align 4, !dbg !1050
  br label %sw.epilog337, !dbg !1051

sw.bb318:                                         ; preds = %sw.bb314
  %104 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1052
  %and319 = and i32 %104, 16777216, !dbg !1052
  %cmp320 = icmp ne i32 %and319, 0, !dbg !1053
  br i1 %cmp320, label %if.then321, label %if.end335, !dbg !1052

if.then321:                                       ; preds = %sw.bb318
  %call322 = call arm_aapcs_vfpcc i32 @RCCEx_PLLSAI1_GetVCOFreq(), !dbg !1054
  store i32 %call322, i32* %pllvco, align 4, !dbg !1055
  %105 = load i32, i32* %pllvco, align 4, !dbg !1056
  %106 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1057
  %and323 = and i32 %106, 240, !dbg !1057
  %shr324 = lshr i32 %and323, 4, !dbg !1058
  %add325 = add i32 %shr324, 1, !dbg !1059
  %div326 = udiv i32 %105, %add325, !dbg !1060
  store i32 %div326, i32* %pllvco, align 4, !dbg !1061
  %107 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1062
  %and327 = and i32 %107, 32512, !dbg !1062
  %shr328 = lshr i32 %and327, 8, !dbg !1063
  store i32 %shr328, i32* %plln, align 4, !dbg !1064
  %108 = load i32, i32* %pllvco, align 4, !dbg !1065
  %109 = load i32, i32* %plln, align 4, !dbg !1066
  %mul329 = mul i32 %108, %109, !dbg !1067
  %110 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1068
  %and330 = and i32 %110, 100663296, !dbg !1068
  %shr331 = lshr i32 %and330, 25, !dbg !1069
  %add332 = add i32 %shr331, 1, !dbg !1070
  %shl333 = shl i32 %add332, 1, !dbg !1071
  %div334 = udiv i32 %mul329, %shl333, !dbg !1072
  store i32 %div334, i32* %frequency, align 4, !dbg !1073
  br label %if.end335, !dbg !1074

if.end335:                                        ; preds = %if.then321, %sw.bb318
  br label %sw.epilog337, !dbg !1075

sw.default336:                                    ; preds = %sw.bb314
  br label %sw.epilog337, !dbg !1076

sw.epilog337:                                     ; preds = %sw.default336, %if.end335, %sw.bb316
  br label %sw.epilog543, !dbg !1077

sw.bb338:                                         ; preds = %sw.epilog39
  %111 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !1078
  %and339 = and i32 %111, 4, !dbg !1078
  store i32 %and339, i32* %srcclk, align 4, !dbg !1079
  %112 = load i32, i32* %srcclk, align 4, !dbg !1080
  %cmp340 = icmp eq i32 %112, 0, !dbg !1081
  br i1 %cmp340, label %if.then341, label %if.else343, !dbg !1080

if.then341:                                       ; preds = %sw.bb338
  %call342 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq(), !dbg !1082
  store i32 %call342, i32* %frequency, align 4, !dbg !1083
  br label %if.end345, !dbg !1084

if.else343:                                       ; preds = %sw.bb338
  %call344 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1085
  store i32 %call344, i32* %frequency, align 4, !dbg !1086
  br label %if.end345

if.end345:                                        ; preds = %if.else343, %if.then341
  br label %sw.epilog543, !dbg !1087

sw.bb346:                                         ; preds = %sw.epilog39
  %113 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !1088
  %and347 = and i32 %113, 24, !dbg !1088
  store i32 %and347, i32* %srcclk, align 4, !dbg !1089
  %114 = load i32, i32* %srcclk, align 4, !dbg !1090
  switch i32 %114, label %sw.default371 [
    i32 0, label %sw.bb348
    i32 16, label %sw.bb350
    i32 8, label %sw.bb366
  ], !dbg !1091

sw.bb348:                                         ; preds = %sw.bb346
  %115 = load i32, i32* %pllvco, align 4, !dbg !1092
  %call349 = call arm_aapcs_vfpcc i32 @RCCEx_GetSAIxPeriphCLKFreq(i32 2048, i32 %115), !dbg !1093
  store i32 %call349, i32* %frequency, align 4, !dbg !1094
  br label %sw.epilog372, !dbg !1095

sw.bb350:                                         ; preds = %sw.bb346
  %116 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1096
  %and351 = and i32 %116, 2, !dbg !1096
  %cmp352 = icmp eq i32 %and351, 2, !dbg !1096
  br i1 %cmp352, label %if.then353, label %if.end365, !dbg !1096

if.then353:                                       ; preds = %sw.bb350
  %117 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1097
  %and354 = and i32 %117, 8, !dbg !1097
  %cmp355 = icmp ne i32 %and354, 0, !dbg !1097
  br i1 %cmp355, label %cond.true356, label %cond.false358, !dbg !1097

cond.true356:                                     ; preds = %if.then353
  %118 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1097
  %and357 = and i32 %118, 240, !dbg !1097
  br label %cond.end361, !dbg !1097

cond.false358:                                    ; preds = %if.then353
  %119 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1097
  %and359 = and i32 %119, 3840, !dbg !1097
  %shr360 = lshr i32 %and359, 4, !dbg !1097
  br label %cond.end361, !dbg !1097

cond.end361:                                      ; preds = %cond.false358, %cond.true356
  %cond362 = phi i32 [ %and357, %cond.true356 ], [ %shr360, %cond.false358 ], !dbg !1097
  %shr363 = lshr i32 %cond362, 4, !dbg !1098
  %arrayidx364 = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %shr363, !dbg !1099
  %120 = load i32, i32* %arrayidx364, align 4, !dbg !1099
  store i32 %120, i32* %frequency, align 4, !dbg !1100
  br label %if.end365, !dbg !1101

if.end365:                                        ; preds = %cond.end361, %sw.bb350
  br label %sw.epilog372, !dbg !1102

sw.bb366:                                         ; preds = %sw.bb346
  %121 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1103
  %and367 = and i32 %121, 1024, !dbg !1103
  %cmp368 = icmp eq i32 %and367, 1024, !dbg !1103
  br i1 %cmp368, label %if.then369, label %if.end370, !dbg !1103

if.then369:                                       ; preds = %sw.bb366
  store i32 16000000, i32* %frequency, align 4, !dbg !1104
  br label %if.end370, !dbg !1105

if.end370:                                        ; preds = %if.then369, %sw.bb366
  br label %sw.epilog372, !dbg !1106

sw.default371:                                    ; preds = %sw.bb346
  br label %sw.epilog372, !dbg !1107

sw.epilog372:                                     ; preds = %sw.default371, %if.end370, %if.end365, %sw.bb348
  br label %sw.epilog543, !dbg !1108

sw.bb373:                                         ; preds = %sw.epilog39
  %122 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1109
  %and374 = and i32 %122, 12288, !dbg !1109
  store i32 %and374, i32* %srcclk, align 4, !dbg !1110
  %123 = load i32, i32* %srcclk, align 4, !dbg !1111
  switch i32 %123, label %sw.default384 [
    i32 0, label %sw.bb375
    i32 4096, label %sw.bb377
    i32 8192, label %sw.bb379
  ], !dbg !1112

sw.bb375:                                         ; preds = %sw.bb373
  %call376 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1113
  store i32 %call376, i32* %frequency, align 4, !dbg !1114
  br label %sw.epilog385, !dbg !1115

sw.bb377:                                         ; preds = %sw.bb373
  %call378 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1116
  store i32 %call378, i32* %frequency, align 4, !dbg !1117
  br label %sw.epilog385, !dbg !1118

sw.bb379:                                         ; preds = %sw.bb373
  %124 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1119
  %and380 = and i32 %124, 1024, !dbg !1119
  %cmp381 = icmp eq i32 %and380, 1024, !dbg !1119
  br i1 %cmp381, label %if.then382, label %if.end383, !dbg !1119

if.then382:                                       ; preds = %sw.bb379
  store i32 16000000, i32* %frequency, align 4, !dbg !1120
  br label %if.end383, !dbg !1121

if.end383:                                        ; preds = %if.then382, %sw.bb379
  br label %sw.epilog385, !dbg !1122

sw.default384:                                    ; preds = %sw.bb373
  br label %sw.epilog385, !dbg !1123

sw.epilog385:                                     ; preds = %sw.default384, %if.end383, %sw.bb377, %sw.bb375
  br label %sw.epilog543, !dbg !1124

sw.bb386:                                         ; preds = %sw.epilog39
  %125 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1125
  %and387 = and i32 %125, 49152, !dbg !1125
  store i32 %and387, i32* %srcclk, align 4, !dbg !1126
  %126 = load i32, i32* %srcclk, align 4, !dbg !1127
  switch i32 %126, label %sw.default397 [
    i32 0, label %sw.bb388
    i32 16384, label %sw.bb390
    i32 32768, label %sw.bb392
  ], !dbg !1128

sw.bb388:                                         ; preds = %sw.bb386
  %call389 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1129
  store i32 %call389, i32* %frequency, align 4, !dbg !1130
  br label %sw.epilog398, !dbg !1131

sw.bb390:                                         ; preds = %sw.bb386
  %call391 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1132
  store i32 %call391, i32* %frequency, align 4, !dbg !1133
  br label %sw.epilog398, !dbg !1134

sw.bb392:                                         ; preds = %sw.bb386
  %127 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1135
  %and393 = and i32 %127, 1024, !dbg !1135
  %cmp394 = icmp eq i32 %and393, 1024, !dbg !1135
  br i1 %cmp394, label %if.then395, label %if.end396, !dbg !1135

if.then395:                                       ; preds = %sw.bb392
  store i32 16000000, i32* %frequency, align 4, !dbg !1136
  br label %if.end396, !dbg !1137

if.end396:                                        ; preds = %if.then395, %sw.bb392
  br label %sw.epilog398, !dbg !1138

sw.default397:                                    ; preds = %sw.bb386
  br label %sw.epilog398, !dbg !1139

sw.epilog398:                                     ; preds = %sw.default397, %if.end396, %sw.bb390, %sw.bb388
  br label %sw.epilog543, !dbg !1140

sw.bb399:                                         ; preds = %sw.epilog39
  %128 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1141
  %and400 = and i32 %128, 196608, !dbg !1141
  store i32 %and400, i32* %srcclk, align 4, !dbg !1142
  %129 = load i32, i32* %srcclk, align 4, !dbg !1143
  switch i32 %129, label %sw.default410 [
    i32 0, label %sw.bb401
    i32 65536, label %sw.bb403
    i32 131072, label %sw.bb405
  ], !dbg !1144

sw.bb401:                                         ; preds = %sw.bb399
  %call402 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1145
  store i32 %call402, i32* %frequency, align 4, !dbg !1146
  br label %sw.epilog411, !dbg !1147

sw.bb403:                                         ; preds = %sw.bb399
  %call404 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1148
  store i32 %call404, i32* %frequency, align 4, !dbg !1149
  br label %sw.epilog411, !dbg !1150

sw.bb405:                                         ; preds = %sw.bb399
  %130 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1151
  %and406 = and i32 %130, 1024, !dbg !1151
  %cmp407 = icmp eq i32 %and406, 1024, !dbg !1151
  br i1 %cmp407, label %if.then408, label %if.end409, !dbg !1151

if.then408:                                       ; preds = %sw.bb405
  store i32 16000000, i32* %frequency, align 4, !dbg !1152
  br label %if.end409, !dbg !1153

if.end409:                                        ; preds = %if.then408, %sw.bb405
  br label %sw.epilog411, !dbg !1154

sw.default410:                                    ; preds = %sw.bb399
  br label %sw.epilog411, !dbg !1155

sw.epilog411:                                     ; preds = %sw.default410, %if.end409, %sw.bb403, %sw.bb401
  br label %sw.epilog543, !dbg !1156

sw.bb412:                                         ; preds = %sw.epilog39
  %131 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !1157
  %and413 = and i32 %131, 3, !dbg !1157
  store i32 %and413, i32* %srcclk, align 4, !dbg !1158
  %132 = load i32, i32* %srcclk, align 4, !dbg !1159
  switch i32 %132, label %sw.default423 [
    i32 0, label %sw.bb414
    i32 1, label %sw.bb416
    i32 2, label %sw.bb418
  ], !dbg !1160

sw.bb414:                                         ; preds = %sw.bb412
  %call415 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1161
  store i32 %call415, i32* %frequency, align 4, !dbg !1162
  br label %sw.epilog424, !dbg !1163

sw.bb416:                                         ; preds = %sw.bb412
  %call417 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !1164
  store i32 %call417, i32* %frequency, align 4, !dbg !1165
  br label %sw.epilog424, !dbg !1166

sw.bb418:                                         ; preds = %sw.bb412
  %133 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1167
  %and419 = and i32 %133, 1024, !dbg !1167
  %cmp420 = icmp eq i32 %and419, 1024, !dbg !1167
  br i1 %cmp420, label %if.then421, label %if.end422, !dbg !1167

if.then421:                                       ; preds = %sw.bb418
  store i32 16000000, i32* %frequency, align 4, !dbg !1168
  br label %if.end422, !dbg !1169

if.end422:                                        ; preds = %if.then421, %sw.bb418
  br label %sw.epilog424, !dbg !1170

sw.default423:                                    ; preds = %sw.bb412
  br label %sw.epilog424, !dbg !1171

sw.epilog424:                                     ; preds = %sw.default423, %if.end422, %sw.bb416, %sw.bb414
  br label %sw.epilog543, !dbg !1172

sw.bb425:                                         ; preds = %sw.epilog39
  %134 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1173
  %and426 = and i32 %134, 786432, !dbg !1173
  store i32 %and426, i32* %srcclk, align 4, !dbg !1174
  %135 = load i32, i32* %srcclk, align 4, !dbg !1175
  switch i32 %135, label %sw.default444 [
    i32 0, label %sw.bb427
    i32 262144, label %sw.bb429
    i32 524288, label %sw.bb434
    i32 786432, label %sw.bb439
  ], !dbg !1176

sw.bb427:                                         ; preds = %sw.bb425
  %call428 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1177
  store i32 %call428, i32* %frequency, align 4, !dbg !1178
  br label %sw.epilog445, !dbg !1179

sw.bb429:                                         ; preds = %sw.bb425
  %136 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1180
  %and430 = and i32 %136, 2, !dbg !1180
  %cmp431 = icmp eq i32 %and430, 2, !dbg !1180
  br i1 %cmp431, label %if.then432, label %if.end433, !dbg !1180

if.then432:                                       ; preds = %sw.bb429
  store i32 32000, i32* %frequency, align 4, !dbg !1181
  br label %if.end433, !dbg !1182

if.end433:                                        ; preds = %if.then432, %sw.bb429
  br label %sw.epilog445, !dbg !1183

sw.bb434:                                         ; preds = %sw.bb425
  %137 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1184
  %and435 = and i32 %137, 1024, !dbg !1184
  %cmp436 = icmp eq i32 %and435, 1024, !dbg !1184
  br i1 %cmp436, label %if.then437, label %if.end438, !dbg !1184

if.then437:                                       ; preds = %sw.bb434
  store i32 16000000, i32* %frequency, align 4, !dbg !1185
  br label %if.end438, !dbg !1186

if.end438:                                        ; preds = %if.then437, %sw.bb434
  br label %sw.epilog445, !dbg !1187

sw.bb439:                                         ; preds = %sw.bb425
  %138 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1188
  %and440 = and i32 %138, 2, !dbg !1188
  %cmp441 = icmp eq i32 %and440, 2, !dbg !1188
  br i1 %cmp441, label %if.then442, label %if.end443, !dbg !1188

if.then442:                                       ; preds = %sw.bb439
  store i32 32768, i32* %frequency, align 4, !dbg !1189
  br label %if.end443, !dbg !1190

if.end443:                                        ; preds = %if.then442, %sw.bb439
  br label %sw.epilog445, !dbg !1191

sw.default444:                                    ; preds = %sw.bb425
  br label %sw.epilog445, !dbg !1192

sw.epilog445:                                     ; preds = %sw.default444, %if.end443, %if.end438, %if.end433, %sw.bb427
  br label %sw.epilog543, !dbg !1193

sw.bb446:                                         ; preds = %sw.epilog39
  %139 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1194
  %and447 = and i32 %139, 3145728, !dbg !1194
  store i32 %and447, i32* %srcclk, align 4, !dbg !1195
  %140 = load i32, i32* %srcclk, align 4, !dbg !1196
  switch i32 %140, label %sw.default465 [
    i32 0, label %sw.bb448
    i32 1048576, label %sw.bb450
    i32 2097152, label %sw.bb455
    i32 3145728, label %sw.bb460
  ], !dbg !1197

sw.bb448:                                         ; preds = %sw.bb446
  %call449 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1198
  store i32 %call449, i32* %frequency, align 4, !dbg !1199
  br label %sw.epilog466, !dbg !1200

sw.bb450:                                         ; preds = %sw.bb446
  %141 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1201
  %and451 = and i32 %141, 2, !dbg !1201
  %cmp452 = icmp eq i32 %and451, 2, !dbg !1201
  br i1 %cmp452, label %if.then453, label %if.end454, !dbg !1201

if.then453:                                       ; preds = %sw.bb450
  store i32 32000, i32* %frequency, align 4, !dbg !1202
  br label %if.end454, !dbg !1203

if.end454:                                        ; preds = %if.then453, %sw.bb450
  br label %sw.epilog466, !dbg !1204

sw.bb455:                                         ; preds = %sw.bb446
  %142 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1205
  %and456 = and i32 %142, 1024, !dbg !1205
  %cmp457 = icmp eq i32 %and456, 1024, !dbg !1205
  br i1 %cmp457, label %if.then458, label %if.end459, !dbg !1205

if.then458:                                       ; preds = %sw.bb455
  store i32 16000000, i32* %frequency, align 4, !dbg !1206
  br label %if.end459, !dbg !1207

if.end459:                                        ; preds = %if.then458, %sw.bb455
  br label %sw.epilog466, !dbg !1208

sw.bb460:                                         ; preds = %sw.bb446
  %143 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1209
  %and461 = and i32 %143, 2, !dbg !1209
  %cmp462 = icmp eq i32 %and461, 2, !dbg !1209
  br i1 %cmp462, label %if.then463, label %if.end464, !dbg !1209

if.then463:                                       ; preds = %sw.bb460
  store i32 32768, i32* %frequency, align 4, !dbg !1210
  br label %if.end464, !dbg !1211

if.end464:                                        ; preds = %if.then463, %sw.bb460
  br label %sw.epilog466, !dbg !1212

sw.default465:                                    ; preds = %sw.bb446
  br label %sw.epilog466, !dbg !1213

sw.epilog466:                                     ; preds = %sw.default465, %if.end464, %if.end459, %if.end454, %sw.bb448
  br label %sw.epilog543, !dbg !1214

sw.bb467:                                         ; preds = %sw.epilog39
  %144 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1215
  %and468 = and i32 %144, 12582912, !dbg !1215
  store i32 %and468, i32* %srcclk, align 4, !dbg !1216
  %145 = load i32, i32* %srcclk, align 4, !dbg !1217
  switch i32 %145, label %sw.default486 [
    i32 0, label %sw.bb469
    i32 4194304, label %sw.bb471
    i32 8388608, label %sw.bb476
    i32 12582912, label %sw.bb481
  ], !dbg !1218

sw.bb469:                                         ; preds = %sw.bb467
  %call470 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !1219
  store i32 %call470, i32* %frequency, align 4, !dbg !1220
  br label %sw.epilog487, !dbg !1221

sw.bb471:                                         ; preds = %sw.bb467
  %146 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1222
  %and472 = and i32 %146, 2, !dbg !1222
  %cmp473 = icmp eq i32 %and472, 2, !dbg !1222
  br i1 %cmp473, label %if.then474, label %if.end475, !dbg !1222

if.then474:                                       ; preds = %sw.bb471
  store i32 32000, i32* %frequency, align 4, !dbg !1223
  br label %if.end475, !dbg !1224

if.end475:                                        ; preds = %if.then474, %sw.bb471
  br label %sw.epilog487, !dbg !1225

sw.bb476:                                         ; preds = %sw.bb467
  %147 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1226
  %and477 = and i32 %147, 1024, !dbg !1226
  %cmp478 = icmp eq i32 %and477, 1024, !dbg !1226
  br i1 %cmp478, label %if.then479, label %if.end480, !dbg !1226

if.then479:                                       ; preds = %sw.bb476
  store i32 16000000, i32* %frequency, align 4, !dbg !1227
  br label %if.end480, !dbg !1228

if.end480:                                        ; preds = %if.then479, %sw.bb476
  br label %sw.epilog487, !dbg !1229

sw.bb481:                                         ; preds = %sw.bb467
  %148 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1230
  %and482 = and i32 %148, 2, !dbg !1230
  %cmp483 = icmp eq i32 %and482, 2, !dbg !1230
  br i1 %cmp483, label %if.then484, label %if.end485, !dbg !1230

if.then484:                                       ; preds = %sw.bb481
  store i32 32768, i32* %frequency, align 4, !dbg !1231
  br label %if.end485, !dbg !1232

if.end485:                                        ; preds = %if.then484, %sw.bb481
  br label %sw.epilog487, !dbg !1233

sw.default486:                                    ; preds = %sw.bb467
  br label %sw.epilog487, !dbg !1234

sw.epilog487:                                     ; preds = %sw.default486, %if.end485, %if.end480, %if.end475, %sw.bb469
  br label %sw.epilog543, !dbg !1235

sw.bb488:                                         ; preds = %sw.epilog39
  %149 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !1236
  %and489 = and i32 %149, 50331648, !dbg !1236
  store i32 %and489, i32* %srcclk, align 4, !dbg !1237
  %150 = load i32, i32* %srcclk, align 4, !dbg !1238
  switch i32 %150, label %sw.default540 [
    i32 0, label %sw.bb490
    i32 16777216, label %sw.bb495
    i32 33554432, label %sw.bb516
  ], !dbg !1239

sw.bb490:                                         ; preds = %sw.bb488
  %151 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1240
  %and491 = and i32 %151, 131072, !dbg !1240
  %cmp492 = icmp eq i32 %and491, 131072, !dbg !1240
  br i1 %cmp492, label %if.then493, label %if.end494, !dbg !1240

if.then493:                                       ; preds = %sw.bb490
  store i32 8000000, i32* %frequency, align 4, !dbg !1241
  br label %if.end494, !dbg !1242

if.end494:                                        ; preds = %if.then493, %sw.bb490
  br label %sw.epilog541, !dbg !1243

sw.bb495:                                         ; preds = %sw.bb488
  %152 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1244
  %and496 = and i32 %152, 33554432, !dbg !1244
  %cmp497 = icmp eq i32 %and496, 33554432, !dbg !1244
  br i1 %cmp497, label %if.then498, label %if.end515, !dbg !1244

if.then498:                                       ; preds = %sw.bb495
  %153 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1245
  %and499 = and i32 %153, 1048576, !dbg !1245
  %cmp500 = icmp eq i32 %and499, 1048576, !dbg !1245
  br i1 %cmp500, label %if.then501, label %if.end514, !dbg !1245

if.then501:                                       ; preds = %if.then498
  %154 = load i32, i32* %pllvco, align 4, !dbg !1246
  %155 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1247
  %and502 = and i32 %155, 240, !dbg !1247
  %shr503 = lshr i32 %and502, 4, !dbg !1248
  %add504 = add i32 %shr503, 1, !dbg !1249
  %div505 = udiv i32 %154, %add504, !dbg !1250
  store i32 %div505, i32* %pllvco, align 4, !dbg !1251
  %156 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1252
  %and506 = and i32 %156, 32512, !dbg !1252
  %shr507 = lshr i32 %and506, 8, !dbg !1253
  store i32 %shr507, i32* %plln, align 4, !dbg !1254
  %157 = load i32, i32* %pllvco, align 4, !dbg !1255
  %158 = load i32, i32* %plln, align 4, !dbg !1256
  %mul508 = mul i32 %157, %158, !dbg !1257
  %159 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1258
  %and509 = and i32 %159, 6291456, !dbg !1258
  %shr510 = lshr i32 %and509, 21, !dbg !1259
  %add511 = add i32 %shr510, 1, !dbg !1260
  %shl512 = shl i32 %add511, 1, !dbg !1261
  %div513 = udiv i32 %mul508, %shl512, !dbg !1262
  store i32 %div513, i32* %frequency, align 4, !dbg !1263
  br label %if.end514, !dbg !1264

if.end514:                                        ; preds = %if.then501, %if.then498
  br label %if.end515, !dbg !1265

if.end515:                                        ; preds = %if.end514, %sw.bb495
  br label %sw.epilog541, !dbg !1266

sw.bb516:                                         ; preds = %sw.bb488
  %160 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1267
  %and517 = and i32 %160, 65536, !dbg !1267
  %cmp518 = icmp ne i32 %and517, 0, !dbg !1268
  br i1 %cmp518, label %if.then519, label %if.end539, !dbg !1267

if.then519:                                       ; preds = %sw.bb516
  %call520 = call arm_aapcs_vfpcc i32 @RCCEx_PLLSAI1_GetVCOFreq(), !dbg !1269
  store i32 %call520, i32* %pllvco, align 4, !dbg !1270
  %161 = load i32, i32* %pllvco, align 4, !dbg !1271
  %162 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1272
  %and521 = and i32 %162, 240, !dbg !1272
  %shr522 = lshr i32 %and521, 4, !dbg !1273
  %add523 = add i32 %shr522, 1, !dbg !1274
  %div524 = udiv i32 %161, %add523, !dbg !1275
  store i32 %div524, i32* %pllvco, align 4, !dbg !1276
  %163 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1277
  %and525 = and i32 %163, 32512, !dbg !1277
  %shr526 = lshr i32 %and525, 8, !dbg !1278
  store i32 %shr526, i32* %plln, align 4, !dbg !1279
  %164 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1280
  %and527 = and i32 %164, -134217728, !dbg !1280
  %shr528 = lshr i32 %and527, 27, !dbg !1281
  store i32 %shr528, i32* %pllp, align 4, !dbg !1282
  %165 = load i32, i32* %pllp, align 4, !dbg !1283
  %cmp529 = icmp eq i32 %165, 0, !dbg !1284
  br i1 %cmp529, label %if.then530, label %if.end536, !dbg !1283

if.then530:                                       ; preds = %if.then519
  %166 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1285
  %and531 = and i32 %166, 131072, !dbg !1285
  %cmp532 = icmp ne i32 %and531, 0, !dbg !1286
  br i1 %cmp532, label %if.then533, label %if.else534, !dbg !1285

if.then533:                                       ; preds = %if.then530
  store i32 17, i32* %pllp, align 4, !dbg !1287
  br label %if.end535, !dbg !1288

if.else534:                                       ; preds = %if.then530
  store i32 7, i32* %pllp, align 4, !dbg !1289
  br label %if.end535

if.end535:                                        ; preds = %if.else534, %if.then533
  br label %if.end536, !dbg !1290

if.end536:                                        ; preds = %if.end535, %if.then519
  %167 = load i32, i32* %pllvco, align 4, !dbg !1291
  %168 = load i32, i32* %plln, align 4, !dbg !1292
  %mul537 = mul i32 %167, %168, !dbg !1293
  %169 = load i32, i32* %pllp, align 4, !dbg !1294
  %div538 = udiv i32 %mul537, %169, !dbg !1295
  store i32 %div538, i32* %frequency, align 4, !dbg !1296
  br label %if.end539, !dbg !1297

if.end539:                                        ; preds = %if.end536, %sw.bb516
  br label %sw.epilog541, !dbg !1298

sw.default540:                                    ; preds = %sw.bb488
  br label %sw.epilog541, !dbg !1299

sw.epilog541:                                     ; preds = %sw.default540, %if.end539, %if.end515, %if.end494
  br label %sw.epilog543, !dbg !1300

sw.default542:                                    ; preds = %sw.epilog39
  br label %sw.epilog543, !dbg !1301

sw.epilog543:                                     ; preds = %sw.default542, %sw.epilog541, %sw.epilog487, %sw.epilog466, %sw.epilog445, %sw.epilog424, %sw.epilog411, %sw.epilog398, %sw.epilog385, %sw.epilog372, %if.end345, %sw.epilog337, %sw.epilog313, %sw.epilog295, %sw.epilog277, %sw.epilog259, %sw.epilog241, %sw.epilog223, %if.end205, %sw.epilog106, %sw.bb41, %sw.bb40
  br label %if.end544

if.end544:                                        ; preds = %sw.epilog543, %sw.epilog
  %170 = load i32, i32* %frequency, align 4, !dbg !1302
  ret i32 %170, !dbg !1303
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @RCCEx_GetSAIxPeriphCLKFreq(i32 %PeriphClk, i32 %InputFrequency) #0 !dbg !1304 {
entry:
  %PeriphClk.addr = alloca i32, align 4
  %InputFrequency.addr = alloca i32, align 4
  %frequency = alloca i32, align 4
  %srcclk = alloca i32, align 4
  %pllvco = alloca i32, align 4
  %plln = alloca i32, align 4
  %pllp = alloca i32, align 4
  store i32 %PeriphClk, i32* %PeriphClk.addr, align 4
  store i32 %InputFrequency, i32* %InputFrequency.addr, align 4
  store i32 0, i32* %frequency, align 4, !dbg !1305
  %0 = load i32, i32* %PeriphClk.addr, align 4, !dbg !1306
  %cmp = icmp eq i32 %0, 2048, !dbg !1307
  br i1 %cmp, label %if.then, label %if.else, !dbg !1306

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !1308
  %and = and i32 %1, 224, !dbg !1308
  store i32 %and, i32* %srcclk, align 4, !dbg !1309
  %2 = load i32, i32* %srcclk, align 4, !dbg !1310
  %cmp1 = icmp eq i32 %2, 96, !dbg !1311
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1310

if.then2:                                         ; preds = %if.then
  store i32 48000, i32* %frequency, align 4, !dbg !1312
  br label %if.end, !dbg !1313

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end7, !dbg !1314

if.else:                                          ; preds = %entry
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 39), align 4, !dbg !1315
  %and3 = and i32 %3, 1792, !dbg !1315
  store i32 %and3, i32* %srcclk, align 4, !dbg !1316
  %4 = load i32, i32* %srcclk, align 4, !dbg !1317
  %cmp4 = icmp eq i32 %4, 768, !dbg !1318
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1317

if.then5:                                         ; preds = %if.else
  store i32 48000, i32* %frequency, align 4, !dbg !1319
  br label %if.end6, !dbg !1320

if.end6:                                          ; preds = %if.then5, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %5 = load i32, i32* %frequency, align 4, !dbg !1321
  %cmp8 = icmp eq i32 %5, 0, !dbg !1322
  br i1 %cmp8, label %if.then9, label %if.end102, !dbg !1321

if.then9:                                         ; preds = %if.end7
  %6 = load i32, i32* %InputFrequency.addr, align 4, !dbg !1323
  store i32 %6, i32* %pllvco, align 4, !dbg !1324
  %7 = load i32, i32* %srcclk, align 4, !dbg !1325
  %cmp10 = icmp eq i32 %7, 64, !dbg !1326
  br i1 %cmp10, label %if.then12, label %lor.lhs.false, !dbg !1327

lor.lhs.false:                                    ; preds = %if.then9
  %8 = load i32, i32* %srcclk, align 4, !dbg !1328
  %cmp11 = icmp eq i32 %8, 512, !dbg !1329
  br i1 %cmp11, label %if.then12, label %if.else35, !dbg !1330

if.then12:                                        ; preds = %lor.lhs.false, %if.then9
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1331
  %and13 = and i32 %9, 33554432, !dbg !1331
  %cmp14 = icmp eq i32 %and13, 33554432, !dbg !1331
  br i1 %cmp14, label %if.then15, label %if.end34, !dbg !1331

if.then15:                                        ; preds = %if.then12
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1332
  %and16 = and i32 %10, 65536, !dbg !1332
  %cmp17 = icmp ne i32 %and16, 0, !dbg !1333
  br i1 %cmp17, label %if.then18, label %if.end33, !dbg !1332

if.then18:                                        ; preds = %if.then15
  %11 = load i32, i32* %pllvco, align 4, !dbg !1334
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1335
  %and19 = and i32 %12, 240, !dbg !1335
  %shr = lshr i32 %and19, 4, !dbg !1336
  %add = add i32 %shr, 1, !dbg !1337
  %div = udiv i32 %11, %add, !dbg !1338
  store i32 %div, i32* %pllvco, align 4, !dbg !1339
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1340
  %and20 = and i32 %13, 32512, !dbg !1340
  %shr21 = lshr i32 %and20, 8, !dbg !1341
  store i32 %shr21, i32* %plln, align 4, !dbg !1342
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1343
  %and22 = and i32 %14, -134217728, !dbg !1343
  %shr23 = lshr i32 %and22, 27, !dbg !1344
  store i32 %shr23, i32* %pllp, align 4, !dbg !1345
  %15 = load i32, i32* %pllp, align 4, !dbg !1346
  %cmp24 = icmp eq i32 %15, 0, !dbg !1347
  br i1 %cmp24, label %if.then25, label %if.end31, !dbg !1346

if.then25:                                        ; preds = %if.then18
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1348
  %and26 = and i32 %16, 131072, !dbg !1348
  %cmp27 = icmp ne i32 %and26, 0, !dbg !1349
  br i1 %cmp27, label %if.then28, label %if.else29, !dbg !1348

if.then28:                                        ; preds = %if.then25
  store i32 17, i32* %pllp, align 4, !dbg !1350
  br label %if.end30, !dbg !1351

if.else29:                                        ; preds = %if.then25
  store i32 7, i32* %pllp, align 4, !dbg !1352
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %if.then28
  br label %if.end31, !dbg !1353

if.end31:                                         ; preds = %if.end30, %if.then18
  %17 = load i32, i32* %pllvco, align 4, !dbg !1354
  %18 = load i32, i32* %plln, align 4, !dbg !1355
  %mul = mul i32 %17, %18, !dbg !1356
  %19 = load i32, i32* %pllp, align 4, !dbg !1357
  %div32 = udiv i32 %mul, %19, !dbg !1358
  store i32 %div32, i32* %frequency, align 4, !dbg !1359
  br label %if.end33, !dbg !1360

if.end33:                                         ; preds = %if.end31, %if.then15
  br label %if.end34, !dbg !1361

if.end34:                                         ; preds = %if.end33, %if.then12
  br label %if.end101, !dbg !1362

if.else35:                                        ; preds = %lor.lhs.false
  %20 = load i32, i32* %srcclk, align 4, !dbg !1363
  %cmp36 = icmp eq i32 %20, 128, !dbg !1364
  br i1 %cmp36, label %if.then39, label %lor.lhs.false37, !dbg !1365

lor.lhs.false37:                                  ; preds = %if.else35
  %21 = load i32, i32* %srcclk, align 4, !dbg !1366
  %cmp38 = icmp eq i32 %21, 1024, !dbg !1367
  br i1 %cmp38, label %if.then39, label %if.else44, !dbg !1368

if.then39:                                        ; preds = %lor.lhs.false37, %if.else35
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1369
  %and40 = and i32 %22, 1024, !dbg !1369
  %cmp41 = icmp eq i32 %and40, 1024, !dbg !1369
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !1369

if.then42:                                        ; preds = %if.then39
  store i32 16000000, i32* %frequency, align 4, !dbg !1370
  br label %if.end43, !dbg !1371

if.end43:                                         ; preds = %if.then42, %if.then39
  br label %if.end100, !dbg !1372

if.else44:                                        ; preds = %lor.lhs.false37
  %23 = load i32, i32* %srcclk, align 4, !dbg !1373
  %cmp45 = icmp eq i32 %23, 0, !dbg !1374
  br i1 %cmp45, label %if.then46, label %if.else69, !dbg !1373

if.then46:                                        ; preds = %if.else44
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1375
  %and47 = and i32 %24, 65536, !dbg !1375
  %cmp48 = icmp ne i32 %and47, 0, !dbg !1376
  br i1 %cmp48, label %if.then49, label %if.end68, !dbg !1375

if.then49:                                        ; preds = %if.then46
  %call = call arm_aapcs_vfpcc i32 @RCCEx_PLLSAI1_GetVCOFreq(), !dbg !1377
  store i32 %call, i32* %pllvco, align 4, !dbg !1378
  %25 = load i32, i32* %pllvco, align 4, !dbg !1379
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1380
  %and50 = and i32 %26, 240, !dbg !1380
  %shr51 = lshr i32 %and50, 4, !dbg !1381
  %add52 = add i32 %shr51, 1, !dbg !1382
  %div53 = udiv i32 %25, %add52, !dbg !1383
  store i32 %div53, i32* %pllvco, align 4, !dbg !1384
  %27 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1385
  %and54 = and i32 %27, 32512, !dbg !1385
  %shr55 = lshr i32 %and54, 8, !dbg !1386
  store i32 %shr55, i32* %plln, align 4, !dbg !1387
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1388
  %and56 = and i32 %28, -134217728, !dbg !1388
  %shr57 = lshr i32 %and56, 27, !dbg !1389
  store i32 %shr57, i32* %pllp, align 4, !dbg !1390
  %29 = load i32, i32* %pllp, align 4, !dbg !1391
  %cmp58 = icmp eq i32 %29, 0, !dbg !1392
  br i1 %cmp58, label %if.then59, label %if.end65, !dbg !1391

if.then59:                                        ; preds = %if.then49
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1393
  %and60 = and i32 %30, 131072, !dbg !1393
  %cmp61 = icmp ne i32 %and60, 0, !dbg !1394
  br i1 %cmp61, label %if.then62, label %if.else63, !dbg !1393

if.then62:                                        ; preds = %if.then59
  store i32 17, i32* %pllp, align 4, !dbg !1395
  br label %if.end64, !dbg !1396

if.else63:                                        ; preds = %if.then59
  store i32 7, i32* %pllp, align 4, !dbg !1397
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %if.then62
  br label %if.end65, !dbg !1398

if.end65:                                         ; preds = %if.end64, %if.then49
  %31 = load i32, i32* %pllvco, align 4, !dbg !1399
  %32 = load i32, i32* %plln, align 4, !dbg !1400
  %mul66 = mul i32 %31, %32, !dbg !1401
  %33 = load i32, i32* %pllp, align 4, !dbg !1402
  %div67 = udiv i32 %mul66, %33, !dbg !1403
  store i32 %div67, i32* %frequency, align 4, !dbg !1404
  br label %if.end68, !dbg !1405

if.end68:                                         ; preds = %if.end65, %if.then46
  br label %if.end99, !dbg !1406

if.else69:                                        ; preds = %if.else44
  %34 = load i32, i32* %srcclk, align 4, !dbg !1407
  %cmp70 = icmp eq i32 %34, 32, !dbg !1408
  br i1 %cmp70, label %if.then73, label %lor.lhs.false71, !dbg !1409

lor.lhs.false71:                                  ; preds = %if.else69
  %35 = load i32, i32* %srcclk, align 4, !dbg !1410
  %cmp72 = icmp eq i32 %35, 256, !dbg !1411
  br i1 %cmp72, label %if.then73, label %if.else97, !dbg !1412

if.then73:                                        ; preds = %lor.lhs.false71, %if.else69
  %36 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1413
  %and74 = and i32 %36, 65536, !dbg !1413
  %cmp75 = icmp ne i32 %and74, 0, !dbg !1414
  br i1 %cmp75, label %if.then76, label %if.end96, !dbg !1413

if.then76:                                        ; preds = %if.then73
  %call77 = call arm_aapcs_vfpcc i32 @RCCEx_PLLSAI2_GetVCOFreq(), !dbg !1415
  store i32 %call77, i32* %pllvco, align 4, !dbg !1416
  %37 = load i32, i32* %pllvco, align 4, !dbg !1417
  %38 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1418
  %and78 = and i32 %38, 240, !dbg !1418
  %shr79 = lshr i32 %and78, 4, !dbg !1419
  %add80 = add i32 %shr79, 1, !dbg !1420
  %div81 = udiv i32 %37, %add80, !dbg !1421
  store i32 %div81, i32* %pllvco, align 4, !dbg !1422
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1423
  %and82 = and i32 %39, 32512, !dbg !1423
  %shr83 = lshr i32 %and82, 8, !dbg !1424
  store i32 %shr83, i32* %plln, align 4, !dbg !1425
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1426
  %and84 = and i32 %40, -134217728, !dbg !1426
  %shr85 = lshr i32 %and84, 27, !dbg !1427
  store i32 %shr85, i32* %pllp, align 4, !dbg !1428
  %41 = load i32, i32* %pllp, align 4, !dbg !1429
  %cmp86 = icmp eq i32 %41, 0, !dbg !1430
  br i1 %cmp86, label %if.then87, label %if.end93, !dbg !1429

if.then87:                                        ; preds = %if.then76
  %42 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1431
  %and88 = and i32 %42, 131072, !dbg !1431
  %cmp89 = icmp ne i32 %and88, 0, !dbg !1432
  br i1 %cmp89, label %if.then90, label %if.else91, !dbg !1431

if.then90:                                        ; preds = %if.then87
  store i32 17, i32* %pllp, align 4, !dbg !1433
  br label %if.end92, !dbg !1434

if.else91:                                        ; preds = %if.then87
  store i32 7, i32* %pllp, align 4, !dbg !1435
  br label %if.end92

if.end92:                                         ; preds = %if.else91, %if.then90
  br label %if.end93, !dbg !1436

if.end93:                                         ; preds = %if.end92, %if.then76
  %43 = load i32, i32* %pllvco, align 4, !dbg !1437
  %44 = load i32, i32* %plln, align 4, !dbg !1438
  %mul94 = mul i32 %43, %44, !dbg !1439
  %45 = load i32, i32* %pllp, align 4, !dbg !1440
  %div95 = udiv i32 %mul94, %45, !dbg !1441
  store i32 %div95, i32* %frequency, align 4, !dbg !1442
  br label %if.end96, !dbg !1443

if.end96:                                         ; preds = %if.end93, %if.then73
  br label %if.end98, !dbg !1444

if.else97:                                        ; preds = %lor.lhs.false71
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %if.end96
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end68
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end43
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.end34
  br label %if.end102, !dbg !1445

if.end102:                                        ; preds = %if.end101, %if.end7
  %46 = load i32, i32* %frequency, align 4, !dbg !1446
  ret i32 %46, !dbg !1447
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @RCCEx_PLLSAI1_GetVCOFreq() #0 !dbg !1448 {
entry:
  %pllvco = alloca i32, align 4
  store i32 0, i32* %pllvco, align 4, !dbg !1449
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1450
  %and = and i32 %0, 3, !dbg !1450
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb13
  ], !dbg !1451

sw.bb:                                            ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1452
  %and1 = and i32 %1, 2, !dbg !1452
  %cmp = icmp eq i32 %and1, 2, !dbg !1452
  br i1 %cmp, label %if.then, label %if.else, !dbg !1452

if.then:                                          ; preds = %sw.bb
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1453
  %and2 = and i32 %2, 8, !dbg !1453
  %cmp3 = icmp ne i32 %and2, 0, !dbg !1453
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1453

cond.true:                                        ; preds = %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1453
  %and4 = and i32 %3, 240, !dbg !1453
  br label %cond.end, !dbg !1453

cond.false:                                       ; preds = %if.then
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1453
  %and5 = and i32 %4, 3840, !dbg !1453
  %shr = lshr i32 %and5, 4, !dbg !1453
  br label %cond.end, !dbg !1453

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and4, %cond.true ], [ %shr, %cond.false ], !dbg !1453
  %shr6 = lshr i32 %cond, 4, !dbg !1454
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %shr6, !dbg !1455
  %5 = load i32, i32* %arrayidx, align 4, !dbg !1455
  store i32 %5, i32* %pllvco, align 4, !dbg !1456
  br label %if.end, !dbg !1457

if.else:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %sw.epilog, !dbg !1458

sw.bb7:                                           ; preds = %entry
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1459
  %and8 = and i32 %6, 1024, !dbg !1459
  %cmp9 = icmp eq i32 %and8, 1024, !dbg !1459
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !1459

if.then10:                                        ; preds = %sw.bb7
  store i32 16000000, i32* %pllvco, align 4, !dbg !1460
  br label %if.end12, !dbg !1461

if.else11:                                        ; preds = %sw.bb7
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %sw.epilog, !dbg !1462

sw.bb13:                                          ; preds = %entry
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1463
  %and14 = and i32 %7, 131072, !dbg !1463
  %cmp15 = icmp eq i32 %and14, 131072, !dbg !1463
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !1463

if.then16:                                        ; preds = %sw.bb13
  store i32 8000000, i32* %pllvco, align 4, !dbg !1464
  br label %if.end18, !dbg !1465

if.else17:                                        ; preds = %sw.bb13
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  br label %sw.epilog, !dbg !1466

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1467

sw.epilog:                                        ; preds = %sw.default, %if.end18, %if.end12, %if.end
  %8 = load i32, i32* %pllvco, align 4, !dbg !1468
  ret i32 %8, !dbg !1469
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq() #1

declare dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq() #1

declare dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_EnablePLLSAI1(%struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1Init) #0 !dbg !1470 {
entry:
  %PLLSAI1Init.addr = alloca %struct.RCC_PLLSAI1InitTypeDef*, align 4
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store %struct.RCC_PLLSAI1InitTypeDef* %PLLSAI1Init, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !1471
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1472
  %and = and i32 %0, -67108865, !dbg !1472
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1472
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1473
  store i32 %call, i32* %tickstart, align 4, !dbg !1474
  br label %while.cond, !dbg !1475

while.cond:                                       ; preds = %if.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1476
  %and1 = and i32 %1, 134217728, !dbg !1476
  %cmp = icmp ne i32 %and1, 0, !dbg !1477
  br i1 %cmp, label %while.body, label %while.end, !dbg !1475

while.body:                                       ; preds = %while.cond
  %call2 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1478
  %2 = load i32, i32* %tickstart, align 4, !dbg !1479
  %sub = sub i32 %call2, %2, !dbg !1480
  %cmp3 = icmp ugt i32 %sub, 2, !dbg !1481
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1482

if.then:                                          ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !1483
  br label %while.end, !dbg !1484

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1475, !llvm.loop !1485

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load i8, i8* %status, align 1, !dbg !1487
  %conv = zext i8 %3 to i32, !dbg !1487
  %cmp4 = icmp eq i32 %conv, 0, !dbg !1488
  br i1 %cmp4, label %if.then6, label %if.end43, !dbg !1487

if.then6:                                         ; preds = %while.end
  %4 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1489
  %PLLSAI1Source = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %4, i32 0, i32 0, !dbg !1490
  %5 = load i32, i32* %PLLSAI1Source, align 4, !dbg !1490
  %call7 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSource_Enable(i32 %5), !dbg !1491
  store i8 %call7, i8* %status, align 1, !dbg !1492
  %6 = load i8, i8* %status, align 1, !dbg !1493
  %conv8 = zext i8 %6 to i32, !dbg !1493
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !1494
  br i1 %cmp9, label %if.then11, label %if.end42, !dbg !1493

if.then11:                                        ; preds = %if.then6
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1495
  %and12 = and i32 %7, 27099148, !dbg !1495
  %8 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1495
  %PLLSAI1Source13 = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %8, i32 0, i32 0, !dbg !1495
  %9 = load i32, i32* %PLLSAI1Source13, align 4, !dbg !1495
  %10 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1495
  %PLLSAI1M = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %10, i32 0, i32 1, !dbg !1495
  %11 = load i32, i32* %PLLSAI1M, align 4, !dbg !1495
  %sub14 = sub i32 %11, 1, !dbg !1495
  %shl = shl i32 %sub14, 4, !dbg !1495
  %or = or i32 %9, %shl, !dbg !1495
  %12 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1495
  %PLLSAI1N = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %12, i32 0, i32 2, !dbg !1495
  %13 = load i32, i32* %PLLSAI1N, align 4, !dbg !1495
  %shl15 = shl i32 %13, 8, !dbg !1495
  %or16 = or i32 %or, %shl15, !dbg !1495
  %14 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1495
  %PLLSAI1Q = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %14, i32 0, i32 4, !dbg !1495
  %15 = load i32, i32* %PLLSAI1Q, align 4, !dbg !1495
  %shr = lshr i32 %15, 1, !dbg !1495
  %sub17 = sub i32 %shr, 1, !dbg !1495
  %shl18 = shl i32 %sub17, 21, !dbg !1495
  %or19 = or i32 %or16, %shl18, !dbg !1495
  %16 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1495
  %PLLSAI1R = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %16, i32 0, i32 5, !dbg !1495
  %17 = load i32, i32* %PLLSAI1R, align 4, !dbg !1495
  %shr20 = lshr i32 %17, 1, !dbg !1495
  %sub21 = sub i32 %shr20, 1, !dbg !1495
  %shl22 = shl i32 %sub21, 25, !dbg !1495
  %or23 = or i32 %or19, %shl22, !dbg !1495
  %18 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1495
  %PLLSAI1P = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %18, i32 0, i32 3, !dbg !1495
  %19 = load i32, i32* %PLLSAI1P, align 4, !dbg !1495
  %shl24 = shl i32 %19, 27, !dbg !1495
  %or25 = or i32 %or23, %shl24, !dbg !1495
  %or26 = or i32 %and12, %or25, !dbg !1495
  store volatile i32 %or26, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1495
  %20 = load %struct.RCC_PLLSAI1InitTypeDef*, %struct.RCC_PLLSAI1InitTypeDef** %PLLSAI1Init.addr, align 4, !dbg !1496
  %PLLSAI1ClockOut = getelementptr inbounds %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI1InitTypeDef* %20, i32 0, i32 6, !dbg !1496
  %21 = load i32, i32* %PLLSAI1ClockOut, align 4, !dbg !1496
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1496
  %or27 = or i32 %22, %21, !dbg !1496
  store volatile i32 %or27, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1496
  %23 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1497
  %or28 = or i32 %23, 67108864, !dbg !1497
  store volatile i32 %or28, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1497
  %call29 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1498
  store i32 %call29, i32* %tickstart, align 4, !dbg !1499
  br label %while.cond30, !dbg !1500

while.cond30:                                     ; preds = %if.end40, %if.then11
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1501
  %and31 = and i32 %24, 134217728, !dbg !1501
  %cmp32 = icmp eq i32 %and31, 0, !dbg !1502
  br i1 %cmp32, label %while.body34, label %while.end41, !dbg !1500

while.body34:                                     ; preds = %while.cond30
  %call35 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1503
  %25 = load i32, i32* %tickstart, align 4, !dbg !1504
  %sub36 = sub i32 %call35, %25, !dbg !1505
  %cmp37 = icmp ugt i32 %sub36, 2, !dbg !1506
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1507

if.then39:                                        ; preds = %while.body34
  store i8 3, i8* %status, align 1, !dbg !1508
  br label %while.end41, !dbg !1509

if.end40:                                         ; preds = %while.body34
  br label %while.cond30, !dbg !1500, !llvm.loop !1510

while.end41:                                      ; preds = %if.then39, %while.cond30
  br label %if.end42, !dbg !1512

if.end42:                                         ; preds = %while.end41, %if.then6
  br label %if.end43, !dbg !1513

if.end43:                                         ; preds = %if.end42, %while.end
  %26 = load i8, i8* %status, align 1, !dbg !1514
  ret i8 %26, !dbg !1515
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSource_Enable(i32 %PllSource) #0 !dbg !1516 {
entry:
  %PllSource.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store i32 %PllSource, i32* %PllSource.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !1517
  %0 = load i32, i32* %PllSource.addr, align 4, !dbg !1518
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb24
    i32 0, label %sw.bb41
  ], !dbg !1519

sw.bb:                                            ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1520
  %and = and i32 %1, 2, !dbg !1520
  %cmp = icmp eq i32 %and, 0, !dbg !1521
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1520

if.then:                                          ; preds = %sw.bb
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1522
  %or = or i32 %2, 1, !dbg !1522
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1522
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1523
  store i32 %call, i32* %tickstart, align 4, !dbg !1524
  br label %while.cond, !dbg !1525

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1526
  %and1 = and i32 %3, 2, !dbg !1526
  %cmp2 = icmp eq i32 %and1, 0, !dbg !1527
  br i1 %cmp2, label %while.body, label %while.end, !dbg !1525

while.body:                                       ; preds = %while.cond
  %call3 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1528
  %4 = load i32, i32* %tickstart, align 4, !dbg !1529
  %sub = sub i32 %call3, %4, !dbg !1530
  %cmp4 = icmp ugt i32 %sub, 2, !dbg !1531
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1532

if.then5:                                         ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !1533
  br label %while.end, !dbg !1534

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1525, !llvm.loop !1535

while.end:                                        ; preds = %if.then5, %while.cond
  br label %if.end6, !dbg !1537

if.end6:                                          ; preds = %while.end, %sw.bb
  br label %sw.epilog, !dbg !1538

sw.bb7:                                           ; preds = %entry
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1539
  %and8 = and i32 %5, 1024, !dbg !1539
  %cmp9 = icmp eq i32 %and8, 0, !dbg !1540
  br i1 %cmp9, label %if.then10, label %if.end23, !dbg !1539

if.then10:                                        ; preds = %sw.bb7
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1541
  %or11 = or i32 %6, 256, !dbg !1541
  store volatile i32 %or11, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1541
  %call12 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1542
  store i32 %call12, i32* %tickstart, align 4, !dbg !1543
  br label %while.cond13, !dbg !1544

while.cond13:                                     ; preds = %if.end21, %if.then10
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1545
  %and14 = and i32 %7, 1024, !dbg !1545
  %cmp15 = icmp eq i32 %and14, 0, !dbg !1546
  br i1 %cmp15, label %while.body16, label %while.end22, !dbg !1544

while.body16:                                     ; preds = %while.cond13
  %call17 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1547
  %8 = load i32, i32* %tickstart, align 4, !dbg !1548
  %sub18 = sub i32 %call17, %8, !dbg !1549
  %cmp19 = icmp ugt i32 %sub18, 2, !dbg !1550
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !1551

if.then20:                                        ; preds = %while.body16
  store i8 3, i8* %status, align 1, !dbg !1552
  br label %while.end22, !dbg !1553

if.end21:                                         ; preds = %while.body16
  br label %while.cond13, !dbg !1544, !llvm.loop !1554

while.end22:                                      ; preds = %if.then20, %while.cond13
  br label %if.end23, !dbg !1556

if.end23:                                         ; preds = %while.end22, %sw.bb7
  br label %sw.epilog, !dbg !1557

sw.bb24:                                          ; preds = %entry
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1558
  %and25 = and i32 %9, 131072, !dbg !1558
  %cmp26 = icmp eq i32 %and25, 0, !dbg !1559
  br i1 %cmp26, label %if.then27, label %if.end40, !dbg !1558

if.then27:                                        ; preds = %sw.bb24
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1560
  %or28 = or i32 %10, 65536, !dbg !1560
  store volatile i32 %or28, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1560
  %call29 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1561
  store i32 %call29, i32* %tickstart, align 4, !dbg !1562
  br label %while.cond30, !dbg !1563

while.cond30:                                     ; preds = %if.end38, %if.then27
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1564
  %and31 = and i32 %11, 131072, !dbg !1564
  %cmp32 = icmp eq i32 %and31, 0, !dbg !1565
  br i1 %cmp32, label %while.body33, label %while.end39, !dbg !1563

while.body33:                                     ; preds = %while.cond30
  %call34 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1566
  %12 = load i32, i32* %tickstart, align 4, !dbg !1567
  %sub35 = sub i32 %call34, %12, !dbg !1568
  %cmp36 = icmp ugt i32 %sub35, 100, !dbg !1569
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1570

if.then37:                                        ; preds = %while.body33
  store i8 3, i8* %status, align 1, !dbg !1571
  br label %while.end39, !dbg !1572

if.end38:                                         ; preds = %while.body33
  br label %while.cond30, !dbg !1563, !llvm.loop !1573

while.end39:                                      ; preds = %if.then37, %while.cond30
  br label %if.end40, !dbg !1575

if.end40:                                         ; preds = %while.end39, %sw.bb24
  br label %sw.epilog, !dbg !1576

sw.bb41:                                          ; preds = %entry
  br label %sw.epilog, !dbg !1577

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !1578
  br label %sw.epilog, !dbg !1579

sw.epilog:                                        ; preds = %sw.default, %sw.bb41, %if.end40, %if.end23, %if.end6
  %13 = load i8, i8* %status, align 1, !dbg !1580
  ret i8 %13, !dbg !1581
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_DisablePLLSAI1() #0 !dbg !1582 {
entry:
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store i8 0, i8* %status, align 1, !dbg !1583
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1584
  %and = and i32 %0, -67108865, !dbg !1584
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1584
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1585
  store i32 %call, i32* %tickstart, align 4, !dbg !1586
  br label %while.cond, !dbg !1587

while.cond:                                       ; preds = %if.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1588
  %and1 = and i32 %1, 134217728, !dbg !1588
  %cmp = icmp ne i32 %and1, 0, !dbg !1589
  br i1 %cmp, label %while.body, label %while.end, !dbg !1587

while.body:                                       ; preds = %while.cond
  %call2 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1590
  %2 = load i32, i32* %tickstart, align 4, !dbg !1591
  %sub = sub i32 %call2, %2, !dbg !1592
  %cmp3 = icmp ugt i32 %sub, 2, !dbg !1593
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1594

if.then:                                          ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !1595
  br label %while.end, !dbg !1596

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1587, !llvm.loop !1597

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1599
  %and4 = and i32 %3, -17891332, !dbg !1599
  store volatile i32 %and4, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !1599
  %4 = load i8, i8* %status, align 1, !dbg !1600
  ret i8 %4, !dbg !1601
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_EnablePLLSAI2(%struct.RCC_PLLSAI2InitTypeDef* %PLLSAI2Init) #0 !dbg !1602 {
entry:
  %PLLSAI2Init.addr = alloca %struct.RCC_PLLSAI2InitTypeDef*, align 4
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store %struct.RCC_PLLSAI2InitTypeDef* %PLLSAI2Init, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !1603
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1604
  %and = and i32 %0, -268435457, !dbg !1604
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1604
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1605
  store i32 %call, i32* %tickstart, align 4, !dbg !1606
  br label %while.cond, !dbg !1607

while.cond:                                       ; preds = %if.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1608
  %and1 = and i32 %1, 536870912, !dbg !1608
  %cmp = icmp ne i32 %and1, 0, !dbg !1609
  br i1 %cmp, label %while.body, label %while.end, !dbg !1607

while.body:                                       ; preds = %while.cond
  %call2 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1610
  %2 = load i32, i32* %tickstart, align 4, !dbg !1611
  %sub = sub i32 %call2, %2, !dbg !1612
  %cmp3 = icmp ugt i32 %sub, 2, !dbg !1613
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1614

if.then:                                          ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !1615
  br label %while.end, !dbg !1616

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1607, !llvm.loop !1617

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load i8, i8* %status, align 1, !dbg !1619
  %conv = zext i8 %3 to i32, !dbg !1619
  %cmp4 = icmp eq i32 %conv, 0, !dbg !1620
  br i1 %cmp4, label %if.then6, label %if.end36, !dbg !1619

if.then6:                                         ; preds = %while.end
  %4 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4, !dbg !1621
  %PLLSAI2Source = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %4, i32 0, i32 0, !dbg !1622
  %5 = load i32, i32* %PLLSAI2Source, align 4, !dbg !1622
  %call7 = call arm_aapcs_vfpcc zeroext i8 @RCCEx_PLLSource_Enable(i32 %5), !dbg !1623
  store i8 %call7, i8* %status, align 1, !dbg !1624
  %6 = load i8, i8* %status, align 1, !dbg !1625
  %conv8 = zext i8 %6 to i32, !dbg !1625
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !1626
  br i1 %cmp9, label %if.then11, label %if.end35, !dbg !1625

if.then11:                                        ; preds = %if.then6
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1627
  %and12 = and i32 %7, 134053900, !dbg !1627
  %8 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4, !dbg !1627
  %PLLSAI2Source13 = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %8, i32 0, i32 0, !dbg !1627
  %9 = load i32, i32* %PLLSAI2Source13, align 4, !dbg !1627
  %10 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4, !dbg !1627
  %PLLSAI2M = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %10, i32 0, i32 1, !dbg !1627
  %11 = load i32, i32* %PLLSAI2M, align 4, !dbg !1627
  %sub14 = sub i32 %11, 1, !dbg !1627
  %shl = shl i32 %sub14, 4, !dbg !1627
  %or = or i32 %9, %shl, !dbg !1627
  %12 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4, !dbg !1627
  %PLLSAI2N = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %12, i32 0, i32 2, !dbg !1627
  %13 = load i32, i32* %PLLSAI2N, align 4, !dbg !1627
  %shl15 = shl i32 %13, 8, !dbg !1627
  %or16 = or i32 %or, %shl15, !dbg !1627
  %14 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4, !dbg !1627
  %PLLSAI2P = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %14, i32 0, i32 3, !dbg !1627
  %15 = load i32, i32* %PLLSAI2P, align 4, !dbg !1627
  %shl17 = shl i32 %15, 27, !dbg !1627
  %or18 = or i32 %or16, %shl17, !dbg !1627
  %or19 = or i32 %and12, %or18, !dbg !1627
  store volatile i32 %or19, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1627
  %16 = load %struct.RCC_PLLSAI2InitTypeDef*, %struct.RCC_PLLSAI2InitTypeDef** %PLLSAI2Init.addr, align 4, !dbg !1628
  %PLLSAI2ClockOut = getelementptr inbounds %struct.RCC_PLLSAI2InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef* %16, i32 0, i32 4, !dbg !1628
  %17 = load i32, i32* %PLLSAI2ClockOut, align 4, !dbg !1628
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1628
  %or20 = or i32 %18, %17, !dbg !1628
  store volatile i32 %or20, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1628
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1629
  %or21 = or i32 %19, 268435456, !dbg !1629
  store volatile i32 %or21, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1629
  %call22 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1630
  store i32 %call22, i32* %tickstart, align 4, !dbg !1631
  br label %while.cond23, !dbg !1632

while.cond23:                                     ; preds = %if.end33, %if.then11
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1633
  %and24 = and i32 %20, 536870912, !dbg !1633
  %cmp25 = icmp eq i32 %and24, 0, !dbg !1634
  br i1 %cmp25, label %while.body27, label %while.end34, !dbg !1632

while.body27:                                     ; preds = %while.cond23
  %call28 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1635
  %21 = load i32, i32* %tickstart, align 4, !dbg !1636
  %sub29 = sub i32 %call28, %21, !dbg !1637
  %cmp30 = icmp ugt i32 %sub29, 2, !dbg !1638
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !1639

if.then32:                                        ; preds = %while.body27
  store i8 3, i8* %status, align 1, !dbg !1640
  br label %while.end34, !dbg !1641

if.end33:                                         ; preds = %while.body27
  br label %while.cond23, !dbg !1632, !llvm.loop !1642

while.end34:                                      ; preds = %if.then32, %while.cond23
  br label %if.end35, !dbg !1644

if.end35:                                         ; preds = %while.end34, %if.then6
  br label %if.end36, !dbg !1645

if.end36:                                         ; preds = %if.end35, %while.end
  %22 = load i8, i8* %status, align 1, !dbg !1646
  ret i8 %22, !dbg !1647
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_DisablePLLSAI2() #0 !dbg !1648 {
entry:
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store i8 0, i8* %status, align 1, !dbg !1649
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1650
  %and = and i32 %0, -268435457, !dbg !1650
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1650
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1651
  store i32 %call, i32* %tickstart, align 4, !dbg !1652
  br label %while.cond, !dbg !1653

while.cond:                                       ; preds = %if.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1654
  %and1 = and i32 %1, 536870912, !dbg !1654
  %cmp = icmp ne i32 %and1, 0, !dbg !1655
  br i1 %cmp, label %while.body, label %while.end, !dbg !1653

while.body:                                       ; preds = %while.cond
  %call2 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1656
  %2 = load i32, i32* %tickstart, align 4, !dbg !1657
  %sub = sub i32 %call2, %2, !dbg !1658
  %cmp3 = icmp ugt i32 %sub, 2, !dbg !1659
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1660

if.then:                                          ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !1661
  br label %while.end, !dbg !1662

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !1653, !llvm.loop !1663

while.end:                                        ; preds = %if.then, %while.cond
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1665
  %and4 = and i32 %3, -65540, !dbg !1665
  store volatile i32 %and4, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1665
  %4 = load i8, i8* %status, align 1, !dbg !1666
  ret i8 %4, !dbg !1667
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_WakeUpStopCLKConfig(i32 %WakeUpClk) #0 !dbg !1668 {
entry:
  %WakeUpClk.addr = alloca i32, align 4
  store i32 %WakeUpClk, i32* %WakeUpClk.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !1669
  %and = and i32 %0, -32769, !dbg !1669
  %1 = load i32, i32* %WakeUpClk.addr, align 4, !dbg !1669
  %or = or i32 %and, %1, !dbg !1669
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !1669
  ret void, !dbg !1670
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_StandbyMSIRangeConfig(i32 %MSIRange) #0 !dbg !1671 {
entry:
  %MSIRange.addr = alloca i32, align 4
  store i32 %MSIRange, i32* %MSIRange.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1672
  %and = and i32 %0, -3841, !dbg !1672
  %1 = load i32, i32* %MSIRange.addr, align 4, !dbg !1672
  %shl = shl i32 %1, 4, !dbg !1672
  %or = or i32 %and, %shl, !dbg !1672
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1672
  ret void, !dbg !1673
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_EnableLSECSS() #0 !dbg !1674 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1675
  %or = or i32 %0, 32, !dbg !1675
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1675
  ret void, !dbg !1676
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_DisableLSECSS() #0 !dbg !1677 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1678
  %and = and i32 %0, -33, !dbg !1678
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1678
  ret void, !dbg !1679
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_LSECSS_IRQHandler() #0 !dbg !1680 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1681
  %and = and i32 %0, 64, !dbg !1681
  %cmp = icmp ne i32 %and, 0, !dbg !1682
  br i1 %cmp, label %if.then, label %if.end, !dbg !1681

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @HAL_RCCEx_LSECSS_Callback(), !dbg !1683
  br label %if.end, !dbg !1684

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1685
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_RCCEx_LSECSS_Callback() #0 !dbg !1686 {
entry:
  ret void, !dbg !1687
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_EnableLSCO(i32 %LSCOSource) #0 !dbg !1688 {
entry:
  %LSCOSource.addr = alloca i32, align 4
  %GPIO_InitStruct = alloca %struct.GPIO_InitTypeDef, align 4
  %pwrclkchanged = alloca i8, align 1
  %backupchanged = alloca i8, align 1
  %tmpreg = alloca i32, align 4
  %tmpreg3 = alloca i32, align 4
  store i32 %LSCOSource, i32* %LSCOSource.addr, align 4
  store i8 0, i8* %pwrclkchanged, align 1, !dbg !1689
  store i8 0, i8* %backupchanged, align 1, !dbg !1690
  br label %do.body, !dbg !1691

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !1691
  %or = or i32 %0, 1, !dbg !1691
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !1691
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !1691
  %and = and i32 %1, 1, !dbg !1691
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !1691
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !1691
  br label %do.end, !dbg !1691

do.end:                                           ; preds = %do.body
  %Pin = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 0, !dbg !1692
  store i32 4, i32* %Pin, align 4, !dbg !1693
  %Mode = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 1, !dbg !1694
  store i32 3, i32* %Mode, align 4, !dbg !1695
  %Speed = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 3, !dbg !1696
  store i32 2, i32* %Speed, align 4, !dbg !1697
  %Pull = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 2, !dbg !1698
  store i32 0, i32* %Pull, align 4, !dbg !1699
  call arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef* inttoptr (i32 1107427328 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* %GPIO_InitStruct), !dbg !1700
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1701
  %and1 = and i32 %3, 268435456, !dbg !1701
  %cmp = icmp eq i32 %and1, 0, !dbg !1701
  br i1 %cmp, label %if.then, label %if.end, !dbg !1701

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !1702

do.body2:                                         ; preds = %if.then
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1702
  %or4 = or i32 %4, 268435456, !dbg !1702
  store volatile i32 %or4, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1702
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1702
  %and5 = and i32 %5, 268435456, !dbg !1702
  store volatile i32 %and5, i32* %tmpreg3, align 4, !dbg !1702
  %6 = load volatile i32, i32* %tmpreg3, align 4, !dbg !1702
  br label %do.end6, !dbg !1702

do.end6:                                          ; preds = %do.body2
  store i8 1, i8* %pwrclkchanged, align 1, !dbg !1703
  br label %if.end, !dbg !1704

if.end:                                           ; preds = %do.end6, %do.end
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !1705
  %and7 = and i32 %7, 256, !dbg !1705
  %cmp8 = icmp eq i32 %and7, 0, !dbg !1705
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1705

if.then9:                                         ; preds = %if.end
  call arm_aapcs_vfpcc void @HAL_PWR_EnableBkUpAccess(), !dbg !1706
  store i8 1, i8* %backupchanged, align 1, !dbg !1707
  br label %if.end10, !dbg !1708

if.end10:                                         ; preds = %if.then9, %if.end
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1709
  %and11 = and i32 %8, -50331649, !dbg !1709
  %9 = load i32, i32* %LSCOSource.addr, align 4, !dbg !1709
  %or12 = or i32 %9, 16777216, !dbg !1709
  %or13 = or i32 %and11, %or12, !dbg !1709
  store volatile i32 %or13, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1709
  %10 = load i8, i8* %backupchanged, align 1, !dbg !1710
  %conv = zext i8 %10 to i32, !dbg !1710
  %cmp14 = icmp eq i32 %conv, 1, !dbg !1711
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1710

if.then16:                                        ; preds = %if.end10
  call arm_aapcs_vfpcc void @HAL_PWR_DisableBkUpAccess(), !dbg !1712
  br label %if.end17, !dbg !1713

if.end17:                                         ; preds = %if.then16, %if.end10
  %11 = load i8, i8* %pwrclkchanged, align 1, !dbg !1714
  %conv18 = zext i8 %11 to i32, !dbg !1714
  %cmp19 = icmp eq i32 %conv18, 1, !dbg !1715
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !1714

if.then21:                                        ; preds = %if.end17
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1716
  %and22 = and i32 %12, -268435457, !dbg !1716
  store volatile i32 %and22, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1716
  br label %if.end23, !dbg !1717

if.end23:                                         ; preds = %if.then21, %if.end17
  ret void, !dbg !1718
}

declare dso_local arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef*, %struct.GPIO_InitTypeDef*) #1

declare dso_local arm_aapcs_vfpcc void @HAL_PWR_EnableBkUpAccess() #1

declare dso_local arm_aapcs_vfpcc void @HAL_PWR_DisableBkUpAccess() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_DisableLSCO() #0 !dbg !1719 {
entry:
  %pwrclkchanged = alloca i8, align 1
  %backupchanged = alloca i8, align 1
  %tmpreg = alloca i32, align 4
  store i8 0, i8* %pwrclkchanged, align 1, !dbg !1720
  store i8 0, i8* %backupchanged, align 1, !dbg !1721
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1722
  %and = and i32 %0, 268435456, !dbg !1722
  %cmp = icmp eq i32 %and, 0, !dbg !1722
  br i1 %cmp, label %if.then, label %if.end, !dbg !1722

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1723

do.body:                                          ; preds = %if.then
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1723
  %or = or i32 %1, 268435456, !dbg !1723
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1723
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1723
  %and1 = and i32 %2, 268435456, !dbg !1723
  store volatile i32 %and1, i32* %tmpreg, align 4, !dbg !1723
  %3 = load volatile i32, i32* %tmpreg, align 4, !dbg !1723
  br label %do.end, !dbg !1723

do.end:                                           ; preds = %do.body
  store i8 1, i8* %pwrclkchanged, align 1, !dbg !1724
  br label %if.end, !dbg !1725

if.end:                                           ; preds = %do.end, %entry
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !1726
  %and2 = and i32 %4, 256, !dbg !1726
  %cmp3 = icmp eq i32 %and2, 0, !dbg !1726
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !1726

if.then4:                                         ; preds = %if.end
  call arm_aapcs_vfpcc void @HAL_PWR_EnableBkUpAccess(), !dbg !1727
  store i8 1, i8* %backupchanged, align 1, !dbg !1728
  br label %if.end5, !dbg !1729

if.end5:                                          ; preds = %if.then4, %if.end
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1730
  %and6 = and i32 %5, -16777217, !dbg !1730
  store volatile i32 %and6, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1730
  %6 = load i8, i8* %backupchanged, align 1, !dbg !1731
  %conv = zext i8 %6 to i32, !dbg !1731
  %cmp7 = icmp eq i32 %conv, 1, !dbg !1732
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !1731

if.then9:                                         ; preds = %if.end5
  call arm_aapcs_vfpcc void @HAL_PWR_DisableBkUpAccess(), !dbg !1733
  br label %if.end10, !dbg !1734

if.end10:                                         ; preds = %if.then9, %if.end5
  %7 = load i8, i8* %pwrclkchanged, align 1, !dbg !1735
  %conv11 = zext i8 %7 to i32, !dbg !1735
  %cmp12 = icmp eq i32 %conv11, 1, !dbg !1736
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !1735

if.then14:                                        ; preds = %if.end10
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1737
  %and15 = and i32 %8, -268435457, !dbg !1737
  store volatile i32 %and15, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !1737
  br label %if.end16, !dbg !1738

if.end16:                                         ; preds = %if.then14, %if.end10
  ret void, !dbg !1739
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_EnableMSIPLLMode() #0 !dbg !1740 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1741
  %or = or i32 %0, 4, !dbg !1741
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1741
  ret void, !dbg !1742
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_DisableMSIPLLMode() #0 !dbg !1743 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1744
  %and = and i32 %0, -5, !dbg !1744
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1744
  ret void, !dbg !1745
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRSConfig(%struct.RCC_CRSInitTypeDef* %pInit) #0 !dbg !1746 {
entry:
  %pInit.addr = alloca %struct.RCC_CRSInitTypeDef*, align 4
  %value = alloca i32, align 4
  store %struct.RCC_CRSInitTypeDef* %pInit, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !1747
  %or = or i32 %0, 16777216, !dbg !1747
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !1747
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !1748
  %and = and i32 %1, -16777217, !dbg !1748
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !1748
  %2 = load %struct.RCC_CRSInitTypeDef*, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4, !dbg !1749
  %Prescaler = getelementptr inbounds %struct.RCC_CRSInitTypeDef, %struct.RCC_CRSInitTypeDef* %2, i32 0, i32 0, !dbg !1750
  %3 = load i32, i32* %Prescaler, align 4, !dbg !1750
  %4 = load %struct.RCC_CRSInitTypeDef*, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4, !dbg !1751
  %Source = getelementptr inbounds %struct.RCC_CRSInitTypeDef, %struct.RCC_CRSInitTypeDef* %4, i32 0, i32 1, !dbg !1752
  %5 = load i32, i32* %Source, align 4, !dbg !1752
  %or1 = or i32 %3, %5, !dbg !1753
  %6 = load %struct.RCC_CRSInitTypeDef*, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4, !dbg !1754
  %Polarity = getelementptr inbounds %struct.RCC_CRSInitTypeDef, %struct.RCC_CRSInitTypeDef* %6, i32 0, i32 2, !dbg !1755
  %7 = load i32, i32* %Polarity, align 4, !dbg !1755
  %or2 = or i32 %or1, %7, !dbg !1756
  store i32 %or2, i32* %value, align 4, !dbg !1757
  %8 = load %struct.RCC_CRSInitTypeDef*, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4, !dbg !1758
  %ReloadValue = getelementptr inbounds %struct.RCC_CRSInitTypeDef, %struct.RCC_CRSInitTypeDef* %8, i32 0, i32 3, !dbg !1759
  %9 = load i32, i32* %ReloadValue, align 4, !dbg !1759
  %10 = load i32, i32* %value, align 4, !dbg !1760
  %or3 = or i32 %10, %9, !dbg !1760
  store i32 %or3, i32* %value, align 4, !dbg !1760
  %11 = load %struct.RCC_CRSInitTypeDef*, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4, !dbg !1761
  %ErrorLimitValue = getelementptr inbounds %struct.RCC_CRSInitTypeDef, %struct.RCC_CRSInitTypeDef* %11, i32 0, i32 4, !dbg !1762
  %12 = load i32, i32* %ErrorLimitValue, align 4, !dbg !1762
  %shl = shl i32 %12, 16, !dbg !1763
  %13 = load i32, i32* %value, align 4, !dbg !1764
  %or4 = or i32 %13, %shl, !dbg !1764
  store i32 %or4, i32* %value, align 4, !dbg !1764
  %14 = load i32, i32* %value, align 4, !dbg !1765
  store volatile i32 %14, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 1), align 4, !dbg !1765
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1766
  %and5 = and i32 %15, -32513, !dbg !1766
  %16 = load %struct.RCC_CRSInitTypeDef*, %struct.RCC_CRSInitTypeDef** %pInit.addr, align 4, !dbg !1766
  %HSI48CalibrationValue = getelementptr inbounds %struct.RCC_CRSInitTypeDef, %struct.RCC_CRSInitTypeDef* %16, i32 0, i32 5, !dbg !1766
  %17 = load i32, i32* %HSI48CalibrationValue, align 4, !dbg !1766
  %shl6 = shl i32 %17, 8, !dbg !1766
  %or7 = or i32 %and5, %shl6, !dbg !1766
  store volatile i32 %or7, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1766
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1767
  %or8 = or i32 %18, 96, !dbg !1767
  store volatile i32 %or8, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1767
  ret void, !dbg !1768
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRSSoftwareSynchronizationGenerate() #0 !dbg !1769 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1770
  %or = or i32 %0, 128, !dbg !1770
  store volatile i32 %or, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1770
  ret void, !dbg !1771
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRSGetSynchronizationInfo(%struct.RCC_CRSSynchroInfoTypeDef* %pSynchroInfo) #0 !dbg !1772 {
entry:
  %pSynchroInfo.addr = alloca %struct.RCC_CRSSynchroInfoTypeDef*, align 4
  store %struct.RCC_CRSSynchroInfoTypeDef* %pSynchroInfo, %struct.RCC_CRSSynchroInfoTypeDef** %pSynchroInfo.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 1), align 4, !dbg !1773
  %and = and i32 %0, 65535, !dbg !1773
  %1 = load %struct.RCC_CRSSynchroInfoTypeDef*, %struct.RCC_CRSSynchroInfoTypeDef** %pSynchroInfo.addr, align 4, !dbg !1774
  %ReloadValue = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, %struct.RCC_CRSSynchroInfoTypeDef* %1, i32 0, i32 0, !dbg !1775
  store i32 %and, i32* %ReloadValue, align 4, !dbg !1776
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1777
  %and1 = and i32 %2, 32512, !dbg !1777
  %shr = lshr i32 %and1, 8, !dbg !1778
  %3 = load %struct.RCC_CRSSynchroInfoTypeDef*, %struct.RCC_CRSSynchroInfoTypeDef** %pSynchroInfo.addr, align 4, !dbg !1779
  %HSI48CalibrationValue = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, %struct.RCC_CRSSynchroInfoTypeDef* %3, i32 0, i32 1, !dbg !1780
  store i32 %shr, i32* %HSI48CalibrationValue, align 4, !dbg !1781
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1782
  %and2 = and i32 %4, -65536, !dbg !1782
  %shr3 = lshr i32 %and2, 16, !dbg !1783
  %5 = load %struct.RCC_CRSSynchroInfoTypeDef*, %struct.RCC_CRSSynchroInfoTypeDef** %pSynchroInfo.addr, align 4, !dbg !1784
  %FreqErrorCapture = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, %struct.RCC_CRSSynchroInfoTypeDef* %5, i32 0, i32 2, !dbg !1785
  store i32 %shr3, i32* %FreqErrorCapture, align 4, !dbg !1786
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1787
  %and4 = and i32 %6, 32768, !dbg !1787
  %7 = load %struct.RCC_CRSSynchroInfoTypeDef*, %struct.RCC_CRSSynchroInfoTypeDef** %pSynchroInfo.addr, align 4, !dbg !1788
  %FreqErrorDirection = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, %struct.RCC_CRSSynchroInfoTypeDef* %7, i32 0, i32 3, !dbg !1789
  store i32 %and4, i32* %FreqErrorDirection, align 4, !dbg !1790
  ret void, !dbg !1791
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_RCCEx_CRSWaitSynchronization(i32 %Timeout) #0 !dbg !1792 {
entry:
  %Timeout.addr = alloca i32, align 4
  %crsstatus = alloca i32, align 4
  %tickstart = alloca i32, align 4
  store i32 %Timeout, i32* %Timeout.addr, align 4
  store i32 0, i32* %crsstatus, align 4, !dbg !1793
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1794
  store i32 %call, i32* %tickstart, align 4, !dbg !1795
  br label %do.body, !dbg !1796

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %Timeout.addr, align 4, !dbg !1797
  %cmp = icmp ne i32 %0, -1, !dbg !1798
  br i1 %cmp, label %if.then, label %if.end5, !dbg !1797

if.then:                                          ; preds = %do.body
  %call1 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !1799
  %1 = load i32, i32* %tickstart, align 4, !dbg !1800
  %sub = sub i32 %call1, %1, !dbg !1801
  %2 = load i32, i32* %Timeout.addr, align 4, !dbg !1802
  %cmp2 = icmp ugt i32 %sub, %2, !dbg !1803
  br i1 %cmp2, label %if.then4, label %lor.lhs.false, !dbg !1804

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* %Timeout.addr, align 4, !dbg !1805
  %cmp3 = icmp eq i32 %3, 0, !dbg !1806
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1807

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %crsstatus, align 4, !dbg !1808
  br label %if.end, !dbg !1809

if.end:                                           ; preds = %if.then4, %lor.lhs.false
  br label %if.end5, !dbg !1810

if.end5:                                          ; preds = %if.end, %do.body
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1811
  %and = and i32 %4, 1, !dbg !1811
  %cmp6 = icmp eq i32 %and, 1, !dbg !1811
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1811

if.then7:                                         ; preds = %if.end5
  %5 = load i32, i32* %crsstatus, align 4, !dbg !1812
  %or = or i32 %5, 2, !dbg !1812
  store i32 %or, i32* %crsstatus, align 4, !dbg !1812
  br label %do.body8, !dbg !1813

do.body8:                                         ; preds = %if.then7
  store volatile i32 1, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1813
  br label %do.end, !dbg !1813

do.end:                                           ; preds = %do.body8
  br label %if.end9, !dbg !1814

if.end9:                                          ; preds = %do.end, %if.end5
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1815
  %and10 = and i32 %6, 2, !dbg !1815
  %cmp11 = icmp eq i32 %and10, 2, !dbg !1815
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !1815

if.then12:                                        ; preds = %if.end9
  %7 = load i32, i32* %crsstatus, align 4, !dbg !1816
  %or13 = or i32 %7, 4, !dbg !1816
  store i32 %or13, i32* %crsstatus, align 4, !dbg !1816
  br label %do.body14, !dbg !1817

do.body14:                                        ; preds = %if.then12
  store volatile i32 2, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1817
  br label %do.end15, !dbg !1817

do.end15:                                         ; preds = %do.body14
  br label %if.end16, !dbg !1818

if.end16:                                         ; preds = %do.end15, %if.end9
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1819
  %and17 = and i32 %8, 1024, !dbg !1819
  %cmp18 = icmp eq i32 %and17, 1024, !dbg !1819
  br i1 %cmp18, label %if.then19, label %if.end23, !dbg !1819

if.then19:                                        ; preds = %if.end16
  %9 = load i32, i32* %crsstatus, align 4, !dbg !1820
  %or20 = or i32 %9, 32, !dbg !1820
  store i32 %or20, i32* %crsstatus, align 4, !dbg !1820
  br label %do.body21, !dbg !1821

do.body21:                                        ; preds = %if.then19
  store volatile i32 4, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1821
  br label %do.end22, !dbg !1821

do.end22:                                         ; preds = %do.body21
  br label %if.end23, !dbg !1822

if.end23:                                         ; preds = %do.end22, %if.end16
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1823
  %and24 = and i32 %10, 256, !dbg !1823
  %cmp25 = icmp eq i32 %and24, 256, !dbg !1823
  br i1 %cmp25, label %if.then26, label %if.end30, !dbg !1823

if.then26:                                        ; preds = %if.end23
  %11 = load i32, i32* %crsstatus, align 4, !dbg !1824
  %or27 = or i32 %11, 8, !dbg !1824
  store i32 %or27, i32* %crsstatus, align 4, !dbg !1824
  br label %do.body28, !dbg !1825

do.body28:                                        ; preds = %if.then26
  store volatile i32 4, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1825
  br label %do.end29, !dbg !1825

do.end29:                                         ; preds = %do.body28
  br label %if.end30, !dbg !1826

if.end30:                                         ; preds = %do.end29, %if.end23
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1827
  %and31 = and i32 %12, 512, !dbg !1827
  %cmp32 = icmp eq i32 %and31, 512, !dbg !1827
  br i1 %cmp32, label %if.then33, label %if.end37, !dbg !1827

if.then33:                                        ; preds = %if.end30
  %13 = load i32, i32* %crsstatus, align 4, !dbg !1828
  %or34 = or i32 %13, 16, !dbg !1828
  store i32 %or34, i32* %crsstatus, align 4, !dbg !1828
  br label %do.body35, !dbg !1829

do.body35:                                        ; preds = %if.then33
  store volatile i32 4, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1829
  br label %do.end36, !dbg !1829

do.end36:                                         ; preds = %do.body35
  br label %if.end37, !dbg !1830

if.end37:                                         ; preds = %do.end36, %if.end30
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1831
  %and38 = and i32 %14, 8, !dbg !1831
  %cmp39 = icmp eq i32 %and38, 8, !dbg !1831
  br i1 %cmp39, label %if.then40, label %if.end43, !dbg !1831

if.then40:                                        ; preds = %if.end37
  br label %do.body41, !dbg !1832

do.body41:                                        ; preds = %if.then40
  store volatile i32 8, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1832
  br label %do.end42, !dbg !1832

do.end42:                                         ; preds = %do.body41
  br label %if.end43, !dbg !1833

if.end43:                                         ; preds = %do.end42, %if.end37
  br label %do.cond, !dbg !1834

do.cond:                                          ; preds = %if.end43
  %15 = load i32, i32* %crsstatus, align 4, !dbg !1835
  %cmp44 = icmp eq i32 0, %15, !dbg !1836
  br i1 %cmp44, label %do.body, label %do.end45, !dbg !1834, !llvm.loop !1837

do.end45:                                         ; preds = %do.cond
  %16 = load i32, i32* %crsstatus, align 4, !dbg !1839
  ret i32 %16, !dbg !1840
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRS_IRQHandler() #0 !dbg !1841 {
entry:
  %crserror = alloca i32, align 4
  %itflags = alloca i32, align 4
  %itsources = alloca i32, align 4
  store i32 0, i32* %crserror, align 4, !dbg !1842
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 2), align 4, !dbg !1843
  store i32 %0, i32* %itflags, align 4, !dbg !1844
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 0), align 4, !dbg !1845
  store i32 %1, i32* %itsources, align 4, !dbg !1846
  %2 = load i32, i32* %itflags, align 4, !dbg !1847
  %and = and i32 %2, 1, !dbg !1848
  %cmp = icmp ne i32 %and, 0, !dbg !1849
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1850

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %itsources, align 4, !dbg !1851
  %and1 = and i32 %3, 1, !dbg !1852
  %cmp2 = icmp ne i32 %and1, 0, !dbg !1853
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1854

if.then:                                          ; preds = %land.lhs.true
  store volatile i32 1, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1855
  call arm_aapcs_vfpcc void @HAL_RCCEx_CRS_SyncOkCallback(), !dbg !1856
  br label %if.end39, !dbg !1857

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %itflags, align 4, !dbg !1858
  %and3 = and i32 %4, 2, !dbg !1859
  %cmp4 = icmp ne i32 %and3, 0, !dbg !1860
  br i1 %cmp4, label %land.lhs.true5, label %if.else9, !dbg !1861

land.lhs.true5:                                   ; preds = %if.else
  %5 = load i32, i32* %itsources, align 4, !dbg !1862
  %and6 = and i32 %5, 2, !dbg !1863
  %cmp7 = icmp ne i32 %and6, 0, !dbg !1864
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !1865

if.then8:                                         ; preds = %land.lhs.true5
  store volatile i32 2, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1866
  call arm_aapcs_vfpcc void @HAL_RCCEx_CRS_SyncWarnCallback(), !dbg !1867
  br label %if.end38, !dbg !1868

if.else9:                                         ; preds = %land.lhs.true5, %if.else
  %6 = load i32, i32* %itflags, align 4, !dbg !1869
  %and10 = and i32 %6, 8, !dbg !1870
  %cmp11 = icmp ne i32 %and10, 0, !dbg !1871
  br i1 %cmp11, label %land.lhs.true12, label %if.else16, !dbg !1872

land.lhs.true12:                                  ; preds = %if.else9
  %7 = load i32, i32* %itsources, align 4, !dbg !1873
  %and13 = and i32 %7, 8, !dbg !1874
  %cmp14 = icmp ne i32 %and13, 0, !dbg !1875
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !1876

if.then15:                                        ; preds = %land.lhs.true12
  store volatile i32 8, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1877
  call arm_aapcs_vfpcc void @HAL_RCCEx_CRS_ExpectedSyncCallback(), !dbg !1878
  br label %if.end37, !dbg !1879

if.else16:                                        ; preds = %land.lhs.true12, %if.else9
  %8 = load i32, i32* %itflags, align 4, !dbg !1880
  %and17 = and i32 %8, 4, !dbg !1881
  %cmp18 = icmp ne i32 %and17, 0, !dbg !1882
  br i1 %cmp18, label %land.lhs.true19, label %if.end36, !dbg !1883

land.lhs.true19:                                  ; preds = %if.else16
  %9 = load i32, i32* %itsources, align 4, !dbg !1884
  %and20 = and i32 %9, 4, !dbg !1885
  %cmp21 = icmp ne i32 %and20, 0, !dbg !1886
  br i1 %cmp21, label %if.then22, label %if.end36, !dbg !1887

if.then22:                                        ; preds = %land.lhs.true19
  %10 = load i32, i32* %itflags, align 4, !dbg !1888
  %and23 = and i32 %10, 256, !dbg !1889
  %cmp24 = icmp ne i32 %and23, 0, !dbg !1890
  br i1 %cmp24, label %if.then25, label %if.end, !dbg !1891

if.then25:                                        ; preds = %if.then22
  %11 = load i32, i32* %crserror, align 4, !dbg !1892
  %or = or i32 %11, 8, !dbg !1892
  store i32 %or, i32* %crserror, align 4, !dbg !1892
  br label %if.end, !dbg !1893

if.end:                                           ; preds = %if.then25, %if.then22
  %12 = load i32, i32* %itflags, align 4, !dbg !1894
  %and26 = and i32 %12, 512, !dbg !1895
  %cmp27 = icmp ne i32 %and26, 0, !dbg !1896
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !1897

if.then28:                                        ; preds = %if.end
  %13 = load i32, i32* %crserror, align 4, !dbg !1898
  %or29 = or i32 %13, 16, !dbg !1898
  store i32 %or29, i32* %crserror, align 4, !dbg !1898
  br label %if.end30, !dbg !1899

if.end30:                                         ; preds = %if.then28, %if.end
  %14 = load i32, i32* %itflags, align 4, !dbg !1900
  %and31 = and i32 %14, 1024, !dbg !1901
  %cmp32 = icmp ne i32 %and31, 0, !dbg !1902
  br i1 %cmp32, label %if.then33, label %if.end35, !dbg !1903

if.then33:                                        ; preds = %if.end30
  %15 = load i32, i32* %crserror, align 4, !dbg !1904
  %or34 = or i32 %15, 32, !dbg !1904
  store i32 %or34, i32* %crserror, align 4, !dbg !1904
  br label %if.end35, !dbg !1905

if.end35:                                         ; preds = %if.then33, %if.end30
  store volatile i32 4, i32* getelementptr inbounds (%struct.CRS_TypeDef, %struct.CRS_TypeDef* inttoptr (i32 1073766400 to %struct.CRS_TypeDef*), i32 0, i32 3), align 4, !dbg !1906
  %16 = load i32, i32* %crserror, align 4, !dbg !1907
  call arm_aapcs_vfpcc void @HAL_RCCEx_CRS_ErrorCallback(i32 %16), !dbg !1908
  br label %if.end36, !dbg !1909

if.end36:                                         ; preds = %if.end35, %land.lhs.true19, %if.else16
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then15
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then8
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then
  ret void, !dbg !1910
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRS_SyncOkCallback() #0 !dbg !1911 {
entry:
  ret void, !dbg !1912
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRS_SyncWarnCallback() #0 !dbg !1913 {
entry:
  ret void, !dbg !1914
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRS_ExpectedSyncCallback() #0 !dbg !1915 {
entry:
  ret void, !dbg !1916
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_RCCEx_CRS_ErrorCallback(i32 %Error) #0 !dbg !1917 {
entry:
  %Error.addr = alloca i32, align 4
  store i32 %Error, i32* %Error.addr, align 4
  %0 = load i32, i32* %Error.addr, align 4, !dbg !1918
  ret void, !dbg !1919
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @RCCEx_PLLSAI2_GetVCOFreq() #0 !dbg !1920 {
entry:
  %pllvco = alloca i32, align 4
  store i32 0, i32* %pllvco, align 4, !dbg !1921
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !1922
  %and = and i32 %0, 3, !dbg !1922
  switch i32 %and, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb13
  ], !dbg !1923

sw.bb:                                            ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1924
  %and1 = and i32 %1, 2, !dbg !1924
  %cmp = icmp eq i32 %and1, 2, !dbg !1924
  br i1 %cmp, label %if.then, label %if.else, !dbg !1924

if.then:                                          ; preds = %sw.bb
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1925
  %and2 = and i32 %2, 8, !dbg !1925
  %cmp3 = icmp ne i32 %and2, 0, !dbg !1925
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1925

cond.true:                                        ; preds = %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1925
  %and4 = and i32 %3, 240, !dbg !1925
  br label %cond.end, !dbg !1925

cond.false:                                       ; preds = %if.then
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1925
  %and5 = and i32 %4, 3840, !dbg !1925
  %shr = lshr i32 %and5, 4, !dbg !1925
  br label %cond.end, !dbg !1925

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and4, %cond.true ], [ %shr, %cond.false ], !dbg !1925
  %shr6 = lshr i32 %cond, 4, !dbg !1926
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %shr6, !dbg !1927
  %5 = load i32, i32* %arrayidx, align 4, !dbg !1927
  store i32 %5, i32* %pllvco, align 4, !dbg !1928
  br label %if.end, !dbg !1929

if.else:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %sw.epilog, !dbg !1930

sw.bb7:                                           ; preds = %entry
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1931
  %and8 = and i32 %6, 1024, !dbg !1931
  %cmp9 = icmp eq i32 %and8, 1024, !dbg !1931
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !1931

if.then10:                                        ; preds = %sw.bb7
  store i32 16000000, i32* %pllvco, align 4, !dbg !1932
  br label %if.end12, !dbg !1933

if.else11:                                        ; preds = %sw.bb7
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %sw.epilog, !dbg !1934

sw.bb13:                                          ; preds = %entry
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1935
  %and14 = and i32 %7, 131072, !dbg !1935
  %cmp15 = icmp eq i32 %and14, 131072, !dbg !1935
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !1935

if.then16:                                        ; preds = %sw.bb13
  store i32 8000000, i32* %pllvco, align 4, !dbg !1936
  br label %if.end18, !dbg !1937

if.else17:                                        ; preds = %sw.bb13
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  br label %sw.epilog, !dbg !1938

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !1939

sw.epilog:                                        ; preds = %sw.default, %if.end18, %if.end12, %if.end
  %8 = load i32, i32* %pllvco, align 4, !dbg !1940
  ret i32 %8, !dbg !1941
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc_ex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_RCCEx_PeriphCLKConfig", scope: !1, file: !1, line: 148, type: !9, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 150, column: 21, scope: !8)
!11 = !DILocation(line: 151, column: 21, scope: !8)
!12 = !DILocation(line: 159, column: 10, scope: !8)
!13 = !DILocation(line: 159, column: 25, scope: !8)
!14 = !DILocation(line: 159, column: 47, scope: !8)
!15 = !DILocation(line: 159, column: 69, scope: !8)
!16 = !DILocation(line: 159, column: 7, scope: !8)
!17 = !DILocation(line: 164, column: 13, scope: !8)
!18 = !DILocation(line: 164, column: 28, scope: !8)
!19 = !DILocation(line: 164, column: 5, scope: !8)
!20 = !DILocation(line: 168, column: 9, scope: !8)
!21 = !DILocation(line: 170, column: 9, scope: !8)
!22 = !DILocation(line: 174, column: 38, scope: !8)
!23 = !DILocation(line: 174, column: 53, scope: !8)
!24 = !DILocation(line: 174, column: 15, scope: !8)
!25 = !DILocation(line: 174, column: 13, scope: !8)
!26 = !DILocation(line: 176, column: 9, scope: !8)
!27 = !DILocation(line: 180, column: 38, scope: !8)
!28 = !DILocation(line: 180, column: 53, scope: !8)
!29 = !DILocation(line: 180, column: 15, scope: !8)
!30 = !DILocation(line: 180, column: 13, scope: !8)
!31 = !DILocation(line: 182, column: 9, scope: !8)
!32 = !DILocation(line: 187, column: 9, scope: !8)
!33 = !DILocation(line: 190, column: 13, scope: !8)
!34 = !DILocation(line: 191, column: 9, scope: !8)
!35 = !DILocation(line: 194, column: 9, scope: !8)
!36 = !DILocation(line: 194, column: 13, scope: !8)
!37 = !DILocation(line: 197, column: 7, scope: !8)
!38 = !DILocation(line: 198, column: 5, scope: !8)
!39 = !DILocation(line: 202, column: 16, scope: !8)
!40 = !DILocation(line: 202, column: 14, scope: !8)
!41 = !DILocation(line: 204, column: 3, scope: !8)
!42 = !DILocation(line: 207, column: 10, scope: !8)
!43 = !DILocation(line: 207, column: 25, scope: !8)
!44 = !DILocation(line: 207, column: 47, scope: !8)
!45 = !DILocation(line: 207, column: 69, scope: !8)
!46 = !DILocation(line: 207, column: 7, scope: !8)
!47 = !DILocation(line: 212, column: 13, scope: !8)
!48 = !DILocation(line: 212, column: 28, scope: !8)
!49 = !DILocation(line: 212, column: 5, scope: !8)
!50 = !DILocation(line: 216, column: 9, scope: !8)
!51 = !DILocation(line: 218, column: 9, scope: !8)
!52 = !DILocation(line: 222, column: 38, scope: !8)
!53 = !DILocation(line: 222, column: 53, scope: !8)
!54 = !DILocation(line: 222, column: 15, scope: !8)
!55 = !DILocation(line: 222, column: 13, scope: !8)
!56 = !DILocation(line: 224, column: 9, scope: !8)
!57 = !DILocation(line: 228, column: 38, scope: !8)
!58 = !DILocation(line: 228, column: 53, scope: !8)
!59 = !DILocation(line: 228, column: 15, scope: !8)
!60 = !DILocation(line: 228, column: 13, scope: !8)
!61 = !DILocation(line: 230, column: 9, scope: !8)
!62 = !DILocation(line: 235, column: 9, scope: !8)
!63 = !DILocation(line: 238, column: 13, scope: !8)
!64 = !DILocation(line: 239, column: 9, scope: !8)
!65 = !DILocation(line: 242, column: 9, scope: !8)
!66 = !DILocation(line: 242, column: 13, scope: !8)
!67 = !DILocation(line: 245, column: 7, scope: !8)
!68 = !DILocation(line: 246, column: 5, scope: !8)
!69 = !DILocation(line: 250, column: 16, scope: !8)
!70 = !DILocation(line: 250, column: 14, scope: !8)
!71 = !DILocation(line: 252, column: 3, scope: !8)
!72 = !DILocation(line: 255, column: 8, scope: !8)
!73 = !DILocation(line: 255, column: 23, scope: !8)
!74 = !DILocation(line: 255, column: 44, scope: !8)
!75 = !DILocation(line: 255, column: 65, scope: !8)
!76 = !DILocation(line: 255, column: 7, scope: !8)
!77 = !DILocation(line: 257, column: 22, scope: !8)
!78 = !DILocation(line: 263, column: 9, scope: !8)
!79 = !DILocation(line: 265, column: 7, scope: !8)
!80 = !DILocation(line: 266, column: 21, scope: !8)
!81 = !DILocation(line: 267, column: 5, scope: !8)
!82 = !DILocation(line: 270, column: 5, scope: !8)
!83 = !DILocation(line: 273, column: 17, scope: !8)
!84 = !DILocation(line: 273, column: 15, scope: !8)
!85 = !DILocation(line: 275, column: 5, scope: !8)
!86 = !DILocation(line: 275, column: 18, scope: !8)
!87 = !DILocation(line: 275, column: 22, scope: !8)
!88 = !DILocation(line: 275, column: 37, scope: !8)
!89 = !DILocation(line: 277, column: 12, scope: !8)
!90 = !DILocation(line: 277, column: 28, scope: !8)
!91 = !DILocation(line: 277, column: 26, scope: !8)
!92 = !DILocation(line: 277, column: 39, scope: !8)
!93 = !DILocation(line: 277, column: 11, scope: !8)
!94 = !DILocation(line: 279, column: 13, scope: !8)
!95 = !DILocation(line: 280, column: 9, scope: !8)
!96 = distinct !{!96, !85, !97}
!97 = !DILocation(line: 282, column: 5, scope: !8)
!98 = !DILocation(line: 284, column: 9, scope: !8)
!99 = !DILocation(line: 284, column: 13, scope: !8)
!100 = !DILocation(line: 287, column: 21, scope: !8)
!101 = !DILocation(line: 287, column: 19, scope: !8)
!102 = !DILocation(line: 289, column: 12, scope: !8)
!103 = !DILocation(line: 289, column: 24, scope: !8)
!104 = !DILocation(line: 289, column: 50, scope: !8)
!105 = !DILocation(line: 289, column: 54, scope: !8)
!106 = !DILocation(line: 289, column: 69, scope: !8)
!107 = !DILocation(line: 289, column: 84, scope: !8)
!108 = !DILocation(line: 289, column: 66, scope: !8)
!109 = !DILocation(line: 289, column: 11, scope: !8)
!110 = !DILocation(line: 292, column: 23, scope: !8)
!111 = !DILocation(line: 292, column: 21, scope: !8)
!112 = !DILocation(line: 294, column: 9, scope: !8)
!113 = !DILocation(line: 295, column: 9, scope: !8)
!114 = !DILocation(line: 297, column: 21, scope: !8)
!115 = !DILocation(line: 297, column: 19, scope: !8)
!116 = !DILocation(line: 298, column: 7, scope: !8)
!117 = !DILocation(line: 301, column: 11, scope: !8)
!118 = !DILocation(line: 304, column: 21, scope: !8)
!119 = !DILocation(line: 304, column: 19, scope: !8)
!120 = !DILocation(line: 307, column: 9, scope: !8)
!121 = !DILocation(line: 307, column: 16, scope: !8)
!122 = !DILocation(line: 307, column: 53, scope: !8)
!123 = !DILocation(line: 309, column: 16, scope: !8)
!124 = !DILocation(line: 309, column: 32, scope: !8)
!125 = !DILocation(line: 309, column: 30, scope: !8)
!126 = !DILocation(line: 309, column: 43, scope: !8)
!127 = !DILocation(line: 309, column: 15, scope: !8)
!128 = !DILocation(line: 311, column: 17, scope: !8)
!129 = !DILocation(line: 312, column: 13, scope: !8)
!130 = distinct !{!130, !120, !131}
!131 = !DILocation(line: 314, column: 9, scope: !8)
!132 = !DILocation(line: 315, column: 7, scope: !8)
!133 = !DILocation(line: 317, column: 11, scope: !8)
!134 = !DILocation(line: 317, column: 15, scope: !8)
!135 = !DILocation(line: 320, column: 9, scope: !8)
!136 = !DILocation(line: 321, column: 7, scope: !8)
!137 = !DILocation(line: 325, column: 18, scope: !8)
!138 = !DILocation(line: 325, column: 16, scope: !8)
!139 = !DILocation(line: 327, column: 5, scope: !8)
!140 = !DILocation(line: 331, column: 16, scope: !8)
!141 = !DILocation(line: 331, column: 14, scope: !8)
!142 = !DILocation(line: 335, column: 9, scope: !8)
!143 = !DILocation(line: 335, column: 23, scope: !8)
!144 = !DILocation(line: 337, column: 7, scope: !8)
!145 = !DILocation(line: 338, column: 5, scope: !8)
!146 = !DILocation(line: 339, column: 3, scope: !8)
!147 = !DILocation(line: 342, column: 9, scope: !8)
!148 = !DILocation(line: 342, column: 24, scope: !8)
!149 = !DILocation(line: 342, column: 46, scope: !8)
!150 = !DILocation(line: 342, column: 70, scope: !8)
!151 = !DILocation(line: 342, column: 7, scope: !8)
!152 = !DILocation(line: 348, column: 5, scope: !8)
!153 = !DILocation(line: 349, column: 3, scope: !8)
!154 = !DILocation(line: 352, column: 9, scope: !8)
!155 = !DILocation(line: 352, column: 24, scope: !8)
!156 = !DILocation(line: 352, column: 46, scope: !8)
!157 = !DILocation(line: 352, column: 70, scope: !8)
!158 = !DILocation(line: 352, column: 7, scope: !8)
!159 = !DILocation(line: 358, column: 5, scope: !8)
!160 = !DILocation(line: 359, column: 3, scope: !8)
!161 = !DILocation(line: 362, column: 9, scope: !8)
!162 = !DILocation(line: 362, column: 24, scope: !8)
!163 = !DILocation(line: 362, column: 46, scope: !8)
!164 = !DILocation(line: 362, column: 70, scope: !8)
!165 = !DILocation(line: 362, column: 7, scope: !8)
!166 = !DILocation(line: 368, column: 5, scope: !8)
!167 = !DILocation(line: 369, column: 3, scope: !8)
!168 = !DILocation(line: 372, column: 9, scope: !8)
!169 = !DILocation(line: 372, column: 24, scope: !8)
!170 = !DILocation(line: 372, column: 46, scope: !8)
!171 = !DILocation(line: 372, column: 69, scope: !8)
!172 = !DILocation(line: 372, column: 7, scope: !8)
!173 = !DILocation(line: 378, column: 5, scope: !8)
!174 = !DILocation(line: 379, column: 3, scope: !8)
!175 = !DILocation(line: 382, column: 9, scope: !8)
!176 = !DILocation(line: 382, column: 24, scope: !8)
!177 = !DILocation(line: 382, column: 46, scope: !8)
!178 = !DILocation(line: 382, column: 69, scope: !8)
!179 = !DILocation(line: 382, column: 7, scope: !8)
!180 = !DILocation(line: 388, column: 5, scope: !8)
!181 = !DILocation(line: 389, column: 3, scope: !8)
!182 = !DILocation(line: 392, column: 9, scope: !8)
!183 = !DILocation(line: 392, column: 24, scope: !8)
!184 = !DILocation(line: 392, column: 46, scope: !8)
!185 = !DILocation(line: 392, column: 71, scope: !8)
!186 = !DILocation(line: 392, column: 7, scope: !8)
!187 = !DILocation(line: 398, column: 5, scope: !8)
!188 = !DILocation(line: 399, column: 3, scope: !8)
!189 = !DILocation(line: 402, column: 9, scope: !8)
!190 = !DILocation(line: 402, column: 24, scope: !8)
!191 = !DILocation(line: 402, column: 46, scope: !8)
!192 = !DILocation(line: 402, column: 70, scope: !8)
!193 = !DILocation(line: 402, column: 7, scope: !8)
!194 = !DILocation(line: 408, column: 5, scope: !8)
!195 = !DILocation(line: 409, column: 3, scope: !8)
!196 = !DILocation(line: 412, column: 9, scope: !8)
!197 = !DILocation(line: 412, column: 24, scope: !8)
!198 = !DILocation(line: 412, column: 46, scope: !8)
!199 = !DILocation(line: 412, column: 70, scope: !8)
!200 = !DILocation(line: 412, column: 7, scope: !8)
!201 = !DILocation(line: 418, column: 5, scope: !8)
!202 = !DILocation(line: 419, column: 3, scope: !8)
!203 = !DILocation(line: 422, column: 9, scope: !8)
!204 = !DILocation(line: 422, column: 24, scope: !8)
!205 = !DILocation(line: 422, column: 46, scope: !8)
!206 = !DILocation(line: 422, column: 70, scope: !8)
!207 = !DILocation(line: 422, column: 7, scope: !8)
!208 = !DILocation(line: 428, column: 5, scope: !8)
!209 = !DILocation(line: 429, column: 3, scope: !8)
!210 = !DILocation(line: 432, column: 9, scope: !8)
!211 = !DILocation(line: 432, column: 24, scope: !8)
!212 = !DILocation(line: 432, column: 46, scope: !8)
!213 = !DILocation(line: 432, column: 69, scope: !8)
!214 = !DILocation(line: 432, column: 7, scope: !8)
!215 = !DILocation(line: 438, column: 13, scope: !8)
!216 = !DILocation(line: 438, column: 28, scope: !8)
!217 = !DILocation(line: 438, column: 5, scope: !8)
!218 = !DILocation(line: 442, column: 9, scope: !8)
!219 = !DILocation(line: 446, column: 9, scope: !8)
!220 = !DILocation(line: 448, column: 9, scope: !8)
!221 = !DILocation(line: 452, column: 38, scope: !8)
!222 = !DILocation(line: 452, column: 53, scope: !8)
!223 = !DILocation(line: 452, column: 15, scope: !8)
!224 = !DILocation(line: 452, column: 13, scope: !8)
!225 = !DILocation(line: 454, column: 9, scope: !8)
!226 = !DILocation(line: 457, column: 13, scope: !8)
!227 = !DILocation(line: 458, column: 9, scope: !8)
!228 = !DILocation(line: 461, column: 9, scope: !8)
!229 = !DILocation(line: 461, column: 13, scope: !8)
!230 = !DILocation(line: 464, column: 7, scope: !8)
!231 = !DILocation(line: 465, column: 5, scope: !8)
!232 = !DILocation(line: 469, column: 16, scope: !8)
!233 = !DILocation(line: 469, column: 14, scope: !8)
!234 = !DILocation(line: 471, column: 3, scope: !8)
!235 = !DILocation(line: 474, column: 9, scope: !8)
!236 = !DILocation(line: 474, column: 24, scope: !8)
!237 = !DILocation(line: 474, column: 46, scope: !8)
!238 = !DILocation(line: 474, column: 68, scope: !8)
!239 = !DILocation(line: 474, column: 7, scope: !8)
!240 = !DILocation(line: 480, column: 5, scope: !8)
!241 = !DILocation(line: 481, column: 3, scope: !8)
!242 = !DILocation(line: 484, column: 9, scope: !8)
!243 = !DILocation(line: 484, column: 24, scope: !8)
!244 = !DILocation(line: 484, column: 46, scope: !8)
!245 = !DILocation(line: 484, column: 68, scope: !8)
!246 = !DILocation(line: 484, column: 7, scope: !8)
!247 = !DILocation(line: 490, column: 5, scope: !8)
!248 = !DILocation(line: 491, column: 3, scope: !8)
!249 = !DILocation(line: 494, column: 9, scope: !8)
!250 = !DILocation(line: 494, column: 24, scope: !8)
!251 = !DILocation(line: 494, column: 46, scope: !8)
!252 = !DILocation(line: 494, column: 68, scope: !8)
!253 = !DILocation(line: 494, column: 7, scope: !8)
!254 = !DILocation(line: 500, column: 5, scope: !8)
!255 = !DILocation(line: 501, column: 3, scope: !8)
!256 = !DILocation(line: 504, column: 9, scope: !8)
!257 = !DILocation(line: 504, column: 24, scope: !8)
!258 = !DILocation(line: 504, column: 46, scope: !8)
!259 = !DILocation(line: 504, column: 68, scope: !8)
!260 = !DILocation(line: 504, column: 7, scope: !8)
!261 = !DILocation(line: 510, column: 5, scope: !8)
!262 = !DILocation(line: 511, column: 3, scope: !8)
!263 = !DILocation(line: 516, column: 9, scope: !8)
!264 = !DILocation(line: 516, column: 24, scope: !8)
!265 = !DILocation(line: 516, column: 46, scope: !8)
!266 = !DILocation(line: 516, column: 67, scope: !8)
!267 = !DILocation(line: 516, column: 7, scope: !8)
!268 = !DILocation(line: 522, column: 5, scope: !8)
!269 = !DILocation(line: 524, column: 9, scope: !8)
!270 = !DILocation(line: 524, column: 24, scope: !8)
!271 = !DILocation(line: 524, column: 42, scope: !8)
!272 = !DILocation(line: 527, column: 7, scope: !8)
!273 = !DILocation(line: 528, column: 5, scope: !8)
!274 = !DILocation(line: 531, column: 11, scope: !8)
!275 = !DILocation(line: 531, column: 26, scope: !8)
!276 = !DILocation(line: 531, column: 44, scope: !8)
!277 = !DILocation(line: 534, column: 38, scope: !8)
!278 = !DILocation(line: 534, column: 53, scope: !8)
!279 = !DILocation(line: 534, column: 15, scope: !8)
!280 = !DILocation(line: 534, column: 13, scope: !8)
!281 = !DILocation(line: 536, column: 13, scope: !8)
!282 = !DILocation(line: 536, column: 17, scope: !8)
!283 = !DILocation(line: 539, column: 20, scope: !8)
!284 = !DILocation(line: 539, column: 18, scope: !8)
!285 = !DILocation(line: 540, column: 9, scope: !8)
!286 = !DILocation(line: 541, column: 7, scope: !8)
!287 = !DILocation(line: 543, column: 3, scope: !8)
!288 = !DILocation(line: 548, column: 9, scope: !8)
!289 = !DILocation(line: 548, column: 24, scope: !8)
!290 = !DILocation(line: 548, column: 46, scope: !8)
!291 = !DILocation(line: 548, column: 70, scope: !8)
!292 = !DILocation(line: 548, column: 7, scope: !8)
!293 = !DILocation(line: 554, column: 5, scope: !8)
!294 = !DILocation(line: 556, column: 9, scope: !8)
!295 = !DILocation(line: 556, column: 24, scope: !8)
!296 = !DILocation(line: 556, column: 45, scope: !8)
!297 = !DILocation(line: 559, column: 36, scope: !8)
!298 = !DILocation(line: 559, column: 51, scope: !8)
!299 = !DILocation(line: 559, column: 13, scope: !8)
!300 = !DILocation(line: 559, column: 11, scope: !8)
!301 = !DILocation(line: 561, column: 11, scope: !8)
!302 = !DILocation(line: 561, column: 15, scope: !8)
!303 = !DILocation(line: 564, column: 18, scope: !8)
!304 = !DILocation(line: 564, column: 16, scope: !8)
!305 = !DILocation(line: 565, column: 7, scope: !8)
!306 = !DILocation(line: 566, column: 5, scope: !8)
!307 = !DILocation(line: 567, column: 14, scope: !8)
!308 = !DILocation(line: 567, column: 29, scope: !8)
!309 = !DILocation(line: 567, column: 50, scope: !8)
!310 = !DILocation(line: 570, column: 7, scope: !8)
!311 = !DILocation(line: 571, column: 5, scope: !8)
!312 = !DILocation(line: 572, column: 14, scope: !8)
!313 = !DILocation(line: 572, column: 29, scope: !8)
!314 = !DILocation(line: 572, column: 50, scope: !8)
!315 = !DILocation(line: 575, column: 7, scope: !8)
!316 = !DILocation(line: 576, column: 5, scope: !8)
!317 = !DILocation(line: 581, column: 3, scope: !8)
!318 = !DILocation(line: 584, column: 9, scope: !8)
!319 = !DILocation(line: 584, column: 24, scope: !8)
!320 = !DILocation(line: 584, column: 46, scope: !8)
!321 = !DILocation(line: 584, column: 67, scope: !8)
!322 = !DILocation(line: 584, column: 7, scope: !8)
!323 = !DILocation(line: 590, column: 5, scope: !8)
!324 = !DILocation(line: 592, column: 9, scope: !8)
!325 = !DILocation(line: 592, column: 24, scope: !8)
!326 = !DILocation(line: 592, column: 42, scope: !8)
!327 = !DILocation(line: 595, column: 7, scope: !8)
!328 = !DILocation(line: 596, column: 5, scope: !8)
!329 = !DILocation(line: 597, column: 14, scope: !8)
!330 = !DILocation(line: 597, column: 29, scope: !8)
!331 = !DILocation(line: 597, column: 47, scope: !8)
!332 = !DILocation(line: 600, column: 36, scope: !8)
!333 = !DILocation(line: 600, column: 51, scope: !8)
!334 = !DILocation(line: 600, column: 13, scope: !8)
!335 = !DILocation(line: 600, column: 11, scope: !8)
!336 = !DILocation(line: 602, column: 11, scope: !8)
!337 = !DILocation(line: 602, column: 15, scope: !8)
!338 = !DILocation(line: 605, column: 18, scope: !8)
!339 = !DILocation(line: 605, column: 16, scope: !8)
!340 = !DILocation(line: 606, column: 7, scope: !8)
!341 = !DILocation(line: 607, column: 5, scope: !8)
!342 = !DILocation(line: 612, column: 3, scope: !8)
!343 = !DILocation(line: 615, column: 9, scope: !8)
!344 = !DILocation(line: 615, column: 24, scope: !8)
!345 = !DILocation(line: 615, column: 46, scope: !8)
!346 = !DILocation(line: 615, column: 67, scope: !8)
!347 = !DILocation(line: 615, column: 7, scope: !8)
!348 = !DILocation(line: 621, column: 5, scope: !8)
!349 = !DILocation(line: 623, column: 9, scope: !8)
!350 = !DILocation(line: 623, column: 24, scope: !8)
!351 = !DILocation(line: 623, column: 42, scope: !8)
!352 = !DILocation(line: 626, column: 36, scope: !8)
!353 = !DILocation(line: 626, column: 51, scope: !8)
!354 = !DILocation(line: 626, column: 13, scope: !8)
!355 = !DILocation(line: 626, column: 11, scope: !8)
!356 = !DILocation(line: 628, column: 11, scope: !8)
!357 = !DILocation(line: 628, column: 15, scope: !8)
!358 = !DILocation(line: 631, column: 18, scope: !8)
!359 = !DILocation(line: 631, column: 16, scope: !8)
!360 = !DILocation(line: 632, column: 7, scope: !8)
!361 = !DILocation(line: 633, column: 5, scope: !8)
!362 = !DILocation(line: 634, column: 3, scope: !8)
!363 = !DILocation(line: 637, column: 9, scope: !8)
!364 = !DILocation(line: 637, column: 24, scope: !8)
!365 = !DILocation(line: 637, column: 46, scope: !8)
!366 = !DILocation(line: 637, column: 70, scope: !8)
!367 = !DILocation(line: 637, column: 7, scope: !8)
!368 = !DILocation(line: 643, column: 5, scope: !8)
!369 = !DILocation(line: 644, column: 3, scope: !8)
!370 = !DILocation(line: 647, column: 9, scope: !8)
!371 = !DILocation(line: 647, column: 24, scope: !8)
!372 = !DILocation(line: 647, column: 46, scope: !8)
!373 = !DILocation(line: 647, column: 75, scope: !8)
!374 = !DILocation(line: 647, column: 7, scope: !8)
!375 = !DILocation(line: 653, column: 5, scope: !8)
!376 = !DILocation(line: 654, column: 3, scope: !8)
!377 = !DILocation(line: 657, column: 9, scope: !8)
!378 = !DILocation(line: 657, column: 24, scope: !8)
!379 = !DILocation(line: 657, column: 46, scope: !8)
!380 = !DILocation(line: 657, column: 68, scope: !8)
!381 = !DILocation(line: 657, column: 7, scope: !8)
!382 = !DILocation(line: 663, column: 5, scope: !8)
!383 = !DILocation(line: 665, column: 9, scope: !8)
!384 = !DILocation(line: 665, column: 24, scope: !8)
!385 = !DILocation(line: 665, column: 43, scope: !8)
!386 = !DILocation(line: 668, column: 7, scope: !8)
!387 = !DILocation(line: 669, column: 5, scope: !8)
!388 = !DILocation(line: 670, column: 3, scope: !8)
!389 = !DILocation(line: 672, column: 10, scope: !8)
!390 = !DILocation(line: 672, column: 3, scope: !8)
!391 = distinct !DISubprogram(name: "RCCEx_PLLSAI1_Config", scope: !1, file: !1, line: 2475, type: !9, scopeLine: 2476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!392 = !DILocation(line: 2477, column: 21, scope: !391)
!393 = !DILocation(line: 2488, column: 11, scope: !391)
!394 = !DILocation(line: 2488, column: 21, scope: !391)
!395 = !DILocation(line: 2488, column: 3, scope: !391)
!396 = !DILocation(line: 2491, column: 11, scope: !391)
!397 = !DILocation(line: 2493, column: 16, scope: !391)
!398 = !DILocation(line: 2494, column: 7, scope: !391)
!399 = !DILocation(line: 2495, column: 7, scope: !391)
!400 = !DILocation(line: 2497, column: 11, scope: !391)
!401 = !DILocation(line: 2499, column: 16, scope: !391)
!402 = !DILocation(line: 2500, column: 7, scope: !391)
!403 = !DILocation(line: 2501, column: 7, scope: !391)
!404 = !DILocation(line: 2503, column: 11, scope: !391)
!405 = !DILocation(line: 2505, column: 16, scope: !391)
!406 = !DILocation(line: 2506, column: 7, scope: !391)
!407 = !DILocation(line: 2507, column: 7, scope: !391)
!408 = !DILocation(line: 2509, column: 14, scope: !391)
!409 = !DILocation(line: 2510, column: 7, scope: !391)
!410 = !DILocation(line: 2513, column: 7, scope: !391)
!411 = !DILocation(line: 2513, column: 14, scope: !391)
!412 = !DILocation(line: 2516, column: 5, scope: !391)
!413 = !DILocation(line: 2519, column: 17, scope: !391)
!414 = !DILocation(line: 2519, column: 15, scope: !391)
!415 = !DILocation(line: 2522, column: 5, scope: !391)
!416 = !DILocation(line: 2522, column: 12, scope: !391)
!417 = !DILocation(line: 2522, column: 49, scope: !391)
!418 = !DILocation(line: 2524, column: 12, scope: !391)
!419 = !DILocation(line: 2524, column: 28, scope: !391)
!420 = !DILocation(line: 2524, column: 26, scope: !391)
!421 = !DILocation(line: 2524, column: 39, scope: !391)
!422 = !DILocation(line: 2524, column: 11, scope: !391)
!423 = !DILocation(line: 2526, column: 16, scope: !391)
!424 = !DILocation(line: 2527, column: 9, scope: !391)
!425 = distinct !{!425, !415, !426}
!426 = !DILocation(line: 2529, column: 5, scope: !391)
!427 = !DILocation(line: 2531, column: 9, scope: !391)
!428 = !DILocation(line: 2531, column: 16, scope: !391)
!429 = !DILocation(line: 2533, column: 11, scope: !391)
!430 = !DILocation(line: 2533, column: 19, scope: !391)
!431 = !DILocation(line: 2538, column: 9, scope: !391)
!432 = !DILocation(line: 2544, column: 7, scope: !391)
!433 = !DILocation(line: 2545, column: 16, scope: !391)
!434 = !DILocation(line: 2545, column: 24, scope: !391)
!435 = !DILocation(line: 2550, column: 9, scope: !391)
!436 = !DILocation(line: 2556, column: 7, scope: !391)
!437 = !DILocation(line: 2562, column: 9, scope: !391)
!438 = !DILocation(line: 2571, column: 7, scope: !391)
!439 = !DILocation(line: 2574, column: 19, scope: !391)
!440 = !DILocation(line: 2574, column: 17, scope: !391)
!441 = !DILocation(line: 2577, column: 7, scope: !391)
!442 = !DILocation(line: 2577, column: 14, scope: !391)
!443 = !DILocation(line: 2577, column: 51, scope: !391)
!444 = !DILocation(line: 2579, column: 14, scope: !391)
!445 = !DILocation(line: 2579, column: 30, scope: !391)
!446 = !DILocation(line: 2579, column: 28, scope: !391)
!447 = !DILocation(line: 2579, column: 41, scope: !391)
!448 = !DILocation(line: 2579, column: 13, scope: !391)
!449 = !DILocation(line: 2581, column: 18, scope: !391)
!450 = !DILocation(line: 2582, column: 11, scope: !391)
!451 = distinct !{!451, !441, !452}
!452 = !DILocation(line: 2584, column: 7, scope: !391)
!453 = !DILocation(line: 2586, column: 11, scope: !391)
!454 = !DILocation(line: 2586, column: 18, scope: !391)
!455 = !DILocation(line: 2589, column: 9, scope: !391)
!456 = !DILocation(line: 2590, column: 7, scope: !391)
!457 = !DILocation(line: 2591, column: 5, scope: !391)
!458 = !DILocation(line: 2592, column: 3, scope: !391)
!459 = !DILocation(line: 2594, column: 10, scope: !391)
!460 = !DILocation(line: 2594, column: 3, scope: !391)
!461 = distinct !DISubprogram(name: "RCCEx_PLLSAI2_Config", scope: !1, file: !1, line: 2607, type: !9, scopeLine: 2608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!462 = !DILocation(line: 2609, column: 21, scope: !461)
!463 = !DILocation(line: 2620, column: 11, scope: !461)
!464 = !DILocation(line: 2620, column: 21, scope: !461)
!465 = !DILocation(line: 2620, column: 3, scope: !461)
!466 = !DILocation(line: 2623, column: 11, scope: !461)
!467 = !DILocation(line: 2625, column: 16, scope: !461)
!468 = !DILocation(line: 2626, column: 7, scope: !461)
!469 = !DILocation(line: 2627, column: 7, scope: !461)
!470 = !DILocation(line: 2629, column: 11, scope: !461)
!471 = !DILocation(line: 2631, column: 16, scope: !461)
!472 = !DILocation(line: 2632, column: 7, scope: !461)
!473 = !DILocation(line: 2633, column: 7, scope: !461)
!474 = !DILocation(line: 2635, column: 11, scope: !461)
!475 = !DILocation(line: 2637, column: 16, scope: !461)
!476 = !DILocation(line: 2638, column: 7, scope: !461)
!477 = !DILocation(line: 2639, column: 7, scope: !461)
!478 = !DILocation(line: 2641, column: 14, scope: !461)
!479 = !DILocation(line: 2642, column: 7, scope: !461)
!480 = !DILocation(line: 2645, column: 7, scope: !461)
!481 = !DILocation(line: 2645, column: 14, scope: !461)
!482 = !DILocation(line: 2648, column: 5, scope: !461)
!483 = !DILocation(line: 2651, column: 17, scope: !461)
!484 = !DILocation(line: 2651, column: 15, scope: !461)
!485 = !DILocation(line: 2654, column: 5, scope: !461)
!486 = !DILocation(line: 2654, column: 12, scope: !461)
!487 = !DILocation(line: 2654, column: 49, scope: !461)
!488 = !DILocation(line: 2656, column: 12, scope: !461)
!489 = !DILocation(line: 2656, column: 28, scope: !461)
!490 = !DILocation(line: 2656, column: 26, scope: !461)
!491 = !DILocation(line: 2656, column: 39, scope: !461)
!492 = !DILocation(line: 2656, column: 11, scope: !461)
!493 = !DILocation(line: 2658, column: 16, scope: !461)
!494 = !DILocation(line: 2659, column: 9, scope: !461)
!495 = distinct !{!495, !485, !496}
!496 = !DILocation(line: 2661, column: 5, scope: !461)
!497 = !DILocation(line: 2663, column: 9, scope: !461)
!498 = !DILocation(line: 2663, column: 16, scope: !461)
!499 = !DILocation(line: 2665, column: 11, scope: !461)
!500 = !DILocation(line: 2665, column: 19, scope: !461)
!501 = !DILocation(line: 2670, column: 9, scope: !461)
!502 = !DILocation(line: 2677, column: 7, scope: !461)
!503 = !DILocation(line: 2680, column: 7, scope: !461)
!504 = !DILocation(line: 2683, column: 19, scope: !461)
!505 = !DILocation(line: 2683, column: 17, scope: !461)
!506 = !DILocation(line: 2686, column: 7, scope: !461)
!507 = !DILocation(line: 2686, column: 14, scope: !461)
!508 = !DILocation(line: 2686, column: 51, scope: !461)
!509 = !DILocation(line: 2688, column: 14, scope: !461)
!510 = !DILocation(line: 2688, column: 30, scope: !461)
!511 = !DILocation(line: 2688, column: 28, scope: !461)
!512 = !DILocation(line: 2688, column: 41, scope: !461)
!513 = !DILocation(line: 2688, column: 13, scope: !461)
!514 = !DILocation(line: 2690, column: 18, scope: !461)
!515 = !DILocation(line: 2691, column: 11, scope: !461)
!516 = distinct !{!516, !506, !517}
!517 = !DILocation(line: 2693, column: 7, scope: !461)
!518 = !DILocation(line: 2695, column: 11, scope: !461)
!519 = !DILocation(line: 2695, column: 18, scope: !461)
!520 = !DILocation(line: 2698, column: 9, scope: !461)
!521 = !DILocation(line: 2699, column: 7, scope: !461)
!522 = !DILocation(line: 2700, column: 5, scope: !461)
!523 = !DILocation(line: 2701, column: 3, scope: !461)
!524 = !DILocation(line: 2703, column: 10, scope: !461)
!525 = !DILocation(line: 2703, column: 3, scope: !461)
!526 = distinct !DISubprogram(name: "HAL_RCCEx_GetPeriphCLKConfig", scope: !1, file: !1, line: 683, type: !9, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!527 = !DILocation(line: 686, column: 3, scope: !526)
!528 = !DILocation(line: 686, column: 18, scope: !526)
!529 = !DILocation(line: 686, column: 39, scope: !526)
!530 = !DILocation(line: 693, column: 59, scope: !526)
!531 = !DILocation(line: 693, column: 71, scope: !526)
!532 = !DILocation(line: 693, column: 101, scope: !526)
!533 = !DILocation(line: 693, column: 3, scope: !526)
!534 = !DILocation(line: 693, column: 18, scope: !526)
!535 = !DILocation(line: 693, column: 26, scope: !526)
!536 = !DILocation(line: 693, column: 40, scope: !526)
!537 = !DILocation(line: 694, column: 54, scope: !526)
!538 = !DILocation(line: 694, column: 66, scope: !526)
!539 = !DILocation(line: 694, column: 94, scope: !526)
!540 = !DILocation(line: 694, column: 127, scope: !526)
!541 = !DILocation(line: 694, column: 3, scope: !526)
!542 = !DILocation(line: 694, column: 18, scope: !526)
!543 = !DILocation(line: 694, column: 26, scope: !526)
!544 = !DILocation(line: 694, column: 35, scope: !526)
!545 = !DILocation(line: 695, column: 54, scope: !526)
!546 = !DILocation(line: 695, column: 66, scope: !526)
!547 = !DILocation(line: 695, column: 94, scope: !526)
!548 = !DILocation(line: 695, column: 3, scope: !526)
!549 = !DILocation(line: 695, column: 18, scope: !526)
!550 = !DILocation(line: 695, column: 26, scope: !526)
!551 = !DILocation(line: 695, column: 35, scope: !526)
!552 = !DILocation(line: 696, column: 55, scope: !526)
!553 = !DILocation(line: 696, column: 67, scope: !526)
!554 = !DILocation(line: 696, column: 95, scope: !526)
!555 = !DILocation(line: 696, column: 128, scope: !526)
!556 = !DILocation(line: 696, column: 135, scope: !526)
!557 = !DILocation(line: 696, column: 3, scope: !526)
!558 = !DILocation(line: 696, column: 18, scope: !526)
!559 = !DILocation(line: 696, column: 26, scope: !526)
!560 = !DILocation(line: 696, column: 35, scope: !526)
!561 = !DILocation(line: 697, column: 55, scope: !526)
!562 = !DILocation(line: 697, column: 67, scope: !526)
!563 = !DILocation(line: 697, column: 95, scope: !526)
!564 = !DILocation(line: 697, column: 128, scope: !526)
!565 = !DILocation(line: 697, column: 134, scope: !526)
!566 = !DILocation(line: 697, column: 3, scope: !526)
!567 = !DILocation(line: 697, column: 18, scope: !526)
!568 = !DILocation(line: 697, column: 26, scope: !526)
!569 = !DILocation(line: 697, column: 35, scope: !526)
!570 = !DILocation(line: 698, column: 55, scope: !526)
!571 = !DILocation(line: 698, column: 67, scope: !526)
!572 = !DILocation(line: 698, column: 95, scope: !526)
!573 = !DILocation(line: 698, column: 128, scope: !526)
!574 = !DILocation(line: 698, column: 134, scope: !526)
!575 = !DILocation(line: 698, column: 3, scope: !526)
!576 = !DILocation(line: 698, column: 18, scope: !526)
!577 = !DILocation(line: 698, column: 26, scope: !526)
!578 = !DILocation(line: 698, column: 35, scope: !526)
!579 = !DILocation(line: 701, column: 59, scope: !526)
!580 = !DILocation(line: 701, column: 71, scope: !526)
!581 = !DILocation(line: 701, column: 101, scope: !526)
!582 = !DILocation(line: 701, column: 3, scope: !526)
!583 = !DILocation(line: 701, column: 18, scope: !526)
!584 = !DILocation(line: 701, column: 26, scope: !526)
!585 = !DILocation(line: 701, column: 40, scope: !526)
!586 = !DILocation(line: 702, column: 54, scope: !526)
!587 = !DILocation(line: 702, column: 66, scope: !526)
!588 = !DILocation(line: 702, column: 94, scope: !526)
!589 = !DILocation(line: 702, column: 127, scope: !526)
!590 = !DILocation(line: 702, column: 3, scope: !526)
!591 = !DILocation(line: 702, column: 18, scope: !526)
!592 = !DILocation(line: 702, column: 26, scope: !526)
!593 = !DILocation(line: 702, column: 35, scope: !526)
!594 = !DILocation(line: 703, column: 54, scope: !526)
!595 = !DILocation(line: 703, column: 66, scope: !526)
!596 = !DILocation(line: 703, column: 94, scope: !526)
!597 = !DILocation(line: 703, column: 3, scope: !526)
!598 = !DILocation(line: 703, column: 18, scope: !526)
!599 = !DILocation(line: 703, column: 26, scope: !526)
!600 = !DILocation(line: 703, column: 35, scope: !526)
!601 = !DILocation(line: 704, column: 55, scope: !526)
!602 = !DILocation(line: 704, column: 67, scope: !526)
!603 = !DILocation(line: 704, column: 95, scope: !526)
!604 = !DILocation(line: 704, column: 128, scope: !526)
!605 = !DILocation(line: 704, column: 135, scope: !526)
!606 = !DILocation(line: 704, column: 3, scope: !526)
!607 = !DILocation(line: 704, column: 18, scope: !526)
!608 = !DILocation(line: 704, column: 26, scope: !526)
!609 = !DILocation(line: 704, column: 35, scope: !526)
!610 = !DILocation(line: 707, column: 42, scope: !526)
!611 = !DILocation(line: 707, column: 3, scope: !526)
!612 = !DILocation(line: 707, column: 18, scope: !526)
!613 = !DILocation(line: 707, column: 40, scope: !526)
!614 = !DILocation(line: 710, column: 42, scope: !526)
!615 = !DILocation(line: 710, column: 3, scope: !526)
!616 = !DILocation(line: 710, column: 18, scope: !526)
!617 = !DILocation(line: 710, column: 40, scope: !526)
!618 = !DILocation(line: 713, column: 42, scope: !526)
!619 = !DILocation(line: 713, column: 3, scope: !526)
!620 = !DILocation(line: 713, column: 18, scope: !526)
!621 = !DILocation(line: 713, column: 40, scope: !526)
!622 = !DILocation(line: 716, column: 42, scope: !526)
!623 = !DILocation(line: 716, column: 3, scope: !526)
!624 = !DILocation(line: 716, column: 18, scope: !526)
!625 = !DILocation(line: 716, column: 40, scope: !526)
!626 = !DILocation(line: 719, column: 42, scope: !526)
!627 = !DILocation(line: 719, column: 3, scope: !526)
!628 = !DILocation(line: 719, column: 18, scope: !526)
!629 = !DILocation(line: 719, column: 40, scope: !526)
!630 = !DILocation(line: 722, column: 42, scope: !526)
!631 = !DILocation(line: 722, column: 3, scope: !526)
!632 = !DILocation(line: 722, column: 18, scope: !526)
!633 = !DILocation(line: 722, column: 40, scope: !526)
!634 = !DILocation(line: 725, column: 42, scope: !526)
!635 = !DILocation(line: 725, column: 3, scope: !526)
!636 = !DILocation(line: 725, column: 18, scope: !526)
!637 = !DILocation(line: 725, column: 40, scope: !526)
!638 = !DILocation(line: 728, column: 42, scope: !526)
!639 = !DILocation(line: 728, column: 3, scope: !526)
!640 = !DILocation(line: 728, column: 18, scope: !526)
!641 = !DILocation(line: 728, column: 40, scope: !526)
!642 = !DILocation(line: 731, column: 42, scope: !526)
!643 = !DILocation(line: 731, column: 3, scope: !526)
!644 = !DILocation(line: 731, column: 18, scope: !526)
!645 = !DILocation(line: 731, column: 40, scope: !526)
!646 = !DILocation(line: 734, column: 42, scope: !526)
!647 = !DILocation(line: 734, column: 3, scope: !526)
!648 = !DILocation(line: 734, column: 18, scope: !526)
!649 = !DILocation(line: 734, column: 40, scope: !526)
!650 = !DILocation(line: 737, column: 42, scope: !526)
!651 = !DILocation(line: 737, column: 3, scope: !526)
!652 = !DILocation(line: 737, column: 18, scope: !526)
!653 = !DILocation(line: 737, column: 40, scope: !526)
!654 = !DILocation(line: 740, column: 42, scope: !526)
!655 = !DILocation(line: 740, column: 3, scope: !526)
!656 = !DILocation(line: 740, column: 18, scope: !526)
!657 = !DILocation(line: 740, column: 40, scope: !526)
!658 = !DILocation(line: 743, column: 42, scope: !526)
!659 = !DILocation(line: 743, column: 3, scope: !526)
!660 = !DILocation(line: 743, column: 18, scope: !526)
!661 = !DILocation(line: 743, column: 40, scope: !526)
!662 = !DILocation(line: 746, column: 41, scope: !526)
!663 = !DILocation(line: 746, column: 3, scope: !526)
!664 = !DILocation(line: 746, column: 18, scope: !526)
!665 = !DILocation(line: 746, column: 39, scope: !526)
!666 = !DILocation(line: 749, column: 42, scope: !526)
!667 = !DILocation(line: 749, column: 3, scope: !526)
!668 = !DILocation(line: 749, column: 18, scope: !526)
!669 = !DILocation(line: 749, column: 40, scope: !526)
!670 = !DILocation(line: 752, column: 42, scope: !526)
!671 = !DILocation(line: 752, column: 3, scope: !526)
!672 = !DILocation(line: 752, column: 18, scope: !526)
!673 = !DILocation(line: 752, column: 40, scope: !526)
!674 = !DILocation(line: 755, column: 42, scope: !526)
!675 = !DILocation(line: 755, column: 3, scope: !526)
!676 = !DILocation(line: 755, column: 18, scope: !526)
!677 = !DILocation(line: 755, column: 40, scope: !526)
!678 = !DILocation(line: 759, column: 40, scope: !526)
!679 = !DILocation(line: 759, column: 3, scope: !526)
!680 = !DILocation(line: 759, column: 18, scope: !526)
!681 = !DILocation(line: 759, column: 38, scope: !526)
!682 = !DILocation(line: 763, column: 43, scope: !526)
!683 = !DILocation(line: 763, column: 3, scope: !526)
!684 = !DILocation(line: 763, column: 18, scope: !526)
!685 = !DILocation(line: 763, column: 41, scope: !526)
!686 = !DILocation(line: 766, column: 40, scope: !526)
!687 = !DILocation(line: 766, column: 3, scope: !526)
!688 = !DILocation(line: 766, column: 18, scope: !526)
!689 = !DILocation(line: 766, column: 38, scope: !526)
!690 = !DILocation(line: 769, column: 42, scope: !526)
!691 = !DILocation(line: 769, column: 3, scope: !526)
!692 = !DILocation(line: 769, column: 18, scope: !526)
!693 = !DILocation(line: 769, column: 40, scope: !526)
!694 = !DILocation(line: 772, column: 42, scope: !526)
!695 = !DILocation(line: 772, column: 3, scope: !526)
!696 = !DILocation(line: 772, column: 18, scope: !526)
!697 = !DILocation(line: 772, column: 40, scope: !526)
!698 = !DILocation(line: 775, column: 47, scope: !526)
!699 = !DILocation(line: 775, column: 3, scope: !526)
!700 = !DILocation(line: 775, column: 18, scope: !526)
!701 = !DILocation(line: 775, column: 45, scope: !526)
!702 = !DILocation(line: 778, column: 39, scope: !526)
!703 = !DILocation(line: 778, column: 3, scope: !526)
!704 = !DILocation(line: 778, column: 18, scope: !526)
!705 = !DILocation(line: 778, column: 37, scope: !526)
!706 = !DILocation(line: 779, column: 1, scope: !526)
!707 = distinct !DISubprogram(name: "HAL_RCCEx_GetPeriphCLKFreq", scope: !1, file: !1, line: 810, type: !9, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!708 = !DILocation(line: 812, column: 12, scope: !707)
!709 = !DILocation(line: 820, column: 7, scope: !707)
!710 = !DILocation(line: 820, column: 17, scope: !707)
!711 = !DILocation(line: 823, column: 14, scope: !707)
!712 = !DILocation(line: 823, column: 12, scope: !707)
!713 = !DILocation(line: 825, column: 13, scope: !707)
!714 = !DILocation(line: 825, column: 5, scope: !707)
!715 = !DILocation(line: 829, column: 13, scope: !707)
!716 = !DILocation(line: 831, column: 21, scope: !707)
!717 = !DILocation(line: 832, column: 9, scope: !707)
!718 = !DILocation(line: 833, column: 9, scope: !707)
!719 = !DILocation(line: 836, column: 13, scope: !707)
!720 = !DILocation(line: 838, column: 21, scope: !707)
!721 = !DILocation(line: 839, column: 9, scope: !707)
!722 = !DILocation(line: 840, column: 9, scope: !707)
!723 = !DILocation(line: 843, column: 13, scope: !707)
!724 = !DILocation(line: 845, column: 21, scope: !707)
!725 = !DILocation(line: 846, column: 9, scope: !707)
!726 = !DILocation(line: 847, column: 9, scope: !707)
!727 = !DILocation(line: 850, column: 9, scope: !707)
!728 = !DILocation(line: 852, column: 3, scope: !707)
!729 = !DILocation(line: 856, column: 21, scope: !707)
!730 = !DILocation(line: 856, column: 19, scope: !707)
!731 = !DILocation(line: 859, column: 13, scope: !707)
!732 = !DILocation(line: 859, column: 5, scope: !707)
!733 = !DILocation(line: 862, column: 13, scope: !707)
!734 = !DILocation(line: 865, column: 35, scope: !707)
!735 = !DILocation(line: 865, column: 61, scope: !707)
!736 = !DILocation(line: 865, column: 20, scope: !707)
!737 = !DILocation(line: 865, column: 18, scope: !707)
!738 = !DILocation(line: 866, column: 9, scope: !707)
!739 = !DILocation(line: 869, column: 18, scope: !707)
!740 = !DILocation(line: 871, column: 9, scope: !707)
!741 = !DILocation(line: 873, column: 13, scope: !707)
!742 = !DILocation(line: 875, column: 18, scope: !707)
!743 = !DILocation(line: 876, column: 9, scope: !707)
!744 = !DILocation(line: 879, column: 18, scope: !707)
!745 = !DILocation(line: 881, column: 9, scope: !707)
!746 = !DILocation(line: 883, column: 13, scope: !707)
!747 = !DILocation(line: 885, column: 18, scope: !707)
!748 = !DILocation(line: 886, column: 9, scope: !707)
!749 = !DILocation(line: 889, column: 18, scope: !707)
!750 = !DILocation(line: 891, column: 9, scope: !707)
!751 = !DILocation(line: 894, column: 16, scope: !707)
!752 = !DILocation(line: 895, column: 9, scope: !707)
!753 = !DILocation(line: 898, column: 13, scope: !707)
!754 = !DILocation(line: 898, column: 5, scope: !707)
!755 = !DILocation(line: 901, column: 68, scope: !707)
!756 = !DILocation(line: 901, column: 21, scope: !707)
!757 = !DILocation(line: 901, column: 19, scope: !707)
!758 = !DILocation(line: 902, column: 9, scope: !707)
!759 = !DILocation(line: 905, column: 68, scope: !707)
!760 = !DILocation(line: 905, column: 21, scope: !707)
!761 = !DILocation(line: 905, column: 19, scope: !707)
!762 = !DILocation(line: 906, column: 9, scope: !707)
!763 = !DILocation(line: 916, column: 18, scope: !707)
!764 = !DILocation(line: 916, column: 16, scope: !707)
!765 = !DILocation(line: 918, column: 17, scope: !707)
!766 = !DILocation(line: 918, column: 9, scope: !707)
!767 = !DILocation(line: 921, column: 17, scope: !707)
!768 = !DILocation(line: 924, column: 42, scope: !707)
!769 = !DILocation(line: 924, column: 68, scope: !707)
!770 = !DILocation(line: 924, column: 27, scope: !707)
!771 = !DILocation(line: 924, column: 25, scope: !707)
!772 = !DILocation(line: 925, column: 13, scope: !707)
!773 = !DILocation(line: 926, column: 13, scope: !707)
!774 = !DILocation(line: 928, column: 17, scope: !707)
!775 = !DILocation(line: 930, column: 19, scope: !707)
!776 = !DILocation(line: 933, column: 27, scope: !707)
!777 = !DILocation(line: 933, column: 38, scope: !707)
!778 = !DILocation(line: 933, column: 79, scope: !707)
!779 = !DILocation(line: 933, column: 104, scope: !707)
!780 = !DILocation(line: 933, column: 34, scope: !707)
!781 = !DILocation(line: 933, column: 24, scope: !707)
!782 = !DILocation(line: 935, column: 24, scope: !707)
!783 = !DILocation(line: 935, column: 65, scope: !707)
!784 = !DILocation(line: 935, column: 22, scope: !707)
!785 = !DILocation(line: 936, column: 30, scope: !707)
!786 = !DILocation(line: 936, column: 39, scope: !707)
!787 = !DILocation(line: 936, column: 37, scope: !707)
!788 = !DILocation(line: 936, column: 50, scope: !707)
!789 = !DILocation(line: 936, column: 91, scope: !707)
!790 = !DILocation(line: 936, column: 116, scope: !707)
!791 = !DILocation(line: 936, column: 122, scope: !707)
!792 = !DILocation(line: 936, column: 45, scope: !707)
!793 = !DILocation(line: 936, column: 27, scope: !707)
!794 = !DILocation(line: 937, column: 15, scope: !707)
!795 = !DILocation(line: 938, column: 13, scope: !707)
!796 = !DILocation(line: 939, column: 13, scope: !707)
!797 = !DILocation(line: 941, column: 17, scope: !707)
!798 = !DILocation(line: 943, column: 19, scope: !707)
!799 = !DILocation(line: 946, column: 26, scope: !707)
!800 = !DILocation(line: 946, column: 24, scope: !707)
!801 = !DILocation(line: 948, column: 27, scope: !707)
!802 = !DILocation(line: 948, column: 38, scope: !707)
!803 = !DILocation(line: 948, column: 91, scope: !707)
!804 = !DILocation(line: 948, column: 124, scope: !707)
!805 = !DILocation(line: 948, column: 34, scope: !707)
!806 = !DILocation(line: 948, column: 24, scope: !707)
!807 = !DILocation(line: 950, column: 24, scope: !707)
!808 = !DILocation(line: 950, column: 77, scope: !707)
!809 = !DILocation(line: 950, column: 22, scope: !707)
!810 = !DILocation(line: 951, column: 30, scope: !707)
!811 = !DILocation(line: 951, column: 39, scope: !707)
!812 = !DILocation(line: 951, column: 37, scope: !707)
!813 = !DILocation(line: 951, column: 50, scope: !707)
!814 = !DILocation(line: 951, column: 103, scope: !707)
!815 = !DILocation(line: 951, column: 136, scope: !707)
!816 = !DILocation(line: 951, column: 142, scope: !707)
!817 = !DILocation(line: 951, column: 45, scope: !707)
!818 = !DILocation(line: 951, column: 27, scope: !707)
!819 = !DILocation(line: 952, column: 15, scope: !707)
!820 = !DILocation(line: 953, column: 13, scope: !707)
!821 = !DILocation(line: 954, column: 13, scope: !707)
!822 = !DILocation(line: 956, column: 17, scope: !707)
!823 = !DILocation(line: 958, column: 25, scope: !707)
!824 = !DILocation(line: 959, column: 13, scope: !707)
!825 = !DILocation(line: 960, column: 13, scope: !707)
!826 = !DILocation(line: 963, column: 13, scope: !707)
!827 = !DILocation(line: 966, column: 9, scope: !707)
!828 = !DILocation(line: 970, column: 13, scope: !707)
!829 = !DILocation(line: 972, column: 15, scope: !707)
!830 = !DILocation(line: 974, column: 17, scope: !707)
!831 = !DILocation(line: 977, column: 25, scope: !707)
!832 = !DILocation(line: 977, column: 36, scope: !707)
!833 = !DILocation(line: 977, column: 77, scope: !707)
!834 = !DILocation(line: 977, column: 102, scope: !707)
!835 = !DILocation(line: 977, column: 32, scope: !707)
!836 = !DILocation(line: 977, column: 22, scope: !707)
!837 = !DILocation(line: 979, column: 22, scope: !707)
!838 = !DILocation(line: 979, column: 63, scope: !707)
!839 = !DILocation(line: 979, column: 20, scope: !707)
!840 = !DILocation(line: 980, column: 22, scope: !707)
!841 = !DILocation(line: 980, column: 66, scope: !707)
!842 = !DILocation(line: 980, column: 20, scope: !707)
!843 = !DILocation(line: 981, column: 19, scope: !707)
!844 = !DILocation(line: 981, column: 24, scope: !707)
!845 = !DILocation(line: 983, column: 21, scope: !707)
!846 = !DILocation(line: 983, column: 62, scope: !707)
!847 = !DILocation(line: 985, column: 24, scope: !707)
!848 = !DILocation(line: 986, column: 17, scope: !707)
!849 = !DILocation(line: 989, column: 24, scope: !707)
!850 = !DILocation(line: 991, column: 15, scope: !707)
!851 = !DILocation(line: 992, column: 28, scope: !707)
!852 = !DILocation(line: 992, column: 37, scope: !707)
!853 = !DILocation(line: 992, column: 35, scope: !707)
!854 = !DILocation(line: 992, column: 45, scope: !707)
!855 = !DILocation(line: 992, column: 43, scope: !707)
!856 = !DILocation(line: 992, column: 25, scope: !707)
!857 = !DILocation(line: 993, column: 13, scope: !707)
!858 = !DILocation(line: 994, column: 11, scope: !707)
!859 = !DILocation(line: 995, column: 9, scope: !707)
!860 = !DILocation(line: 998, column: 20, scope: !707)
!861 = !DILocation(line: 998, column: 18, scope: !707)
!862 = !DILocation(line: 1000, column: 19, scope: !707)
!863 = !DILocation(line: 1000, column: 11, scope: !707)
!864 = !DILocation(line: 1003, column: 19, scope: !707)
!865 = !DILocation(line: 1006, column: 44, scope: !707)
!866 = !DILocation(line: 1006, column: 70, scope: !707)
!867 = !DILocation(line: 1006, column: 29, scope: !707)
!868 = !DILocation(line: 1006, column: 27, scope: !707)
!869 = !DILocation(line: 1007, column: 15, scope: !707)
!870 = !DILocation(line: 1008, column: 15, scope: !707)
!871 = !DILocation(line: 1010, column: 19, scope: !707)
!872 = !DILocation(line: 1012, column: 21, scope: !707)
!873 = !DILocation(line: 1015, column: 29, scope: !707)
!874 = !DILocation(line: 1015, column: 40, scope: !707)
!875 = !DILocation(line: 1015, column: 81, scope: !707)
!876 = !DILocation(line: 1015, column: 106, scope: !707)
!877 = !DILocation(line: 1015, column: 36, scope: !707)
!878 = !DILocation(line: 1015, column: 26, scope: !707)
!879 = !DILocation(line: 1017, column: 26, scope: !707)
!880 = !DILocation(line: 1017, column: 67, scope: !707)
!881 = !DILocation(line: 1017, column: 24, scope: !707)
!882 = !DILocation(line: 1018, column: 32, scope: !707)
!883 = !DILocation(line: 1018, column: 41, scope: !707)
!884 = !DILocation(line: 1018, column: 39, scope: !707)
!885 = !DILocation(line: 1018, column: 52, scope: !707)
!886 = !DILocation(line: 1018, column: 93, scope: !707)
!887 = !DILocation(line: 1018, column: 118, scope: !707)
!888 = !DILocation(line: 1018, column: 124, scope: !707)
!889 = !DILocation(line: 1018, column: 47, scope: !707)
!890 = !DILocation(line: 1018, column: 29, scope: !707)
!891 = !DILocation(line: 1019, column: 17, scope: !707)
!892 = !DILocation(line: 1020, column: 15, scope: !707)
!893 = !DILocation(line: 1021, column: 15, scope: !707)
!894 = !DILocation(line: 1023, column: 19, scope: !707)
!895 = !DILocation(line: 1025, column: 21, scope: !707)
!896 = !DILocation(line: 1028, column: 28, scope: !707)
!897 = !DILocation(line: 1028, column: 26, scope: !707)
!898 = !DILocation(line: 1030, column: 29, scope: !707)
!899 = !DILocation(line: 1030, column: 40, scope: !707)
!900 = !DILocation(line: 1030, column: 93, scope: !707)
!901 = !DILocation(line: 1030, column: 126, scope: !707)
!902 = !DILocation(line: 1030, column: 36, scope: !707)
!903 = !DILocation(line: 1030, column: 26, scope: !707)
!904 = !DILocation(line: 1032, column: 26, scope: !707)
!905 = !DILocation(line: 1032, column: 79, scope: !707)
!906 = !DILocation(line: 1032, column: 24, scope: !707)
!907 = !DILocation(line: 1033, column: 32, scope: !707)
!908 = !DILocation(line: 1033, column: 41, scope: !707)
!909 = !DILocation(line: 1033, column: 39, scope: !707)
!910 = !DILocation(line: 1033, column: 52, scope: !707)
!911 = !DILocation(line: 1033, column: 105, scope: !707)
!912 = !DILocation(line: 1033, column: 138, scope: !707)
!913 = !DILocation(line: 1033, column: 144, scope: !707)
!914 = !DILocation(line: 1033, column: 47, scope: !707)
!915 = !DILocation(line: 1033, column: 29, scope: !707)
!916 = !DILocation(line: 1034, column: 17, scope: !707)
!917 = !DILocation(line: 1035, column: 15, scope: !707)
!918 = !DILocation(line: 1036, column: 15, scope: !707)
!919 = !DILocation(line: 1038, column: 19, scope: !707)
!920 = !DILocation(line: 1040, column: 27, scope: !707)
!921 = !DILocation(line: 1041, column: 15, scope: !707)
!922 = !DILocation(line: 1042, column: 15, scope: !707)
!923 = !DILocation(line: 1045, column: 15, scope: !707)
!924 = !DILocation(line: 1049, column: 9, scope: !707)
!925 = !DILocation(line: 1054, column: 18, scope: !707)
!926 = !DILocation(line: 1054, column: 16, scope: !707)
!927 = !DILocation(line: 1056, column: 17, scope: !707)
!928 = !DILocation(line: 1056, column: 9, scope: !707)
!929 = !DILocation(line: 1059, column: 25, scope: !707)
!930 = !DILocation(line: 1059, column: 23, scope: !707)
!931 = !DILocation(line: 1060, column: 13, scope: !707)
!932 = !DILocation(line: 1062, column: 25, scope: !707)
!933 = !DILocation(line: 1062, column: 23, scope: !707)
!934 = !DILocation(line: 1063, column: 13, scope: !707)
!935 = !DILocation(line: 1065, column: 17, scope: !707)
!936 = !DILocation(line: 1067, column: 25, scope: !707)
!937 = !DILocation(line: 1068, column: 13, scope: !707)
!938 = !DILocation(line: 1069, column: 13, scope: !707)
!939 = !DILocation(line: 1071, column: 17, scope: !707)
!940 = !DILocation(line: 1073, column: 25, scope: !707)
!941 = !DILocation(line: 1074, column: 13, scope: !707)
!942 = !DILocation(line: 1075, column: 13, scope: !707)
!943 = !DILocation(line: 1078, column: 13, scope: !707)
!944 = !DILocation(line: 1081, column: 9, scope: !707)
!945 = !DILocation(line: 1086, column: 18, scope: !707)
!946 = !DILocation(line: 1086, column: 16, scope: !707)
!947 = !DILocation(line: 1088, column: 17, scope: !707)
!948 = !DILocation(line: 1088, column: 9, scope: !707)
!949 = !DILocation(line: 1091, column: 25, scope: !707)
!950 = !DILocation(line: 1091, column: 23, scope: !707)
!951 = !DILocation(line: 1092, column: 13, scope: !707)
!952 = !DILocation(line: 1094, column: 25, scope: !707)
!953 = !DILocation(line: 1094, column: 23, scope: !707)
!954 = !DILocation(line: 1095, column: 13, scope: !707)
!955 = !DILocation(line: 1097, column: 17, scope: !707)
!956 = !DILocation(line: 1099, column: 25, scope: !707)
!957 = !DILocation(line: 1100, column: 13, scope: !707)
!958 = !DILocation(line: 1101, column: 13, scope: !707)
!959 = !DILocation(line: 1103, column: 17, scope: !707)
!960 = !DILocation(line: 1105, column: 25, scope: !707)
!961 = !DILocation(line: 1106, column: 13, scope: !707)
!962 = !DILocation(line: 1107, column: 13, scope: !707)
!963 = !DILocation(line: 1110, column: 13, scope: !707)
!964 = !DILocation(line: 1113, column: 9, scope: !707)
!965 = !DILocation(line: 1118, column: 18, scope: !707)
!966 = !DILocation(line: 1118, column: 16, scope: !707)
!967 = !DILocation(line: 1120, column: 17, scope: !707)
!968 = !DILocation(line: 1120, column: 9, scope: !707)
!969 = !DILocation(line: 1123, column: 25, scope: !707)
!970 = !DILocation(line: 1123, column: 23, scope: !707)
!971 = !DILocation(line: 1124, column: 13, scope: !707)
!972 = !DILocation(line: 1126, column: 25, scope: !707)
!973 = !DILocation(line: 1126, column: 23, scope: !707)
!974 = !DILocation(line: 1127, column: 13, scope: !707)
!975 = !DILocation(line: 1129, column: 17, scope: !707)
!976 = !DILocation(line: 1131, column: 25, scope: !707)
!977 = !DILocation(line: 1132, column: 13, scope: !707)
!978 = !DILocation(line: 1133, column: 13, scope: !707)
!979 = !DILocation(line: 1135, column: 17, scope: !707)
!980 = !DILocation(line: 1137, column: 25, scope: !707)
!981 = !DILocation(line: 1138, column: 13, scope: !707)
!982 = !DILocation(line: 1139, column: 13, scope: !707)
!983 = !DILocation(line: 1142, column: 13, scope: !707)
!984 = !DILocation(line: 1145, column: 9, scope: !707)
!985 = !DILocation(line: 1150, column: 18, scope: !707)
!986 = !DILocation(line: 1150, column: 16, scope: !707)
!987 = !DILocation(line: 1152, column: 17, scope: !707)
!988 = !DILocation(line: 1152, column: 9, scope: !707)
!989 = !DILocation(line: 1155, column: 25, scope: !707)
!990 = !DILocation(line: 1155, column: 23, scope: !707)
!991 = !DILocation(line: 1156, column: 13, scope: !707)
!992 = !DILocation(line: 1158, column: 25, scope: !707)
!993 = !DILocation(line: 1158, column: 23, scope: !707)
!994 = !DILocation(line: 1159, column: 13, scope: !707)
!995 = !DILocation(line: 1161, column: 17, scope: !707)
!996 = !DILocation(line: 1163, column: 25, scope: !707)
!997 = !DILocation(line: 1164, column: 13, scope: !707)
!998 = !DILocation(line: 1165, column: 13, scope: !707)
!999 = !DILocation(line: 1167, column: 17, scope: !707)
!1000 = !DILocation(line: 1169, column: 25, scope: !707)
!1001 = !DILocation(line: 1170, column: 13, scope: !707)
!1002 = !DILocation(line: 1171, column: 13, scope: !707)
!1003 = !DILocation(line: 1174, column: 13, scope: !707)
!1004 = !DILocation(line: 1177, column: 9, scope: !707)
!1005 = !DILocation(line: 1182, column: 18, scope: !707)
!1006 = !DILocation(line: 1182, column: 16, scope: !707)
!1007 = !DILocation(line: 1184, column: 17, scope: !707)
!1008 = !DILocation(line: 1184, column: 9, scope: !707)
!1009 = !DILocation(line: 1187, column: 25, scope: !707)
!1010 = !DILocation(line: 1187, column: 23, scope: !707)
!1011 = !DILocation(line: 1188, column: 13, scope: !707)
!1012 = !DILocation(line: 1190, column: 25, scope: !707)
!1013 = !DILocation(line: 1190, column: 23, scope: !707)
!1014 = !DILocation(line: 1191, column: 13, scope: !707)
!1015 = !DILocation(line: 1193, column: 17, scope: !707)
!1016 = !DILocation(line: 1195, column: 25, scope: !707)
!1017 = !DILocation(line: 1196, column: 13, scope: !707)
!1018 = !DILocation(line: 1197, column: 13, scope: !707)
!1019 = !DILocation(line: 1199, column: 17, scope: !707)
!1020 = !DILocation(line: 1201, column: 25, scope: !707)
!1021 = !DILocation(line: 1202, column: 13, scope: !707)
!1022 = !DILocation(line: 1203, column: 13, scope: !707)
!1023 = !DILocation(line: 1206, column: 13, scope: !707)
!1024 = !DILocation(line: 1209, column: 9, scope: !707)
!1025 = !DILocation(line: 1214, column: 18, scope: !707)
!1026 = !DILocation(line: 1214, column: 16, scope: !707)
!1027 = !DILocation(line: 1216, column: 17, scope: !707)
!1028 = !DILocation(line: 1216, column: 9, scope: !707)
!1029 = !DILocation(line: 1219, column: 25, scope: !707)
!1030 = !DILocation(line: 1219, column: 23, scope: !707)
!1031 = !DILocation(line: 1220, column: 13, scope: !707)
!1032 = !DILocation(line: 1222, column: 25, scope: !707)
!1033 = !DILocation(line: 1222, column: 23, scope: !707)
!1034 = !DILocation(line: 1223, column: 13, scope: !707)
!1035 = !DILocation(line: 1225, column: 17, scope: !707)
!1036 = !DILocation(line: 1227, column: 25, scope: !707)
!1037 = !DILocation(line: 1228, column: 13, scope: !707)
!1038 = !DILocation(line: 1229, column: 13, scope: !707)
!1039 = !DILocation(line: 1231, column: 17, scope: !707)
!1040 = !DILocation(line: 1233, column: 25, scope: !707)
!1041 = !DILocation(line: 1234, column: 13, scope: !707)
!1042 = !DILocation(line: 1235, column: 13, scope: !707)
!1043 = !DILocation(line: 1238, column: 13, scope: !707)
!1044 = !DILocation(line: 1241, column: 9, scope: !707)
!1045 = !DILocation(line: 1246, column: 18, scope: !707)
!1046 = !DILocation(line: 1246, column: 16, scope: !707)
!1047 = !DILocation(line: 1248, column: 17, scope: !707)
!1048 = !DILocation(line: 1248, column: 9, scope: !707)
!1049 = !DILocation(line: 1251, column: 25, scope: !707)
!1050 = !DILocation(line: 1251, column: 23, scope: !707)
!1051 = !DILocation(line: 1252, column: 13, scope: !707)
!1052 = !DILocation(line: 1254, column: 17, scope: !707)
!1053 = !DILocation(line: 1254, column: 73, scope: !707)
!1054 = !DILocation(line: 1257, column: 24, scope: !707)
!1055 = !DILocation(line: 1257, column: 22, scope: !707)
!1056 = !DILocation(line: 1259, column: 25, scope: !707)
!1057 = !DILocation(line: 1259, column: 36, scope: !707)
!1058 = !DILocation(line: 1259, column: 89, scope: !707)
!1059 = !DILocation(line: 1259, column: 122, scope: !707)
!1060 = !DILocation(line: 1259, column: 32, scope: !707)
!1061 = !DILocation(line: 1259, column: 22, scope: !707)
!1062 = !DILocation(line: 1261, column: 22, scope: !707)
!1063 = !DILocation(line: 1261, column: 75, scope: !707)
!1064 = !DILocation(line: 1261, column: 20, scope: !707)
!1065 = !DILocation(line: 1262, column: 28, scope: !707)
!1066 = !DILocation(line: 1262, column: 37, scope: !707)
!1067 = !DILocation(line: 1262, column: 35, scope: !707)
!1068 = !DILocation(line: 1262, column: 48, scope: !707)
!1069 = !DILocation(line: 1262, column: 101, scope: !707)
!1070 = !DILocation(line: 1262, column: 134, scope: !707)
!1071 = !DILocation(line: 1262, column: 140, scope: !707)
!1072 = !DILocation(line: 1262, column: 43, scope: !707)
!1073 = !DILocation(line: 1262, column: 25, scope: !707)
!1074 = !DILocation(line: 1263, column: 13, scope: !707)
!1075 = !DILocation(line: 1264, column: 13, scope: !707)
!1076 = !DILocation(line: 1267, column: 13, scope: !707)
!1077 = !DILocation(line: 1270, column: 9, scope: !707)
!1078 = !DILocation(line: 1275, column: 18, scope: !707)
!1079 = !DILocation(line: 1275, column: 16, scope: !707)
!1080 = !DILocation(line: 1277, column: 13, scope: !707)
!1081 = !DILocation(line: 1277, column: 20, scope: !707)
!1082 = !DILocation(line: 1279, column: 23, scope: !707)
!1083 = !DILocation(line: 1279, column: 21, scope: !707)
!1084 = !DILocation(line: 1280, column: 9, scope: !707)
!1085 = !DILocation(line: 1283, column: 23, scope: !707)
!1086 = !DILocation(line: 1283, column: 21, scope: !707)
!1087 = !DILocation(line: 1286, column: 9, scope: !707)
!1088 = !DILocation(line: 1291, column: 18, scope: !707)
!1089 = !DILocation(line: 1291, column: 16, scope: !707)
!1090 = !DILocation(line: 1293, column: 17, scope: !707)
!1091 = !DILocation(line: 1293, column: 9, scope: !707)
!1092 = !DILocation(line: 1296, column: 72, scope: !707)
!1093 = !DILocation(line: 1296, column: 25, scope: !707)
!1094 = !DILocation(line: 1296, column: 23, scope: !707)
!1095 = !DILocation(line: 1297, column: 13, scope: !707)
!1096 = !DILocation(line: 1299, column: 17, scope: !707)
!1097 = !DILocation(line: 1302, column: 42, scope: !707)
!1098 = !DILocation(line: 1302, column: 68, scope: !707)
!1099 = !DILocation(line: 1302, column: 27, scope: !707)
!1100 = !DILocation(line: 1302, column: 25, scope: !707)
!1101 = !DILocation(line: 1303, column: 13, scope: !707)
!1102 = !DILocation(line: 1304, column: 13, scope: !707)
!1103 = !DILocation(line: 1306, column: 17, scope: !707)
!1104 = !DILocation(line: 1308, column: 25, scope: !707)
!1105 = !DILocation(line: 1309, column: 13, scope: !707)
!1106 = !DILocation(line: 1310, column: 13, scope: !707)
!1107 = !DILocation(line: 1313, column: 13, scope: !707)
!1108 = !DILocation(line: 1316, column: 9, scope: !707)
!1109 = !DILocation(line: 1321, column: 18, scope: !707)
!1110 = !DILocation(line: 1321, column: 16, scope: !707)
!1111 = !DILocation(line: 1323, column: 17, scope: !707)
!1112 = !DILocation(line: 1323, column: 9, scope: !707)
!1113 = !DILocation(line: 1326, column: 25, scope: !707)
!1114 = !DILocation(line: 1326, column: 23, scope: !707)
!1115 = !DILocation(line: 1327, column: 13, scope: !707)
!1116 = !DILocation(line: 1329, column: 25, scope: !707)
!1117 = !DILocation(line: 1329, column: 23, scope: !707)
!1118 = !DILocation(line: 1330, column: 13, scope: !707)
!1119 = !DILocation(line: 1332, column: 17, scope: !707)
!1120 = !DILocation(line: 1334, column: 25, scope: !707)
!1121 = !DILocation(line: 1335, column: 13, scope: !707)
!1122 = !DILocation(line: 1336, column: 13, scope: !707)
!1123 = !DILocation(line: 1339, column: 13, scope: !707)
!1124 = !DILocation(line: 1342, column: 9, scope: !707)
!1125 = !DILocation(line: 1347, column: 18, scope: !707)
!1126 = !DILocation(line: 1347, column: 16, scope: !707)
!1127 = !DILocation(line: 1349, column: 17, scope: !707)
!1128 = !DILocation(line: 1349, column: 9, scope: !707)
!1129 = !DILocation(line: 1352, column: 25, scope: !707)
!1130 = !DILocation(line: 1352, column: 23, scope: !707)
!1131 = !DILocation(line: 1353, column: 13, scope: !707)
!1132 = !DILocation(line: 1355, column: 25, scope: !707)
!1133 = !DILocation(line: 1355, column: 23, scope: !707)
!1134 = !DILocation(line: 1356, column: 13, scope: !707)
!1135 = !DILocation(line: 1358, column: 17, scope: !707)
!1136 = !DILocation(line: 1360, column: 25, scope: !707)
!1137 = !DILocation(line: 1361, column: 13, scope: !707)
!1138 = !DILocation(line: 1362, column: 13, scope: !707)
!1139 = !DILocation(line: 1365, column: 13, scope: !707)
!1140 = !DILocation(line: 1368, column: 9, scope: !707)
!1141 = !DILocation(line: 1373, column: 18, scope: !707)
!1142 = !DILocation(line: 1373, column: 16, scope: !707)
!1143 = !DILocation(line: 1375, column: 17, scope: !707)
!1144 = !DILocation(line: 1375, column: 9, scope: !707)
!1145 = !DILocation(line: 1378, column: 25, scope: !707)
!1146 = !DILocation(line: 1378, column: 23, scope: !707)
!1147 = !DILocation(line: 1379, column: 13, scope: !707)
!1148 = !DILocation(line: 1381, column: 25, scope: !707)
!1149 = !DILocation(line: 1381, column: 23, scope: !707)
!1150 = !DILocation(line: 1382, column: 13, scope: !707)
!1151 = !DILocation(line: 1384, column: 17, scope: !707)
!1152 = !DILocation(line: 1386, column: 25, scope: !707)
!1153 = !DILocation(line: 1387, column: 13, scope: !707)
!1154 = !DILocation(line: 1388, column: 13, scope: !707)
!1155 = !DILocation(line: 1391, column: 13, scope: !707)
!1156 = !DILocation(line: 1393, column: 9, scope: !707)
!1157 = !DILocation(line: 1398, column: 18, scope: !707)
!1158 = !DILocation(line: 1398, column: 16, scope: !707)
!1159 = !DILocation(line: 1400, column: 17, scope: !707)
!1160 = !DILocation(line: 1400, column: 9, scope: !707)
!1161 = !DILocation(line: 1403, column: 25, scope: !707)
!1162 = !DILocation(line: 1403, column: 23, scope: !707)
!1163 = !DILocation(line: 1404, column: 13, scope: !707)
!1164 = !DILocation(line: 1406, column: 25, scope: !707)
!1165 = !DILocation(line: 1406, column: 23, scope: !707)
!1166 = !DILocation(line: 1407, column: 13, scope: !707)
!1167 = !DILocation(line: 1409, column: 17, scope: !707)
!1168 = !DILocation(line: 1411, column: 25, scope: !707)
!1169 = !DILocation(line: 1412, column: 13, scope: !707)
!1170 = !DILocation(line: 1413, column: 13, scope: !707)
!1171 = !DILocation(line: 1416, column: 13, scope: !707)
!1172 = !DILocation(line: 1419, column: 9, scope: !707)
!1173 = !DILocation(line: 1424, column: 18, scope: !707)
!1174 = !DILocation(line: 1424, column: 16, scope: !707)
!1175 = !DILocation(line: 1426, column: 17, scope: !707)
!1176 = !DILocation(line: 1426, column: 9, scope: !707)
!1177 = !DILocation(line: 1429, column: 25, scope: !707)
!1178 = !DILocation(line: 1429, column: 23, scope: !707)
!1179 = !DILocation(line: 1430, column: 13, scope: !707)
!1180 = !DILocation(line: 1432, column: 17, scope: !707)
!1181 = !DILocation(line: 1434, column: 25, scope: !707)
!1182 = !DILocation(line: 1435, column: 13, scope: !707)
!1183 = !DILocation(line: 1436, column: 13, scope: !707)
!1184 = !DILocation(line: 1438, column: 17, scope: !707)
!1185 = !DILocation(line: 1440, column: 25, scope: !707)
!1186 = !DILocation(line: 1441, column: 13, scope: !707)
!1187 = !DILocation(line: 1442, column: 13, scope: !707)
!1188 = !DILocation(line: 1444, column: 17, scope: !707)
!1189 = !DILocation(line: 1446, column: 25, scope: !707)
!1190 = !DILocation(line: 1447, column: 13, scope: !707)
!1191 = !DILocation(line: 1448, column: 13, scope: !707)
!1192 = !DILocation(line: 1451, column: 13, scope: !707)
!1193 = !DILocation(line: 1454, column: 9, scope: !707)
!1194 = !DILocation(line: 1459, column: 18, scope: !707)
!1195 = !DILocation(line: 1459, column: 16, scope: !707)
!1196 = !DILocation(line: 1461, column: 17, scope: !707)
!1197 = !DILocation(line: 1461, column: 9, scope: !707)
!1198 = !DILocation(line: 1464, column: 25, scope: !707)
!1199 = !DILocation(line: 1464, column: 23, scope: !707)
!1200 = !DILocation(line: 1465, column: 13, scope: !707)
!1201 = !DILocation(line: 1467, column: 17, scope: !707)
!1202 = !DILocation(line: 1469, column: 25, scope: !707)
!1203 = !DILocation(line: 1470, column: 13, scope: !707)
!1204 = !DILocation(line: 1471, column: 13, scope: !707)
!1205 = !DILocation(line: 1473, column: 17, scope: !707)
!1206 = !DILocation(line: 1475, column: 25, scope: !707)
!1207 = !DILocation(line: 1476, column: 13, scope: !707)
!1208 = !DILocation(line: 1477, column: 13, scope: !707)
!1209 = !DILocation(line: 1479, column: 17, scope: !707)
!1210 = !DILocation(line: 1481, column: 25, scope: !707)
!1211 = !DILocation(line: 1482, column: 13, scope: !707)
!1212 = !DILocation(line: 1483, column: 13, scope: !707)
!1213 = !DILocation(line: 1486, column: 13, scope: !707)
!1214 = !DILocation(line: 1489, column: 9, scope: !707)
!1215 = !DILocation(line: 1494, column: 18, scope: !707)
!1216 = !DILocation(line: 1494, column: 16, scope: !707)
!1217 = !DILocation(line: 1496, column: 17, scope: !707)
!1218 = !DILocation(line: 1496, column: 9, scope: !707)
!1219 = !DILocation(line: 1499, column: 25, scope: !707)
!1220 = !DILocation(line: 1499, column: 23, scope: !707)
!1221 = !DILocation(line: 1500, column: 13, scope: !707)
!1222 = !DILocation(line: 1502, column: 17, scope: !707)
!1223 = !DILocation(line: 1504, column: 25, scope: !707)
!1224 = !DILocation(line: 1505, column: 13, scope: !707)
!1225 = !DILocation(line: 1506, column: 13, scope: !707)
!1226 = !DILocation(line: 1508, column: 17, scope: !707)
!1227 = !DILocation(line: 1510, column: 25, scope: !707)
!1228 = !DILocation(line: 1511, column: 13, scope: !707)
!1229 = !DILocation(line: 1512, column: 13, scope: !707)
!1230 = !DILocation(line: 1514, column: 17, scope: !707)
!1231 = !DILocation(line: 1516, column: 25, scope: !707)
!1232 = !DILocation(line: 1517, column: 13, scope: !707)
!1233 = !DILocation(line: 1518, column: 13, scope: !707)
!1234 = !DILocation(line: 1521, column: 13, scope: !707)
!1235 = !DILocation(line: 1524, column: 9, scope: !707)
!1236 = !DILocation(line: 1529, column: 18, scope: !707)
!1237 = !DILocation(line: 1529, column: 16, scope: !707)
!1238 = !DILocation(line: 1531, column: 17, scope: !707)
!1239 = !DILocation(line: 1531, column: 9, scope: !707)
!1240 = !DILocation(line: 1534, column: 17, scope: !707)
!1241 = !DILocation(line: 1536, column: 25, scope: !707)
!1242 = !DILocation(line: 1537, column: 13, scope: !707)
!1243 = !DILocation(line: 1538, column: 13, scope: !707)
!1244 = !DILocation(line: 1541, column: 17, scope: !707)
!1245 = !DILocation(line: 1543, column: 19, scope: !707)
!1246 = !DILocation(line: 1546, column: 27, scope: !707)
!1247 = !DILocation(line: 1546, column: 38, scope: !707)
!1248 = !DILocation(line: 1546, column: 79, scope: !707)
!1249 = !DILocation(line: 1546, column: 104, scope: !707)
!1250 = !DILocation(line: 1546, column: 34, scope: !707)
!1251 = !DILocation(line: 1546, column: 24, scope: !707)
!1252 = !DILocation(line: 1548, column: 24, scope: !707)
!1253 = !DILocation(line: 1548, column: 65, scope: !707)
!1254 = !DILocation(line: 1548, column: 22, scope: !707)
!1255 = !DILocation(line: 1549, column: 30, scope: !707)
!1256 = !DILocation(line: 1549, column: 39, scope: !707)
!1257 = !DILocation(line: 1549, column: 37, scope: !707)
!1258 = !DILocation(line: 1549, column: 50, scope: !707)
!1259 = !DILocation(line: 1549, column: 91, scope: !707)
!1260 = !DILocation(line: 1549, column: 116, scope: !707)
!1261 = !DILocation(line: 1549, column: 122, scope: !707)
!1262 = !DILocation(line: 1549, column: 45, scope: !707)
!1263 = !DILocation(line: 1549, column: 27, scope: !707)
!1264 = !DILocation(line: 1550, column: 15, scope: !707)
!1265 = !DILocation(line: 1551, column: 13, scope: !707)
!1266 = !DILocation(line: 1552, column: 13, scope: !707)
!1267 = !DILocation(line: 1555, column: 17, scope: !707)
!1268 = !DILocation(line: 1555, column: 73, scope: !707)
!1269 = !DILocation(line: 1558, column: 24, scope: !707)
!1270 = !DILocation(line: 1558, column: 22, scope: !707)
!1271 = !DILocation(line: 1560, column: 25, scope: !707)
!1272 = !DILocation(line: 1560, column: 36, scope: !707)
!1273 = !DILocation(line: 1560, column: 89, scope: !707)
!1274 = !DILocation(line: 1560, column: 122, scope: !707)
!1275 = !DILocation(line: 1560, column: 32, scope: !707)
!1276 = !DILocation(line: 1560, column: 22, scope: !707)
!1277 = !DILocation(line: 1562, column: 22, scope: !707)
!1278 = !DILocation(line: 1562, column: 75, scope: !707)
!1279 = !DILocation(line: 1562, column: 20, scope: !707)
!1280 = !DILocation(line: 1563, column: 22, scope: !707)
!1281 = !DILocation(line: 1563, column: 78, scope: !707)
!1282 = !DILocation(line: 1563, column: 20, scope: !707)
!1283 = !DILocation(line: 1564, column: 19, scope: !707)
!1284 = !DILocation(line: 1564, column: 24, scope: !707)
!1285 = !DILocation(line: 1566, column: 21, scope: !707)
!1286 = !DILocation(line: 1566, column: 74, scope: !707)
!1287 = !DILocation(line: 1568, column: 24, scope: !707)
!1288 = !DILocation(line: 1569, column: 17, scope: !707)
!1289 = !DILocation(line: 1572, column: 24, scope: !707)
!1290 = !DILocation(line: 1574, column: 15, scope: !707)
!1291 = !DILocation(line: 1575, column: 28, scope: !707)
!1292 = !DILocation(line: 1575, column: 37, scope: !707)
!1293 = !DILocation(line: 1575, column: 35, scope: !707)
!1294 = !DILocation(line: 1575, column: 45, scope: !707)
!1295 = !DILocation(line: 1575, column: 43, scope: !707)
!1296 = !DILocation(line: 1575, column: 25, scope: !707)
!1297 = !DILocation(line: 1576, column: 13, scope: !707)
!1298 = !DILocation(line: 1577, column: 13, scope: !707)
!1299 = !DILocation(line: 1581, column: 13, scope: !707)
!1300 = !DILocation(line: 1584, column: 9, scope: !707)
!1301 = !DILocation(line: 1588, column: 9, scope: !707)
!1302 = !DILocation(line: 1592, column: 11, scope: !707)
!1303 = !DILocation(line: 1592, column: 3, scope: !707)
!1304 = distinct !DISubprogram(name: "RCCEx_GetSAIxPeriphCLKFreq", scope: !1, file: !1, line: 2813, type: !9, scopeLine: 2814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1305 = !DILocation(line: 2815, column: 12, scope: !1304)
!1306 = !DILocation(line: 2818, column: 7, scope: !1304)
!1307 = !DILocation(line: 2818, column: 17, scope: !1304)
!1308 = !DILocation(line: 2820, column: 14, scope: !1304)
!1309 = !DILocation(line: 2820, column: 12, scope: !1304)
!1310 = !DILocation(line: 2822, column: 9, scope: !1304)
!1311 = !DILocation(line: 2822, column: 16, scope: !1304)
!1312 = !DILocation(line: 2824, column: 17, scope: !1304)
!1313 = !DILocation(line: 2825, column: 5, scope: !1304)
!1314 = !DILocation(line: 2827, column: 3, scope: !1304)
!1315 = !DILocation(line: 2830, column: 14, scope: !1304)
!1316 = !DILocation(line: 2830, column: 12, scope: !1304)
!1317 = !DILocation(line: 2832, column: 9, scope: !1304)
!1318 = !DILocation(line: 2832, column: 16, scope: !1304)
!1319 = !DILocation(line: 2834, column: 17, scope: !1304)
!1320 = !DILocation(line: 2835, column: 5, scope: !1304)
!1321 = !DILocation(line: 2839, column: 7, scope: !1304)
!1322 = !DILocation(line: 2839, column: 17, scope: !1304)
!1323 = !DILocation(line: 2841, column: 14, scope: !1304)
!1324 = !DILocation(line: 2841, column: 12, scope: !1304)
!1325 = !DILocation(line: 2843, column: 10, scope: !1304)
!1326 = !DILocation(line: 2843, column: 17, scope: !1304)
!1327 = !DILocation(line: 2843, column: 43, scope: !1304)
!1328 = !DILocation(line: 2843, column: 47, scope: !1304)
!1329 = !DILocation(line: 2843, column: 54, scope: !1304)
!1330 = !DILocation(line: 2843, column: 9, scope: !1304)
!1331 = !DILocation(line: 2845, column: 11, scope: !1304)
!1332 = !DILocation(line: 2847, column: 13, scope: !1304)
!1333 = !DILocation(line: 2847, column: 61, scope: !1304)
!1334 = !DILocation(line: 2850, column: 21, scope: !1304)
!1335 = !DILocation(line: 2850, column: 32, scope: !1304)
!1336 = !DILocation(line: 2850, column: 73, scope: !1304)
!1337 = !DILocation(line: 2850, column: 98, scope: !1304)
!1338 = !DILocation(line: 2850, column: 28, scope: !1304)
!1339 = !DILocation(line: 2850, column: 18, scope: !1304)
!1340 = !DILocation(line: 2852, column: 18, scope: !1304)
!1341 = !DILocation(line: 2852, column: 59, scope: !1304)
!1342 = !DILocation(line: 2852, column: 16, scope: !1304)
!1343 = !DILocation(line: 2853, column: 18, scope: !1304)
!1344 = !DILocation(line: 2853, column: 62, scope: !1304)
!1345 = !DILocation(line: 2853, column: 16, scope: !1304)
!1346 = !DILocation(line: 2854, column: 15, scope: !1304)
!1347 = !DILocation(line: 2854, column: 20, scope: !1304)
!1348 = !DILocation(line: 2856, column: 17, scope: !1304)
!1349 = !DILocation(line: 2856, column: 58, scope: !1304)
!1350 = !DILocation(line: 2858, column: 20, scope: !1304)
!1351 = !DILocation(line: 2859, column: 13, scope: !1304)
!1352 = !DILocation(line: 2862, column: 20, scope: !1304)
!1353 = !DILocation(line: 2864, column: 11, scope: !1304)
!1354 = !DILocation(line: 2865, column: 24, scope: !1304)
!1355 = !DILocation(line: 2865, column: 33, scope: !1304)
!1356 = !DILocation(line: 2865, column: 31, scope: !1304)
!1357 = !DILocation(line: 2865, column: 41, scope: !1304)
!1358 = !DILocation(line: 2865, column: 39, scope: !1304)
!1359 = !DILocation(line: 2865, column: 21, scope: !1304)
!1360 = !DILocation(line: 2866, column: 9, scope: !1304)
!1361 = !DILocation(line: 2867, column: 7, scope: !1304)
!1362 = !DILocation(line: 2868, column: 5, scope: !1304)
!1363 = !DILocation(line: 2869, column: 15, scope: !1304)
!1364 = !DILocation(line: 2869, column: 22, scope: !1304)
!1365 = !DILocation(line: 2869, column: 48, scope: !1304)
!1366 = !DILocation(line: 2869, column: 52, scope: !1304)
!1367 = !DILocation(line: 2869, column: 59, scope: !1304)
!1368 = !DILocation(line: 2869, column: 14, scope: !1304)
!1369 = !DILocation(line: 2871, column: 11, scope: !1304)
!1370 = !DILocation(line: 2873, column: 19, scope: !1304)
!1371 = !DILocation(line: 2874, column: 7, scope: !1304)
!1372 = !DILocation(line: 2875, column: 5, scope: !1304)
!1373 = !DILocation(line: 2876, column: 14, scope: !1304)
!1374 = !DILocation(line: 2876, column: 21, scope: !1304)
!1375 = !DILocation(line: 2878, column: 11, scope: !1304)
!1376 = !DILocation(line: 2878, column: 67, scope: !1304)
!1377 = !DILocation(line: 2881, column: 18, scope: !1304)
!1378 = !DILocation(line: 2881, column: 16, scope: !1304)
!1379 = !DILocation(line: 2883, column: 19, scope: !1304)
!1380 = !DILocation(line: 2883, column: 30, scope: !1304)
!1381 = !DILocation(line: 2883, column: 83, scope: !1304)
!1382 = !DILocation(line: 2883, column: 116, scope: !1304)
!1383 = !DILocation(line: 2883, column: 26, scope: !1304)
!1384 = !DILocation(line: 2883, column: 16, scope: !1304)
!1385 = !DILocation(line: 2885, column: 16, scope: !1304)
!1386 = !DILocation(line: 2885, column: 69, scope: !1304)
!1387 = !DILocation(line: 2885, column: 14, scope: !1304)
!1388 = !DILocation(line: 2886, column: 16, scope: !1304)
!1389 = !DILocation(line: 2886, column: 72, scope: !1304)
!1390 = !DILocation(line: 2886, column: 14, scope: !1304)
!1391 = !DILocation(line: 2887, column: 13, scope: !1304)
!1392 = !DILocation(line: 2887, column: 18, scope: !1304)
!1393 = !DILocation(line: 2889, column: 15, scope: !1304)
!1394 = !DILocation(line: 2889, column: 68, scope: !1304)
!1395 = !DILocation(line: 2891, column: 18, scope: !1304)
!1396 = !DILocation(line: 2892, column: 11, scope: !1304)
!1397 = !DILocation(line: 2895, column: 18, scope: !1304)
!1398 = !DILocation(line: 2897, column: 9, scope: !1304)
!1399 = !DILocation(line: 2898, column: 22, scope: !1304)
!1400 = !DILocation(line: 2898, column: 31, scope: !1304)
!1401 = !DILocation(line: 2898, column: 29, scope: !1304)
!1402 = !DILocation(line: 2898, column: 39, scope: !1304)
!1403 = !DILocation(line: 2898, column: 37, scope: !1304)
!1404 = !DILocation(line: 2898, column: 19, scope: !1304)
!1405 = !DILocation(line: 2899, column: 7, scope: !1304)
!1406 = !DILocation(line: 2900, column: 5, scope: !1304)
!1407 = !DILocation(line: 2901, column: 15, scope: !1304)
!1408 = !DILocation(line: 2901, column: 22, scope: !1304)
!1409 = !DILocation(line: 2901, column: 52, scope: !1304)
!1410 = !DILocation(line: 2901, column: 56, scope: !1304)
!1411 = !DILocation(line: 2901, column: 63, scope: !1304)
!1412 = !DILocation(line: 2901, column: 14, scope: !1304)
!1413 = !DILocation(line: 2903, column: 11, scope: !1304)
!1414 = !DILocation(line: 2903, column: 67, scope: !1304)
!1415 = !DILocation(line: 2906, column: 18, scope: !1304)
!1416 = !DILocation(line: 2906, column: 16, scope: !1304)
!1417 = !DILocation(line: 2908, column: 19, scope: !1304)
!1418 = !DILocation(line: 2908, column: 30, scope: !1304)
!1419 = !DILocation(line: 2908, column: 83, scope: !1304)
!1420 = !DILocation(line: 2908, column: 116, scope: !1304)
!1421 = !DILocation(line: 2908, column: 26, scope: !1304)
!1422 = !DILocation(line: 2908, column: 16, scope: !1304)
!1423 = !DILocation(line: 2910, column: 16, scope: !1304)
!1424 = !DILocation(line: 2910, column: 69, scope: !1304)
!1425 = !DILocation(line: 2910, column: 14, scope: !1304)
!1426 = !DILocation(line: 2911, column: 16, scope: !1304)
!1427 = !DILocation(line: 2911, column: 72, scope: !1304)
!1428 = !DILocation(line: 2911, column: 14, scope: !1304)
!1429 = !DILocation(line: 2912, column: 13, scope: !1304)
!1430 = !DILocation(line: 2912, column: 18, scope: !1304)
!1431 = !DILocation(line: 2914, column: 15, scope: !1304)
!1432 = !DILocation(line: 2914, column: 68, scope: !1304)
!1433 = !DILocation(line: 2916, column: 18, scope: !1304)
!1434 = !DILocation(line: 2917, column: 11, scope: !1304)
!1435 = !DILocation(line: 2920, column: 18, scope: !1304)
!1436 = !DILocation(line: 2922, column: 9, scope: !1304)
!1437 = !DILocation(line: 2923, column: 22, scope: !1304)
!1438 = !DILocation(line: 2923, column: 31, scope: !1304)
!1439 = !DILocation(line: 2923, column: 29, scope: !1304)
!1440 = !DILocation(line: 2923, column: 39, scope: !1304)
!1441 = !DILocation(line: 2923, column: 37, scope: !1304)
!1442 = !DILocation(line: 2923, column: 19, scope: !1304)
!1443 = !DILocation(line: 2924, column: 7, scope: !1304)
!1444 = !DILocation(line: 2925, column: 5, scope: !1304)
!1445 = !DILocation(line: 2930, column: 3, scope: !1304)
!1446 = !DILocation(line: 2932, column: 10, scope: !1304)
!1447 = !DILocation(line: 2932, column: 3, scope: !1304)
!1448 = distinct !DISubprogram(name: "RCCEx_PLLSAI1_GetVCOFreq", scope: !1, file: !1, line: 2710, type: !9, scopeLine: 2711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1449 = !DILocation(line: 2712, column: 12, scope: !1448)
!1450 = !DILocation(line: 2714, column: 11, scope: !1448)
!1451 = !DILocation(line: 2714, column: 3, scope: !1448)
!1452 = !DILocation(line: 2717, column: 11, scope: !1448)
!1453 = !DILocation(line: 2720, column: 33, scope: !1448)
!1454 = !DILocation(line: 2720, column: 59, scope: !1448)
!1455 = !DILocation(line: 2720, column: 18, scope: !1448)
!1456 = !DILocation(line: 2720, column: 16, scope: !1448)
!1457 = !DILocation(line: 2721, column: 7, scope: !1448)
!1458 = !DILocation(line: 2726, column: 7, scope: !1448)
!1459 = !DILocation(line: 2728, column: 11, scope: !1448)
!1460 = !DILocation(line: 2730, column: 16, scope: !1448)
!1461 = !DILocation(line: 2731, column: 7, scope: !1448)
!1462 = !DILocation(line: 2736, column: 7, scope: !1448)
!1463 = !DILocation(line: 2738, column: 11, scope: !1448)
!1464 = !DILocation(line: 2740, column: 16, scope: !1448)
!1465 = !DILocation(line: 2741, column: 7, scope: !1448)
!1466 = !DILocation(line: 2746, column: 7, scope: !1448)
!1467 = !DILocation(line: 2749, column: 7, scope: !1448)
!1468 = !DILocation(line: 2752, column: 10, scope: !1448)
!1469 = !DILocation(line: 2752, column: 3, scope: !1448)
!1470 = distinct !DISubprogram(name: "HAL_RCCEx_EnablePLLSAI1", scope: !1, file: !1, line: 1620, type: !9, scopeLine: 1621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1471 = !DILocation(line: 1622, column: 21, scope: !1470)
!1472 = !DILocation(line: 1635, column: 3, scope: !1470)
!1473 = !DILocation(line: 1638, column: 15, scope: !1470)
!1474 = !DILocation(line: 1638, column: 13, scope: !1470)
!1475 = !DILocation(line: 1641, column: 3, scope: !1470)
!1476 = !DILocation(line: 1641, column: 10, scope: !1470)
!1477 = !DILocation(line: 1641, column: 47, scope: !1470)
!1478 = !DILocation(line: 1643, column: 10, scope: !1470)
!1479 = !DILocation(line: 1643, column: 26, scope: !1470)
!1480 = !DILocation(line: 1643, column: 24, scope: !1470)
!1481 = !DILocation(line: 1643, column: 37, scope: !1470)
!1482 = !DILocation(line: 1643, column: 9, scope: !1470)
!1483 = !DILocation(line: 1645, column: 14, scope: !1470)
!1484 = !DILocation(line: 1646, column: 7, scope: !1470)
!1485 = distinct !{!1485, !1475, !1486}
!1486 = !DILocation(line: 1648, column: 3, scope: !1470)
!1487 = !DILocation(line: 1650, column: 7, scope: !1470)
!1488 = !DILocation(line: 1650, column: 14, scope: !1470)
!1489 = !DILocation(line: 1653, column: 37, scope: !1470)
!1490 = !DILocation(line: 1653, column: 50, scope: !1470)
!1491 = !DILocation(line: 1653, column: 14, scope: !1470)
!1492 = !DILocation(line: 1653, column: 12, scope: !1470)
!1493 = !DILocation(line: 1655, column: 9, scope: !1470)
!1494 = !DILocation(line: 1655, column: 16, scope: !1470)
!1495 = !DILocation(line: 1659, column: 7, scope: !1470)
!1496 = !DILocation(line: 1662, column: 7, scope: !1470)
!1497 = !DILocation(line: 1665, column: 7, scope: !1470)
!1498 = !DILocation(line: 1668, column: 19, scope: !1470)
!1499 = !DILocation(line: 1668, column: 17, scope: !1470)
!1500 = !DILocation(line: 1671, column: 7, scope: !1470)
!1501 = !DILocation(line: 1671, column: 14, scope: !1470)
!1502 = !DILocation(line: 1671, column: 51, scope: !1470)
!1503 = !DILocation(line: 1673, column: 14, scope: !1470)
!1504 = !DILocation(line: 1673, column: 30, scope: !1470)
!1505 = !DILocation(line: 1673, column: 28, scope: !1470)
!1506 = !DILocation(line: 1673, column: 41, scope: !1470)
!1507 = !DILocation(line: 1673, column: 13, scope: !1470)
!1508 = !DILocation(line: 1675, column: 18, scope: !1470)
!1509 = !DILocation(line: 1676, column: 11, scope: !1470)
!1510 = distinct !{!1510, !1500, !1511}
!1511 = !DILocation(line: 1678, column: 7, scope: !1470)
!1512 = !DILocation(line: 1679, column: 5, scope: !1470)
!1513 = !DILocation(line: 1680, column: 3, scope: !1470)
!1514 = !DILocation(line: 1682, column: 10, scope: !1470)
!1515 = !DILocation(line: 1682, column: 3, scope: !1470)
!1516 = distinct !DISubprogram(name: "RCCEx_PLLSource_Enable", scope: !1, file: !1, line: 2380, type: !9, scopeLine: 2381, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1517 = !DILocation(line: 2382, column: 21, scope: !1516)
!1518 = !DILocation(line: 2385, column: 11, scope: !1516)
!1519 = !DILocation(line: 2385, column: 3, scope: !1516)
!1520 = !DILocation(line: 2389, column: 11, scope: !1516)
!1521 = !DILocation(line: 2389, column: 44, scope: !1516)
!1522 = !DILocation(line: 2392, column: 9, scope: !1516)
!1523 = !DILocation(line: 2395, column: 21, scope: !1516)
!1524 = !DILocation(line: 2395, column: 19, scope: !1516)
!1525 = !DILocation(line: 2398, column: 9, scope: !1516)
!1526 = !DILocation(line: 2398, column: 16, scope: !1516)
!1527 = !DILocation(line: 2398, column: 49, scope: !1516)
!1528 = !DILocation(line: 2400, column: 16, scope: !1516)
!1529 = !DILocation(line: 2400, column: 32, scope: !1516)
!1530 = !DILocation(line: 2400, column: 30, scope: !1516)
!1531 = !DILocation(line: 2400, column: 43, scope: !1516)
!1532 = !DILocation(line: 2400, column: 15, scope: !1516)
!1533 = !DILocation(line: 2402, column: 20, scope: !1516)
!1534 = !DILocation(line: 2403, column: 13, scope: !1516)
!1535 = distinct !{!1535, !1525, !1536}
!1536 = !DILocation(line: 2405, column: 9, scope: !1516)
!1537 = !DILocation(line: 2406, column: 7, scope: !1516)
!1538 = !DILocation(line: 2407, column: 7, scope: !1516)
!1539 = !DILocation(line: 2411, column: 11, scope: !1516)
!1540 = !DILocation(line: 2411, column: 44, scope: !1516)
!1541 = !DILocation(line: 2414, column: 9, scope: !1516)
!1542 = !DILocation(line: 2417, column: 21, scope: !1516)
!1543 = !DILocation(line: 2417, column: 19, scope: !1516)
!1544 = !DILocation(line: 2420, column: 9, scope: !1516)
!1545 = !DILocation(line: 2420, column: 16, scope: !1516)
!1546 = !DILocation(line: 2420, column: 49, scope: !1516)
!1547 = !DILocation(line: 2422, column: 16, scope: !1516)
!1548 = !DILocation(line: 2422, column: 32, scope: !1516)
!1549 = !DILocation(line: 2422, column: 30, scope: !1516)
!1550 = !DILocation(line: 2422, column: 43, scope: !1516)
!1551 = !DILocation(line: 2422, column: 15, scope: !1516)
!1552 = !DILocation(line: 2424, column: 20, scope: !1516)
!1553 = !DILocation(line: 2425, column: 13, scope: !1516)
!1554 = distinct !{!1554, !1544, !1555}
!1555 = !DILocation(line: 2427, column: 9, scope: !1516)
!1556 = !DILocation(line: 2428, column: 7, scope: !1516)
!1557 = !DILocation(line: 2429, column: 7, scope: !1516)
!1558 = !DILocation(line: 2433, column: 11, scope: !1516)
!1559 = !DILocation(line: 2433, column: 44, scope: !1516)
!1560 = !DILocation(line: 2436, column: 9, scope: !1516)
!1561 = !DILocation(line: 2439, column: 21, scope: !1516)
!1562 = !DILocation(line: 2439, column: 19, scope: !1516)
!1563 = !DILocation(line: 2442, column: 9, scope: !1516)
!1564 = !DILocation(line: 2442, column: 16, scope: !1516)
!1565 = !DILocation(line: 2442, column: 49, scope: !1516)
!1566 = !DILocation(line: 2444, column: 16, scope: !1516)
!1567 = !DILocation(line: 2444, column: 32, scope: !1516)
!1568 = !DILocation(line: 2444, column: 30, scope: !1516)
!1569 = !DILocation(line: 2444, column: 43, scope: !1516)
!1570 = !DILocation(line: 2444, column: 15, scope: !1516)
!1571 = !DILocation(line: 2446, column: 20, scope: !1516)
!1572 = !DILocation(line: 2447, column: 13, scope: !1516)
!1573 = distinct !{!1573, !1563, !1574}
!1574 = !DILocation(line: 2449, column: 9, scope: !1516)
!1575 = !DILocation(line: 2450, column: 7, scope: !1516)
!1576 = !DILocation(line: 2451, column: 7, scope: !1516)
!1577 = !DILocation(line: 2455, column: 7, scope: !1516)
!1578 = !DILocation(line: 2458, column: 14, scope: !1516)
!1579 = !DILocation(line: 2459, column: 7, scope: !1516)
!1580 = !DILocation(line: 2462, column: 10, scope: !1516)
!1581 = !DILocation(line: 2462, column: 3, scope: !1516)
!1582 = distinct !DISubprogram(name: "HAL_RCCEx_DisablePLLSAI1", scope: !1, file: !1, line: 1689, type: !9, scopeLine: 1690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1583 = !DILocation(line: 1691, column: 21, scope: !1582)
!1584 = !DILocation(line: 1695, column: 3, scope: !1582)
!1585 = !DILocation(line: 1698, column: 15, scope: !1582)
!1586 = !DILocation(line: 1698, column: 13, scope: !1582)
!1587 = !DILocation(line: 1701, column: 3, scope: !1582)
!1588 = !DILocation(line: 1701, column: 10, scope: !1582)
!1589 = !DILocation(line: 1701, column: 47, scope: !1582)
!1590 = !DILocation(line: 1703, column: 10, scope: !1582)
!1591 = !DILocation(line: 1703, column: 26, scope: !1582)
!1592 = !DILocation(line: 1703, column: 24, scope: !1582)
!1593 = !DILocation(line: 1703, column: 37, scope: !1582)
!1594 = !DILocation(line: 1703, column: 9, scope: !1582)
!1595 = !DILocation(line: 1705, column: 14, scope: !1582)
!1596 = !DILocation(line: 1706, column: 7, scope: !1582)
!1597 = distinct !{!1597, !1587, !1598}
!1598 = !DILocation(line: 1708, column: 3, scope: !1582)
!1599 = !DILocation(line: 1711, column: 3, scope: !1582)
!1600 = !DILocation(line: 1714, column: 10, scope: !1582)
!1601 = !DILocation(line: 1714, column: 3, scope: !1582)
!1602 = distinct !DISubprogram(name: "HAL_RCCEx_EnablePLLSAI2", scope: !1, file: !1, line: 1723, type: !9, scopeLine: 1724, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1603 = !DILocation(line: 1725, column: 21, scope: !1602)
!1604 = !DILocation(line: 1736, column: 3, scope: !1602)
!1605 = !DILocation(line: 1739, column: 15, scope: !1602)
!1606 = !DILocation(line: 1739, column: 13, scope: !1602)
!1607 = !DILocation(line: 1742, column: 3, scope: !1602)
!1608 = !DILocation(line: 1742, column: 10, scope: !1602)
!1609 = !DILocation(line: 1742, column: 47, scope: !1602)
!1610 = !DILocation(line: 1744, column: 10, scope: !1602)
!1611 = !DILocation(line: 1744, column: 26, scope: !1602)
!1612 = !DILocation(line: 1744, column: 24, scope: !1602)
!1613 = !DILocation(line: 1744, column: 37, scope: !1602)
!1614 = !DILocation(line: 1744, column: 9, scope: !1602)
!1615 = !DILocation(line: 1746, column: 14, scope: !1602)
!1616 = !DILocation(line: 1747, column: 7, scope: !1602)
!1617 = distinct !{!1617, !1607, !1618}
!1618 = !DILocation(line: 1749, column: 3, scope: !1602)
!1619 = !DILocation(line: 1751, column: 7, scope: !1602)
!1620 = !DILocation(line: 1751, column: 14, scope: !1602)
!1621 = !DILocation(line: 1754, column: 37, scope: !1602)
!1622 = !DILocation(line: 1754, column: 50, scope: !1602)
!1623 = !DILocation(line: 1754, column: 14, scope: !1602)
!1624 = !DILocation(line: 1754, column: 12, scope: !1602)
!1625 = !DILocation(line: 1756, column: 9, scope: !1602)
!1626 = !DILocation(line: 1756, column: 16, scope: !1602)
!1627 = !DILocation(line: 1760, column: 7, scope: !1602)
!1628 = !DILocation(line: 1763, column: 7, scope: !1602)
!1629 = !DILocation(line: 1766, column: 7, scope: !1602)
!1630 = !DILocation(line: 1769, column: 19, scope: !1602)
!1631 = !DILocation(line: 1769, column: 17, scope: !1602)
!1632 = !DILocation(line: 1772, column: 7, scope: !1602)
!1633 = !DILocation(line: 1772, column: 14, scope: !1602)
!1634 = !DILocation(line: 1772, column: 51, scope: !1602)
!1635 = !DILocation(line: 1774, column: 14, scope: !1602)
!1636 = !DILocation(line: 1774, column: 30, scope: !1602)
!1637 = !DILocation(line: 1774, column: 28, scope: !1602)
!1638 = !DILocation(line: 1774, column: 41, scope: !1602)
!1639 = !DILocation(line: 1774, column: 13, scope: !1602)
!1640 = !DILocation(line: 1776, column: 18, scope: !1602)
!1641 = !DILocation(line: 1777, column: 11, scope: !1602)
!1642 = distinct !{!1642, !1632, !1643}
!1643 = !DILocation(line: 1779, column: 7, scope: !1602)
!1644 = !DILocation(line: 1780, column: 5, scope: !1602)
!1645 = !DILocation(line: 1781, column: 3, scope: !1602)
!1646 = !DILocation(line: 1783, column: 10, scope: !1602)
!1647 = !DILocation(line: 1783, column: 3, scope: !1602)
!1648 = distinct !DISubprogram(name: "HAL_RCCEx_DisablePLLSAI2", scope: !1, file: !1, line: 1790, type: !9, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1649 = !DILocation(line: 1792, column: 21, scope: !1648)
!1650 = !DILocation(line: 1796, column: 3, scope: !1648)
!1651 = !DILocation(line: 1799, column: 15, scope: !1648)
!1652 = !DILocation(line: 1799, column: 13, scope: !1648)
!1653 = !DILocation(line: 1802, column: 3, scope: !1648)
!1654 = !DILocation(line: 1802, column: 10, scope: !1648)
!1655 = !DILocation(line: 1802, column: 47, scope: !1648)
!1656 = !DILocation(line: 1804, column: 10, scope: !1648)
!1657 = !DILocation(line: 1804, column: 26, scope: !1648)
!1658 = !DILocation(line: 1804, column: 24, scope: !1648)
!1659 = !DILocation(line: 1804, column: 37, scope: !1648)
!1660 = !DILocation(line: 1804, column: 9, scope: !1648)
!1661 = !DILocation(line: 1806, column: 14, scope: !1648)
!1662 = !DILocation(line: 1807, column: 7, scope: !1648)
!1663 = distinct !{!1663, !1653, !1664}
!1664 = !DILocation(line: 1809, column: 3, scope: !1648)
!1665 = !DILocation(line: 1812, column: 3, scope: !1648)
!1666 = !DILocation(line: 1815, column: 10, scope: !1648)
!1667 = !DILocation(line: 1815, column: 3, scope: !1648)
!1668 = distinct !DISubprogram(name: "HAL_RCCEx_WakeUpStopCLKConfig", scope: !1, file: !1, line: 1828, type: !9, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1669 = !DILocation(line: 1832, column: 3, scope: !1668)
!1670 = !DILocation(line: 1833, column: 1, scope: !1668)
!1671 = distinct !DISubprogram(name: "HAL_RCCEx_StandbyMSIRangeConfig", scope: !1, file: !1, line: 1846, type: !9, scopeLine: 1847, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1672 = !DILocation(line: 1850, column: 3, scope: !1671)
!1673 = !DILocation(line: 1851, column: 1, scope: !1671)
!1674 = distinct !DISubprogram(name: "HAL_RCCEx_EnableLSECSS", scope: !1, file: !1, line: 1860, type: !9, scopeLine: 1861, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1675 = !DILocation(line: 1862, column: 3, scope: !1674)
!1676 = !DILocation(line: 1863, column: 1, scope: !1674)
!1677 = distinct !DISubprogram(name: "HAL_RCCEx_DisableLSECSS", scope: !1, file: !1, line: 1870, type: !9, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1678 = !DILocation(line: 1872, column: 3, scope: !1677)
!1679 = !DILocation(line: 1873, column: 1, scope: !1677)
!1680 = distinct !DISubprogram(name: "HAL_RCCEx_LSECSS_IRQHandler", scope: !1, file: !1, line: 1879, type: !9, scopeLine: 1880, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1681 = !DILocation(line: 1882, column: 7, scope: !1680)
!1682 = !DILocation(line: 1882, column: 45, scope: !1680)
!1683 = !DILocation(line: 1885, column: 5, scope: !1680)
!1684 = !DILocation(line: 1886, column: 3, scope: !1680)
!1685 = !DILocation(line: 1887, column: 1, scope: !1680)
!1686 = distinct !DISubprogram(name: "HAL_RCCEx_LSECSS_Callback", scope: !1, file: !1, line: 1893, type: !9, scopeLine: 1894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1687 = !DILocation(line: 1898, column: 1, scope: !1686)
!1688 = distinct !DISubprogram(name: "HAL_RCCEx_EnableLSCO", scope: !1, file: !1, line: 1908, type: !9, scopeLine: 1909, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1689 = !DILocation(line: 1911, column: 20, scope: !1688)
!1690 = !DILocation(line: 1912, column: 20, scope: !1688)
!1691 = !DILocation(line: 1918, column: 3, scope: !1688)
!1692 = !DILocation(line: 1921, column: 19, scope: !1688)
!1693 = !DILocation(line: 1921, column: 23, scope: !1688)
!1694 = !DILocation(line: 1922, column: 19, scope: !1688)
!1695 = !DILocation(line: 1922, column: 24, scope: !1688)
!1696 = !DILocation(line: 1923, column: 19, scope: !1688)
!1697 = !DILocation(line: 1923, column: 25, scope: !1688)
!1698 = !DILocation(line: 1924, column: 19, scope: !1688)
!1699 = !DILocation(line: 1924, column: 24, scope: !1688)
!1700 = !DILocation(line: 1925, column: 3, scope: !1688)
!1701 = !DILocation(line: 1928, column: 7, scope: !1688)
!1702 = !DILocation(line: 1930, column: 5, scope: !1688)
!1703 = !DILocation(line: 1931, column: 19, scope: !1688)
!1704 = !DILocation(line: 1932, column: 3, scope: !1688)
!1705 = !DILocation(line: 1933, column: 7, scope: !1688)
!1706 = !DILocation(line: 1935, column: 5, scope: !1688)
!1707 = !DILocation(line: 1936, column: 19, scope: !1688)
!1708 = !DILocation(line: 1937, column: 3, scope: !1688)
!1709 = !DILocation(line: 1939, column: 3, scope: !1688)
!1710 = !DILocation(line: 1941, column: 7, scope: !1688)
!1711 = !DILocation(line: 1941, column: 21, scope: !1688)
!1712 = !DILocation(line: 1943, column: 5, scope: !1688)
!1713 = !DILocation(line: 1944, column: 3, scope: !1688)
!1714 = !DILocation(line: 1945, column: 7, scope: !1688)
!1715 = !DILocation(line: 1945, column: 21, scope: !1688)
!1716 = !DILocation(line: 1947, column: 5, scope: !1688)
!1717 = !DILocation(line: 1948, column: 3, scope: !1688)
!1718 = !DILocation(line: 1949, column: 1, scope: !1688)
!1719 = distinct !DISubprogram(name: "HAL_RCCEx_DisableLSCO", scope: !1, file: !1, line: 1955, type: !9, scopeLine: 1956, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1720 = !DILocation(line: 1957, column: 20, scope: !1719)
!1721 = !DILocation(line: 1958, column: 20, scope: !1719)
!1722 = !DILocation(line: 1961, column: 7, scope: !1719)
!1723 = !DILocation(line: 1963, column: 5, scope: !1719)
!1724 = !DILocation(line: 1964, column: 19, scope: !1719)
!1725 = !DILocation(line: 1965, column: 3, scope: !1719)
!1726 = !DILocation(line: 1966, column: 7, scope: !1719)
!1727 = !DILocation(line: 1969, column: 5, scope: !1719)
!1728 = !DILocation(line: 1970, column: 19, scope: !1719)
!1729 = !DILocation(line: 1971, column: 3, scope: !1719)
!1730 = !DILocation(line: 1973, column: 3, scope: !1719)
!1731 = !DILocation(line: 1976, column: 7, scope: !1719)
!1732 = !DILocation(line: 1976, column: 21, scope: !1719)
!1733 = !DILocation(line: 1979, column: 5, scope: !1719)
!1734 = !DILocation(line: 1980, column: 3, scope: !1719)
!1735 = !DILocation(line: 1981, column: 7, scope: !1719)
!1736 = !DILocation(line: 1981, column: 21, scope: !1719)
!1737 = !DILocation(line: 1983, column: 5, scope: !1719)
!1738 = !DILocation(line: 1984, column: 3, scope: !1719)
!1739 = !DILocation(line: 1985, column: 1, scope: !1719)
!1740 = distinct !DISubprogram(name: "HAL_RCCEx_EnableMSIPLLMode", scope: !1, file: !1, line: 1993, type: !9, scopeLine: 1994, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1741 = !DILocation(line: 1995, column: 3, scope: !1740)
!1742 = !DILocation(line: 1996, column: 1, scope: !1740)
!1743 = distinct !DISubprogram(name: "HAL_RCCEx_DisableMSIPLLMode", scope: !1, file: !1, line: 2004, type: !9, scopeLine: 2005, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1744 = !DILocation(line: 2006, column: 3, scope: !1743)
!1745 = !DILocation(line: 2007, column: 1, scope: !1743)
!1746 = distinct !DISubprogram(name: "HAL_RCCEx_CRSConfig", scope: !1, file: !1, line: 2084, type: !9, scopeLine: 2085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1747 = !DILocation(line: 2099, column: 3, scope: !1746)
!1748 = !DILocation(line: 2100, column: 3, scope: !1746)
!1749 = !DILocation(line: 2105, column: 12, scope: !1746)
!1750 = !DILocation(line: 2105, column: 19, scope: !1746)
!1751 = !DILocation(line: 2105, column: 31, scope: !1746)
!1752 = !DILocation(line: 2105, column: 38, scope: !1746)
!1753 = !DILocation(line: 2105, column: 29, scope: !1746)
!1754 = !DILocation(line: 2105, column: 47, scope: !1746)
!1755 = !DILocation(line: 2105, column: 54, scope: !1746)
!1756 = !DILocation(line: 2105, column: 45, scope: !1746)
!1757 = !DILocation(line: 2105, column: 9, scope: !1746)
!1758 = !DILocation(line: 2107, column: 12, scope: !1746)
!1759 = !DILocation(line: 2107, column: 19, scope: !1746)
!1760 = !DILocation(line: 2107, column: 9, scope: !1746)
!1761 = !DILocation(line: 2109, column: 13, scope: !1746)
!1762 = !DILocation(line: 2109, column: 20, scope: !1746)
!1763 = !DILocation(line: 2109, column: 36, scope: !1746)
!1764 = !DILocation(line: 2109, column: 9, scope: !1746)
!1765 = !DILocation(line: 2110, column: 3, scope: !1746)
!1766 = !DILocation(line: 2114, column: 3, scope: !1746)
!1767 = !DILocation(line: 2119, column: 3, scope: !1746)
!1768 = !DILocation(line: 2120, column: 1, scope: !1746)
!1769 = distinct !DISubprogram(name: "HAL_RCCEx_CRSSoftwareSynchronizationGenerate", scope: !1, file: !1, line: 2126, type: !9, scopeLine: 2127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1770 = !DILocation(line: 2128, column: 3, scope: !1769)
!1771 = !DILocation(line: 2129, column: 1, scope: !1769)
!1772 = distinct !DISubprogram(name: "HAL_RCCEx_CRSGetSynchronizationInfo", scope: !1, file: !1, line: 2136, type: !9, scopeLine: 2137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1773 = !DILocation(line: 2142, column: 42, scope: !1772)
!1774 = !DILocation(line: 2142, column: 3, scope: !1772)
!1775 = !DILocation(line: 2142, column: 17, scope: !1772)
!1776 = !DILocation(line: 2142, column: 29, scope: !1772)
!1777 = !DILocation(line: 2145, column: 52, scope: !1772)
!1778 = !DILocation(line: 2145, column: 83, scope: !1772)
!1779 = !DILocation(line: 2145, column: 3, scope: !1772)
!1780 = !DILocation(line: 2145, column: 17, scope: !1772)
!1781 = !DILocation(line: 2145, column: 39, scope: !1772)
!1782 = !DILocation(line: 2148, column: 47, scope: !1772)
!1783 = !DILocation(line: 2148, column: 81, scope: !1772)
!1784 = !DILocation(line: 2148, column: 3, scope: !1772)
!1785 = !DILocation(line: 2148, column: 17, scope: !1772)
!1786 = !DILocation(line: 2148, column: 34, scope: !1772)
!1787 = !DILocation(line: 2151, column: 49, scope: !1772)
!1788 = !DILocation(line: 2151, column: 3, scope: !1772)
!1789 = !DILocation(line: 2151, column: 17, scope: !1772)
!1790 = !DILocation(line: 2151, column: 36, scope: !1772)
!1791 = !DILocation(line: 2152, column: 1, scope: !1772)
!1792 = distinct !DISubprogram(name: "HAL_RCCEx_CRSWaitSynchronization", scope: !1, file: !1, line: 2169, type: !9, scopeLine: 2170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1793 = !DILocation(line: 2171, column: 12, scope: !1792)
!1794 = !DILocation(line: 2175, column: 15, scope: !1792)
!1795 = !DILocation(line: 2175, column: 13, scope: !1792)
!1796 = !DILocation(line: 2178, column: 3, scope: !1792)
!1797 = !DILocation(line: 2180, column: 9, scope: !1792)
!1798 = !DILocation(line: 2180, column: 17, scope: !1792)
!1799 = !DILocation(line: 2182, column: 13, scope: !1792)
!1800 = !DILocation(line: 2182, column: 29, scope: !1792)
!1801 = !DILocation(line: 2182, column: 27, scope: !1792)
!1802 = !DILocation(line: 2182, column: 42, scope: !1792)
!1803 = !DILocation(line: 2182, column: 40, scope: !1792)
!1804 = !DILocation(line: 2182, column: 51, scope: !1792)
!1805 = !DILocation(line: 2182, column: 55, scope: !1792)
!1806 = !DILocation(line: 2182, column: 63, scope: !1792)
!1807 = !DILocation(line: 2182, column: 11, scope: !1792)
!1808 = !DILocation(line: 2184, column: 19, scope: !1792)
!1809 = !DILocation(line: 2185, column: 7, scope: !1792)
!1810 = !DILocation(line: 2186, column: 5, scope: !1792)
!1811 = !DILocation(line: 2188, column: 9, scope: !1792)
!1812 = !DILocation(line: 2191, column: 17, scope: !1792)
!1813 = !DILocation(line: 2194, column: 7, scope: !1792)
!1814 = !DILocation(line: 2195, column: 5, scope: !1792)
!1815 = !DILocation(line: 2198, column: 9, scope: !1792)
!1816 = !DILocation(line: 2201, column: 17, scope: !1792)
!1817 = !DILocation(line: 2204, column: 7, scope: !1792)
!1818 = !DILocation(line: 2205, column: 5, scope: !1792)
!1819 = !DILocation(line: 2208, column: 9, scope: !1792)
!1820 = !DILocation(line: 2211, column: 17, scope: !1792)
!1821 = !DILocation(line: 2214, column: 7, scope: !1792)
!1822 = !DILocation(line: 2215, column: 5, scope: !1792)
!1823 = !DILocation(line: 2218, column: 9, scope: !1792)
!1824 = !DILocation(line: 2221, column: 17, scope: !1792)
!1825 = !DILocation(line: 2224, column: 7, scope: !1792)
!1826 = !DILocation(line: 2225, column: 5, scope: !1792)
!1827 = !DILocation(line: 2228, column: 9, scope: !1792)
!1828 = !DILocation(line: 2231, column: 17, scope: !1792)
!1829 = !DILocation(line: 2234, column: 7, scope: !1792)
!1830 = !DILocation(line: 2235, column: 5, scope: !1792)
!1831 = !DILocation(line: 2238, column: 9, scope: !1792)
!1832 = !DILocation(line: 2241, column: 7, scope: !1792)
!1833 = !DILocation(line: 2242, column: 5, scope: !1792)
!1834 = !DILocation(line: 2243, column: 3, scope: !1792)
!1835 = !DILocation(line: 2244, column: 26, scope: !1792)
!1836 = !DILocation(line: 2244, column: 23, scope: !1792)
!1837 = distinct !{!1837, !1796, !1838}
!1838 = !DILocation(line: 2244, column: 35, scope: !1792)
!1839 = !DILocation(line: 2246, column: 10, scope: !1792)
!1840 = !DILocation(line: 2246, column: 3, scope: !1792)
!1841 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_IRQHandler", scope: !1, file: !1, line: 2253, type: !9, scopeLine: 2254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1842 = !DILocation(line: 2255, column: 12, scope: !1841)
!1843 = !DILocation(line: 2257, column: 22, scope: !1841)
!1844 = !DILocation(line: 2257, column: 12, scope: !1841)
!1845 = !DILocation(line: 2258, column: 24, scope: !1841)
!1846 = !DILocation(line: 2258, column: 12, scope: !1841)
!1847 = !DILocation(line: 2261, column: 9, scope: !1841)
!1848 = !DILocation(line: 2261, column: 17, scope: !1841)
!1849 = !DILocation(line: 2261, column: 40, scope: !1841)
!1850 = !DILocation(line: 2261, column: 47, scope: !1841)
!1851 = !DILocation(line: 2261, column: 52, scope: !1841)
!1852 = !DILocation(line: 2261, column: 62, scope: !1841)
!1853 = !DILocation(line: 2261, column: 83, scope: !1841)
!1854 = !DILocation(line: 2261, column: 7, scope: !1841)
!1855 = !DILocation(line: 2264, column: 5, scope: !1841)
!1856 = !DILocation(line: 2267, column: 5, scope: !1841)
!1857 = !DILocation(line: 2268, column: 3, scope: !1841)
!1858 = !DILocation(line: 2270, column: 14, scope: !1841)
!1859 = !DILocation(line: 2270, column: 22, scope: !1841)
!1860 = !DILocation(line: 2270, column: 47, scope: !1841)
!1861 = !DILocation(line: 2270, column: 54, scope: !1841)
!1862 = !DILocation(line: 2270, column: 59, scope: !1841)
!1863 = !DILocation(line: 2270, column: 69, scope: !1841)
!1864 = !DILocation(line: 2270, column: 92, scope: !1841)
!1865 = !DILocation(line: 2270, column: 12, scope: !1841)
!1866 = !DILocation(line: 2273, column: 5, scope: !1841)
!1867 = !DILocation(line: 2276, column: 5, scope: !1841)
!1868 = !DILocation(line: 2277, column: 3, scope: !1841)
!1869 = !DILocation(line: 2279, column: 14, scope: !1841)
!1870 = !DILocation(line: 2279, column: 22, scope: !1841)
!1871 = !DILocation(line: 2279, column: 44, scope: !1841)
!1872 = !DILocation(line: 2279, column: 51, scope: !1841)
!1873 = !DILocation(line: 2279, column: 56, scope: !1841)
!1874 = !DILocation(line: 2279, column: 66, scope: !1841)
!1875 = !DILocation(line: 2279, column: 86, scope: !1841)
!1876 = !DILocation(line: 2279, column: 12, scope: !1841)
!1877 = !DILocation(line: 2282, column: 5, scope: !1841)
!1878 = !DILocation(line: 2285, column: 5, scope: !1841)
!1879 = !DILocation(line: 2286, column: 3, scope: !1841)
!1880 = !DILocation(line: 2290, column: 11, scope: !1841)
!1881 = !DILocation(line: 2290, column: 19, scope: !1841)
!1882 = !DILocation(line: 2290, column: 39, scope: !1841)
!1883 = !DILocation(line: 2290, column: 46, scope: !1841)
!1884 = !DILocation(line: 2290, column: 51, scope: !1841)
!1885 = !DILocation(line: 2290, column: 61, scope: !1841)
!1886 = !DILocation(line: 2290, column: 79, scope: !1841)
!1887 = !DILocation(line: 2290, column: 9, scope: !1841)
!1888 = !DILocation(line: 2292, column: 12, scope: !1841)
!1889 = !DILocation(line: 2292, column: 20, scope: !1841)
!1890 = !DILocation(line: 2292, column: 44, scope: !1841)
!1891 = !DILocation(line: 2292, column: 11, scope: !1841)
!1892 = !DILocation(line: 2294, column: 18, scope: !1841)
!1893 = !DILocation(line: 2295, column: 7, scope: !1841)
!1894 = !DILocation(line: 2296, column: 12, scope: !1841)
!1895 = !DILocation(line: 2296, column: 20, scope: !1841)
!1896 = !DILocation(line: 2296, column: 45, scope: !1841)
!1897 = !DILocation(line: 2296, column: 11, scope: !1841)
!1898 = !DILocation(line: 2298, column: 18, scope: !1841)
!1899 = !DILocation(line: 2299, column: 7, scope: !1841)
!1900 = !DILocation(line: 2300, column: 12, scope: !1841)
!1901 = !DILocation(line: 2300, column: 20, scope: !1841)
!1902 = !DILocation(line: 2300, column: 44, scope: !1841)
!1903 = !DILocation(line: 2300, column: 11, scope: !1841)
!1904 = !DILocation(line: 2302, column: 18, scope: !1841)
!1905 = !DILocation(line: 2303, column: 7, scope: !1841)
!1906 = !DILocation(line: 2306, column: 7, scope: !1841)
!1907 = !DILocation(line: 2309, column: 35, scope: !1841)
!1908 = !DILocation(line: 2309, column: 7, scope: !1841)
!1909 = !DILocation(line: 2310, column: 5, scope: !1841)
!1910 = !DILocation(line: 2312, column: 1, scope: !1841)
!1911 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_SyncOkCallback", scope: !1, file: !1, line: 2318, type: !9, scopeLine: 2319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1912 = !DILocation(line: 2323, column: 1, scope: !1911)
!1913 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_SyncWarnCallback", scope: !1, file: !1, line: 2329, type: !9, scopeLine: 2330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1914 = !DILocation(line: 2334, column: 1, scope: !1913)
!1915 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_ExpectedSyncCallback", scope: !1, file: !1, line: 2340, type: !9, scopeLine: 2341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1916 = !DILocation(line: 2345, column: 1, scope: !1915)
!1917 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_ErrorCallback", scope: !1, file: !1, line: 2356, type: !9, scopeLine: 2357, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1918 = !DILocation(line: 2359, column: 3, scope: !1917)
!1919 = !DILocation(line: 2364, column: 1, scope: !1917)
!1920 = distinct !DISubprogram(name: "RCCEx_PLLSAI2_GetVCOFreq", scope: !1, file: !1, line: 2759, type: !9, scopeLine: 2760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1921 = !DILocation(line: 2761, column: 12, scope: !1920)
!1922 = !DILocation(line: 2763, column: 11, scope: !1920)
!1923 = !DILocation(line: 2763, column: 3, scope: !1920)
!1924 = !DILocation(line: 2766, column: 11, scope: !1920)
!1925 = !DILocation(line: 2769, column: 33, scope: !1920)
!1926 = !DILocation(line: 2769, column: 59, scope: !1920)
!1927 = !DILocation(line: 2769, column: 18, scope: !1920)
!1928 = !DILocation(line: 2769, column: 16, scope: !1920)
!1929 = !DILocation(line: 2770, column: 7, scope: !1920)
!1930 = !DILocation(line: 2775, column: 7, scope: !1920)
!1931 = !DILocation(line: 2777, column: 11, scope: !1920)
!1932 = !DILocation(line: 2779, column: 16, scope: !1920)
!1933 = !DILocation(line: 2780, column: 7, scope: !1920)
!1934 = !DILocation(line: 2785, column: 7, scope: !1920)
!1935 = !DILocation(line: 2787, column: 11, scope: !1920)
!1936 = !DILocation(line: 2789, column: 16, scope: !1920)
!1937 = !DILocation(line: 2790, column: 7, scope: !1920)
!1938 = !DILocation(line: 2795, column: 7, scope: !1920)
!1939 = !DILocation(line: 2798, column: 7, scope: !1920)
!1940 = !DILocation(line: 2801, column: 10, scope: !1920)
!1941 = !DILocation(line: 2801, column: 3, scope: !1920)
