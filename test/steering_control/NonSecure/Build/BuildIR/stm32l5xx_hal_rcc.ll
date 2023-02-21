; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.PWR_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32 }
%struct.RCC_OscInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.RCC_PLLInitTypeDef }
%struct.RCC_PLLInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.FLASH_TypeDef = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.RCC_ClkInitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }

@SystemCoreClock = external dso_local global i32, align 4
@uwTickPrio = external dso_local global i32, align 4
@MSIRangeTable = external dso_local constant [16 x i32], align 4
@AHBPrescTable = external dso_local constant [16 x i8], align 1
@APBPrescTable = external dso_local constant [8 x i8], align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCC_DeInit() #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %tickstart = alloca i32, align 4
  %pwrclkchanged = alloca i8, align 1
  %tmpreg = alloca i32, align 4
  store i8 0, i8* %pwrclkchanged, align 1, !dbg !10
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !11
  %or = or i32 %0, 1, !dbg !11
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !11
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !12
  store i32 %call, i32* %tickstart, align 4, !dbg !13
  br label %while.cond, !dbg !14

while.cond:                                       ; preds = %if.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !15
  %and = and i32 %1, 2, !dbg !15
  %cmp = icmp eq i32 %and, 0, !dbg !16
  br i1 %cmp, label %while.body, label %while.end, !dbg !14

while.body:                                       ; preds = %while.cond
  %call1 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !17
  %2 = load i32, i32* %tickstart, align 4, !dbg !18
  %sub = sub i32 %call1, %2, !dbg !19
  %cmp2 = icmp ugt i32 %sub, 2, !dbg !20
  br i1 %cmp2, label %if.then, label %if.end, !dbg !21

if.then:                                          ; preds = %while.body
  store i8 3, i8* %retval, align 1, !dbg !22
  br label %return, !dbg !22

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !14, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !25
  %and3 = and i32 %3, -241, !dbg !25
  %or4 = or i32 %and3, 96, !dbg !25
  store volatile i32 %or4, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !25
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !26
  %call5 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !27
  store i32 %call5, i32* %tickstart, align 4, !dbg !28
  store i32 48000000, i32* @SystemCoreClock, align 4, !dbg !29
  %4 = load i32, i32* @uwTickPrio, align 4, !dbg !30
  %call6 = call arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32 %4), !dbg !31
  %conv = zext i8 %call6 to i32, !dbg !31
  %cmp7 = icmp ne i32 %conv, 0, !dbg !32
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !31

if.then9:                                         ; preds = %while.end
  store i8 1, i8* %retval, align 1, !dbg !33
  br label %return, !dbg !33

if.end10:                                         ; preds = %while.end
  br label %while.cond11, !dbg !34

while.cond11:                                     ; preds = %if.end21, %if.end10
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !35
  %and12 = and i32 %5, 12, !dbg !35
  %cmp13 = icmp ne i32 %and12, 0, !dbg !36
  br i1 %cmp13, label %while.body15, label %while.end22, !dbg !34

while.body15:                                     ; preds = %while.cond11
  %call16 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !37
  %6 = load i32, i32* %tickstart, align 4, !dbg !38
  %sub17 = sub i32 %call16, %6, !dbg !39
  %cmp18 = icmp ugt i32 %sub17, 5000, !dbg !40
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !41

if.then20:                                        ; preds = %while.body15
  store i8 3, i8* %retval, align 1, !dbg !42
  br label %return, !dbg !42

if.end21:                                         ; preds = %while.body15
  br label %while.cond11, !dbg !34, !llvm.loop !43

while.end22:                                      ; preds = %while.cond11
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !45
  %and23 = and i32 %7, -352914177, !dbg !45
  store volatile i32 %and23, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !45
  %call24 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !46
  store i32 %call24, i32* %tickstart, align 4, !dbg !47
  br label %while.cond25, !dbg !48

while.cond25:                                     ; preds = %if.end35, %while.end22
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !49
  %and26 = and i32 %8, 167772160, !dbg !49
  %cmp27 = icmp ne i32 %and26, 0, !dbg !50
  br i1 %cmp27, label %while.body29, label %while.end36, !dbg !48

while.body29:                                     ; preds = %while.cond25
  %call30 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !51
  %9 = load i32, i32* %tickstart, align 4, !dbg !52
  %sub31 = sub i32 %call30, %9, !dbg !53
  %cmp32 = icmp ugt i32 %sub31, 2, !dbg !54
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !55

if.then34:                                        ; preds = %while.body29
  store i8 3, i8* %retval, align 1, !dbg !56
  br label %return, !dbg !56

if.end35:                                         ; preds = %while.body29
  br label %while.cond25, !dbg !48, !llvm.loop !57

while.end36:                                      ; preds = %while.cond25
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !59
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !60
  %or37 = or i32 %10, 4096, !dbg !60
  store volatile i32 %or37, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !60
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !61
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !62
  %or38 = or i32 %11, 4096, !dbg !62
  store volatile i32 %or38, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 4), align 4, !dbg !62
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !63
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !64
  %or39 = or i32 %12, 4096, !dbg !64
  store volatile i32 %or39, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 5), align 4, !dbg !64
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !65
  %and40 = and i32 %13, -2, !dbg !65
  store volatile i32 %and40, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !65
  %call41 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !66
  store i32 %call41, i32* %tickstart, align 4, !dbg !67
  br label %while.cond42, !dbg !68

while.cond42:                                     ; preds = %if.end52, %while.end36
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !69
  %and43 = and i32 %14, 2, !dbg !69
  %cmp44 = icmp ne i32 %and43, 0, !dbg !70
  br i1 %cmp44, label %while.body46, label %while.end53, !dbg !68

while.body46:                                     ; preds = %while.cond42
  %call47 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !71
  %15 = load i32, i32* %tickstart, align 4, !dbg !72
  %sub48 = sub i32 %call47, %15, !dbg !73
  %cmp49 = icmp ugt i32 %sub48, 7, !dbg !74
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !75

if.then51:                                        ; preds = %while.body46
  store i8 3, i8* %retval, align 1, !dbg !76
  br label %return, !dbg !76

if.end52:                                         ; preds = %while.body46
  br label %while.cond42, !dbg !68, !llvm.loop !77

while.end53:                                      ; preds = %while.cond42
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !79
  %and54 = and i32 %16, -17, !dbg !79
  store volatile i32 %and54, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !79
  %17 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !80
  %and55 = and i32 %17, -2, !dbg !80
  store volatile i32 %and55, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !80
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !81
  %and56 = and i32 %18, -262145, !dbg !81
  store volatile i32 %and56, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !81
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 6), align 4, !dbg !82
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 8), align 4, !dbg !83
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !84
  %or57 = or i32 %19, 8388608, !dbg !84
  store volatile i32 %or57, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !84
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !85
  %and58 = and i32 %20, 268435456, !dbg !85
  %cmp59 = icmp eq i32 %and58, 0, !dbg !85
  br i1 %cmp59, label %if.then61, label %if.end64, !dbg !85

if.then61:                                        ; preds = %while.end53
  br label %do.body, !dbg !86

do.body:                                          ; preds = %if.then61
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !86
  %or62 = or i32 %21, 268435456, !dbg !86
  store volatile i32 %or62, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !86
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !86
  %and63 = and i32 %22, 268435456, !dbg !86
  store volatile i32 %and63, i32* %tmpreg, align 4, !dbg !86
  %23 = load volatile i32, i32* %tmpreg, align 4, !dbg !86
  br label %do.end, !dbg !86

do.end:                                           ; preds = %do.body
  store i8 1, i8* %pwrclkchanged, align 1, !dbg !87
  br label %if.end64, !dbg !88

if.end64:                                         ; preds = %do.end, %while.end53
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !89
  %and65 = and i32 %24, 256, !dbg !89
  %cmp66 = icmp eq i32 %and65, 0, !dbg !89
  br i1 %cmp66, label %if.then68, label %if.end70, !dbg !89

if.then68:                                        ; preds = %if.end64
  %25 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !90
  %or69 = or i32 %25, 256, !dbg !90
  store volatile i32 %or69, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !90
  br label %if.end70, !dbg !91

if.end70:                                         ; preds = %if.then68, %if.end64
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !92
  %and71 = and i32 %26, -2, !dbg !92
  store volatile i32 %and71, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !92
  %27 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !93
  %and72 = and i32 %27, -133, !dbg !93
  store volatile i32 %and72, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !93
  %28 = load i8, i8* %pwrclkchanged, align 1, !dbg !94
  %conv73 = zext i8 %28 to i32, !dbg !94
  %cmp74 = icmp eq i32 %conv73, 1, !dbg !95
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !94

if.then76:                                        ; preds = %if.end70
  %29 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !96
  %and77 = and i32 %29, -268435457, !dbg !96
  store volatile i32 %and77, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !96
  br label %if.end78, !dbg !97

if.end78:                                         ; preds = %if.then76, %if.end70
  store i8 0, i8* %retval, align 1, !dbg !98
  br label %return, !dbg !98

return:                                           ; preds = %if.end78, %if.then51, %if.then34, %if.then20, %if.then9, %if.then
  %30 = load i8, i8* %retval, align 1, !dbg !99
  ret i8 %30, !dbg !99
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCC_OscConfig(%struct.RCC_OscInitTypeDef* %RCC_OscInitStruct) #0 !dbg !100 {
entry:
  %retval = alloca i8, align 1
  %RCC_OscInitStruct.addr = alloca %struct.RCC_OscInitTypeDef*, align 4
  %tickstart = alloca i32, align 4
  %status = alloca i8, align 1
  %sysclk_source = alloca i32, align 4
  %pll_config = alloca i32, align 4
  %pwrclkchanged = alloca i8, align 1
  %tmpreg = alloca i32, align 4
  store %struct.RCC_OscInitTypeDef* %RCC_OscInitStruct, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4
  %0 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !101
  %cmp = icmp eq %struct.RCC_OscInitTypeDef* %0, null, !dbg !102
  br i1 %cmp, label %if.then, label %if.end, !dbg !101

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !103
  br label %return, !dbg !103

if.end:                                           ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !104
  %and = and i32 %1, 12, !dbg !104
  store i32 %and, i32* %sysclk_source, align 4, !dbg !105
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !106
  %and1 = and i32 %2, 3, !dbg !106
  store i32 %and1, i32* %pll_config, align 4, !dbg !107
  %3 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !108
  %OscillatorType = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %3, i32 0, i32 0, !dbg !109
  %4 = load i32, i32* %OscillatorType, align 4, !dbg !109
  %and2 = and i32 %4, 16, !dbg !110
  %cmp3 = icmp eq i32 %and2, 16, !dbg !111
  br i1 %cmp3, label %if.then4, label %if.end103, !dbg !112

if.then4:                                         ; preds = %if.end
  %5 = load i32, i32* %sysclk_source, align 4, !dbg !113
  %cmp5 = icmp eq i32 %5, 0, !dbg !114
  br i1 %cmp5, label %if.then8, label %lor.lhs.false, !dbg !115

lor.lhs.false:                                    ; preds = %if.then4
  %6 = load i32, i32* %sysclk_source, align 4, !dbg !116
  %cmp6 = icmp eq i32 %6, 12, !dbg !117
  br i1 %cmp6, label %land.lhs.true, label %if.else61, !dbg !118

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load i32, i32* %pll_config, align 4, !dbg !119
  %cmp7 = icmp eq i32 %7, 1, !dbg !120
  br i1 %cmp7, label %if.then8, label %if.else61, !dbg !121

if.then8:                                         ; preds = %land.lhs.true, %if.then4
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !122
  %and9 = and i32 %8, 2, !dbg !122
  %cmp10 = icmp ne i32 %and9, 0, !dbg !123
  br i1 %cmp10, label %land.lhs.true11, label %if.else, !dbg !124

land.lhs.true11:                                  ; preds = %if.then8
  %9 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !125
  %MSIState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %9, i32 0, i32 7, !dbg !126
  %10 = load i32, i32* %MSIState, align 4, !dbg !126
  %cmp12 = icmp eq i32 %10, 0, !dbg !127
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !128

if.then13:                                        ; preds = %land.lhs.true11
  store i8 1, i8* %retval, align 1, !dbg !129
  br label %return, !dbg !129

if.else:                                          ; preds = %land.lhs.true11, %if.then8
  %11 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !130
  %MSIClockRange = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %11, i32 0, i32 9, !dbg !131
  %12 = load i32, i32* %MSIClockRange, align 4, !dbg !131
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !132
  %and14 = and i32 %13, 8, !dbg !132
  %cmp15 = icmp ne i32 %and14, 0, !dbg !132
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !132

cond.true:                                        ; preds = %if.else
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !132
  %and16 = and i32 %14, 240, !dbg !132
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %if.else
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !132
  %and17 = and i32 %15, 3840, !dbg !132
  %shr = lshr i32 %and17, 4, !dbg !132
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and16, %cond.true ], [ %shr, %cond.false ], !dbg !132
  %cmp18 = icmp ugt i32 %12, %cond, !dbg !133
  br i1 %cmp18, label %if.then19, label %if.else30, !dbg !130

if.then19:                                        ; preds = %cond.end
  %16 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !134
  %MSIClockRange20 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %16, i32 0, i32 9, !dbg !135
  %17 = load i32, i32* %MSIClockRange20, align 4, !dbg !135
  %call = call arm_aapcs_vfpcc zeroext i8 @RCC_SetFlashLatencyFromMSIRange(i32 %17), !dbg !136
  %conv = zext i8 %call to i32, !dbg !136
  %cmp21 = icmp ne i32 %conv, 0, !dbg !137
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !136

if.then23:                                        ; preds = %if.then19
  store i8 1, i8* %retval, align 1, !dbg !138
  br label %return, !dbg !138

if.end24:                                         ; preds = %if.then19
  br label %do.body, !dbg !139

do.body:                                          ; preds = %if.end24
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !139
  %or = or i32 %18, 8, !dbg !139
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !139
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !139
  %and25 = and i32 %19, -241, !dbg !139
  %20 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !139
  %MSIClockRange26 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %20, i32 0, i32 9, !dbg !139
  %21 = load i32, i32* %MSIClockRange26, align 4, !dbg !139
  %or27 = or i32 %and25, %21, !dbg !139
  store volatile i32 %or27, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !139
  br label %do.end, !dbg !139

do.end:                                           ; preds = %do.body
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !140
  %and28 = and i32 %22, -65281, !dbg !140
  %23 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !140
  %MSICalibrationValue = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %23, i32 0, i32 8, !dbg !140
  %24 = load i32, i32* %MSICalibrationValue, align 4, !dbg !140
  %shl = shl i32 %24, 8, !dbg !140
  %or29 = or i32 %and28, %shl, !dbg !140
  store volatile i32 %or29, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !140
  br label %if.end52, !dbg !141

if.else30:                                        ; preds = %cond.end
  br label %do.body31, !dbg !142

do.body31:                                        ; preds = %if.else30
  %25 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !142
  %or32 = or i32 %25, 8, !dbg !142
  store volatile i32 %or32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !142
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !142
  %and33 = and i32 %26, -241, !dbg !142
  %27 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !142
  %MSIClockRange34 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %27, i32 0, i32 9, !dbg !142
  %28 = load i32, i32* %MSIClockRange34, align 4, !dbg !142
  %or35 = or i32 %and33, %28, !dbg !142
  store volatile i32 %or35, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !142
  br label %do.end36, !dbg !142

do.end36:                                         ; preds = %do.body31
  %29 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !143
  %and37 = and i32 %29, -65281, !dbg !143
  %30 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !143
  %MSICalibrationValue38 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %30, i32 0, i32 8, !dbg !143
  %31 = load i32, i32* %MSICalibrationValue38, align 4, !dbg !143
  %shl39 = shl i32 %31, 8, !dbg !143
  %or40 = or i32 %and37, %shl39, !dbg !143
  store volatile i32 %or40, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !143
  %32 = load i32, i32* %sysclk_source, align 4, !dbg !144
  %cmp41 = icmp eq i32 %32, 0, !dbg !145
  br i1 %cmp41, label %if.then43, label %if.end51, !dbg !144

if.then43:                                        ; preds = %do.end36
  %33 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !146
  %MSIClockRange44 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %33, i32 0, i32 9, !dbg !147
  %34 = load i32, i32* %MSIClockRange44, align 4, !dbg !147
  %call45 = call arm_aapcs_vfpcc zeroext i8 @RCC_SetFlashLatencyFromMSIRange(i32 %34), !dbg !148
  %conv46 = zext i8 %call45 to i32, !dbg !148
  %cmp47 = icmp ne i32 %conv46, 0, !dbg !149
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !148

if.then49:                                        ; preds = %if.then43
  store i8 1, i8* %retval, align 1, !dbg !150
  br label %return, !dbg !150

if.end50:                                         ; preds = %if.then43
  br label %if.end51, !dbg !151

if.end51:                                         ; preds = %if.end50, %do.end36
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %do.end
  %call53 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetHCLKFreq(), !dbg !152
  store i32 %call53, i32* @SystemCoreClock, align 4, !dbg !153
  %35 = load i32, i32* @uwTickPrio, align 4, !dbg !154
  %call54 = call arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32 %35), !dbg !155
  store i8 %call54, i8* %status, align 1, !dbg !156
  %36 = load i8, i8* %status, align 1, !dbg !157
  %conv55 = zext i8 %36 to i32, !dbg !157
  %cmp56 = icmp ne i32 %conv55, 0, !dbg !158
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !157

if.then58:                                        ; preds = %if.end52
  %37 = load i8, i8* %status, align 1, !dbg !159
  store i8 %37, i8* %retval, align 1, !dbg !160
  br label %return, !dbg !160

if.end59:                                         ; preds = %if.end52
  br label %if.end60

if.end60:                                         ; preds = %if.end59
  br label %if.end102, !dbg !161

if.else61:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %38 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !162
  %MSIState62 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %38, i32 0, i32 7, !dbg !163
  %39 = load i32, i32* %MSIState62, align 4, !dbg !163
  %cmp63 = icmp ne i32 %39, 0, !dbg !164
  br i1 %cmp63, label %if.then65, label %if.else86, !dbg !162

if.then65:                                        ; preds = %if.else61
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !165
  %or66 = or i32 %40, 1, !dbg !165
  store volatile i32 %or66, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !165
  %call67 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !166
  store i32 %call67, i32* %tickstart, align 4, !dbg !167
  br label %while.cond, !dbg !168

while.cond:                                       ; preds = %if.end75, %if.then65
  %41 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !169
  %and68 = and i32 %41, 2, !dbg !169
  %cmp69 = icmp eq i32 %and68, 0, !dbg !170
  br i1 %cmp69, label %while.body, label %while.end, !dbg !168

while.body:                                       ; preds = %while.cond
  %call71 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !171
  %42 = load i32, i32* %tickstart, align 4, !dbg !172
  %sub = sub i32 %call71, %42, !dbg !173
  %cmp72 = icmp ugt i32 %sub, 2, !dbg !174
  br i1 %cmp72, label %if.then74, label %if.end75, !dbg !175

if.then74:                                        ; preds = %while.body
  store i8 3, i8* %retval, align 1, !dbg !176
  br label %return, !dbg !176

if.end75:                                         ; preds = %while.body
  br label %while.cond, !dbg !168, !llvm.loop !177

while.end:                                        ; preds = %while.cond
  br label %do.body76, !dbg !179

do.body76:                                        ; preds = %while.end
  %43 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !179
  %or77 = or i32 %43, 8, !dbg !179
  store volatile i32 %or77, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !179
  %44 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !179
  %and78 = and i32 %44, -241, !dbg !179
  %45 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !179
  %MSIClockRange79 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %45, i32 0, i32 9, !dbg !179
  %46 = load i32, i32* %MSIClockRange79, align 4, !dbg !179
  %or80 = or i32 %and78, %46, !dbg !179
  store volatile i32 %or80, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !179
  br label %do.end81, !dbg !179

do.end81:                                         ; preds = %do.body76
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !180
  %and82 = and i32 %47, -65281, !dbg !180
  %48 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !180
  %MSICalibrationValue83 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %48, i32 0, i32 8, !dbg !180
  %49 = load i32, i32* %MSICalibrationValue83, align 4, !dbg !180
  %shl84 = shl i32 %49, 8, !dbg !180
  %or85 = or i32 %and82, %shl84, !dbg !180
  store volatile i32 %or85, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !180
  br label %if.end101, !dbg !181

if.else86:                                        ; preds = %if.else61
  %50 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !182
  %and87 = and i32 %50, -2, !dbg !182
  store volatile i32 %and87, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !182
  %call88 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !183
  store i32 %call88, i32* %tickstart, align 4, !dbg !184
  br label %while.cond89, !dbg !185

while.cond89:                                     ; preds = %if.end99, %if.else86
  %51 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !186
  %and90 = and i32 %51, 2, !dbg !186
  %cmp91 = icmp ne i32 %and90, 0, !dbg !187
  br i1 %cmp91, label %while.body93, label %while.end100, !dbg !185

while.body93:                                     ; preds = %while.cond89
  %call94 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !188
  %52 = load i32, i32* %tickstart, align 4, !dbg !189
  %sub95 = sub i32 %call94, %52, !dbg !190
  %cmp96 = icmp ugt i32 %sub95, 2, !dbg !191
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !192

if.then98:                                        ; preds = %while.body93
  store i8 3, i8* %retval, align 1, !dbg !193
  br label %return, !dbg !193

if.end99:                                         ; preds = %while.body93
  br label %while.cond89, !dbg !185, !llvm.loop !194

while.end100:                                     ; preds = %while.cond89
  br label %if.end101

if.end101:                                        ; preds = %while.end100, %do.end81
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.end60
  br label %if.end103, !dbg !196

if.end103:                                        ; preds = %if.end102, %if.end
  %53 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !197
  %OscillatorType104 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %53, i32 0, i32 0, !dbg !198
  %54 = load i32, i32* %OscillatorType104, align 4, !dbg !198
  %and105 = and i32 %54, 1, !dbg !199
  %cmp106 = icmp eq i32 %and105, 1, !dbg !200
  br i1 %cmp106, label %if.then108, label %if.end179, !dbg !201

if.then108:                                       ; preds = %if.end103
  %55 = load i32, i32* %sysclk_source, align 4, !dbg !202
  %cmp109 = icmp eq i32 %55, 8, !dbg !203
  br i1 %cmp109, label %if.then117, label %lor.lhs.false111, !dbg !204

lor.lhs.false111:                                 ; preds = %if.then108
  %56 = load i32, i32* %sysclk_source, align 4, !dbg !205
  %cmp112 = icmp eq i32 %56, 12, !dbg !206
  br i1 %cmp112, label %land.lhs.true114, label %if.else126, !dbg !207

land.lhs.true114:                                 ; preds = %lor.lhs.false111
  %57 = load i32, i32* %pll_config, align 4, !dbg !208
  %cmp115 = icmp eq i32 %57, 3, !dbg !209
  br i1 %cmp115, label %if.then117, label %if.else126, !dbg !210

if.then117:                                       ; preds = %land.lhs.true114, %if.then108
  %58 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !211
  %and118 = and i32 %58, 131072, !dbg !211
  %cmp119 = icmp ne i32 %and118, 0, !dbg !212
  br i1 %cmp119, label %land.lhs.true121, label %if.end125, !dbg !213

land.lhs.true121:                                 ; preds = %if.then117
  %59 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !214
  %HSEState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %59, i32 0, i32 1, !dbg !215
  %60 = load i32, i32* %HSEState, align 4, !dbg !215
  %cmp122 = icmp eq i32 %60, 0, !dbg !216
  br i1 %cmp122, label %if.then124, label %if.end125, !dbg !217

if.then124:                                       ; preds = %land.lhs.true121
  store i8 1, i8* %retval, align 1, !dbg !218
  br label %return, !dbg !218

if.end125:                                        ; preds = %land.lhs.true121, %if.then117
  br label %if.end178, !dbg !219

if.else126:                                       ; preds = %land.lhs.true114, %lor.lhs.false111
  br label %do.body127, !dbg !220

do.body127:                                       ; preds = %if.else126
  %61 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !220
  %HSEState128 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %61, i32 0, i32 1, !dbg !220
  %62 = load i32, i32* %HSEState128, align 4, !dbg !220
  %cmp129 = icmp eq i32 %62, 65536, !dbg !220
  br i1 %cmp129, label %if.then131, label %if.else133, !dbg !220

if.then131:                                       ; preds = %do.body127
  %63 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %or132 = or i32 %63, 65536, !dbg !220
  store volatile i32 %or132, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  br label %if.end144, !dbg !220

if.else133:                                       ; preds = %do.body127
  %64 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !220
  %HSEState134 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %64, i32 0, i32 1, !dbg !220
  %65 = load i32, i32* %HSEState134, align 4, !dbg !220
  %cmp135 = icmp eq i32 %65, 327680, !dbg !220
  br i1 %cmp135, label %if.then137, label %if.else140, !dbg !220

if.then137:                                       ; preds = %if.else133
  %66 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %or138 = or i32 %66, 262144, !dbg !220
  store volatile i32 %or138, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %67 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %or139 = or i32 %67, 65536, !dbg !220
  store volatile i32 %or139, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  br label %if.end143, !dbg !220

if.else140:                                       ; preds = %if.else133
  %68 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %and141 = and i32 %68, -65537, !dbg !220
  store volatile i32 %and141, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %69 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  %and142 = and i32 %69, -262145, !dbg !220
  store volatile i32 %and142, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !220
  br label %if.end143

if.end143:                                        ; preds = %if.else140, %if.then137
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.then131
  br label %do.end145, !dbg !220

do.end145:                                        ; preds = %if.end144
  %70 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !221
  %HSEState146 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %70, i32 0, i32 1, !dbg !222
  %71 = load i32, i32* %HSEState146, align 4, !dbg !222
  %cmp147 = icmp ne i32 %71, 0, !dbg !223
  br i1 %cmp147, label %if.then149, label %if.else163, !dbg !221

if.then149:                                       ; preds = %do.end145
  %call150 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !224
  store i32 %call150, i32* %tickstart, align 4, !dbg !225
  br label %while.cond151, !dbg !226

while.cond151:                                    ; preds = %if.end161, %if.then149
  %72 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !227
  %and152 = and i32 %72, 131072, !dbg !227
  %cmp153 = icmp eq i32 %and152, 0, !dbg !228
  br i1 %cmp153, label %while.body155, label %while.end162, !dbg !226

while.body155:                                    ; preds = %while.cond151
  %call156 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !229
  %73 = load i32, i32* %tickstart, align 4, !dbg !230
  %sub157 = sub i32 %call156, %73, !dbg !231
  %cmp158 = icmp ugt i32 %sub157, 100, !dbg !232
  br i1 %cmp158, label %if.then160, label %if.end161, !dbg !233

if.then160:                                       ; preds = %while.body155
  store i8 3, i8* %retval, align 1, !dbg !234
  br label %return, !dbg !234

if.end161:                                        ; preds = %while.body155
  br label %while.cond151, !dbg !226, !llvm.loop !235

while.end162:                                     ; preds = %while.cond151
  br label %if.end177, !dbg !237

if.else163:                                       ; preds = %do.end145
  %call164 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !238
  store i32 %call164, i32* %tickstart, align 4, !dbg !239
  br label %while.cond165, !dbg !240

while.cond165:                                    ; preds = %if.end175, %if.else163
  %74 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !241
  %and166 = and i32 %74, 131072, !dbg !241
  %cmp167 = icmp ne i32 %and166, 0, !dbg !242
  br i1 %cmp167, label %while.body169, label %while.end176, !dbg !240

while.body169:                                    ; preds = %while.cond165
  %call170 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !243
  %75 = load i32, i32* %tickstart, align 4, !dbg !244
  %sub171 = sub i32 %call170, %75, !dbg !245
  %cmp172 = icmp ugt i32 %sub171, 100, !dbg !246
  br i1 %cmp172, label %if.then174, label %if.end175, !dbg !247

if.then174:                                       ; preds = %while.body169
  store i8 3, i8* %retval, align 1, !dbg !248
  br label %return, !dbg !248

if.end175:                                        ; preds = %while.body169
  br label %while.cond165, !dbg !240, !llvm.loop !249

while.end176:                                     ; preds = %while.cond165
  br label %if.end177

if.end177:                                        ; preds = %while.end176, %while.end162
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.end125
  br label %if.end179, !dbg !251

if.end179:                                        ; preds = %if.end178, %if.end103
  %76 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !252
  %OscillatorType180 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %76, i32 0, i32 0, !dbg !253
  %77 = load i32, i32* %OscillatorType180, align 4, !dbg !253
  %and181 = and i32 %77, 2, !dbg !254
  %cmp182 = icmp eq i32 %and181, 2, !dbg !255
  br i1 %cmp182, label %if.then184, label %if.end246, !dbg !256

if.then184:                                       ; preds = %if.end179
  %78 = load i32, i32* %sysclk_source, align 4, !dbg !257
  %cmp185 = icmp eq i32 %78, 4, !dbg !258
  br i1 %cmp185, label %if.then193, label %lor.lhs.false187, !dbg !259

lor.lhs.false187:                                 ; preds = %if.then184
  %79 = load i32, i32* %sysclk_source, align 4, !dbg !260
  %cmp188 = icmp eq i32 %79, 12, !dbg !261
  br i1 %cmp188, label %land.lhs.true190, label %if.else206, !dbg !262

land.lhs.true190:                                 ; preds = %lor.lhs.false187
  %80 = load i32, i32* %pll_config, align 4, !dbg !263
  %cmp191 = icmp eq i32 %80, 2, !dbg !264
  br i1 %cmp191, label %if.then193, label %if.else206, !dbg !265

if.then193:                                       ; preds = %land.lhs.true190, %if.then184
  %81 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !266
  %and194 = and i32 %81, 1024, !dbg !266
  %cmp195 = icmp ne i32 %and194, 0, !dbg !267
  br i1 %cmp195, label %land.lhs.true197, label %if.else201, !dbg !268

land.lhs.true197:                                 ; preds = %if.then193
  %82 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !269
  %HSIState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %82, i32 0, i32 3, !dbg !270
  %83 = load i32, i32* %HSIState, align 4, !dbg !270
  %cmp198 = icmp eq i32 %83, 0, !dbg !271
  br i1 %cmp198, label %if.then200, label %if.else201, !dbg !272

if.then200:                                       ; preds = %land.lhs.true197
  store i8 1, i8* %retval, align 1, !dbg !273
  br label %return, !dbg !273

if.else201:                                       ; preds = %land.lhs.true197, %if.then193
  %84 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !274
  %and202 = and i32 %84, -2130706433, !dbg !274
  %85 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !274
  %HSICalibrationValue = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %85, i32 0, i32 4, !dbg !274
  %86 = load i32, i32* %HSICalibrationValue, align 4, !dbg !274
  %shl203 = shl i32 %86, 24, !dbg !274
  %or204 = or i32 %and202, %shl203, !dbg !274
  store volatile i32 %or204, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !274
  br label %if.end205

if.end205:                                        ; preds = %if.else201
  br label %if.end245, !dbg !275

if.else206:                                       ; preds = %land.lhs.true190, %lor.lhs.false187
  %87 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !276
  %HSIState207 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %87, i32 0, i32 3, !dbg !277
  %88 = load i32, i32* %HSIState207, align 4, !dbg !277
  %cmp208 = icmp ne i32 %88, 0, !dbg !278
  br i1 %cmp208, label %if.then210, label %if.else229, !dbg !276

if.then210:                                       ; preds = %if.else206
  %89 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !279
  %or211 = or i32 %89, 256, !dbg !279
  store volatile i32 %or211, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !279
  %call212 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !280
  store i32 %call212, i32* %tickstart, align 4, !dbg !281
  br label %while.cond213, !dbg !282

while.cond213:                                    ; preds = %if.end223, %if.then210
  %90 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !283
  %and214 = and i32 %90, 1024, !dbg !283
  %cmp215 = icmp eq i32 %and214, 0, !dbg !284
  br i1 %cmp215, label %while.body217, label %while.end224, !dbg !282

while.body217:                                    ; preds = %while.cond213
  %call218 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !285
  %91 = load i32, i32* %tickstart, align 4, !dbg !286
  %sub219 = sub i32 %call218, %91, !dbg !287
  %cmp220 = icmp ugt i32 %sub219, 2, !dbg !288
  br i1 %cmp220, label %if.then222, label %if.end223, !dbg !289

if.then222:                                       ; preds = %while.body217
  store i8 3, i8* %retval, align 1, !dbg !290
  br label %return, !dbg !290

if.end223:                                        ; preds = %while.body217
  br label %while.cond213, !dbg !282, !llvm.loop !291

while.end224:                                     ; preds = %while.cond213
  %92 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !293
  %and225 = and i32 %92, -2130706433, !dbg !293
  %93 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !293
  %HSICalibrationValue226 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %93, i32 0, i32 4, !dbg !293
  %94 = load i32, i32* %HSICalibrationValue226, align 4, !dbg !293
  %shl227 = shl i32 %94, 24, !dbg !293
  %or228 = or i32 %and225, %shl227, !dbg !293
  store volatile i32 %or228, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !293
  br label %if.end244, !dbg !294

if.else229:                                       ; preds = %if.else206
  %95 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !295
  %and230 = and i32 %95, -257, !dbg !295
  store volatile i32 %and230, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !295
  %call231 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !296
  store i32 %call231, i32* %tickstart, align 4, !dbg !297
  br label %while.cond232, !dbg !298

while.cond232:                                    ; preds = %if.end242, %if.else229
  %96 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !299
  %and233 = and i32 %96, 1024, !dbg !299
  %cmp234 = icmp ne i32 %and233, 0, !dbg !300
  br i1 %cmp234, label %while.body236, label %while.end243, !dbg !298

while.body236:                                    ; preds = %while.cond232
  %call237 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !301
  %97 = load i32, i32* %tickstart, align 4, !dbg !302
  %sub238 = sub i32 %call237, %97, !dbg !303
  %cmp239 = icmp ugt i32 %sub238, 2, !dbg !304
  br i1 %cmp239, label %if.then241, label %if.end242, !dbg !305

if.then241:                                       ; preds = %while.body236
  store i8 3, i8* %retval, align 1, !dbg !306
  br label %return, !dbg !306

if.end242:                                        ; preds = %while.body236
  br label %while.cond232, !dbg !298, !llvm.loop !307

while.end243:                                     ; preds = %while.cond232
  br label %if.end244

if.end244:                                        ; preds = %while.end243, %while.end224
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.end205
  br label %if.end246, !dbg !309

if.end246:                                        ; preds = %if.end245, %if.end179
  %98 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !310
  %OscillatorType247 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %98, i32 0, i32 0, !dbg !311
  %99 = load i32, i32* %OscillatorType247, align 4, !dbg !311
  %and248 = and i32 %99, 8, !dbg !312
  %cmp249 = icmp eq i32 %and248, 8, !dbg !313
  br i1 %cmp249, label %if.then251, label %if.end292, !dbg !314

if.then251:                                       ; preds = %if.end246
  %100 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !315
  %LSIState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %100, i32 0, i32 5, !dbg !316
  %101 = load i32, i32* %LSIState, align 4, !dbg !316
  %cmp252 = icmp ne i32 %101, 0, !dbg !317
  br i1 %cmp252, label %if.then254, label %if.else276, !dbg !315

if.then254:                                       ; preds = %if.then251
  %102 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !318
  %LSIDiv = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %102, i32 0, i32 6, !dbg !319
  %103 = load i32, i32* %LSIDiv, align 4, !dbg !319
  %cmp255 = icmp eq i32 %103, 0, !dbg !320
  br i1 %cmp255, label %if.then257, label %if.else259, !dbg !318

if.then257:                                       ; preds = %if.then254
  %104 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !321
  %and258 = and i32 %104, -17, !dbg !321
  store volatile i32 %and258, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !321
  br label %if.end261, !dbg !322

if.else259:                                       ; preds = %if.then254
  %105 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !323
  %or260 = or i32 %105, 16, !dbg !323
  store volatile i32 %or260, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !323
  br label %if.end261

if.end261:                                        ; preds = %if.else259, %if.then257
  %106 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !324
  %or262 = or i32 %106, 1, !dbg !324
  store volatile i32 %or262, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !324
  %call263 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !325
  store i32 %call263, i32* %tickstart, align 4, !dbg !326
  br label %while.cond264, !dbg !327

while.cond264:                                    ; preds = %if.end274, %if.end261
  %107 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !328
  %and265 = and i32 %107, 2, !dbg !328
  %cmp266 = icmp eq i32 %and265, 0, !dbg !329
  br i1 %cmp266, label %while.body268, label %while.end275, !dbg !327

while.body268:                                    ; preds = %while.cond264
  %call269 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !330
  %108 = load i32, i32* %tickstart, align 4, !dbg !331
  %sub270 = sub i32 %call269, %108, !dbg !332
  %cmp271 = icmp ugt i32 %sub270, 7, !dbg !333
  br i1 %cmp271, label %if.then273, label %if.end274, !dbg !334

if.then273:                                       ; preds = %while.body268
  store i8 3, i8* %retval, align 1, !dbg !335
  br label %return, !dbg !335

if.end274:                                        ; preds = %while.body268
  br label %while.cond264, !dbg !327, !llvm.loop !336

while.end275:                                     ; preds = %while.cond264
  br label %if.end291, !dbg !338

if.else276:                                       ; preds = %if.then251
  %109 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !339
  %and277 = and i32 %109, -2, !dbg !339
  store volatile i32 %and277, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !339
  %call278 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !340
  store i32 %call278, i32* %tickstart, align 4, !dbg !341
  br label %while.cond279, !dbg !342

while.cond279:                                    ; preds = %if.end289, %if.else276
  %110 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !343
  %and280 = and i32 %110, 2, !dbg !343
  %cmp281 = icmp ne i32 %and280, 0, !dbg !344
  br i1 %cmp281, label %while.body283, label %while.end290, !dbg !342

while.body283:                                    ; preds = %while.cond279
  %call284 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !345
  %111 = load i32, i32* %tickstart, align 4, !dbg !346
  %sub285 = sub i32 %call284, %111, !dbg !347
  %cmp286 = icmp ugt i32 %sub285, 7, !dbg !348
  br i1 %cmp286, label %if.then288, label %if.end289, !dbg !349

if.then288:                                       ; preds = %while.body283
  store i8 3, i8* %retval, align 1, !dbg !350
  br label %return, !dbg !350

if.end289:                                        ; preds = %while.body283
  br label %while.cond279, !dbg !342, !llvm.loop !351

while.end290:                                     ; preds = %while.cond279
  br label %if.end291

if.end291:                                        ; preds = %while.end290, %while.end275
  br label %if.end292, !dbg !353

if.end292:                                        ; preds = %if.end291, %if.end246
  %112 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !354
  %OscillatorType293 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %112, i32 0, i32 0, !dbg !355
  %113 = load i32, i32* %OscillatorType293, align 4, !dbg !355
  %and294 = and i32 %113, 4, !dbg !356
  %cmp295 = icmp eq i32 %and294, 4, !dbg !357
  br i1 %cmp295, label %if.then297, label %if.end433, !dbg !358

if.then297:                                       ; preds = %if.end292
  store i8 0, i8* %pwrclkchanged, align 1, !dbg !359
  %114 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !360
  %and298 = and i32 %114, 268435456, !dbg !360
  %cmp299 = icmp eq i32 %and298, 0, !dbg !360
  br i1 %cmp299, label %if.then301, label %if.end306, !dbg !360

if.then301:                                       ; preds = %if.then297
  br label %do.body302, !dbg !361

do.body302:                                       ; preds = %if.then301
  %115 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !361
  %or303 = or i32 %115, 268435456, !dbg !361
  store volatile i32 %or303, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !361
  %116 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !361
  %and304 = and i32 %116, 268435456, !dbg !361
  store volatile i32 %and304, i32* %tmpreg, align 4, !dbg !361
  %117 = load volatile i32, i32* %tmpreg, align 4, !dbg !361
  br label %do.end305, !dbg !361

do.end305:                                        ; preds = %do.body302
  store i8 1, i8* %pwrclkchanged, align 1, !dbg !362
  br label %if.end306, !dbg !363

if.end306:                                        ; preds = %do.end305, %if.then297
  %118 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !364
  %and307 = and i32 %118, 256, !dbg !364
  %cmp308 = icmp eq i32 %and307, 0, !dbg !364
  br i1 %cmp308, label %if.then310, label %if.end325, !dbg !364

if.then310:                                       ; preds = %if.end306
  %119 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !365
  %or311 = or i32 %119, 256, !dbg !365
  store volatile i32 %or311, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !365
  %call312 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !366
  store i32 %call312, i32* %tickstart, align 4, !dbg !367
  br label %while.cond313, !dbg !368

while.cond313:                                    ; preds = %if.end323, %if.then310
  %120 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !369
  %and314 = and i32 %120, 256, !dbg !369
  %cmp315 = icmp eq i32 %and314, 0, !dbg !369
  br i1 %cmp315, label %while.body317, label %while.end324, !dbg !368

while.body317:                                    ; preds = %while.cond313
  %call318 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !370
  %121 = load i32, i32* %tickstart, align 4, !dbg !371
  %sub319 = sub i32 %call318, %121, !dbg !372
  %cmp320 = icmp ugt i32 %sub319, 2, !dbg !373
  br i1 %cmp320, label %if.then322, label %if.end323, !dbg !374

if.then322:                                       ; preds = %while.body317
  store i8 3, i8* %retval, align 1, !dbg !375
  br label %return, !dbg !375

if.end323:                                        ; preds = %while.body317
  br label %while.cond313, !dbg !368, !llvm.loop !376

while.end324:                                     ; preds = %while.cond313
  br label %if.end325, !dbg !378

if.end325:                                        ; preds = %while.end324, %if.end306
  %122 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !379
  %LSEState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %122, i32 0, i32 2, !dbg !380
  %123 = load i32, i32* %LSEState, align 4, !dbg !380
  %and326 = and i32 %123, 1, !dbg !381
  %cmp327 = icmp ne i32 %and326, 0, !dbg !382
  br i1 %cmp327, label %if.then329, label %if.else340, !dbg !383

if.then329:                                       ; preds = %if.end325
  %124 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !384
  %LSEState330 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %124, i32 0, i32 2, !dbg !385
  %125 = load i32, i32* %LSEState330, align 4, !dbg !385
  %and331 = and i32 %125, 4, !dbg !386
  %cmp332 = icmp ne i32 %and331, 0, !dbg !387
  br i1 %cmp332, label %if.then334, label %if.else337, !dbg !388

if.then334:                                       ; preds = %if.then329
  %126 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !389
  %or335 = or i32 %126, 4, !dbg !389
  store volatile i32 %or335, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !389
  %127 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !390
  %or336 = or i32 %127, 1, !dbg !390
  store volatile i32 %or336, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !390
  br label %if.end339, !dbg !391

if.else337:                                       ; preds = %if.then329
  %128 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !392
  %or338 = or i32 %128, 1, !dbg !392
  store volatile i32 %or338, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !392
  br label %if.end339

if.end339:                                        ; preds = %if.else337, %if.then334
  br label %if.end343, !dbg !393

if.else340:                                       ; preds = %if.end325
  %129 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !394
  %and341 = and i32 %129, -2, !dbg !394
  store volatile i32 %and341, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !394
  %130 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !395
  %and342 = and i32 %130, -5, !dbg !395
  store volatile i32 %and342, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !395
  br label %if.end343

if.end343:                                        ; preds = %if.else340, %if.end339
  %131 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !396
  %LSEState344 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %131, i32 0, i32 2, !dbg !397
  %132 = load i32, i32* %LSEState344, align 4, !dbg !397
  %cmp345 = icmp ne i32 %132, 0, !dbg !398
  br i1 %cmp345, label %if.then347, label %if.else394, !dbg !396

if.then347:                                       ; preds = %if.end343
  %call348 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !399
  store i32 %call348, i32* %tickstart, align 4, !dbg !400
  br label %while.cond349, !dbg !401

while.cond349:                                    ; preds = %if.end359, %if.then347
  %133 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !402
  %and350 = and i32 %133, 2, !dbg !402
  %cmp351 = icmp eq i32 %and350, 0, !dbg !403
  br i1 %cmp351, label %while.body353, label %while.end360, !dbg !401

while.body353:                                    ; preds = %while.cond349
  %call354 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !404
  %134 = load i32, i32* %tickstart, align 4, !dbg !405
  %sub355 = sub i32 %call354, %134, !dbg !406
  %cmp356 = icmp ugt i32 %sub355, 5000, !dbg !407
  br i1 %cmp356, label %if.then358, label %if.end359, !dbg !408

if.then358:                                       ; preds = %while.body353
  store i8 3, i8* %retval, align 1, !dbg !409
  br label %return, !dbg !409

if.end359:                                        ; preds = %while.body353
  br label %while.cond349, !dbg !401, !llvm.loop !410

while.end360:                                     ; preds = %while.cond349
  %135 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !412
  %LSEState361 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %135, i32 0, i32 2, !dbg !413
  %136 = load i32, i32* %LSEState361, align 4, !dbg !413
  %and362 = and i32 %136, 128, !dbg !414
  %cmp363 = icmp ne i32 %and362, 0, !dbg !415
  br i1 %cmp363, label %if.then365, label %if.else379, !dbg !416

if.then365:                                       ; preds = %while.end360
  %137 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !417
  %or366 = or i32 %137, 128, !dbg !417
  store volatile i32 %or366, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !417
  br label %while.cond367, !dbg !418

while.cond367:                                    ; preds = %if.end377, %if.then365
  %138 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !419
  %and368 = and i32 %138, 2048, !dbg !419
  %cmp369 = icmp eq i32 %and368, 0, !dbg !420
  br i1 %cmp369, label %while.body371, label %while.end378, !dbg !418

while.body371:                                    ; preds = %while.cond367
  %call372 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !421
  %139 = load i32, i32* %tickstart, align 4, !dbg !422
  %sub373 = sub i32 %call372, %139, !dbg !423
  %cmp374 = icmp ugt i32 %sub373, 5000, !dbg !424
  br i1 %cmp374, label %if.then376, label %if.end377, !dbg !425

if.then376:                                       ; preds = %while.body371
  store i8 3, i8* %retval, align 1, !dbg !426
  br label %return, !dbg !426

if.end377:                                        ; preds = %while.body371
  br label %while.cond367, !dbg !418, !llvm.loop !427

while.end378:                                     ; preds = %while.cond367
  br label %if.end393, !dbg !429

if.else379:                                       ; preds = %while.end360
  %140 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !430
  %and380 = and i32 %140, -129, !dbg !430
  store volatile i32 %and380, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !430
  br label %while.cond381, !dbg !431

while.cond381:                                    ; preds = %if.end391, %if.else379
  %141 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !432
  %and382 = and i32 %141, 2048, !dbg !432
  %cmp383 = icmp ne i32 %and382, 0, !dbg !433
  br i1 %cmp383, label %while.body385, label %while.end392, !dbg !431

while.body385:                                    ; preds = %while.cond381
  %call386 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !434
  %142 = load i32, i32* %tickstart, align 4, !dbg !435
  %sub387 = sub i32 %call386, %142, !dbg !436
  %cmp388 = icmp ugt i32 %sub387, 5000, !dbg !437
  br i1 %cmp388, label %if.then390, label %if.end391, !dbg !438

if.then390:                                       ; preds = %while.body385
  store i8 3, i8* %retval, align 1, !dbg !439
  br label %return, !dbg !439

if.end391:                                        ; preds = %while.body385
  br label %while.cond381, !dbg !431, !llvm.loop !440

while.end392:                                     ; preds = %while.cond381
  br label %if.end393

if.end393:                                        ; preds = %while.end392, %while.end378
  br label %if.end426, !dbg !442

if.else394:                                       ; preds = %if.end343
  %call395 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !443
  store i32 %call395, i32* %tickstart, align 4, !dbg !444
  br label %while.cond396, !dbg !445

while.cond396:                                    ; preds = %if.end406, %if.else394
  %143 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !446
  %and397 = and i32 %143, 2, !dbg !446
  %cmp398 = icmp ne i32 %and397, 0, !dbg !447
  br i1 %cmp398, label %while.body400, label %while.end407, !dbg !445

while.body400:                                    ; preds = %while.cond396
  %call401 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !448
  %144 = load i32, i32* %tickstart, align 4, !dbg !449
  %sub402 = sub i32 %call401, %144, !dbg !450
  %cmp403 = icmp ugt i32 %sub402, 5000, !dbg !451
  br i1 %cmp403, label %if.then405, label %if.end406, !dbg !452

if.then405:                                       ; preds = %while.body400
  store i8 3, i8* %retval, align 1, !dbg !453
  br label %return, !dbg !453

if.end406:                                        ; preds = %while.body400
  br label %while.cond396, !dbg !445, !llvm.loop !454

while.end407:                                     ; preds = %while.cond396
  %145 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !456
  %and408 = and i32 %145, 128, !dbg !456
  %cmp409 = icmp ne i32 %and408, 0, !dbg !457
  br i1 %cmp409, label %if.then411, label %if.end425, !dbg !456

if.then411:                                       ; preds = %while.end407
  %146 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !458
  %and412 = and i32 %146, -129, !dbg !458
  store volatile i32 %and412, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !458
  br label %while.cond413, !dbg !459

while.cond413:                                    ; preds = %if.end423, %if.then411
  %147 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !460
  %and414 = and i32 %147, 2048, !dbg !460
  %cmp415 = icmp ne i32 %and414, 0, !dbg !461
  br i1 %cmp415, label %while.body417, label %while.end424, !dbg !459

while.body417:                                    ; preds = %while.cond413
  %call418 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !462
  %148 = load i32, i32* %tickstart, align 4, !dbg !463
  %sub419 = sub i32 %call418, %148, !dbg !464
  %cmp420 = icmp ugt i32 %sub419, 5000, !dbg !465
  br i1 %cmp420, label %if.then422, label %if.end423, !dbg !466

if.then422:                                       ; preds = %while.body417
  store i8 3, i8* %retval, align 1, !dbg !467
  br label %return, !dbg !467

if.end423:                                        ; preds = %while.body417
  br label %while.cond413, !dbg !459, !llvm.loop !468

while.end424:                                     ; preds = %while.cond413
  br label %if.end425, !dbg !470

if.end425:                                        ; preds = %while.end424, %while.end407
  br label %if.end426

if.end426:                                        ; preds = %if.end425, %if.end393
  %149 = load i8, i8* %pwrclkchanged, align 1, !dbg !471
  %conv427 = zext i8 %149 to i32, !dbg !471
  %cmp428 = icmp eq i32 %conv427, 1, !dbg !472
  br i1 %cmp428, label %if.then430, label %if.end432, !dbg !471

if.then430:                                       ; preds = %if.end426
  %150 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !473
  %and431 = and i32 %150, -268435457, !dbg !473
  store volatile i32 %and431, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !473
  br label %if.end432, !dbg !474

if.end432:                                        ; preds = %if.then430, %if.end426
  br label %if.end433, !dbg !475

if.end433:                                        ; preds = %if.end432, %if.end292
  %151 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !476
  %OscillatorType434 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %151, i32 0, i32 0, !dbg !477
  %152 = load i32, i32* %OscillatorType434, align 4, !dbg !477
  %and435 = and i32 %152, 32, !dbg !478
  %cmp436 = icmp eq i32 %and435, 32, !dbg !479
  br i1 %cmp436, label %if.then438, label %if.end472, !dbg !480

if.then438:                                       ; preds = %if.end433
  %153 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !481
  %HSI48State = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %153, i32 0, i32 10, !dbg !482
  %154 = load i32, i32* %HSI48State, align 4, !dbg !482
  %cmp439 = icmp ne i32 %154, 0, !dbg !483
  br i1 %cmp439, label %if.then441, label %if.else456, !dbg !481

if.then441:                                       ; preds = %if.then438
  %155 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !484
  %or442 = or i32 %155, 1, !dbg !484
  store volatile i32 %or442, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !484
  %call443 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !485
  store i32 %call443, i32* %tickstart, align 4, !dbg !486
  br label %while.cond444, !dbg !487

while.cond444:                                    ; preds = %if.end454, %if.then441
  %156 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !488
  %and445 = and i32 %156, 2, !dbg !488
  %cmp446 = icmp eq i32 %and445, 0, !dbg !489
  br i1 %cmp446, label %while.body448, label %while.end455, !dbg !487

while.body448:                                    ; preds = %while.cond444
  %call449 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !490
  %157 = load i32, i32* %tickstart, align 4, !dbg !491
  %sub450 = sub i32 %call449, %157, !dbg !492
  %cmp451 = icmp ugt i32 %sub450, 2, !dbg !493
  br i1 %cmp451, label %if.then453, label %if.end454, !dbg !494

if.then453:                                       ; preds = %while.body448
  store i8 3, i8* %retval, align 1, !dbg !495
  br label %return, !dbg !495

if.end454:                                        ; preds = %while.body448
  br label %while.cond444, !dbg !487, !llvm.loop !496

while.end455:                                     ; preds = %while.cond444
  br label %if.end471, !dbg !498

if.else456:                                       ; preds = %if.then438
  %158 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !499
  %and457 = and i32 %158, -2, !dbg !499
  store volatile i32 %and457, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !499
  %call458 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !500
  store i32 %call458, i32* %tickstart, align 4, !dbg !501
  br label %while.cond459, !dbg !502

while.cond459:                                    ; preds = %if.end469, %if.else456
  %159 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !503
  %and460 = and i32 %159, 2, !dbg !503
  %cmp461 = icmp ne i32 %and460, 0, !dbg !504
  br i1 %cmp461, label %while.body463, label %while.end470, !dbg !502

while.body463:                                    ; preds = %while.cond459
  %call464 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !505
  %160 = load i32, i32* %tickstart, align 4, !dbg !506
  %sub465 = sub i32 %call464, %160, !dbg !507
  %cmp466 = icmp ugt i32 %sub465, 2, !dbg !508
  br i1 %cmp466, label %if.then468, label %if.end469, !dbg !509

if.then468:                                       ; preds = %while.body463
  store i8 3, i8* %retval, align 1, !dbg !510
  br label %return, !dbg !510

if.end469:                                        ; preds = %while.body463
  br label %while.cond459, !dbg !502, !llvm.loop !511

while.end470:                                     ; preds = %while.cond459
  br label %if.end471

if.end471:                                        ; preds = %while.end470, %while.end455
  br label %if.end472, !dbg !513

if.end472:                                        ; preds = %if.end471, %if.end433
  %161 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !514
  %PLL = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %161, i32 0, i32 11, !dbg !515
  %PLLState = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL, i32 0, i32 0, !dbg !516
  %162 = load i32, i32* %PLLState, align 4, !dbg !516
  %cmp473 = icmp ne i32 %162, 0, !dbg !517
  br i1 %cmp473, label %if.then475, label %if.end616, !dbg !514

if.then475:                                       ; preds = %if.end472
  %163 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !518
  %and476 = and i32 %163, 12, !dbg !518
  %cmp477 = icmp ne i32 %and476, 12, !dbg !519
  br i1 %cmp477, label %if.then479, label %if.else560, !dbg !518

if.then479:                                       ; preds = %if.then475
  %164 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !520
  %PLL480 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %164, i32 0, i32 11, !dbg !521
  %PLLState481 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL480, i32 0, i32 0, !dbg !522
  %165 = load i32, i32* %PLLState481, align 4, !dbg !522
  %cmp482 = icmp eq i32 %165, 2, !dbg !523
  br i1 %cmp482, label %if.then484, label %if.else537, !dbg !520

if.then484:                                       ; preds = %if.then479
  %166 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !524
  %and485 = and i32 %166, -16777217, !dbg !524
  store volatile i32 %and485, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !524
  %call486 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !525
  store i32 %call486, i32* %tickstart, align 4, !dbg !526
  br label %while.cond487, !dbg !527

while.cond487:                                    ; preds = %if.end497, %if.then484
  %167 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !528
  %and488 = and i32 %167, 33554432, !dbg !528
  %cmp489 = icmp ne i32 %and488, 0, !dbg !529
  br i1 %cmp489, label %while.body491, label %while.end498, !dbg !527

while.body491:                                    ; preds = %while.cond487
  %call492 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !530
  %168 = load i32, i32* %tickstart, align 4, !dbg !531
  %sub493 = sub i32 %call492, %168, !dbg !532
  %cmp494 = icmp ugt i32 %sub493, 2, !dbg !533
  br i1 %cmp494, label %if.then496, label %if.end497, !dbg !534

if.then496:                                       ; preds = %while.body491
  store i8 3, i8* %retval, align 1, !dbg !535
  br label %return, !dbg !535

if.end497:                                        ; preds = %while.body491
  br label %while.cond487, !dbg !527, !llvm.loop !536

while.end498:                                     ; preds = %while.cond487
  %169 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !538
  %and499 = and i32 %169, 27230220, !dbg !538
  %170 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !538
  %PLL500 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %170, i32 0, i32 11, !dbg !538
  %PLLSource = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL500, i32 0, i32 1, !dbg !538
  %171 = load i32, i32* %PLLSource, align 4, !dbg !538
  %172 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !538
  %PLL501 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %172, i32 0, i32 11, !dbg !538
  %PLLM = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL501, i32 0, i32 2, !dbg !538
  %173 = load i32, i32* %PLLM, align 4, !dbg !538
  %sub502 = sub i32 %173, 1, !dbg !538
  %shl503 = shl i32 %sub502, 4, !dbg !538
  %or504 = or i32 %171, %shl503, !dbg !538
  %174 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !538
  %PLL505 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %174, i32 0, i32 11, !dbg !538
  %PLLN = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL505, i32 0, i32 3, !dbg !538
  %175 = load i32, i32* %PLLN, align 4, !dbg !538
  %shl506 = shl i32 %175, 8, !dbg !538
  %or507 = or i32 %or504, %shl506, !dbg !538
  %176 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !538
  %PLL508 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %176, i32 0, i32 11, !dbg !538
  %PLLQ = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL508, i32 0, i32 5, !dbg !538
  %177 = load i32, i32* %PLLQ, align 4, !dbg !538
  %shr509 = lshr i32 %177, 1, !dbg !538
  %sub510 = sub i32 %shr509, 1, !dbg !538
  %shl511 = shl i32 %sub510, 21, !dbg !538
  %or512 = or i32 %or507, %shl511, !dbg !538
  %178 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !538
  %PLL513 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %178, i32 0, i32 11, !dbg !538
  %PLLR = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL513, i32 0, i32 6, !dbg !538
  %179 = load i32, i32* %PLLR, align 4, !dbg !538
  %shr514 = lshr i32 %179, 1, !dbg !538
  %sub515 = sub i32 %shr514, 1, !dbg !538
  %shl516 = shl i32 %sub515, 25, !dbg !538
  %or517 = or i32 %or512, %shl516, !dbg !538
  %180 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !538
  %PLL518 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %180, i32 0, i32 11, !dbg !538
  %PLLP = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL518, i32 0, i32 4, !dbg !538
  %181 = load i32, i32* %PLLP, align 4, !dbg !538
  %shl519 = shl i32 %181, 27, !dbg !538
  %or520 = or i32 %or517, %shl519, !dbg !538
  %or521 = or i32 %and499, %or520, !dbg !538
  store volatile i32 %or521, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !538
  %182 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !539
  %or522 = or i32 %182, 16777216, !dbg !539
  store volatile i32 %or522, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !539
  %183 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !540
  %or523 = or i32 %183, 16777216, !dbg !540
  store volatile i32 %or523, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !540
  %call524 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !541
  store i32 %call524, i32* %tickstart, align 4, !dbg !542
  br label %while.cond525, !dbg !543

while.cond525:                                    ; preds = %if.end535, %while.end498
  %184 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !544
  %and526 = and i32 %184, 33554432, !dbg !544
  %cmp527 = icmp eq i32 %and526, 0, !dbg !545
  br i1 %cmp527, label %while.body529, label %while.end536, !dbg !543

while.body529:                                    ; preds = %while.cond525
  %call530 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !546
  %185 = load i32, i32* %tickstart, align 4, !dbg !547
  %sub531 = sub i32 %call530, %185, !dbg !548
  %cmp532 = icmp ugt i32 %sub531, 2, !dbg !549
  br i1 %cmp532, label %if.then534, label %if.end535, !dbg !550

if.then534:                                       ; preds = %while.body529
  store i8 3, i8* %retval, align 1, !dbg !551
  br label %return, !dbg !551

if.end535:                                        ; preds = %while.body529
  br label %while.cond525, !dbg !543, !llvm.loop !552

while.end536:                                     ; preds = %while.cond525
  br label %if.end559, !dbg !554

if.else537:                                       ; preds = %if.then479
  %186 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !555
  %and538 = and i32 %186, -16777217, !dbg !555
  store volatile i32 %and538, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !555
  %187 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !556
  %and539 = and i32 %187, 671088640, !dbg !556
  %cmp540 = icmp eq i32 %and539, 0, !dbg !557
  br i1 %cmp540, label %if.then542, label %if.end544, !dbg !556

if.then542:                                       ; preds = %if.else537
  %188 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !558
  %and543 = and i32 %188, -4, !dbg !558
  store volatile i32 %and543, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !558
  br label %if.end544, !dbg !559

if.end544:                                        ; preds = %if.then542, %if.else537
  %189 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !560
  %and545 = and i32 %189, -17891329, !dbg !560
  store volatile i32 %and545, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !560
  %call546 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !561
  store i32 %call546, i32* %tickstart, align 4, !dbg !562
  br label %while.cond547, !dbg !563

while.cond547:                                    ; preds = %if.end557, %if.end544
  %190 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !564
  %and548 = and i32 %190, 33554432, !dbg !564
  %cmp549 = icmp ne i32 %and548, 0, !dbg !565
  br i1 %cmp549, label %while.body551, label %while.end558, !dbg !563

while.body551:                                    ; preds = %while.cond547
  %call552 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !566
  %191 = load i32, i32* %tickstart, align 4, !dbg !567
  %sub553 = sub i32 %call552, %191, !dbg !568
  %cmp554 = icmp ugt i32 %sub553, 2, !dbg !569
  br i1 %cmp554, label %if.then556, label %if.end557, !dbg !570

if.then556:                                       ; preds = %while.body551
  store i8 3, i8* %retval, align 1, !dbg !571
  br label %return, !dbg !571

if.end557:                                        ; preds = %while.body551
  br label %while.cond547, !dbg !563, !llvm.loop !572

while.end558:                                     ; preds = %while.cond547
  br label %if.end559

if.end559:                                        ; preds = %while.end558, %while.end536
  br label %if.end615, !dbg !574

if.else560:                                       ; preds = %if.then475
  %192 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !575
  %PLL561 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %192, i32 0, i32 11, !dbg !576
  %PLLState562 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL561, i32 0, i32 0, !dbg !577
  %193 = load i32, i32* %PLLState562, align 4, !dbg !577
  %cmp563 = icmp eq i32 %193, 1, !dbg !578
  br i1 %cmp563, label %if.then565, label %if.else566, !dbg !575

if.then565:                                       ; preds = %if.else560
  store i8 1, i8* %retval, align 1, !dbg !579
  br label %return, !dbg !579

if.else566:                                       ; preds = %if.else560
  %194 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !580
  store i32 %194, i32* %pll_config, align 4, !dbg !581
  %195 = load i32, i32* %pll_config, align 4, !dbg !582
  %and567 = and i32 %195, 3, !dbg !582
  %196 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !583
  %PLL568 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %196, i32 0, i32 11, !dbg !584
  %PLLSource569 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL568, i32 0, i32 1, !dbg !585
  %197 = load i32, i32* %PLLSource569, align 4, !dbg !585
  %cmp570 = icmp ne i32 %and567, %197, !dbg !586
  br i1 %cmp570, label %if.then612, label %lor.lhs.false572, !dbg !587

lor.lhs.false572:                                 ; preds = %if.else566
  %198 = load i32, i32* %pll_config, align 4, !dbg !588
  %and573 = and i32 %198, 240, !dbg !588
  %199 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !589
  %PLL574 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %199, i32 0, i32 11, !dbg !590
  %PLLM575 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL574, i32 0, i32 2, !dbg !591
  %200 = load i32, i32* %PLLM575, align 4, !dbg !591
  %sub576 = sub i32 %200, 1, !dbg !592
  %shl577 = shl i32 %sub576, 4, !dbg !593
  %cmp578 = icmp ne i32 %and573, %shl577, !dbg !594
  br i1 %cmp578, label %if.then612, label %lor.lhs.false580, !dbg !595

lor.lhs.false580:                                 ; preds = %lor.lhs.false572
  %201 = load i32, i32* %pll_config, align 4, !dbg !596
  %and581 = and i32 %201, 32512, !dbg !596
  %202 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !597
  %PLL582 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %202, i32 0, i32 11, !dbg !598
  %PLLN583 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL582, i32 0, i32 3, !dbg !599
  %203 = load i32, i32* %PLLN583, align 4, !dbg !599
  %shl584 = shl i32 %203, 8, !dbg !600
  %cmp585 = icmp ne i32 %and581, %shl584, !dbg !601
  br i1 %cmp585, label %if.then612, label %lor.lhs.false587, !dbg !602

lor.lhs.false587:                                 ; preds = %lor.lhs.false580
  %204 = load i32, i32* %pll_config, align 4, !dbg !603
  %and588 = and i32 %204, -134217728, !dbg !603
  %205 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !604
  %PLL589 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %205, i32 0, i32 11, !dbg !605
  %PLLP590 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL589, i32 0, i32 4, !dbg !606
  %206 = load i32, i32* %PLLP590, align 4, !dbg !606
  %shl591 = shl i32 %206, 27, !dbg !607
  %cmp592 = icmp ne i32 %and588, %shl591, !dbg !608
  br i1 %cmp592, label %if.then612, label %lor.lhs.false594, !dbg !609

lor.lhs.false594:                                 ; preds = %lor.lhs.false587
  %207 = load i32, i32* %pll_config, align 4, !dbg !610
  %and595 = and i32 %207, 6291456, !dbg !610
  %208 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !611
  %PLL596 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %208, i32 0, i32 11, !dbg !612
  %PLLQ597 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL596, i32 0, i32 5, !dbg !613
  %209 = load i32, i32* %PLLQ597, align 4, !dbg !613
  %shr598 = lshr i32 %209, 1, !dbg !614
  %sub599 = sub i32 %shr598, 1, !dbg !615
  %shl600 = shl i32 %sub599, 21, !dbg !616
  %cmp601 = icmp ne i32 %and595, %shl600, !dbg !617
  br i1 %cmp601, label %if.then612, label %lor.lhs.false603, !dbg !618

lor.lhs.false603:                                 ; preds = %lor.lhs.false594
  %210 = load i32, i32* %pll_config, align 4, !dbg !619
  %and604 = and i32 %210, 100663296, !dbg !619
  %211 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !620
  %PLL605 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %211, i32 0, i32 11, !dbg !621
  %PLLR606 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL605, i32 0, i32 6, !dbg !622
  %212 = load i32, i32* %PLLR606, align 4, !dbg !622
  %shr607 = lshr i32 %212, 1, !dbg !623
  %sub608 = sub i32 %shr607, 1, !dbg !624
  %shl609 = shl i32 %sub608, 25, !dbg !625
  %cmp610 = icmp ne i32 %and604, %shl609, !dbg !626
  br i1 %cmp610, label %if.then612, label %if.end613, !dbg !627

if.then612:                                       ; preds = %lor.lhs.false603, %lor.lhs.false594, %lor.lhs.false587, %lor.lhs.false580, %lor.lhs.false572, %if.else566
  store i8 1, i8* %retval, align 1, !dbg !628
  br label %return, !dbg !628

if.end613:                                        ; preds = %lor.lhs.false603
  br label %if.end614

if.end614:                                        ; preds = %if.end613
  br label %if.end615

if.end615:                                        ; preds = %if.end614, %if.end559
  br label %if.end616, !dbg !629

if.end616:                                        ; preds = %if.end615, %if.end472
  store i8 0, i8* %retval, align 1, !dbg !630
  br label %return, !dbg !630

return:                                           ; preds = %if.end616, %if.then612, %if.then565, %if.then556, %if.then534, %if.then496, %if.then468, %if.then453, %if.then422, %if.then405, %if.then390, %if.then376, %if.then358, %if.then322, %if.then288, %if.then273, %if.then241, %if.then222, %if.then200, %if.then174, %if.then160, %if.then124, %if.then98, %if.then74, %if.then58, %if.then49, %if.then23, %if.then13, %if.then
  %213 = load i8, i8* %retval, align 1, !dbg !631
  ret i8 %213, !dbg !631
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc zeroext i8 @RCC_SetFlashLatencyFromMSIRange(i32 %msirange) #0 !dbg !632 {
entry:
  %retval = alloca i8, align 1
  %msirange.addr = alloca i32, align 4
  %latency = alloca i32, align 4
  %vos = alloca i32, align 4
  %tmpreg = alloca i32, align 4
  store i32 %msirange, i32* %msirange.addr, align 4
  store i32 0, i32* %latency, align 4, !dbg !633
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !634
  %and = and i32 %0, 268435456, !dbg !634
  %cmp = icmp ne i32 %and, 0, !dbg !634
  br i1 %cmp, label %if.then, label %if.else, !dbg !634

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange(), !dbg !635
  store i32 %call, i32* %vos, align 4, !dbg !636
  br label %if.end, !dbg !637

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !638

do.body:                                          ; preds = %if.else
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !638
  %or = or i32 %1, 268435456, !dbg !638
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !638
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !638
  %and1 = and i32 %2, 268435456, !dbg !638
  store volatile i32 %and1, i32* %tmpreg, align 4, !dbg !638
  %3 = load volatile i32, i32* %tmpreg, align 4, !dbg !638
  br label %do.end, !dbg !638

do.end:                                           ; preds = %do.body
  %call2 = call arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange(), !dbg !639
  store i32 %call2, i32* %vos, align 4, !dbg !640
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !641
  %and3 = and i32 %4, -268435457, !dbg !641
  store volatile i32 %and3, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !641
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %5 = load i32, i32* %vos, align 4, !dbg !642
  %cmp4 = icmp eq i32 %5, 0, !dbg !643
  br i1 %cmp4, label %if.then6, label %lor.lhs.false, !dbg !644

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %vos, align 4, !dbg !645
  %cmp5 = icmp eq i32 %6, 512, !dbg !646
  br i1 %cmp5, label %if.then6, label %if.else14, !dbg !647

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load i32, i32* %msirange.addr, align 4, !dbg !648
  %cmp7 = icmp ugt i32 %7, 128, !dbg !649
  br i1 %cmp7, label %if.then8, label %if.end13, !dbg !648

if.then8:                                         ; preds = %if.then6
  %8 = load i32, i32* %msirange.addr, align 4, !dbg !650
  %cmp9 = icmp ugt i32 %8, 160, !dbg !651
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !650

if.then10:                                        ; preds = %if.then8
  store i32 2, i32* %latency, align 4, !dbg !652
  br label %if.end12, !dbg !653

if.else11:                                        ; preds = %if.then8
  store i32 1, i32* %latency, align 4, !dbg !654
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  br label %if.end13, !dbg !655

if.end13:                                         ; preds = %if.end12, %if.then6
  br label %if.end27, !dbg !656

if.else14:                                        ; preds = %lor.lhs.false
  %9 = load i32, i32* %msirange.addr, align 4, !dbg !657
  %cmp15 = icmp ugt i32 %9, 128, !dbg !658
  br i1 %cmp15, label %if.then16, label %if.else17, !dbg !657

if.then16:                                        ; preds = %if.else14
  store i32 3, i32* %latency, align 4, !dbg !659
  br label %if.end26, !dbg !660

if.else17:                                        ; preds = %if.else14
  %10 = load i32, i32* %msirange.addr, align 4, !dbg !661
  %cmp18 = icmp eq i32 %10, 128, !dbg !662
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !661

if.then19:                                        ; preds = %if.else17
  store i32 2, i32* %latency, align 4, !dbg !663
  br label %if.end25, !dbg !664

if.else20:                                        ; preds = %if.else17
  %11 = load i32, i32* %msirange.addr, align 4, !dbg !665
  %cmp21 = icmp eq i32 %11, 112, !dbg !666
  br i1 %cmp21, label %if.then22, label %if.else23, !dbg !665

if.then22:                                        ; preds = %if.else20
  store i32 1, i32* %latency, align 4, !dbg !667
  br label %if.end24, !dbg !668

if.else23:                                        ; preds = %if.else20
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then16
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end13
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !669
  %and28 = and i32 %12, -16, !dbg !669
  %13 = load i32, i32* %latency, align 4, !dbg !669
  %or29 = or i32 %and28, %13, !dbg !669
  store volatile i32 %or29, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !669
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !670
  %and30 = and i32 %14, 15, !dbg !671
  %15 = load i32, i32* %latency, align 4, !dbg !672
  %cmp31 = icmp ne i32 %and30, %15, !dbg !673
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !674

if.then32:                                        ; preds = %if.end27
  store i8 1, i8* %retval, align 1, !dbg !675
  br label %return, !dbg !675

if.end33:                                         ; preds = %if.end27
  store i8 0, i8* %retval, align 1, !dbg !676
  br label %return, !dbg !676

return:                                           ; preds = %if.end33, %if.then32
  %16 = load i8, i8* %retval, align 1, !dbg !677
  ret i8 %16, !dbg !677
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetHCLKFreq() #0 !dbg !678 {
entry:
  %call = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !679
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !680
  %and = and i32 %0, 240, !dbg !681
  %shr = lshr i32 %and, 4, !dbg !682
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @AHBPrescTable, i32 0, i32 %shr, !dbg !683
  %1 = load i8, i8* %arrayidx, align 1, !dbg !683
  %conv = zext i8 %1 to i32, !dbg !683
  %shr1 = lshr i32 %call, %conv, !dbg !684
  ret i32 %shr1, !dbg !685
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCC_ClockConfig(%struct.RCC_ClkInitTypeDef* %RCC_ClkInitStruct, i32 %FLatency) #0 !dbg !686 {
entry:
  %retval = alloca i8, align 1
  %RCC_ClkInitStruct.addr = alloca %struct.RCC_ClkInitTypeDef*, align 4
  %FLatency.addr = alloca i32, align 4
  %tickstart = alloca i32, align 4
  %pllfreq = alloca i32, align 4
  %hpre = alloca i32, align 4
  store %struct.RCC_ClkInitTypeDef* %RCC_ClkInitStruct, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4
  store i32 %FLatency, i32* %FLatency.addr, align 4
  store i32 0, i32* %hpre, align 4, !dbg !687
  %0 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !688
  %cmp = icmp eq %struct.RCC_ClkInitTypeDef* %0, null, !dbg !689
  br i1 %cmp, label %if.then, label %if.end, !dbg !688

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !690
  br label %return, !dbg !690

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %FLatency.addr, align 4, !dbg !691
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !692
  %and = and i32 %2, 15, !dbg !692
  %cmp1 = icmp ugt i32 %1, %and, !dbg !693
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !691

if.then2:                                         ; preds = %if.end
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !694
  %and3 = and i32 %3, -16, !dbg !694
  %4 = load i32, i32* %FLatency.addr, align 4, !dbg !694
  %or = or i32 %and3, %4, !dbg !694
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !694
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !695
  %and4 = and i32 %5, 15, !dbg !695
  %6 = load i32, i32* %FLatency.addr, align 4, !dbg !696
  %cmp5 = icmp ne i32 %and4, %6, !dbg !697
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !695

if.then6:                                         ; preds = %if.then2
  store i8 1, i8* %retval, align 1, !dbg !698
  br label %return, !dbg !698

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !699

if.end8:                                          ; preds = %if.end7, %if.end
  %7 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !700
  %ClockType = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %7, i32 0, i32 0, !dbg !701
  %8 = load i32, i32* %ClockType, align 4, !dbg !701
  %and9 = and i32 %8, 1, !dbg !702
  %cmp10 = icmp eq i32 %and9, 1, !dbg !703
  br i1 %cmp10, label %if.then11, label %if.end77, !dbg !704

if.then11:                                        ; preds = %if.end8
  %9 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !705
  %SYSCLKSource = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %9, i32 0, i32 1, !dbg !706
  %10 = load i32, i32* %SYSCLKSource, align 4, !dbg !706
  %cmp12 = icmp eq i32 %10, 3, !dbg !707
  br i1 %cmp12, label %if.then13, label %if.else36, !dbg !705

if.then13:                                        ; preds = %if.then11
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !708
  %and14 = and i32 %11, 33554432, !dbg !708
  %cmp15 = icmp eq i32 %and14, 0, !dbg !709
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !708

if.then16:                                        ; preds = %if.then13
  store i8 1, i8* %retval, align 1, !dbg !710
  br label %return, !dbg !710

if.end17:                                         ; preds = %if.then13
  %call = call arm_aapcs_vfpcc i32 @RCC_GetSysClockFreqFromPLLSource(), !dbg !711
  store i32 %call, i32* %pllfreq, align 4, !dbg !712
  %12 = load i32, i32* %pllfreq, align 4, !dbg !713
  %cmp18 = icmp ugt i32 %12, 80000000, !dbg !714
  br i1 %cmp18, label %if.then19, label %if.end35, !dbg !713

if.then19:                                        ; preds = %if.end17
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !715
  %and20 = and i32 %13, 240, !dbg !715
  %cmp21 = icmp eq i32 %and20, 0, !dbg !716
  br i1 %cmp21, label %if.then22, label %if.else, !dbg !715

if.then22:                                        ; preds = %if.then19
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !717
  %and23 = and i32 %14, -241, !dbg !717
  %or24 = or i32 %and23, 128, !dbg !717
  store volatile i32 %or24, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !717
  store i32 128, i32* %hpre, align 4, !dbg !718
  br label %if.end34, !dbg !719

if.else:                                          ; preds = %if.then19
  %15 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !720
  %ClockType25 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %15, i32 0, i32 0, !dbg !721
  %16 = load i32, i32* %ClockType25, align 4, !dbg !721
  %and26 = and i32 %16, 2, !dbg !722
  %cmp27 = icmp eq i32 %and26, 2, !dbg !723
  br i1 %cmp27, label %land.lhs.true, label %if.else32, !dbg !724

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !725
  %AHBCLKDivider = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %17, i32 0, i32 2, !dbg !726
  %18 = load i32, i32* %AHBCLKDivider, align 4, !dbg !726
  %cmp28 = icmp eq i32 %18, 0, !dbg !727
  br i1 %cmp28, label %if.then29, label %if.else32, !dbg !728

if.then29:                                        ; preds = %land.lhs.true
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !729
  %and30 = and i32 %19, -241, !dbg !729
  %or31 = or i32 %and30, 128, !dbg !729
  store volatile i32 %or31, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !729
  store i32 128, i32* %hpre, align 4, !dbg !730
  br label %if.end33, !dbg !731

if.else32:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then22
  br label %if.end35, !dbg !732

if.end35:                                         ; preds = %if.end34, %if.end17
  br label %if.end65, !dbg !733

if.else36:                                        ; preds = %if.then11
  %20 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !734
  %SYSCLKSource37 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %20, i32 0, i32 1, !dbg !735
  %21 = load i32, i32* %SYSCLKSource37, align 4, !dbg !735
  %cmp38 = icmp eq i32 %21, 2, !dbg !736
  br i1 %cmp38, label %if.then39, label %if.else44, !dbg !734

if.then39:                                        ; preds = %if.else36
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !737
  %and40 = and i32 %22, 131072, !dbg !737
  %cmp41 = icmp eq i32 %and40, 0, !dbg !738
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !737

if.then42:                                        ; preds = %if.then39
  store i8 1, i8* %retval, align 1, !dbg !739
  br label %return, !dbg !739

if.end43:                                         ; preds = %if.then39
  br label %if.end58, !dbg !740

if.else44:                                        ; preds = %if.else36
  %23 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !741
  %SYSCLKSource45 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %23, i32 0, i32 1, !dbg !742
  %24 = load i32, i32* %SYSCLKSource45, align 4, !dbg !742
  %cmp46 = icmp eq i32 %24, 0, !dbg !743
  br i1 %cmp46, label %if.then47, label %if.else52, !dbg !741

if.then47:                                        ; preds = %if.else44
  %25 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !744
  %and48 = and i32 %25, 2, !dbg !744
  %cmp49 = icmp eq i32 %and48, 0, !dbg !745
  br i1 %cmp49, label %if.then50, label %if.end51, !dbg !744

if.then50:                                        ; preds = %if.then47
  store i8 1, i8* %retval, align 1, !dbg !746
  br label %return, !dbg !746

if.end51:                                         ; preds = %if.then47
  br label %if.end57, !dbg !747

if.else52:                                        ; preds = %if.else44
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !748
  %and53 = and i32 %26, 1024, !dbg !748
  %cmp54 = icmp eq i32 %and53, 0, !dbg !749
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !748

if.then55:                                        ; preds = %if.else52
  store i8 1, i8* %retval, align 1, !dbg !750
  br label %return, !dbg !750

if.end56:                                         ; preds = %if.else52
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end51
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end43
  %call59 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !751
  store i32 %call59, i32* %pllfreq, align 4, !dbg !752
  %27 = load i32, i32* %pllfreq, align 4, !dbg !753
  %cmp60 = icmp ugt i32 %27, 80000000, !dbg !754
  br i1 %cmp60, label %if.then61, label %if.end64, !dbg !753

if.then61:                                        ; preds = %if.end58
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !755
  %and62 = and i32 %28, -241, !dbg !755
  %or63 = or i32 %and62, 128, !dbg !755
  store volatile i32 %or63, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !755
  store i32 128, i32* %hpre, align 4, !dbg !756
  br label %if.end64, !dbg !757

if.end64:                                         ; preds = %if.then61, %if.end58
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end35
  %29 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !758
  %and66 = and i32 %29, -4, !dbg !758
  %30 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !758
  %SYSCLKSource67 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %30, i32 0, i32 1, !dbg !758
  %31 = load i32, i32* %SYSCLKSource67, align 4, !dbg !758
  %or68 = or i32 %and66, %31, !dbg !758
  store volatile i32 %or68, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !758
  %call69 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !759
  store i32 %call69, i32* %tickstart, align 4, !dbg !760
  br label %while.cond, !dbg !761

while.cond:                                       ; preds = %if.end76, %if.end65
  %32 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !762
  %and70 = and i32 %32, 12, !dbg !762
  %33 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !763
  %SYSCLKSource71 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %33, i32 0, i32 1, !dbg !764
  %34 = load i32, i32* %SYSCLKSource71, align 4, !dbg !764
  %shl = shl i32 %34, 2, !dbg !765
  %cmp72 = icmp ne i32 %and70, %shl, !dbg !766
  br i1 %cmp72, label %while.body, label %while.end, !dbg !761

while.body:                                       ; preds = %while.cond
  %call73 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !767
  %35 = load i32, i32* %tickstart, align 4, !dbg !768
  %sub = sub i32 %call73, %35, !dbg !769
  %cmp74 = icmp ugt i32 %sub, 5000, !dbg !770
  br i1 %cmp74, label %if.then75, label %if.end76, !dbg !771

if.then75:                                        ; preds = %while.body
  store i8 3, i8* %retval, align 1, !dbg !772
  br label %return, !dbg !772

if.end76:                                         ; preds = %while.body
  br label %while.cond, !dbg !761, !llvm.loop !773

while.end:                                        ; preds = %while.cond
  br label %if.end77, !dbg !775

if.end77:                                         ; preds = %while.end, %if.end8
  %36 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !776
  %ClockType78 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %36, i32 0, i32 0, !dbg !777
  %37 = load i32, i32* %ClockType78, align 4, !dbg !777
  %and79 = and i32 %37, 2, !dbg !778
  %cmp80 = icmp eq i32 %and79, 2, !dbg !779
  br i1 %cmp80, label %if.then81, label %if.else85, !dbg !780

if.then81:                                        ; preds = %if.end77
  %38 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !781
  %and82 = and i32 %38, -241, !dbg !781
  %39 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !781
  %AHBCLKDivider83 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %39, i32 0, i32 2, !dbg !781
  %40 = load i32, i32* %AHBCLKDivider83, align 4, !dbg !781
  %or84 = or i32 %and82, %40, !dbg !781
  store volatile i32 %or84, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !781
  br label %if.end90, !dbg !782

if.else85:                                        ; preds = %if.end77
  %41 = load i32, i32* %hpre, align 4, !dbg !783
  %cmp86 = icmp eq i32 %41, 128, !dbg !784
  br i1 %cmp86, label %if.then87, label %if.end89, !dbg !783

if.then87:                                        ; preds = %if.else85
  %42 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !785
  %and88 = and i32 %42, -241, !dbg !785
  store volatile i32 %and88, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !785
  br label %if.end89, !dbg !786

if.end89:                                         ; preds = %if.then87, %if.else85
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then81
  %43 = load i32, i32* %FLatency.addr, align 4, !dbg !787
  %44 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !788
  %and91 = and i32 %44, 15, !dbg !788
  %cmp92 = icmp ult i32 %43, %and91, !dbg !789
  br i1 %cmp92, label %if.then93, label %if.end100, !dbg !787

if.then93:                                        ; preds = %if.end90
  %45 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !790
  %and94 = and i32 %45, -16, !dbg !790
  %46 = load i32, i32* %FLatency.addr, align 4, !dbg !790
  %or95 = or i32 %and94, %46, !dbg !790
  store volatile i32 %or95, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !790
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !791
  %and96 = and i32 %47, 15, !dbg !791
  %48 = load i32, i32* %FLatency.addr, align 4, !dbg !792
  %cmp97 = icmp ne i32 %and96, %48, !dbg !793
  br i1 %cmp97, label %if.then98, label %if.end99, !dbg !791

if.then98:                                        ; preds = %if.then93
  store i8 1, i8* %retval, align 1, !dbg !794
  br label %return, !dbg !794

if.end99:                                         ; preds = %if.then93
  br label %if.end100, !dbg !795

if.end100:                                        ; preds = %if.end99, %if.end90
  %49 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !796
  %ClockType101 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %49, i32 0, i32 0, !dbg !797
  %50 = load i32, i32* %ClockType101, align 4, !dbg !797
  %and102 = and i32 %50, 4, !dbg !798
  %cmp103 = icmp eq i32 %and102, 4, !dbg !799
  br i1 %cmp103, label %if.then104, label %if.end107, !dbg !800

if.then104:                                       ; preds = %if.end100
  %51 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !801
  %and105 = and i32 %51, -1793, !dbg !801
  %52 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !801
  %APB1CLKDivider = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %52, i32 0, i32 3, !dbg !801
  %53 = load i32, i32* %APB1CLKDivider, align 4, !dbg !801
  %or106 = or i32 %and105, %53, !dbg !801
  store volatile i32 %or106, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !801
  br label %if.end107, !dbg !802

if.end107:                                        ; preds = %if.then104, %if.end100
  %54 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !803
  %ClockType108 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %54, i32 0, i32 0, !dbg !804
  %55 = load i32, i32* %ClockType108, align 4, !dbg !804
  %and109 = and i32 %55, 8, !dbg !805
  %cmp110 = icmp eq i32 %and109, 8, !dbg !806
  br i1 %cmp110, label %if.then111, label %if.end115, !dbg !807

if.then111:                                       ; preds = %if.end107
  %56 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !808
  %and112 = and i32 %56, -14337, !dbg !808
  %57 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !808
  %APB2CLKDivider = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %57, i32 0, i32 4, !dbg !808
  %58 = load i32, i32* %APB2CLKDivider, align 4, !dbg !808
  %shl113 = shl i32 %58, 3, !dbg !808
  %or114 = or i32 %and112, %shl113, !dbg !808
  store volatile i32 %or114, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !808
  br label %if.end115, !dbg !809

if.end115:                                        ; preds = %if.then111, %if.end107
  %call116 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetHCLKFreq(), !dbg !810
  store i32 %call116, i32* @SystemCoreClock, align 4, !dbg !811
  %59 = load i32, i32* @uwTickPrio, align 4, !dbg !812
  %call117 = call arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32 %59), !dbg !813
  store i8 %call117, i8* %retval, align 1, !dbg !814
  br label %return, !dbg !814

return:                                           ; preds = %if.end115, %if.then98, %if.then75, %if.then55, %if.then50, %if.then42, %if.then16, %if.then6, %if.then
  %60 = load i8, i8* %retval, align 1, !dbg !815
  ret i8 %60, !dbg !815
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @RCC_GetSysClockFreqFromPLLSource() #0 !dbg !816 {
entry:
  %msirange = alloca i32, align 4
  %pllvco = alloca i32, align 4
  %pllsource = alloca i32, align 4
  %pllr = alloca i32, align 4
  %pllm = alloca i32, align 4
  %sysclockfreq = alloca i32, align 4
  store i32 0, i32* %msirange, align 4, !dbg !817
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !818
  %and = and i32 %0, 3, !dbg !818
  %cmp = icmp eq i32 %and, 1, !dbg !819
  br i1 %cmp, label %if.then, label %if.end7, !dbg !818

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !820
  %and1 = and i32 %1, 8, !dbg !820
  %cmp2 = icmp eq i32 %and1, 0, !dbg !821
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !820

if.then3:                                         ; preds = %if.then
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !822
  %and4 = and i32 %2, 3840, !dbg !822
  %shr = lshr i32 %and4, 8, !dbg !823
  store i32 %shr, i32* %msirange, align 4, !dbg !824
  br label %if.end, !dbg !825

if.else:                                          ; preds = %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !826
  %and5 = and i32 %3, 240, !dbg !826
  %shr6 = lshr i32 %and5, 4, !dbg !827
  store i32 %shr6, i32* %msirange, align 4, !dbg !828
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %4 = load i32, i32* %msirange, align 4, !dbg !829
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %4, !dbg !830
  %5 = load i32, i32* %arrayidx, align 4, !dbg !830
  store i32 %5, i32* %msirange, align 4, !dbg !831
  br label %if.end7, !dbg !832

if.end7:                                          ; preds = %if.end, %entry
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !833
  %and8 = and i32 %6, 3, !dbg !833
  store i32 %and8, i32* %pllsource, align 4, !dbg !834
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !835
  %and9 = and i32 %7, 240, !dbg !835
  %shr10 = lshr i32 %and9, 4, !dbg !836
  %add = add i32 %shr10, 1, !dbg !837
  store i32 %add, i32* %pllm, align 4, !dbg !838
  %8 = load i32, i32* %pllsource, align 4, !dbg !839
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb13
    i32 1, label %sw.bb18
  ], !dbg !840

sw.bb:                                            ; preds = %if.end7
  %9 = load i32, i32* %pllm, align 4, !dbg !841
  %div = udiv i32 16000000, %9, !dbg !842
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !843
  %and11 = and i32 %10, 32512, !dbg !843
  %shr12 = lshr i32 %and11, 8, !dbg !844
  %mul = mul i32 %div, %shr12, !dbg !845
  store i32 %mul, i32* %pllvco, align 4, !dbg !846
  br label %sw.epilog, !dbg !847

sw.bb13:                                          ; preds = %if.end7
  %11 = load i32, i32* %pllm, align 4, !dbg !848
  %div14 = udiv i32 8000000, %11, !dbg !849
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !850
  %and15 = and i32 %12, 32512, !dbg !850
  %shr16 = lshr i32 %and15, 8, !dbg !851
  %mul17 = mul i32 %div14, %shr16, !dbg !852
  store i32 %mul17, i32* %pllvco, align 4, !dbg !853
  br label %sw.epilog, !dbg !854

sw.bb18:                                          ; preds = %if.end7
  br label %sw.default, !dbg !854

sw.default:                                       ; preds = %if.end7, %sw.bb18
  %13 = load i32, i32* %msirange, align 4, !dbg !855
  %14 = load i32, i32* %pllm, align 4, !dbg !856
  %div19 = udiv i32 %13, %14, !dbg !857
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !858
  %and20 = and i32 %15, 32512, !dbg !858
  %shr21 = lshr i32 %and20, 8, !dbg !859
  %mul22 = mul i32 %div19, %shr21, !dbg !860
  store i32 %mul22, i32* %pllvco, align 4, !dbg !861
  br label %sw.epilog, !dbg !862

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !863
  %and23 = and i32 %16, 100663296, !dbg !863
  %shr24 = lshr i32 %and23, 25, !dbg !864
  %add25 = add i32 %shr24, 1, !dbg !865
  %mul26 = mul i32 %add25, 2, !dbg !866
  store i32 %mul26, i32* %pllr, align 4, !dbg !867
  %17 = load i32, i32* %pllvco, align 4, !dbg !868
  %18 = load i32, i32* %pllr, align 4, !dbg !869
  %div27 = udiv i32 %17, %18, !dbg !870
  store i32 %div27, i32* %sysclockfreq, align 4, !dbg !871
  %19 = load i32, i32* %sysclockfreq, align 4, !dbg !872
  ret i32 %19, !dbg !873
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq() #0 !dbg !874 {
entry:
  %msirange = alloca i32, align 4
  %sysclockfreq = alloca i32, align 4
  %pllvco = alloca i32, align 4
  %pllsource = alloca i32, align 4
  %pllr = alloca i32, align 4
  %pllm = alloca i32, align 4
  %sysclk_source = alloca i32, align 4
  %pll_oscsource = alloca i32, align 4
  store i32 0, i32* %msirange, align 4, !dbg !875
  store i32 0, i32* %sysclockfreq, align 4, !dbg !876
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !877
  %and = and i32 %0, 12, !dbg !877
  store i32 %and, i32* %sysclk_source, align 4, !dbg !878
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !879
  %and1 = and i32 %1, 3, !dbg !879
  store i32 %and1, i32* %pll_oscsource, align 4, !dbg !880
  %2 = load i32, i32* %sysclk_source, align 4, !dbg !881
  %cmp = icmp eq i32 %2, 0, !dbg !882
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !883

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %sysclk_source, align 4, !dbg !884
  %cmp2 = icmp eq i32 %3, 12, !dbg !885
  br i1 %cmp2, label %land.lhs.true, label %if.else13, !dbg !886

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load i32, i32* %pll_oscsource, align 4, !dbg !887
  %cmp3 = icmp eq i32 %4, 1, !dbg !888
  br i1 %cmp3, label %if.then, label %if.else13, !dbg !889

if.then:                                          ; preds = %land.lhs.true, %entry
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !890
  %and4 = and i32 %5, 8, !dbg !890
  %cmp5 = icmp eq i32 %and4, 0, !dbg !891
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !890

if.then6:                                         ; preds = %if.then
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !892
  %and7 = and i32 %6, 3840, !dbg !892
  %shr = lshr i32 %and7, 8, !dbg !893
  store i32 %shr, i32* %msirange, align 4, !dbg !894
  br label %if.end, !dbg !895

if.else:                                          ; preds = %if.then
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !896
  %and8 = and i32 %7, 240, !dbg !896
  %shr9 = lshr i32 %and8, 4, !dbg !897
  store i32 %shr9, i32* %msirange, align 4, !dbg !898
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %8 = load i32, i32* %msirange, align 4, !dbg !899
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* @MSIRangeTable, i32 0, i32 %8, !dbg !900
  %9 = load i32, i32* %arrayidx, align 4, !dbg !900
  store i32 %9, i32* %msirange, align 4, !dbg !901
  %10 = load i32, i32* %sysclk_source, align 4, !dbg !902
  %cmp10 = icmp eq i32 %10, 0, !dbg !903
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !902

if.then11:                                        ; preds = %if.end
  %11 = load i32, i32* %msirange, align 4, !dbg !904
  store i32 %11, i32* %sysclockfreq, align 4, !dbg !905
  br label %if.end12, !dbg !906

if.end12:                                         ; preds = %if.then11, %if.end
  br label %if.end22, !dbg !907

if.else13:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %12 = load i32, i32* %sysclk_source, align 4, !dbg !908
  %cmp14 = icmp eq i32 %12, 4, !dbg !909
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !908

if.then15:                                        ; preds = %if.else13
  store i32 16000000, i32* %sysclockfreq, align 4, !dbg !910
  br label %if.end21, !dbg !911

if.else16:                                        ; preds = %if.else13
  %13 = load i32, i32* %sysclk_source, align 4, !dbg !912
  %cmp17 = icmp eq i32 %13, 8, !dbg !913
  br i1 %cmp17, label %if.then18, label %if.else19, !dbg !912

if.then18:                                        ; preds = %if.else16
  store i32 8000000, i32* %sysclockfreq, align 4, !dbg !914
  br label %if.end20, !dbg !915

if.else19:                                        ; preds = %if.else16
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end12
  %14 = load i32, i32* %sysclk_source, align 4, !dbg !916
  %cmp23 = icmp eq i32 %14, 12, !dbg !917
  br i1 %cmp23, label %if.then24, label %if.end45, !dbg !916

if.then24:                                        ; preds = %if.end22
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !918
  %and25 = and i32 %15, 3, !dbg !919
  store i32 %and25, i32* %pllsource, align 4, !dbg !920
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !921
  %and26 = and i32 %16, 240, !dbg !922
  %shr27 = lshr i32 %and26, 4, !dbg !923
  %add = add i32 %shr27, 1, !dbg !924
  store i32 %add, i32* %pllm, align 4, !dbg !925
  %17 = load i32, i32* %pllsource, align 4, !dbg !926
  switch i32 %17, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb30
    i32 1, label %sw.bb35
  ], !dbg !927

sw.bb:                                            ; preds = %if.then24
  %18 = load i32, i32* %pllm, align 4, !dbg !928
  %div = udiv i32 16000000, %18, !dbg !929
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !930
  %and28 = and i32 %19, 32512, !dbg !931
  %shr29 = lshr i32 %and28, 8, !dbg !932
  %mul = mul i32 %div, %shr29, !dbg !933
  store i32 %mul, i32* %pllvco, align 4, !dbg !934
  br label %sw.epilog, !dbg !935

sw.bb30:                                          ; preds = %if.then24
  %20 = load i32, i32* %pllm, align 4, !dbg !936
  %div31 = udiv i32 8000000, %20, !dbg !937
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !938
  %and32 = and i32 %21, 32512, !dbg !939
  %shr33 = lshr i32 %and32, 8, !dbg !940
  %mul34 = mul i32 %div31, %shr33, !dbg !941
  store i32 %mul34, i32* %pllvco, align 4, !dbg !942
  br label %sw.epilog, !dbg !943

sw.bb35:                                          ; preds = %if.then24
  br label %sw.default, !dbg !943

sw.default:                                       ; preds = %if.then24, %sw.bb35
  %22 = load i32, i32* %msirange, align 4, !dbg !944
  %23 = load i32, i32* %pllm, align 4, !dbg !945
  %div36 = udiv i32 %22, %23, !dbg !946
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !947
  %and37 = and i32 %24, 32512, !dbg !948
  %shr38 = lshr i32 %and37, 8, !dbg !949
  %mul39 = mul i32 %div36, %shr38, !dbg !950
  store i32 %mul39, i32* %pllvco, align 4, !dbg !951
  br label %sw.epilog, !dbg !952

sw.epilog:                                        ; preds = %sw.default, %sw.bb30, %sw.bb
  %25 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !953
  %and40 = and i32 %25, 100663296, !dbg !954
  %shr41 = lshr i32 %and40, 25, !dbg !955
  %add42 = add i32 %shr41, 1, !dbg !956
  %mul43 = mul i32 %add42, 2, !dbg !957
  store i32 %mul43, i32* %pllr, align 4, !dbg !958
  %26 = load i32, i32* %pllvco, align 4, !dbg !959
  %27 = load i32, i32* %pllr, align 4, !dbg !960
  %div44 = udiv i32 %26, %27, !dbg !961
  store i32 %div44, i32* %sysclockfreq, align 4, !dbg !962
  br label %if.end45, !dbg !963

if.end45:                                         ; preds = %sw.epilog, %if.end22
  %28 = load i32, i32* %sysclockfreq, align 4, !dbg !964
  ret i32 %28, !dbg !965
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCC_MCOConfig(i32 %RCC_MCOx, i32 %RCC_MCOSource, i32 %RCC_MCODiv) #0 !dbg !966 {
entry:
  %RCC_MCOx.addr = alloca i32, align 4
  %RCC_MCOSource.addr = alloca i32, align 4
  %RCC_MCODiv.addr = alloca i32, align 4
  %GPIO_InitStruct = alloca %struct.GPIO_InitTypeDef, align 4
  %tmpreg = alloca i32, align 4
  store i32 %RCC_MCOx, i32* %RCC_MCOx.addr, align 4
  store i32 %RCC_MCOSource, i32* %RCC_MCOSource.addr, align 4
  store i32 %RCC_MCODiv, i32* %RCC_MCODiv.addr, align 4
  br label %do.body, !dbg !967

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !967
  %or = or i32 %0, 1, !dbg !967
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !967
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !967
  %and = and i32 %1, 1, !dbg !967
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !967
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !967
  br label %do.end, !dbg !967

do.end:                                           ; preds = %do.body
  %Pin = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 0, !dbg !968
  store i32 256, i32* %Pin, align 4, !dbg !969
  %Mode = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 1, !dbg !970
  store i32 2, i32* %Mode, align 4, !dbg !971
  %Speed = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 3, !dbg !972
  store i32 2, i32* %Speed, align 4, !dbg !973
  %Pull = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 2, !dbg !974
  store i32 0, i32* %Pull, align 4, !dbg !975
  %Alternate = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 4, !dbg !976
  store i32 0, i32* %Alternate, align 4, !dbg !977
  call arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef* inttoptr (i32 1107427328 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* %GPIO_InitStruct), !dbg !978
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !979
  %and1 = and i32 %3, -2130706433, !dbg !979
  %4 = load i32, i32* %RCC_MCOSource.addr, align 4, !dbg !979
  %5 = load i32, i32* %RCC_MCODiv.addr, align 4, !dbg !979
  %or2 = or i32 %4, %5, !dbg !979
  %or3 = or i32 %and1, %or2, !dbg !979
  store volatile i32 %or3, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !979
  ret void, !dbg !980
}

declare dso_local arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef*, %struct.GPIO_InitTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq() #0 !dbg !981 {
entry:
  %call = call arm_aapcs_vfpcc i32 @HAL_RCC_GetHCLKFreq(), !dbg !982
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !983
  %and = and i32 %0, 1792, !dbg !984
  %shr = lshr i32 %and, 8, !dbg !985
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %shr, !dbg !986
  %1 = load i8, i8* %arrayidx, align 1, !dbg !986
  %conv = zext i8 %1 to i32, !dbg !986
  %shr1 = lshr i32 %call, %conv, !dbg !987
  ret i32 %shr1, !dbg !988
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq() #0 !dbg !989 {
entry:
  %call = call arm_aapcs_vfpcc i32 @HAL_RCC_GetHCLKFreq(), !dbg !990
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !991
  %and = and i32 %0, 14336, !dbg !992
  %shr = lshr i32 %and, 11, !dbg !993
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* @APBPrescTable, i32 0, i32 %shr, !dbg !994
  %1 = load i8, i8* %arrayidx, align 1, !dbg !994
  %conv = zext i8 %1 to i32, !dbg !994
  %shr1 = lshr i32 %call, %conv, !dbg !995
  ret i32 %shr1, !dbg !996
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCC_GetOscConfig(%struct.RCC_OscInitTypeDef* %RCC_OscInitStruct) #0 !dbg !997 {
entry:
  %RCC_OscInitStruct.addr = alloca %struct.RCC_OscInitTypeDef*, align 4
  store %struct.RCC_OscInitTypeDef* %RCC_OscInitStruct, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4
  %0 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !998
  %OscillatorType = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %0, i32 0, i32 0, !dbg !999
  store i32 63, i32* %OscillatorType, align 4, !dbg !1000
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1001
  %and = and i32 %1, 262144, !dbg !1002
  %cmp = icmp eq i32 %and, 262144, !dbg !1003
  br i1 %cmp, label %if.then, label %if.else, !dbg !1004

if.then:                                          ; preds = %entry
  %2 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1005
  %HSEState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %2, i32 0, i32 1, !dbg !1006
  store i32 327680, i32* %HSEState, align 4, !dbg !1007
  br label %if.end7, !dbg !1008

if.else:                                          ; preds = %entry
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1009
  %and1 = and i32 %3, 65536, !dbg !1010
  %cmp2 = icmp eq i32 %and1, 65536, !dbg !1011
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !1012

if.then3:                                         ; preds = %if.else
  %4 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1013
  %HSEState4 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %4, i32 0, i32 1, !dbg !1014
  store i32 65536, i32* %HSEState4, align 4, !dbg !1015
  br label %if.end, !dbg !1016

if.else5:                                         ; preds = %if.else
  %5 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1017
  %HSEState6 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %5, i32 0, i32 1, !dbg !1018
  store i32 0, i32* %HSEState6, align 4, !dbg !1019
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1020
  %and8 = and i32 %6, 1, !dbg !1021
  %cmp9 = icmp eq i32 %and8, 1, !dbg !1022
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !1023

if.then10:                                        ; preds = %if.end7
  %7 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1024
  %MSIState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %7, i32 0, i32 7, !dbg !1025
  store i32 1, i32* %MSIState, align 4, !dbg !1026
  br label %if.end13, !dbg !1027

if.else11:                                        ; preds = %if.end7
  %8 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1028
  %MSIState12 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %8, i32 0, i32 7, !dbg !1029
  store i32 0, i32* %MSIState12, align 4, !dbg !1030
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then10
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !1031
  %and14 = and i32 %9, 65280, !dbg !1032
  %shr = lshr i32 %and14, 8, !dbg !1033
  %10 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1034
  %MSICalibrationValue = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %10, i32 0, i32 8, !dbg !1035
  store i32 %shr, i32* %MSICalibrationValue, align 4, !dbg !1036
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1037
  %and15 = and i32 %11, 240, !dbg !1038
  %12 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1039
  %MSIClockRange = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %12, i32 0, i32 9, !dbg !1040
  store i32 %and15, i32* %MSIClockRange, align 4, !dbg !1041
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1042
  %and16 = and i32 %13, 256, !dbg !1043
  %cmp17 = icmp eq i32 %and16, 256, !dbg !1044
  br i1 %cmp17, label %if.then18, label %if.else19, !dbg !1045

if.then18:                                        ; preds = %if.end13
  %14 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1046
  %HSIState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %14, i32 0, i32 3, !dbg !1047
  store i32 256, i32* %HSIState, align 4, !dbg !1048
  br label %if.end21, !dbg !1049

if.else19:                                        ; preds = %if.end13
  %15 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1050
  %HSIState20 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %15, i32 0, i32 3, !dbg !1051
  store i32 0, i32* %HSIState20, align 4, !dbg !1052
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then18
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 1), align 4, !dbg !1053
  %and22 = and i32 %16, 2130706432, !dbg !1054
  %shr23 = lshr i32 %and22, 24, !dbg !1055
  %17 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1056
  %HSICalibrationValue = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %17, i32 0, i32 4, !dbg !1057
  store i32 %shr23, i32* %HSICalibrationValue, align 4, !dbg !1058
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1059
  %and24 = and i32 %18, 4, !dbg !1060
  %cmp25 = icmp eq i32 %and24, 4, !dbg !1061
  br i1 %cmp25, label %if.then26, label %if.else33, !dbg !1062

if.then26:                                        ; preds = %if.end21
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1063
  %and27 = and i32 %19, 128, !dbg !1064
  %cmp28 = icmp eq i32 %and27, 128, !dbg !1065
  br i1 %cmp28, label %if.then29, label %if.else30, !dbg !1066

if.then29:                                        ; preds = %if.then26
  %20 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1067
  %LSEState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %20, i32 0, i32 2, !dbg !1068
  store i32 133, i32* %LSEState, align 4, !dbg !1069
  br label %if.end32, !dbg !1070

if.else30:                                        ; preds = %if.then26
  %21 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1071
  %LSEState31 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %21, i32 0, i32 2, !dbg !1072
  store i32 5, i32* %LSEState31, align 4, !dbg !1073
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then29
  br label %if.end47, !dbg !1074

if.else33:                                        ; preds = %if.end21
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1075
  %and34 = and i32 %22, 1, !dbg !1076
  %cmp35 = icmp eq i32 %and34, 1, !dbg !1077
  br i1 %cmp35, label %if.then36, label %if.else44, !dbg !1078

if.then36:                                        ; preds = %if.else33
  %23 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 36), align 4, !dbg !1079
  %and37 = and i32 %23, 128, !dbg !1080
  %cmp38 = icmp eq i32 %and37, 128, !dbg !1081
  br i1 %cmp38, label %if.then39, label %if.else41, !dbg !1082

if.then39:                                        ; preds = %if.then36
  %24 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1083
  %LSEState40 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %24, i32 0, i32 2, !dbg !1084
  store i32 129, i32* %LSEState40, align 4, !dbg !1085
  br label %if.end43, !dbg !1086

if.else41:                                        ; preds = %if.then36
  %25 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1087
  %LSEState42 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %25, i32 0, i32 2, !dbg !1088
  store i32 1, i32* %LSEState42, align 4, !dbg !1089
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39
  br label %if.end46, !dbg !1090

if.else44:                                        ; preds = %if.else33
  %26 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1091
  %LSEState45 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %26, i32 0, i32 2, !dbg !1092
  store i32 0, i32* %LSEState45, align 4, !dbg !1093
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.end43
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end32
  %27 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1094
  %and48 = and i32 %27, 1, !dbg !1095
  %cmp49 = icmp eq i32 %and48, 1, !dbg !1096
  br i1 %cmp49, label %if.then50, label %if.else51, !dbg !1097

if.then50:                                        ; preds = %if.end47
  %28 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1098
  %LSIState = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %28, i32 0, i32 5, !dbg !1099
  store i32 1, i32* %LSIState, align 4, !dbg !1100
  br label %if.end53, !dbg !1101

if.else51:                                        ; preds = %if.end47
  %29 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1102
  %LSIState52 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %29, i32 0, i32 5, !dbg !1103
  store i32 0, i32* %LSIState52, align 4, !dbg !1104
  br label %if.end53

if.end53:                                         ; preds = %if.else51, %if.then50
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 37), align 4, !dbg !1105
  %and54 = and i32 %30, 16, !dbg !1106
  %cmp55 = icmp eq i32 %and54, 16, !dbg !1107
  br i1 %cmp55, label %if.then56, label %if.else57, !dbg !1108

if.then56:                                        ; preds = %if.end53
  %31 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1109
  %LSIDiv = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %31, i32 0, i32 6, !dbg !1110
  store i32 16, i32* %LSIDiv, align 4, !dbg !1111
  br label %if.end59, !dbg !1112

if.else57:                                        ; preds = %if.end53
  %32 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1113
  %LSIDiv58 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %32, i32 0, i32 6, !dbg !1114
  store i32 0, i32* %LSIDiv58, align 4, !dbg !1115
  br label %if.end59

if.end59:                                         ; preds = %if.else57, %if.then56
  %33 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 38), align 4, !dbg !1116
  %and60 = and i32 %33, 1, !dbg !1117
  %cmp61 = icmp eq i32 %and60, 1, !dbg !1118
  br i1 %cmp61, label %if.then62, label %if.else63, !dbg !1119

if.then62:                                        ; preds = %if.end59
  %34 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1120
  %HSI48State = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %34, i32 0, i32 10, !dbg !1121
  store i32 1, i32* %HSI48State, align 4, !dbg !1122
  br label %if.end65, !dbg !1123

if.else63:                                        ; preds = %if.end59
  %35 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1124
  %HSI48State64 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %35, i32 0, i32 10, !dbg !1125
  store i32 0, i32* %HSI48State64, align 4, !dbg !1126
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then62
  %36 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1127
  %and66 = and i32 %36, 16777216, !dbg !1128
  %cmp67 = icmp eq i32 %and66, 16777216, !dbg !1129
  br i1 %cmp67, label %if.then68, label %if.else69, !dbg !1130

if.then68:                                        ; preds = %if.end65
  %37 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1131
  %PLL = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %37, i32 0, i32 11, !dbg !1132
  %PLLState = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL, i32 0, i32 0, !dbg !1133
  store i32 2, i32* %PLLState, align 4, !dbg !1134
  br label %if.end72, !dbg !1135

if.else69:                                        ; preds = %if.end65
  %38 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1136
  %PLL70 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %38, i32 0, i32 11, !dbg !1137
  %PLLState71 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL70, i32 0, i32 0, !dbg !1138
  store i32 1, i32* %PLLState71, align 4, !dbg !1139
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then68
  %39 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1140
  %and73 = and i32 %39, 3, !dbg !1141
  %40 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1142
  %PLL74 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %40, i32 0, i32 11, !dbg !1143
  %PLLSource = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL74, i32 0, i32 1, !dbg !1144
  store i32 %and73, i32* %PLLSource, align 4, !dbg !1145
  %41 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1146
  %and75 = and i32 %41, 240, !dbg !1147
  %shr76 = lshr i32 %and75, 4, !dbg !1148
  %add = add i32 %shr76, 1, !dbg !1149
  %42 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1150
  %PLL77 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %42, i32 0, i32 11, !dbg !1151
  %PLLM = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL77, i32 0, i32 2, !dbg !1152
  store i32 %add, i32* %PLLM, align 4, !dbg !1153
  %43 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1154
  %and78 = and i32 %43, 32512, !dbg !1155
  %shr79 = lshr i32 %and78, 8, !dbg !1156
  %44 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1157
  %PLL80 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %44, i32 0, i32 11, !dbg !1158
  %PLLN = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL80, i32 0, i32 3, !dbg !1159
  store i32 %shr79, i32* %PLLN, align 4, !dbg !1160
  %45 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1161
  %and81 = and i32 %45, 6291456, !dbg !1162
  %shr82 = lshr i32 %and81, 21, !dbg !1163
  %add83 = add i32 %shr82, 1, !dbg !1164
  %shl = shl i32 %add83, 1, !dbg !1165
  %46 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1166
  %PLL84 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %46, i32 0, i32 11, !dbg !1167
  %PLLQ = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL84, i32 0, i32 5, !dbg !1168
  store i32 %shl, i32* %PLLQ, align 4, !dbg !1169
  %47 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1170
  %and85 = and i32 %47, 100663296, !dbg !1171
  %shr86 = lshr i32 %and85, 25, !dbg !1172
  %add87 = add i32 %shr86, 1, !dbg !1173
  %shl88 = shl i32 %add87, 1, !dbg !1174
  %48 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1175
  %PLL89 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %48, i32 0, i32 11, !dbg !1176
  %PLLR = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL89, i32 0, i32 6, !dbg !1177
  store i32 %shl88, i32* %PLLR, align 4, !dbg !1178
  %49 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 3), align 4, !dbg !1179
  %and90 = and i32 %49, -134217728, !dbg !1180
  %shr91 = lshr i32 %and90, 27, !dbg !1181
  %50 = load %struct.RCC_OscInitTypeDef*, %struct.RCC_OscInitTypeDef** %RCC_OscInitStruct.addr, align 4, !dbg !1182
  %PLL92 = getelementptr inbounds %struct.RCC_OscInitTypeDef, %struct.RCC_OscInitTypeDef* %50, i32 0, i32 11, !dbg !1183
  %PLLP = getelementptr inbounds %struct.RCC_PLLInitTypeDef, %struct.RCC_PLLInitTypeDef* %PLL92, i32 0, i32 4, !dbg !1184
  store i32 %shr91, i32* %PLLP, align 4, !dbg !1185
  ret void, !dbg !1186
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCC_GetClockConfig(%struct.RCC_ClkInitTypeDef* %RCC_ClkInitStruct, i32* %pFLatency) #0 !dbg !1187 {
entry:
  %RCC_ClkInitStruct.addr = alloca %struct.RCC_ClkInitTypeDef*, align 4
  %pFLatency.addr = alloca i32*, align 4
  store %struct.RCC_ClkInitTypeDef* %RCC_ClkInitStruct, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4
  store i32* %pFLatency, i32** %pFLatency.addr, align 4
  %0 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !1188
  %ClockType = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %0, i32 0, i32 0, !dbg !1189
  store i32 15, i32* %ClockType, align 4, !dbg !1190
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !1191
  %and = and i32 %1, 3, !dbg !1192
  %2 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !1193
  %SYSCLKSource = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %2, i32 0, i32 1, !dbg !1194
  store i32 %and, i32* %SYSCLKSource, align 4, !dbg !1195
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !1196
  %and1 = and i32 %3, 240, !dbg !1197
  %4 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !1198
  %AHBCLKDivider = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %4, i32 0, i32 2, !dbg !1199
  store i32 %and1, i32* %AHBCLKDivider, align 4, !dbg !1200
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !1201
  %and2 = and i32 %5, 1792, !dbg !1202
  %6 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !1203
  %APB1CLKDivider = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %6, i32 0, i32 3, !dbg !1204
  store i32 %and2, i32* %APB1CLKDivider, align 4, !dbg !1205
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 2), align 4, !dbg !1206
  %and3 = and i32 %7, 14336, !dbg !1207
  %shr = lshr i32 %and3, 3, !dbg !1208
  %8 = load %struct.RCC_ClkInitTypeDef*, %struct.RCC_ClkInitTypeDef** %RCC_ClkInitStruct.addr, align 4, !dbg !1209
  %APB2CLKDivider = getelementptr inbounds %struct.RCC_ClkInitTypeDef, %struct.RCC_ClkInitTypeDef* %8, i32 0, i32 4, !dbg !1210
  store i32 %shr, i32* %APB2CLKDivider, align 4, !dbg !1211
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !1212
  %and4 = and i32 %9, 15, !dbg !1213
  %10 = load i32*, i32** %pFLatency.addr, align 4, !dbg !1214
  store i32 %and4, i32* %10, align 4, !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCC_EnableCSS() #0 !dbg !1217 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1218
  %or = or i32 %0, 524288, !dbg !1218
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1218
  ret void, !dbg !1219
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCC_NMI_IRQHandler() #0 !dbg !1220 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 7), align 4, !dbg !1221
  %and = and i32 %0, 256, !dbg !1221
  %cmp = icmp eq i32 %and, 256, !dbg !1221
  br i1 %cmp, label %if.then, label %if.end, !dbg !1221

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @HAL_RCC_CSSCallback(), !dbg !1222
  store volatile i32 256, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 8), align 4, !dbg !1223
  br label %if.end, !dbg !1224

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1225
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_RCC_CSSCallback() #0 !dbg !1226 {
entry:
  ret void, !dbg !1227
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_RCC_ConfigAttributes(i32 %Item, i32 %Attributes) #0 !dbg !1228 {
entry:
  %Item.addr = alloca i32, align 4
  %Attributes.addr = alloca i32, align 4
  store i32 %Item, i32* %Item.addr, align 4
  store i32 %Attributes, i32* %Attributes.addr, align 4
  %0 = load i32, i32* %Attributes.addr, align 4, !dbg !1229
  %and = and i32 %0, 514, !dbg !1230
  %cmp = icmp eq i32 %and, 514, !dbg !1231
  br i1 %cmp, label %if.then, label %if.else, !dbg !1232

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1233
  %or = or i32 %1, -2147483648, !dbg !1233
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1233
  br label %if.end6, !dbg !1234

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %Attributes.addr, align 4, !dbg !1235
  %and1 = and i32 %2, 512, !dbg !1236
  %cmp2 = icmp eq i32 %and1, 512, !dbg !1237
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !1238

if.then3:                                         ; preds = %if.else
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1239
  %and4 = and i32 %3, 2147483647, !dbg !1239
  store volatile i32 %and4, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1239
  br label %if.end, !dbg !1240

if.else5:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !1241
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCC_GetConfigAttributes(i32 %Item, i32* %pAttributes) #0 !dbg !1242 {
entry:
  %retval = alloca i8, align 1
  %Item.addr = alloca i32, align 4
  %pAttributes.addr = alloca i32*, align 4
  %attributes = alloca i32, align 4
  store i32 %Item, i32* %Item.addr, align 4
  store i32* %pAttributes, i32** %pAttributes.addr, align 4
  %0 = load i32*, i32** %pAttributes.addr, align 4, !dbg !1243
  %cmp = icmp eq i32* %0, null, !dbg !1244
  br i1 %cmp, label %if.then, label %if.end, !dbg !1243

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !1245
  br label %return, !dbg !1245

if.end:                                           ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 0), align 4, !dbg !1246
  %and = and i32 %1, -2147483648, !dbg !1246
  %cmp1 = icmp ne i32 %and, 0, !dbg !1247
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !1246

if.then2:                                         ; preds = %if.end
  store i32 514, i32* %attributes, align 4, !dbg !1248
  br label %if.end3, !dbg !1249

if.else:                                          ; preds = %if.end
  store i32 512, i32* %attributes, align 4, !dbg !1250
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %2 = load i32, i32* %attributes, align 4, !dbg !1251
  %3 = load i32*, i32** %pAttributes.addr, align 4, !dbg !1252
  store i32 %2, i32* %3, align 4, !dbg !1253
  store i8 0, i8* %retval, align 1, !dbg !1254
  br label %return, !dbg !1254

return:                                           ; preds = %if.end3, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !1255
  ret i8 %4, !dbg !1255
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_RCC_DeInit", scope: !1, file: !1, line: 241, type: !9, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 244, column: 14, scope: !8)
!11 = !DILocation(line: 247, column: 3, scope: !8)
!12 = !DILocation(line: 251, column: 15, scope: !8)
!13 = !DILocation(line: 251, column: 13, scope: !8)
!14 = !DILocation(line: 254, column: 3, scope: !8)
!15 = !DILocation(line: 254, column: 10, scope: !8)
!16 = !DILocation(line: 254, column: 43, scope: !8)
!17 = !DILocation(line: 256, column: 10, scope: !8)
!18 = !DILocation(line: 256, column: 26, scope: !8)
!19 = !DILocation(line: 256, column: 24, scope: !8)
!20 = !DILocation(line: 256, column: 37, scope: !8)
!21 = !DILocation(line: 256, column: 9, scope: !8)
!22 = !DILocation(line: 258, column: 7, scope: !8)
!23 = distinct !{!23, !14, !24}
!24 = !DILocation(line: 260, column: 3, scope: !8)
!25 = !DILocation(line: 263, column: 3, scope: !8)
!26 = !DILocation(line: 266, column: 3, scope: !8)
!27 = !DILocation(line: 270, column: 15, scope: !8)
!28 = !DILocation(line: 270, column: 13, scope: !8)
!29 = !DILocation(line: 273, column: 19, scope: !8)
!30 = !DILocation(line: 276, column: 20, scope: !8)
!31 = !DILocation(line: 276, column: 7, scope: !8)
!32 = !DILocation(line: 276, column: 32, scope: !8)
!33 = !DILocation(line: 278, column: 5, scope: !8)
!34 = !DILocation(line: 282, column: 3, scope: !8)
!35 = !DILocation(line: 282, column: 10, scope: !8)
!36 = !DILocation(line: 282, column: 44, scope: !8)
!37 = !DILocation(line: 284, column: 10, scope: !8)
!38 = !DILocation(line: 284, column: 26, scope: !8)
!39 = !DILocation(line: 284, column: 24, scope: !8)
!40 = !DILocation(line: 284, column: 37, scope: !8)
!41 = !DILocation(line: 284, column: 9, scope: !8)
!42 = !DILocation(line: 286, column: 7, scope: !8)
!43 = distinct !{!43, !34, !44}
!44 = !DILocation(line: 288, column: 3, scope: !8)
!45 = !DILocation(line: 291, column: 3, scope: !8)
!46 = !DILocation(line: 295, column: 15, scope: !8)
!47 = !DILocation(line: 295, column: 13, scope: !8)
!48 = !DILocation(line: 303, column: 3, scope: !8)
!49 = !DILocation(line: 303, column: 10, scope: !8)
!50 = !DILocation(line: 303, column: 63, scope: !8)
!51 = !DILocation(line: 307, column: 10, scope: !8)
!52 = !DILocation(line: 307, column: 26, scope: !8)
!53 = !DILocation(line: 307, column: 24, scope: !8)
!54 = !DILocation(line: 307, column: 37, scope: !8)
!55 = !DILocation(line: 307, column: 9, scope: !8)
!56 = !DILocation(line: 309, column: 7, scope: !8)
!57 = distinct !{!57, !48, !58}
!58 = !DILocation(line: 311, column: 3, scope: !8)
!59 = !DILocation(line: 314, column: 3, scope: !8)
!60 = !DILocation(line: 315, column: 3, scope: !8)
!61 = !DILocation(line: 318, column: 3, scope: !8)
!62 = !DILocation(line: 319, column: 3, scope: !8)
!63 = !DILocation(line: 322, column: 3, scope: !8)
!64 = !DILocation(line: 323, column: 3, scope: !8)
!65 = !DILocation(line: 326, column: 3, scope: !8)
!66 = !DILocation(line: 330, column: 15, scope: !8)
!67 = !DILocation(line: 330, column: 13, scope: !8)
!68 = !DILocation(line: 333, column: 3, scope: !8)
!69 = !DILocation(line: 333, column: 10, scope: !8)
!70 = !DILocation(line: 333, column: 45, scope: !8)
!71 = !DILocation(line: 335, column: 10, scope: !8)
!72 = !DILocation(line: 335, column: 26, scope: !8)
!73 = !DILocation(line: 335, column: 24, scope: !8)
!74 = !DILocation(line: 335, column: 37, scope: !8)
!75 = !DILocation(line: 335, column: 9, scope: !8)
!76 = !DILocation(line: 337, column: 7, scope: !8)
!77 = distinct !{!77, !68, !78}
!78 = !DILocation(line: 339, column: 3, scope: !8)
!79 = !DILocation(line: 342, column: 3, scope: !8)
!80 = !DILocation(line: 345, column: 3, scope: !8)
!81 = !DILocation(line: 348, column: 3, scope: !8)
!82 = !DILocation(line: 351, column: 3, scope: !8)
!83 = !DILocation(line: 354, column: 3, scope: !8)
!84 = !DILocation(line: 357, column: 3, scope: !8)
!85 = !DILocation(line: 361, column: 7, scope: !8)
!86 = !DILocation(line: 363, column: 5, scope: !8)
!87 = !DILocation(line: 364, column: 19, scope: !8)
!88 = !DILocation(line: 365, column: 3, scope: !8)
!89 = !DILocation(line: 367, column: 7, scope: !8)
!90 = !DILocation(line: 370, column: 5, scope: !8)
!91 = !DILocation(line: 371, column: 3, scope: !8)
!92 = !DILocation(line: 374, column: 3, scope: !8)
!93 = !DILocation(line: 375, column: 3, scope: !8)
!94 = !DILocation(line: 378, column: 7, scope: !8)
!95 = !DILocation(line: 378, column: 21, scope: !8)
!96 = !DILocation(line: 380, column: 5, scope: !8)
!97 = !DILocation(line: 381, column: 3, scope: !8)
!98 = !DILocation(line: 383, column: 3, scope: !8)
!99 = !DILocation(line: 384, column: 1, scope: !8)
!100 = distinct !DISubprogram(name: "HAL_RCC_OscConfig", scope: !1, file: !1, line: 403, type: !9, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!101 = !DILocation(line: 410, column: 7, scope: !100)
!102 = !DILocation(line: 410, column: 25, scope: !100)
!103 = !DILocation(line: 412, column: 5, scope: !100)
!104 = !DILocation(line: 418, column: 19, scope: !100)
!105 = !DILocation(line: 418, column: 17, scope: !100)
!106 = !DILocation(line: 419, column: 16, scope: !100)
!107 = !DILocation(line: 419, column: 14, scope: !100)
!108 = !DILocation(line: 422, column: 9, scope: !100)
!109 = !DILocation(line: 422, column: 28, scope: !100)
!110 = !DILocation(line: 422, column: 44, scope: !100)
!111 = !DILocation(line: 422, column: 70, scope: !100)
!112 = !DILocation(line: 422, column: 7, scope: !100)
!113 = !DILocation(line: 430, column: 10, scope: !100)
!114 = !DILocation(line: 430, column: 24, scope: !100)
!115 = !DILocation(line: 430, column: 56, scope: !100)
!116 = !DILocation(line: 431, column: 11, scope: !100)
!117 = !DILocation(line: 431, column: 25, scope: !100)
!118 = !DILocation(line: 431, column: 60, scope: !100)
!119 = !DILocation(line: 431, column: 64, scope: !100)
!120 = !DILocation(line: 431, column: 75, scope: !100)
!121 = !DILocation(line: 430, column: 9, scope: !100)
!122 = !DILocation(line: 433, column: 12, scope: !100)
!123 = !DILocation(line: 433, column: 45, scope: !100)
!124 = !DILocation(line: 433, column: 52, scope: !100)
!125 = !DILocation(line: 433, column: 56, scope: !100)
!126 = !DILocation(line: 433, column: 75, scope: !100)
!127 = !DILocation(line: 433, column: 84, scope: !100)
!128 = !DILocation(line: 433, column: 11, scope: !100)
!129 = !DILocation(line: 435, column: 9, scope: !100)
!130 = !DILocation(line: 444, column: 13, scope: !100)
!131 = !DILocation(line: 444, column: 32, scope: !100)
!132 = !DILocation(line: 444, column: 48, scope: !100)
!133 = !DILocation(line: 444, column: 46, scope: !100)
!134 = !DILocation(line: 447, column: 47, scope: !100)
!135 = !DILocation(line: 447, column: 66, scope: !100)
!136 = !DILocation(line: 447, column: 15, scope: !100)
!137 = !DILocation(line: 447, column: 81, scope: !100)
!138 = !DILocation(line: 449, column: 13, scope: !100)
!139 = !DILocation(line: 453, column: 11, scope: !100)
!140 = !DILocation(line: 455, column: 11, scope: !100)
!141 = !DILocation(line: 456, column: 9, scope: !100)
!142 = !DILocation(line: 461, column: 11, scope: !100)
!143 = !DILocation(line: 463, column: 11, scope: !100)
!144 = !DILocation(line: 467, column: 15, scope: !100)
!145 = !DILocation(line: 467, column: 29, scope: !100)
!146 = !DILocation(line: 469, column: 49, scope: !100)
!147 = !DILocation(line: 469, column: 68, scope: !100)
!148 = !DILocation(line: 469, column: 17, scope: !100)
!149 = !DILocation(line: 469, column: 83, scope: !100)
!150 = !DILocation(line: 471, column: 15, scope: !100)
!151 = !DILocation(line: 473, column: 11, scope: !100)
!152 = !DILocation(line: 477, column: 27, scope: !100)
!153 = !DILocation(line: 477, column: 25, scope: !100)
!154 = !DILocation(line: 480, column: 31, scope: !100)
!155 = !DILocation(line: 480, column: 18, scope: !100)
!156 = !DILocation(line: 480, column: 16, scope: !100)
!157 = !DILocation(line: 481, column: 13, scope: !100)
!158 = !DILocation(line: 481, column: 20, scope: !100)
!159 = !DILocation(line: 483, column: 18, scope: !100)
!160 = !DILocation(line: 483, column: 11, scope: !100)
!161 = !DILocation(line: 486, column: 5, scope: !100)
!162 = !DILocation(line: 490, column: 11, scope: !100)
!163 = !DILocation(line: 490, column: 30, scope: !100)
!164 = !DILocation(line: 490, column: 39, scope: !100)
!165 = !DILocation(line: 493, column: 9, scope: !100)
!166 = !DILocation(line: 496, column: 21, scope: !100)
!167 = !DILocation(line: 496, column: 19, scope: !100)
!168 = !DILocation(line: 499, column: 9, scope: !100)
!169 = !DILocation(line: 499, column: 16, scope: !100)
!170 = !DILocation(line: 499, column: 49, scope: !100)
!171 = !DILocation(line: 501, column: 16, scope: !100)
!172 = !DILocation(line: 501, column: 32, scope: !100)
!173 = !DILocation(line: 501, column: 30, scope: !100)
!174 = !DILocation(line: 501, column: 43, scope: !100)
!175 = !DILocation(line: 501, column: 15, scope: !100)
!176 = !DILocation(line: 503, column: 13, scope: !100)
!177 = distinct !{!177, !168, !178}
!178 = !DILocation(line: 505, column: 9, scope: !100)
!179 = !DILocation(line: 507, column: 9, scope: !100)
!180 = !DILocation(line: 509, column: 9, scope: !100)
!181 = !DILocation(line: 511, column: 7, scope: !100)
!182 = !DILocation(line: 515, column: 9, scope: !100)
!183 = !DILocation(line: 518, column: 21, scope: !100)
!184 = !DILocation(line: 518, column: 19, scope: !100)
!185 = !DILocation(line: 521, column: 9, scope: !100)
!186 = !DILocation(line: 521, column: 16, scope: !100)
!187 = !DILocation(line: 521, column: 49, scope: !100)
!188 = !DILocation(line: 523, column: 16, scope: !100)
!189 = !DILocation(line: 523, column: 32, scope: !100)
!190 = !DILocation(line: 523, column: 30, scope: !100)
!191 = !DILocation(line: 523, column: 43, scope: !100)
!192 = !DILocation(line: 523, column: 15, scope: !100)
!193 = !DILocation(line: 525, column: 13, scope: !100)
!194 = distinct !{!194, !185, !195}
!195 = !DILocation(line: 527, column: 9, scope: !100)
!196 = !DILocation(line: 530, column: 3, scope: !100)
!197 = !DILocation(line: 532, column: 9, scope: !100)
!198 = !DILocation(line: 532, column: 28, scope: !100)
!199 = !DILocation(line: 532, column: 44, scope: !100)
!200 = !DILocation(line: 532, column: 70, scope: !100)
!201 = !DILocation(line: 532, column: 7, scope: !100)
!202 = !DILocation(line: 538, column: 10, scope: !100)
!203 = !DILocation(line: 538, column: 24, scope: !100)
!204 = !DILocation(line: 538, column: 56, scope: !100)
!205 = !DILocation(line: 539, column: 11, scope: !100)
!206 = !DILocation(line: 539, column: 25, scope: !100)
!207 = !DILocation(line: 539, column: 60, scope: !100)
!208 = !DILocation(line: 539, column: 64, scope: !100)
!209 = !DILocation(line: 539, column: 75, scope: !100)
!210 = !DILocation(line: 538, column: 9, scope: !100)
!211 = !DILocation(line: 541, column: 12, scope: !100)
!212 = !DILocation(line: 541, column: 45, scope: !100)
!213 = !DILocation(line: 541, column: 52, scope: !100)
!214 = !DILocation(line: 541, column: 56, scope: !100)
!215 = !DILocation(line: 541, column: 75, scope: !100)
!216 = !DILocation(line: 541, column: 84, scope: !100)
!217 = !DILocation(line: 541, column: 11, scope: !100)
!218 = !DILocation(line: 543, column: 9, scope: !100)
!219 = !DILocation(line: 545, column: 5, scope: !100)
!220 = !DILocation(line: 549, column: 7, scope: !100)
!221 = !DILocation(line: 552, column: 11, scope: !100)
!222 = !DILocation(line: 552, column: 30, scope: !100)
!223 = !DILocation(line: 552, column: 39, scope: !100)
!224 = !DILocation(line: 555, column: 21, scope: !100)
!225 = !DILocation(line: 555, column: 19, scope: !100)
!226 = !DILocation(line: 558, column: 9, scope: !100)
!227 = !DILocation(line: 558, column: 16, scope: !100)
!228 = !DILocation(line: 558, column: 49, scope: !100)
!229 = !DILocation(line: 560, column: 16, scope: !100)
!230 = !DILocation(line: 560, column: 32, scope: !100)
!231 = !DILocation(line: 560, column: 30, scope: !100)
!232 = !DILocation(line: 560, column: 43, scope: !100)
!233 = !DILocation(line: 560, column: 15, scope: !100)
!234 = !DILocation(line: 562, column: 13, scope: !100)
!235 = distinct !{!235, !226, !236}
!236 = !DILocation(line: 564, column: 9, scope: !100)
!237 = !DILocation(line: 565, column: 7, scope: !100)
!238 = !DILocation(line: 569, column: 21, scope: !100)
!239 = !DILocation(line: 569, column: 19, scope: !100)
!240 = !DILocation(line: 572, column: 9, scope: !100)
!241 = !DILocation(line: 572, column: 16, scope: !100)
!242 = !DILocation(line: 572, column: 49, scope: !100)
!243 = !DILocation(line: 574, column: 16, scope: !100)
!244 = !DILocation(line: 574, column: 32, scope: !100)
!245 = !DILocation(line: 574, column: 30, scope: !100)
!246 = !DILocation(line: 574, column: 43, scope: !100)
!247 = !DILocation(line: 574, column: 15, scope: !100)
!248 = !DILocation(line: 576, column: 13, scope: !100)
!249 = distinct !{!249, !240, !250}
!250 = !DILocation(line: 578, column: 9, scope: !100)
!251 = !DILocation(line: 581, column: 3, scope: !100)
!252 = !DILocation(line: 583, column: 9, scope: !100)
!253 = !DILocation(line: 583, column: 28, scope: !100)
!254 = !DILocation(line: 583, column: 44, scope: !100)
!255 = !DILocation(line: 583, column: 70, scope: !100)
!256 = !DILocation(line: 583, column: 7, scope: !100)
!257 = !DILocation(line: 590, column: 10, scope: !100)
!258 = !DILocation(line: 590, column: 24, scope: !100)
!259 = !DILocation(line: 590, column: 56, scope: !100)
!260 = !DILocation(line: 591, column: 11, scope: !100)
!261 = !DILocation(line: 591, column: 25, scope: !100)
!262 = !DILocation(line: 591, column: 60, scope: !100)
!263 = !DILocation(line: 591, column: 64, scope: !100)
!264 = !DILocation(line: 591, column: 75, scope: !100)
!265 = !DILocation(line: 590, column: 9, scope: !100)
!266 = !DILocation(line: 594, column: 12, scope: !100)
!267 = !DILocation(line: 594, column: 45, scope: !100)
!268 = !DILocation(line: 594, column: 52, scope: !100)
!269 = !DILocation(line: 594, column: 56, scope: !100)
!270 = !DILocation(line: 594, column: 75, scope: !100)
!271 = !DILocation(line: 594, column: 84, scope: !100)
!272 = !DILocation(line: 594, column: 11, scope: !100)
!273 = !DILocation(line: 596, column: 9, scope: !100)
!274 = !DILocation(line: 602, column: 9, scope: !100)
!275 = !DILocation(line: 604, column: 5, scope: !100)
!276 = !DILocation(line: 608, column: 11, scope: !100)
!277 = !DILocation(line: 608, column: 30, scope: !100)
!278 = !DILocation(line: 608, column: 39, scope: !100)
!279 = !DILocation(line: 611, column: 9, scope: !100)
!280 = !DILocation(line: 614, column: 21, scope: !100)
!281 = !DILocation(line: 614, column: 19, scope: !100)
!282 = !DILocation(line: 617, column: 9, scope: !100)
!283 = !DILocation(line: 617, column: 16, scope: !100)
!284 = !DILocation(line: 617, column: 49, scope: !100)
!285 = !DILocation(line: 619, column: 16, scope: !100)
!286 = !DILocation(line: 619, column: 32, scope: !100)
!287 = !DILocation(line: 619, column: 30, scope: !100)
!288 = !DILocation(line: 619, column: 43, scope: !100)
!289 = !DILocation(line: 619, column: 15, scope: !100)
!290 = !DILocation(line: 621, column: 13, scope: !100)
!291 = distinct !{!291, !282, !292}
!292 = !DILocation(line: 623, column: 9, scope: !100)
!293 = !DILocation(line: 626, column: 9, scope: !100)
!294 = !DILocation(line: 627, column: 7, scope: !100)
!295 = !DILocation(line: 631, column: 9, scope: !100)
!296 = !DILocation(line: 634, column: 21, scope: !100)
!297 = !DILocation(line: 634, column: 19, scope: !100)
!298 = !DILocation(line: 637, column: 9, scope: !100)
!299 = !DILocation(line: 637, column: 16, scope: !100)
!300 = !DILocation(line: 637, column: 49, scope: !100)
!301 = !DILocation(line: 639, column: 16, scope: !100)
!302 = !DILocation(line: 639, column: 32, scope: !100)
!303 = !DILocation(line: 639, column: 30, scope: !100)
!304 = !DILocation(line: 639, column: 43, scope: !100)
!305 = !DILocation(line: 639, column: 15, scope: !100)
!306 = !DILocation(line: 641, column: 13, scope: !100)
!307 = distinct !{!307, !298, !308}
!308 = !DILocation(line: 643, column: 9, scope: !100)
!309 = !DILocation(line: 646, column: 3, scope: !100)
!310 = !DILocation(line: 648, column: 9, scope: !100)
!311 = !DILocation(line: 648, column: 28, scope: !100)
!312 = !DILocation(line: 648, column: 44, scope: !100)
!313 = !DILocation(line: 648, column: 70, scope: !100)
!314 = !DILocation(line: 648, column: 7, scope: !100)
!315 = !DILocation(line: 654, column: 9, scope: !100)
!316 = !DILocation(line: 654, column: 28, scope: !100)
!317 = !DILocation(line: 654, column: 37, scope: !100)
!318 = !DILocation(line: 657, column: 11, scope: !100)
!319 = !DILocation(line: 657, column: 30, scope: !100)
!320 = !DILocation(line: 657, column: 37, scope: !100)
!321 = !DILocation(line: 659, column: 9, scope: !100)
!322 = !DILocation(line: 660, column: 7, scope: !100)
!323 = !DILocation(line: 663, column: 9, scope: !100)
!324 = !DILocation(line: 667, column: 7, scope: !100)
!325 = !DILocation(line: 670, column: 19, scope: !100)
!326 = !DILocation(line: 670, column: 17, scope: !100)
!327 = !DILocation(line: 673, column: 7, scope: !100)
!328 = !DILocation(line: 673, column: 14, scope: !100)
!329 = !DILocation(line: 673, column: 49, scope: !100)
!330 = !DILocation(line: 675, column: 14, scope: !100)
!331 = !DILocation(line: 675, column: 30, scope: !100)
!332 = !DILocation(line: 675, column: 28, scope: !100)
!333 = !DILocation(line: 675, column: 41, scope: !100)
!334 = !DILocation(line: 675, column: 13, scope: !100)
!335 = !DILocation(line: 677, column: 11, scope: !100)
!336 = distinct !{!336, !327, !337}
!337 = !DILocation(line: 679, column: 7, scope: !100)
!338 = !DILocation(line: 680, column: 5, scope: !100)
!339 = !DILocation(line: 684, column: 7, scope: !100)
!340 = !DILocation(line: 687, column: 19, scope: !100)
!341 = !DILocation(line: 687, column: 17, scope: !100)
!342 = !DILocation(line: 690, column: 7, scope: !100)
!343 = !DILocation(line: 690, column: 14, scope: !100)
!344 = !DILocation(line: 690, column: 49, scope: !100)
!345 = !DILocation(line: 692, column: 14, scope: !100)
!346 = !DILocation(line: 692, column: 30, scope: !100)
!347 = !DILocation(line: 692, column: 28, scope: !100)
!348 = !DILocation(line: 692, column: 41, scope: !100)
!349 = !DILocation(line: 692, column: 13, scope: !100)
!350 = !DILocation(line: 694, column: 11, scope: !100)
!351 = distinct !{!351, !342, !352}
!352 = !DILocation(line: 696, column: 7, scope: !100)
!353 = !DILocation(line: 698, column: 3, scope: !100)
!354 = !DILocation(line: 700, column: 9, scope: !100)
!355 = !DILocation(line: 700, column: 28, scope: !100)
!356 = !DILocation(line: 700, column: 44, scope: !100)
!357 = !DILocation(line: 700, column: 70, scope: !100)
!358 = !DILocation(line: 700, column: 7, scope: !100)
!359 = !DILocation(line: 702, column: 22, scope: !100)
!360 = !DILocation(line: 709, column: 9, scope: !100)
!361 = !DILocation(line: 711, column: 7, scope: !100)
!362 = !DILocation(line: 712, column: 21, scope: !100)
!363 = !DILocation(line: 713, column: 5, scope: !100)
!364 = !DILocation(line: 715, column: 9, scope: !100)
!365 = !DILocation(line: 718, column: 7, scope: !100)
!366 = !DILocation(line: 721, column: 19, scope: !100)
!367 = !DILocation(line: 721, column: 17, scope: !100)
!368 = !DILocation(line: 723, column: 7, scope: !100)
!369 = !DILocation(line: 723, column: 14, scope: !100)
!370 = !DILocation(line: 725, column: 14, scope: !100)
!371 = !DILocation(line: 725, column: 30, scope: !100)
!372 = !DILocation(line: 725, column: 28, scope: !100)
!373 = !DILocation(line: 725, column: 41, scope: !100)
!374 = !DILocation(line: 725, column: 13, scope: !100)
!375 = !DILocation(line: 727, column: 11, scope: !100)
!376 = distinct !{!376, !368, !377}
!377 = !DILocation(line: 729, column: 7, scope: !100)
!378 = !DILocation(line: 730, column: 5, scope: !100)
!379 = !DILocation(line: 733, column: 10, scope: !100)
!380 = !DILocation(line: 733, column: 29, scope: !100)
!381 = !DILocation(line: 733, column: 38, scope: !100)
!382 = !DILocation(line: 733, column: 56, scope: !100)
!383 = !DILocation(line: 733, column: 9, scope: !100)
!384 = !DILocation(line: 735, column: 12, scope: !100)
!385 = !DILocation(line: 735, column: 31, scope: !100)
!386 = !DILocation(line: 735, column: 40, scope: !100)
!387 = !DILocation(line: 735, column: 59, scope: !100)
!388 = !DILocation(line: 735, column: 11, scope: !100)
!389 = !DILocation(line: 738, column: 9, scope: !100)
!390 = !DILocation(line: 739, column: 9, scope: !100)
!391 = !DILocation(line: 740, column: 7, scope: !100)
!392 = !DILocation(line: 744, column: 9, scope: !100)
!393 = !DILocation(line: 746, column: 5, scope: !100)
!394 = !DILocation(line: 749, column: 7, scope: !100)
!395 = !DILocation(line: 750, column: 7, scope: !100)
!396 = !DILocation(line: 754, column: 9, scope: !100)
!397 = !DILocation(line: 754, column: 28, scope: !100)
!398 = !DILocation(line: 754, column: 37, scope: !100)
!399 = !DILocation(line: 757, column: 19, scope: !100)
!400 = !DILocation(line: 757, column: 17, scope: !100)
!401 = !DILocation(line: 760, column: 7, scope: !100)
!402 = !DILocation(line: 760, column: 14, scope: !100)
!403 = !DILocation(line: 760, column: 51, scope: !100)
!404 = !DILocation(line: 762, column: 14, scope: !100)
!405 = !DILocation(line: 762, column: 30, scope: !100)
!406 = !DILocation(line: 762, column: 28, scope: !100)
!407 = !DILocation(line: 762, column: 41, scope: !100)
!408 = !DILocation(line: 762, column: 13, scope: !100)
!409 = !DILocation(line: 764, column: 11, scope: !100)
!410 = distinct !{!410, !401, !411}
!411 = !DILocation(line: 766, column: 7, scope: !100)
!412 = !DILocation(line: 769, column: 12, scope: !100)
!413 = !DILocation(line: 769, column: 31, scope: !100)
!414 = !DILocation(line: 769, column: 40, scope: !100)
!415 = !DILocation(line: 769, column: 61, scope: !100)
!416 = !DILocation(line: 769, column: 11, scope: !100)
!417 = !DILocation(line: 771, column: 9, scope: !100)
!418 = !DILocation(line: 774, column: 9, scope: !100)
!419 = !DILocation(line: 774, column: 16, scope: !100)
!420 = !DILocation(line: 774, column: 56, scope: !100)
!421 = !DILocation(line: 776, column: 16, scope: !100)
!422 = !DILocation(line: 776, column: 32, scope: !100)
!423 = !DILocation(line: 776, column: 30, scope: !100)
!424 = !DILocation(line: 776, column: 43, scope: !100)
!425 = !DILocation(line: 776, column: 15, scope: !100)
!426 = !DILocation(line: 778, column: 13, scope: !100)
!427 = distinct !{!427, !418, !428}
!428 = !DILocation(line: 780, column: 9, scope: !100)
!429 = !DILocation(line: 781, column: 7, scope: !100)
!430 = !DILocation(line: 785, column: 9, scope: !100)
!431 = !DILocation(line: 788, column: 9, scope: !100)
!432 = !DILocation(line: 788, column: 16, scope: !100)
!433 = !DILocation(line: 788, column: 56, scope: !100)
!434 = !DILocation(line: 790, column: 16, scope: !100)
!435 = !DILocation(line: 790, column: 32, scope: !100)
!436 = !DILocation(line: 790, column: 30, scope: !100)
!437 = !DILocation(line: 790, column: 43, scope: !100)
!438 = !DILocation(line: 790, column: 15, scope: !100)
!439 = !DILocation(line: 792, column: 13, scope: !100)
!440 = distinct !{!440, !431, !441}
!441 = !DILocation(line: 794, column: 9, scope: !100)
!442 = !DILocation(line: 796, column: 5, scope: !100)
!443 = !DILocation(line: 800, column: 19, scope: !100)
!444 = !DILocation(line: 800, column: 17, scope: !100)
!445 = !DILocation(line: 803, column: 7, scope: !100)
!446 = !DILocation(line: 803, column: 14, scope: !100)
!447 = !DILocation(line: 803, column: 51, scope: !100)
!448 = !DILocation(line: 805, column: 14, scope: !100)
!449 = !DILocation(line: 805, column: 30, scope: !100)
!450 = !DILocation(line: 805, column: 28, scope: !100)
!451 = !DILocation(line: 805, column: 41, scope: !100)
!452 = !DILocation(line: 805, column: 13, scope: !100)
!453 = !DILocation(line: 807, column: 11, scope: !100)
!454 = distinct !{!454, !445, !455}
!455 = !DILocation(line: 809, column: 7, scope: !100)
!456 = !DILocation(line: 811, column: 11, scope: !100)
!457 = !DILocation(line: 811, column: 50, scope: !100)
!458 = !DILocation(line: 814, column: 9, scope: !100)
!459 = !DILocation(line: 817, column: 9, scope: !100)
!460 = !DILocation(line: 817, column: 16, scope: !100)
!461 = !DILocation(line: 817, column: 56, scope: !100)
!462 = !DILocation(line: 819, column: 16, scope: !100)
!463 = !DILocation(line: 819, column: 32, scope: !100)
!464 = !DILocation(line: 819, column: 30, scope: !100)
!465 = !DILocation(line: 819, column: 43, scope: !100)
!466 = !DILocation(line: 819, column: 15, scope: !100)
!467 = !DILocation(line: 821, column: 13, scope: !100)
!468 = distinct !{!468, !459, !469}
!469 = !DILocation(line: 823, column: 9, scope: !100)
!470 = !DILocation(line: 824, column: 7, scope: !100)
!471 = !DILocation(line: 828, column: 9, scope: !100)
!472 = !DILocation(line: 828, column: 23, scope: !100)
!473 = !DILocation(line: 830, column: 7, scope: !100)
!474 = !DILocation(line: 831, column: 5, scope: !100)
!475 = !DILocation(line: 832, column: 3, scope: !100)
!476 = !DILocation(line: 834, column: 9, scope: !100)
!477 = !DILocation(line: 834, column: 28, scope: !100)
!478 = !DILocation(line: 834, column: 44, scope: !100)
!479 = !DILocation(line: 834, column: 72, scope: !100)
!480 = !DILocation(line: 834, column: 7, scope: !100)
!481 = !DILocation(line: 840, column: 9, scope: !100)
!482 = !DILocation(line: 840, column: 28, scope: !100)
!483 = !DILocation(line: 840, column: 39, scope: !100)
!484 = !DILocation(line: 843, column: 7, scope: !100)
!485 = !DILocation(line: 846, column: 19, scope: !100)
!486 = !DILocation(line: 846, column: 17, scope: !100)
!487 = !DILocation(line: 849, column: 7, scope: !100)
!488 = !DILocation(line: 849, column: 14, scope: !100)
!489 = !DILocation(line: 849, column: 55, scope: !100)
!490 = !DILocation(line: 851, column: 14, scope: !100)
!491 = !DILocation(line: 851, column: 30, scope: !100)
!492 = !DILocation(line: 851, column: 28, scope: !100)
!493 = !DILocation(line: 851, column: 41, scope: !100)
!494 = !DILocation(line: 851, column: 13, scope: !100)
!495 = !DILocation(line: 853, column: 11, scope: !100)
!496 = distinct !{!496, !487, !497}
!497 = !DILocation(line: 855, column: 7, scope: !100)
!498 = !DILocation(line: 856, column: 5, scope: !100)
!499 = !DILocation(line: 860, column: 7, scope: !100)
!500 = !DILocation(line: 863, column: 19, scope: !100)
!501 = !DILocation(line: 863, column: 17, scope: !100)
!502 = !DILocation(line: 866, column: 7, scope: !100)
!503 = !DILocation(line: 866, column: 14, scope: !100)
!504 = !DILocation(line: 866, column: 55, scope: !100)
!505 = !DILocation(line: 868, column: 14, scope: !100)
!506 = !DILocation(line: 868, column: 30, scope: !100)
!507 = !DILocation(line: 868, column: 28, scope: !100)
!508 = !DILocation(line: 868, column: 41, scope: !100)
!509 = !DILocation(line: 868, column: 13, scope: !100)
!510 = !DILocation(line: 870, column: 11, scope: !100)
!511 = distinct !{!511, !502, !512}
!512 = !DILocation(line: 872, column: 7, scope: !100)
!513 = !DILocation(line: 874, column: 3, scope: !100)
!514 = !DILocation(line: 879, column: 7, scope: !100)
!515 = !DILocation(line: 879, column: 26, scope: !100)
!516 = !DILocation(line: 879, column: 30, scope: !100)
!517 = !DILocation(line: 879, column: 39, scope: !100)
!518 = !DILocation(line: 882, column: 9, scope: !100)
!519 = !DILocation(line: 882, column: 39, scope: !100)
!520 = !DILocation(line: 884, column: 11, scope: !100)
!521 = !DILocation(line: 884, column: 30, scope: !100)
!522 = !DILocation(line: 884, column: 34, scope: !100)
!523 = !DILocation(line: 884, column: 43, scope: !100)
!524 = !DILocation(line: 895, column: 9, scope: !100)
!525 = !DILocation(line: 898, column: 21, scope: !100)
!526 = !DILocation(line: 898, column: 19, scope: !100)
!527 = !DILocation(line: 901, column: 9, scope: !100)
!528 = !DILocation(line: 901, column: 16, scope: !100)
!529 = !DILocation(line: 901, column: 49, scope: !100)
!530 = !DILocation(line: 903, column: 16, scope: !100)
!531 = !DILocation(line: 903, column: 32, scope: !100)
!532 = !DILocation(line: 903, column: 30, scope: !100)
!533 = !DILocation(line: 903, column: 43, scope: !100)
!534 = !DILocation(line: 903, column: 15, scope: !100)
!535 = !DILocation(line: 905, column: 13, scope: !100)
!536 = distinct !{!536, !527, !537}
!537 = !DILocation(line: 907, column: 9, scope: !100)
!538 = !DILocation(line: 910, column: 9, scope: !100)
!539 = !DILocation(line: 918, column: 9, scope: !100)
!540 = !DILocation(line: 921, column: 9, scope: !100)
!541 = !DILocation(line: 924, column: 21, scope: !100)
!542 = !DILocation(line: 924, column: 19, scope: !100)
!543 = !DILocation(line: 927, column: 9, scope: !100)
!544 = !DILocation(line: 927, column: 16, scope: !100)
!545 = !DILocation(line: 927, column: 49, scope: !100)
!546 = !DILocation(line: 929, column: 16, scope: !100)
!547 = !DILocation(line: 929, column: 32, scope: !100)
!548 = !DILocation(line: 929, column: 30, scope: !100)
!549 = !DILocation(line: 929, column: 43, scope: !100)
!550 = !DILocation(line: 929, column: 15, scope: !100)
!551 = !DILocation(line: 931, column: 13, scope: !100)
!552 = distinct !{!552, !543, !553}
!553 = !DILocation(line: 933, column: 9, scope: !100)
!554 = !DILocation(line: 934, column: 7, scope: !100)
!555 = !DILocation(line: 938, column: 9, scope: !100)
!556 = !DILocation(line: 941, column: 13, scope: !100)
!557 = !DILocation(line: 941, column: 72, scope: !100)
!558 = !DILocation(line: 943, column: 11, scope: !100)
!559 = !DILocation(line: 944, column: 9, scope: !100)
!560 = !DILocation(line: 946, column: 9, scope: !100)
!561 = !DILocation(line: 949, column: 21, scope: !100)
!562 = !DILocation(line: 949, column: 19, scope: !100)
!563 = !DILocation(line: 952, column: 9, scope: !100)
!564 = !DILocation(line: 952, column: 16, scope: !100)
!565 = !DILocation(line: 952, column: 49, scope: !100)
!566 = !DILocation(line: 954, column: 16, scope: !100)
!567 = !DILocation(line: 954, column: 32, scope: !100)
!568 = !DILocation(line: 954, column: 30, scope: !100)
!569 = !DILocation(line: 954, column: 43, scope: !100)
!570 = !DILocation(line: 954, column: 15, scope: !100)
!571 = !DILocation(line: 956, column: 13, scope: !100)
!572 = distinct !{!572, !563, !573}
!573 = !DILocation(line: 958, column: 9, scope: !100)
!574 = !DILocation(line: 960, column: 5, scope: !100)
!575 = !DILocation(line: 964, column: 11, scope: !100)
!576 = !DILocation(line: 964, column: 30, scope: !100)
!577 = !DILocation(line: 964, column: 34, scope: !100)
!578 = !DILocation(line: 964, column: 43, scope: !100)
!579 = !DILocation(line: 966, column: 9, scope: !100)
!580 = !DILocation(line: 970, column: 27, scope: !100)
!581 = !DILocation(line: 970, column: 20, scope: !100)
!582 = !DILocation(line: 972, column: 14, scope: !100)
!583 = !DILocation(line: 972, column: 59, scope: !100)
!584 = !DILocation(line: 972, column: 78, scope: !100)
!585 = !DILocation(line: 972, column: 82, scope: !100)
!586 = !DILocation(line: 972, column: 56, scope: !100)
!587 = !DILocation(line: 972, column: 93, scope: !100)
!588 = !DILocation(line: 973, column: 14, scope: !100)
!589 = !DILocation(line: 973, column: 61, scope: !100)
!590 = !DILocation(line: 973, column: 80, scope: !100)
!591 = !DILocation(line: 973, column: 84, scope: !100)
!592 = !DILocation(line: 973, column: 89, scope: !100)
!593 = !DILocation(line: 973, column: 95, scope: !100)
!594 = !DILocation(line: 973, column: 56, scope: !100)
!595 = !DILocation(line: 973, column: 121, scope: !100)
!596 = !DILocation(line: 974, column: 14, scope: !100)
!597 = !DILocation(line: 974, column: 60, scope: !100)
!598 = !DILocation(line: 974, column: 79, scope: !100)
!599 = !DILocation(line: 974, column: 83, scope: !100)
!600 = !DILocation(line: 974, column: 88, scope: !100)
!601 = !DILocation(line: 974, column: 56, scope: !100)
!602 = !DILocation(line: 974, column: 114, scope: !100)
!603 = !DILocation(line: 975, column: 14, scope: !100)
!604 = !DILocation(line: 975, column: 60, scope: !100)
!605 = !DILocation(line: 975, column: 79, scope: !100)
!606 = !DILocation(line: 975, column: 83, scope: !100)
!607 = !DILocation(line: 975, column: 88, scope: !100)
!608 = !DILocation(line: 975, column: 56, scope: !100)
!609 = !DILocation(line: 975, column: 117, scope: !100)
!610 = !DILocation(line: 976, column: 14, scope: !100)
!611 = !DILocation(line: 976, column: 63, scope: !100)
!612 = !DILocation(line: 976, column: 82, scope: !100)
!613 = !DILocation(line: 976, column: 86, scope: !100)
!614 = !DILocation(line: 976, column: 92, scope: !100)
!615 = !DILocation(line: 976, column: 99, scope: !100)
!616 = !DILocation(line: 976, column: 105, scope: !100)
!617 = !DILocation(line: 976, column: 56, scope: !100)
!618 = !DILocation(line: 976, column: 131, scope: !100)
!619 = !DILocation(line: 977, column: 14, scope: !100)
!620 = !DILocation(line: 977, column: 63, scope: !100)
!621 = !DILocation(line: 977, column: 82, scope: !100)
!622 = !DILocation(line: 977, column: 86, scope: !100)
!623 = !DILocation(line: 977, column: 92, scope: !100)
!624 = !DILocation(line: 977, column: 99, scope: !100)
!625 = !DILocation(line: 977, column: 105, scope: !100)
!626 = !DILocation(line: 977, column: 56, scope: !100)
!627 = !DILocation(line: 972, column: 13, scope: !100)
!628 = !DILocation(line: 979, column: 11, scope: !100)
!629 = !DILocation(line: 983, column: 3, scope: !100)
!630 = !DILocation(line: 985, column: 3, scope: !100)
!631 = !DILocation(line: 986, column: 1, scope: !100)
!632 = distinct !DISubprogram(name: "RCC_SetFlashLatencyFromMSIRange", scope: !1, file: !1, line: 1785, type: !9, scopeLine: 1786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!633 = !DILocation(line: 1787, column: 12, scope: !632)
!634 = !DILocation(line: 1790, column: 7, scope: !632)
!635 = !DILocation(line: 1792, column: 11, scope: !632)
!636 = !DILocation(line: 1792, column: 9, scope: !632)
!637 = !DILocation(line: 1793, column: 3, scope: !632)
!638 = !DILocation(line: 1796, column: 5, scope: !632)
!639 = !DILocation(line: 1797, column: 11, scope: !632)
!640 = !DILocation(line: 1797, column: 9, scope: !632)
!641 = !DILocation(line: 1798, column: 5, scope: !632)
!642 = !DILocation(line: 1801, column: 8, scope: !632)
!643 = !DILocation(line: 1801, column: 12, scope: !632)
!644 = !DILocation(line: 1801, column: 45, scope: !632)
!645 = !DILocation(line: 1801, column: 49, scope: !632)
!646 = !DILocation(line: 1801, column: 53, scope: !632)
!647 = !DILocation(line: 1801, column: 7, scope: !632)
!648 = !DILocation(line: 1803, column: 9, scope: !632)
!649 = !DILocation(line: 1803, column: 18, scope: !632)
!650 = !DILocation(line: 1806, column: 11, scope: !632)
!651 = !DILocation(line: 1806, column: 20, scope: !632)
!652 = !DILocation(line: 1809, column: 17, scope: !632)
!653 = !DILocation(line: 1810, column: 7, scope: !632)
!654 = !DILocation(line: 1814, column: 17, scope: !632)
!655 = !DILocation(line: 1816, column: 5, scope: !632)
!656 = !DILocation(line: 1818, column: 3, scope: !632)
!657 = !DILocation(line: 1821, column: 9, scope: !632)
!658 = !DILocation(line: 1821, column: 18, scope: !632)
!659 = !DILocation(line: 1824, column: 15, scope: !632)
!660 = !DILocation(line: 1825, column: 5, scope: !632)
!661 = !DILocation(line: 1828, column: 11, scope: !632)
!662 = !DILocation(line: 1828, column: 20, scope: !632)
!663 = !DILocation(line: 1831, column: 17, scope: !632)
!664 = !DILocation(line: 1832, column: 7, scope: !632)
!665 = !DILocation(line: 1833, column: 16, scope: !632)
!666 = !DILocation(line: 1833, column: 25, scope: !632)
!667 = !DILocation(line: 1836, column: 17, scope: !632)
!668 = !DILocation(line: 1837, column: 7, scope: !632)
!669 = !DILocation(line: 1845, column: 3, scope: !632)
!670 = !DILocation(line: 1849, column: 15, scope: !632)
!671 = !DILocation(line: 1849, column: 19, scope: !632)
!672 = !DILocation(line: 1849, column: 43, scope: !632)
!673 = !DILocation(line: 1849, column: 40, scope: !632)
!674 = !DILocation(line: 1849, column: 7, scope: !632)
!675 = !DILocation(line: 1851, column: 5, scope: !632)
!676 = !DILocation(line: 1854, column: 3, scope: !632)
!677 = !DILocation(line: 1855, column: 1, scope: !632)
!678 = distinct !DISubprogram(name: "HAL_RCC_GetHCLKFreq", scope: !1, file: !1, line: 1410, type: !9, scopeLine: 1411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!679 = !DILocation(line: 1412, column: 11, scope: !678)
!680 = !DILocation(line: 1412, column: 60, scope: !678)
!681 = !DILocation(line: 1412, column: 65, scope: !678)
!682 = !DILocation(line: 1412, column: 82, scope: !678)
!683 = !DILocation(line: 1412, column: 40, scope: !678)
!684 = !DILocation(line: 1412, column: 37, scope: !678)
!685 = !DILocation(line: 1412, column: 3, scope: !678)
!686 = distinct !DISubprogram(name: "HAL_RCC_ClockConfig", scope: !1, file: !1, line: 1041, type: !9, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!687 = !DILocation(line: 1045, column: 12, scope: !686)
!688 = !DILocation(line: 1048, column: 7, scope: !686)
!689 = !DILocation(line: 1048, column: 25, scope: !686)
!690 = !DILocation(line: 1050, column: 5, scope: !686)
!691 = !DILocation(line: 1062, column: 7, scope: !686)
!692 = !DILocation(line: 1062, column: 18, scope: !686)
!693 = !DILocation(line: 1062, column: 16, scope: !686)
!694 = !DILocation(line: 1065, column: 5, scope: !686)
!695 = !DILocation(line: 1069, column: 9, scope: !686)
!696 = !DILocation(line: 1069, column: 38, scope: !686)
!697 = !DILocation(line: 1069, column: 35, scope: !686)
!698 = !DILocation(line: 1071, column: 7, scope: !686)
!699 = !DILocation(line: 1073, column: 3, scope: !686)
!700 = !DILocation(line: 1076, column: 9, scope: !686)
!701 = !DILocation(line: 1076, column: 28, scope: !686)
!702 = !DILocation(line: 1076, column: 39, scope: !686)
!703 = !DILocation(line: 1076, column: 63, scope: !686)
!704 = !DILocation(line: 1076, column: 7, scope: !686)
!705 = !DILocation(line: 1081, column: 9, scope: !686)
!706 = !DILocation(line: 1081, column: 28, scope: !686)
!707 = !DILocation(line: 1081, column: 41, scope: !686)
!708 = !DILocation(line: 1084, column: 11, scope: !686)
!709 = !DILocation(line: 1084, column: 44, scope: !686)
!710 = !DILocation(line: 1086, column: 9, scope: !686)
!711 = !DILocation(line: 1092, column: 17, scope: !686)
!712 = !DILocation(line: 1092, column: 15, scope: !686)
!713 = !DILocation(line: 1095, column: 11, scope: !686)
!714 = !DILocation(line: 1095, column: 19, scope: !686)
!715 = !DILocation(line: 1097, column: 13, scope: !686)
!716 = !DILocation(line: 1097, column: 48, scope: !686)
!717 = !DILocation(line: 1099, column: 11, scope: !686)
!718 = !DILocation(line: 1100, column: 16, scope: !686)
!719 = !DILocation(line: 1101, column: 9, scope: !686)
!720 = !DILocation(line: 1102, column: 21, scope: !686)
!721 = !DILocation(line: 1102, column: 40, scope: !686)
!722 = !DILocation(line: 1102, column: 51, scope: !686)
!723 = !DILocation(line: 1102, column: 73, scope: !686)
!724 = !DILocation(line: 1102, column: 96, scope: !686)
!725 = !DILocation(line: 1103, column: 19, scope: !686)
!726 = !DILocation(line: 1103, column: 38, scope: !686)
!727 = !DILocation(line: 1103, column: 52, scope: !686)
!728 = !DILocation(line: 1102, column: 18, scope: !686)
!729 = !DILocation(line: 1105, column: 11, scope: !686)
!730 = !DILocation(line: 1106, column: 16, scope: !686)
!731 = !DILocation(line: 1107, column: 9, scope: !686)
!732 = !DILocation(line: 1112, column: 7, scope: !686)
!733 = !DILocation(line: 1113, column: 5, scope: !686)
!734 = !DILocation(line: 1117, column: 11, scope: !686)
!735 = !DILocation(line: 1117, column: 30, scope: !686)
!736 = !DILocation(line: 1117, column: 43, scope: !686)
!737 = !DILocation(line: 1120, column: 13, scope: !686)
!738 = !DILocation(line: 1120, column: 46, scope: !686)
!739 = !DILocation(line: 1122, column: 11, scope: !686)
!740 = !DILocation(line: 1124, column: 7, scope: !686)
!741 = !DILocation(line: 1126, column: 16, scope: !686)
!742 = !DILocation(line: 1126, column: 35, scope: !686)
!743 = !DILocation(line: 1126, column: 48, scope: !686)
!744 = !DILocation(line: 1129, column: 13, scope: !686)
!745 = !DILocation(line: 1129, column: 46, scope: !686)
!746 = !DILocation(line: 1131, column: 11, scope: !686)
!747 = !DILocation(line: 1133, column: 7, scope: !686)
!748 = !DILocation(line: 1138, column: 13, scope: !686)
!749 = !DILocation(line: 1138, column: 46, scope: !686)
!750 = !DILocation(line: 1140, column: 11, scope: !686)
!751 = !DILocation(line: 1146, column: 17, scope: !686)
!752 = !DILocation(line: 1146, column: 15, scope: !686)
!753 = !DILocation(line: 1149, column: 11, scope: !686)
!754 = !DILocation(line: 1149, column: 19, scope: !686)
!755 = !DILocation(line: 1151, column: 9, scope: !686)
!756 = !DILocation(line: 1152, column: 14, scope: !686)
!757 = !DILocation(line: 1153, column: 7, scope: !686)
!758 = !DILocation(line: 1156, column: 5, scope: !686)
!759 = !DILocation(line: 1159, column: 17, scope: !686)
!760 = !DILocation(line: 1159, column: 15, scope: !686)
!761 = !DILocation(line: 1161, column: 5, scope: !686)
!762 = !DILocation(line: 1161, column: 12, scope: !686)
!763 = !DILocation(line: 1161, column: 46, scope: !686)
!764 = !DILocation(line: 1161, column: 65, scope: !686)
!765 = !DILocation(line: 1161, column: 78, scope: !686)
!766 = !DILocation(line: 1161, column: 42, scope: !686)
!767 = !DILocation(line: 1163, column: 12, scope: !686)
!768 = !DILocation(line: 1163, column: 28, scope: !686)
!769 = !DILocation(line: 1163, column: 26, scope: !686)
!770 = !DILocation(line: 1163, column: 39, scope: !686)
!771 = !DILocation(line: 1163, column: 11, scope: !686)
!772 = !DILocation(line: 1165, column: 9, scope: !686)
!773 = distinct !{!773, !761, !774}
!774 = !DILocation(line: 1167, column: 5, scope: !686)
!775 = !DILocation(line: 1168, column: 3, scope: !686)
!776 = !DILocation(line: 1171, column: 9, scope: !686)
!777 = !DILocation(line: 1171, column: 28, scope: !686)
!778 = !DILocation(line: 1171, column: 39, scope: !686)
!779 = !DILocation(line: 1171, column: 61, scope: !686)
!780 = !DILocation(line: 1171, column: 7, scope: !686)
!781 = !DILocation(line: 1174, column: 5, scope: !686)
!782 = !DILocation(line: 1175, column: 3, scope: !686)
!783 = !DILocation(line: 1179, column: 9, scope: !686)
!784 = !DILocation(line: 1179, column: 14, scope: !686)
!785 = !DILocation(line: 1181, column: 7, scope: !686)
!786 = !DILocation(line: 1182, column: 5, scope: !686)
!787 = !DILocation(line: 1186, column: 7, scope: !686)
!788 = !DILocation(line: 1186, column: 18, scope: !686)
!789 = !DILocation(line: 1186, column: 16, scope: !686)
!790 = !DILocation(line: 1189, column: 5, scope: !686)
!791 = !DILocation(line: 1193, column: 9, scope: !686)
!792 = !DILocation(line: 1193, column: 38, scope: !686)
!793 = !DILocation(line: 1193, column: 35, scope: !686)
!794 = !DILocation(line: 1195, column: 7, scope: !686)
!795 = !DILocation(line: 1197, column: 3, scope: !686)
!796 = !DILocation(line: 1200, column: 9, scope: !686)
!797 = !DILocation(line: 1200, column: 28, scope: !686)
!798 = !DILocation(line: 1200, column: 39, scope: !686)
!799 = !DILocation(line: 1200, column: 62, scope: !686)
!800 = !DILocation(line: 1200, column: 7, scope: !686)
!801 = !DILocation(line: 1203, column: 5, scope: !686)
!802 = !DILocation(line: 1204, column: 3, scope: !686)
!803 = !DILocation(line: 1207, column: 9, scope: !686)
!804 = !DILocation(line: 1207, column: 28, scope: !686)
!805 = !DILocation(line: 1207, column: 39, scope: !686)
!806 = !DILocation(line: 1207, column: 62, scope: !686)
!807 = !DILocation(line: 1207, column: 7, scope: !686)
!808 = !DILocation(line: 1210, column: 5, scope: !686)
!809 = !DILocation(line: 1211, column: 3, scope: !686)
!810 = !DILocation(line: 1214, column: 21, scope: !686)
!811 = !DILocation(line: 1214, column: 19, scope: !686)
!812 = !DILocation(line: 1217, column: 23, scope: !686)
!813 = !DILocation(line: 1217, column: 10, scope: !686)
!814 = !DILocation(line: 1217, column: 3, scope: !686)
!815 = !DILocation(line: 1218, column: 1, scope: !686)
!816 = distinct !DISubprogram(name: "RCC_GetSysClockFreqFromPLLSource", scope: !1, file: !1, line: 1861, type: !9, scopeLine: 1862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!817 = !DILocation(line: 1863, column: 12, scope: !816)
!818 = !DILocation(line: 1866, column: 7, scope: !816)
!819 = !DILocation(line: 1866, column: 37, scope: !816)
!820 = !DILocation(line: 1869, column: 9, scope: !816)
!821 = !DILocation(line: 1869, column: 44, scope: !816)
!822 = !DILocation(line: 1872, column: 18, scope: !816)
!823 = !DILocation(line: 1872, column: 56, scope: !816)
!824 = !DILocation(line: 1872, column: 16, scope: !816)
!825 = !DILocation(line: 1873, column: 5, scope: !816)
!826 = !DILocation(line: 1877, column: 18, scope: !816)
!827 = !DILocation(line: 1877, column: 53, scope: !816)
!828 = !DILocation(line: 1877, column: 16, scope: !816)
!829 = !DILocation(line: 1880, column: 30, scope: !816)
!830 = !DILocation(line: 1880, column: 16, scope: !816)
!831 = !DILocation(line: 1880, column: 14, scope: !816)
!832 = !DILocation(line: 1881, column: 3, scope: !816)
!833 = !DILocation(line: 1886, column: 15, scope: !816)
!834 = !DILocation(line: 1886, column: 13, scope: !816)
!835 = !DILocation(line: 1887, column: 11, scope: !816)
!836 = !DILocation(line: 1887, column: 52, scope: !816)
!837 = !DILocation(line: 1887, column: 77, scope: !816)
!838 = !DILocation(line: 1887, column: 8, scope: !816)
!839 = !DILocation(line: 1889, column: 11, scope: !816)
!840 = !DILocation(line: 1889, column: 3, scope: !816)
!841 = !DILocation(line: 1892, column: 29, scope: !816)
!842 = !DILocation(line: 1892, column: 27, scope: !816)
!843 = !DILocation(line: 1892, column: 38, scope: !816)
!844 = !DILocation(line: 1892, column: 79, scope: !816)
!845 = !DILocation(line: 1892, column: 35, scope: !816)
!846 = !DILocation(line: 1892, column: 14, scope: !816)
!847 = !DILocation(line: 1893, column: 7, scope: !816)
!848 = !DILocation(line: 1896, column: 29, scope: !816)
!849 = !DILocation(line: 1896, column: 27, scope: !816)
!850 = !DILocation(line: 1896, column: 38, scope: !816)
!851 = !DILocation(line: 1896, column: 79, scope: !816)
!852 = !DILocation(line: 1896, column: 35, scope: !816)
!853 = !DILocation(line: 1896, column: 14, scope: !816)
!854 = !DILocation(line: 1897, column: 7, scope: !816)
!855 = !DILocation(line: 1901, column: 17, scope: !816)
!856 = !DILocation(line: 1901, column: 28, scope: !816)
!857 = !DILocation(line: 1901, column: 26, scope: !816)
!858 = !DILocation(line: 1901, column: 37, scope: !816)
!859 = !DILocation(line: 1901, column: 78, scope: !816)
!860 = !DILocation(line: 1901, column: 34, scope: !816)
!861 = !DILocation(line: 1901, column: 14, scope: !816)
!862 = !DILocation(line: 1902, column: 7, scope: !816)
!863 = !DILocation(line: 1905, column: 12, scope: !816)
!864 = !DILocation(line: 1905, column: 53, scope: !816)
!865 = !DILocation(line: 1905, column: 78, scope: !816)
!866 = !DILocation(line: 1905, column: 84, scope: !816)
!867 = !DILocation(line: 1905, column: 8, scope: !816)
!868 = !DILocation(line: 1906, column: 18, scope: !816)
!869 = !DILocation(line: 1906, column: 27, scope: !816)
!870 = !DILocation(line: 1906, column: 25, scope: !816)
!871 = !DILocation(line: 1906, column: 16, scope: !816)
!872 = !DILocation(line: 1908, column: 10, scope: !816)
!873 = !DILocation(line: 1908, column: 3, scope: !816)
!874 = distinct !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !1, file: !1, line: 1323, type: !9, scopeLine: 1324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!875 = !DILocation(line: 1325, column: 12, scope: !874)
!876 = !DILocation(line: 1325, column: 27, scope: !874)
!877 = !DILocation(line: 1329, column: 19, scope: !874)
!878 = !DILocation(line: 1329, column: 17, scope: !874)
!879 = !DILocation(line: 1330, column: 19, scope: !874)
!880 = !DILocation(line: 1330, column: 17, scope: !874)
!881 = !DILocation(line: 1332, column: 8, scope: !874)
!882 = !DILocation(line: 1332, column: 22, scope: !874)
!883 = !DILocation(line: 1332, column: 54, scope: !874)
!884 = !DILocation(line: 1333, column: 9, scope: !874)
!885 = !DILocation(line: 1333, column: 23, scope: !874)
!886 = !DILocation(line: 1333, column: 58, scope: !874)
!887 = !DILocation(line: 1333, column: 62, scope: !874)
!888 = !DILocation(line: 1333, column: 76, scope: !874)
!889 = !DILocation(line: 1332, column: 7, scope: !874)
!890 = !DILocation(line: 1338, column: 9, scope: !874)
!891 = !DILocation(line: 1338, column: 44, scope: !874)
!892 = !DILocation(line: 1341, column: 18, scope: !874)
!893 = !DILocation(line: 1341, column: 56, scope: !874)
!894 = !DILocation(line: 1341, column: 16, scope: !874)
!895 = !DILocation(line: 1342, column: 5, scope: !874)
!896 = !DILocation(line: 1346, column: 18, scope: !874)
!897 = !DILocation(line: 1346, column: 53, scope: !874)
!898 = !DILocation(line: 1346, column: 16, scope: !874)
!899 = !DILocation(line: 1349, column: 30, scope: !874)
!900 = !DILocation(line: 1349, column: 16, scope: !874)
!901 = !DILocation(line: 1349, column: 14, scope: !874)
!902 = !DILocation(line: 1351, column: 9, scope: !874)
!903 = !DILocation(line: 1351, column: 23, scope: !874)
!904 = !DILocation(line: 1354, column: 22, scope: !874)
!905 = !DILocation(line: 1354, column: 20, scope: !874)
!906 = !DILocation(line: 1355, column: 5, scope: !874)
!907 = !DILocation(line: 1356, column: 3, scope: !874)
!908 = !DILocation(line: 1357, column: 12, scope: !874)
!909 = !DILocation(line: 1357, column: 26, scope: !874)
!910 = !DILocation(line: 1360, column: 18, scope: !874)
!911 = !DILocation(line: 1361, column: 3, scope: !874)
!912 = !DILocation(line: 1362, column: 12, scope: !874)
!913 = !DILocation(line: 1362, column: 26, scope: !874)
!914 = !DILocation(line: 1365, column: 18, scope: !874)
!915 = !DILocation(line: 1366, column: 3, scope: !874)
!916 = !DILocation(line: 1372, column: 7, scope: !874)
!917 = !DILocation(line: 1372, column: 21, scope: !874)
!918 = !DILocation(line: 1379, column: 23, scope: !874)
!919 = !DILocation(line: 1379, column: 31, scope: !874)
!920 = !DILocation(line: 1379, column: 15, scope: !874)
!921 = !DILocation(line: 1380, column: 19, scope: !874)
!922 = !DILocation(line: 1380, column: 27, scope: !874)
!923 = !DILocation(line: 1380, column: 47, scope: !874)
!924 = !DILocation(line: 1380, column: 72, scope: !874)
!925 = !DILocation(line: 1380, column: 10, scope: !874)
!926 = !DILocation(line: 1382, column: 13, scope: !874)
!927 = !DILocation(line: 1382, column: 5, scope: !874)
!928 = !DILocation(line: 1385, column: 31, scope: !874)
!929 = !DILocation(line: 1385, column: 29, scope: !874)
!930 = !DILocation(line: 1385, column: 46, scope: !874)
!931 = !DILocation(line: 1385, column: 54, scope: !874)
!932 = !DILocation(line: 1385, column: 74, scope: !874)
!933 = !DILocation(line: 1385, column: 37, scope: !874)
!934 = !DILocation(line: 1385, column: 16, scope: !874)
!935 = !DILocation(line: 1386, column: 9, scope: !874)
!936 = !DILocation(line: 1389, column: 31, scope: !874)
!937 = !DILocation(line: 1389, column: 29, scope: !874)
!938 = !DILocation(line: 1389, column: 46, scope: !874)
!939 = !DILocation(line: 1389, column: 54, scope: !874)
!940 = !DILocation(line: 1389, column: 74, scope: !874)
!941 = !DILocation(line: 1389, column: 37, scope: !874)
!942 = !DILocation(line: 1389, column: 16, scope: !874)
!943 = !DILocation(line: 1390, column: 9, scope: !874)
!944 = !DILocation(line: 1394, column: 19, scope: !874)
!945 = !DILocation(line: 1394, column: 30, scope: !874)
!946 = !DILocation(line: 1394, column: 28, scope: !874)
!947 = !DILocation(line: 1394, column: 45, scope: !874)
!948 = !DILocation(line: 1394, column: 53, scope: !874)
!949 = !DILocation(line: 1394, column: 73, scope: !874)
!950 = !DILocation(line: 1394, column: 36, scope: !874)
!951 = !DILocation(line: 1394, column: 16, scope: !874)
!952 = !DILocation(line: 1395, column: 9, scope: !874)
!953 = !DILocation(line: 1397, column: 20, scope: !874)
!954 = !DILocation(line: 1397, column: 28, scope: !874)
!955 = !DILocation(line: 1397, column: 48, scope: !874)
!956 = !DILocation(line: 1397, column: 73, scope: !874)
!957 = !DILocation(line: 1397, column: 79, scope: !874)
!958 = !DILocation(line: 1397, column: 10, scope: !874)
!959 = !DILocation(line: 1398, column: 20, scope: !874)
!960 = !DILocation(line: 1398, column: 29, scope: !874)
!961 = !DILocation(line: 1398, column: 27, scope: !874)
!962 = !DILocation(line: 1398, column: 18, scope: !874)
!963 = !DILocation(line: 1399, column: 3, scope: !874)
!964 = !DILocation(line: 1401, column: 10, scope: !874)
!965 = !DILocation(line: 1401, column: 3, scope: !874)
!966 = distinct !DISubprogram(name: "HAL_RCC_MCOConfig", scope: !1, file: !1, line: 1268, type: !9, scopeLine: 1269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!967 = !DILocation(line: 1277, column: 3, scope: !966)
!968 = !DILocation(line: 1280, column: 19, scope: !966)
!969 = !DILocation(line: 1280, column: 23, scope: !966)
!970 = !DILocation(line: 1281, column: 19, scope: !966)
!971 = !DILocation(line: 1281, column: 24, scope: !966)
!972 = !DILocation(line: 1282, column: 19, scope: !966)
!973 = !DILocation(line: 1282, column: 25, scope: !966)
!974 = !DILocation(line: 1283, column: 19, scope: !966)
!975 = !DILocation(line: 1283, column: 24, scope: !966)
!976 = !DILocation(line: 1284, column: 19, scope: !966)
!977 = !DILocation(line: 1284, column: 29, scope: !966)
!978 = !DILocation(line: 1285, column: 3, scope: !966)
!979 = !DILocation(line: 1288, column: 3, scope: !966)
!980 = !DILocation(line: 1289, column: 1, scope: !966)
!981 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK1Freq", scope: !1, file: !1, line: 1421, type: !9, scopeLine: 1422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!982 = !DILocation(line: 1424, column: 11, scope: !981)
!983 = !DILocation(line: 1424, column: 56, scope: !981)
!984 = !DILocation(line: 1424, column: 61, scope: !981)
!985 = !DILocation(line: 1424, column: 79, scope: !981)
!986 = !DILocation(line: 1424, column: 36, scope: !981)
!987 = !DILocation(line: 1424, column: 33, scope: !981)
!988 = !DILocation(line: 1424, column: 3, scope: !981)
!989 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK2Freq", scope: !1, file: !1, line: 1433, type: !9, scopeLine: 1434, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!990 = !DILocation(line: 1436, column: 11, scope: !989)
!991 = !DILocation(line: 1436, column: 56, scope: !989)
!992 = !DILocation(line: 1436, column: 61, scope: !989)
!993 = !DILocation(line: 1436, column: 79, scope: !989)
!994 = !DILocation(line: 1436, column: 36, scope: !989)
!995 = !DILocation(line: 1436, column: 33, scope: !989)
!996 = !DILocation(line: 1436, column: 3, scope: !989)
!997 = distinct !DISubprogram(name: "HAL_RCC_GetOscConfig", scope: !1, file: !1, line: 1446, type: !9, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!998 = !DILocation(line: 1452, column: 3, scope: !997)
!999 = !DILocation(line: 1452, column: 22, scope: !997)
!1000 = !DILocation(line: 1452, column: 37, scope: !997)
!1001 = !DILocation(line: 1456, column: 13, scope: !997)
!1002 = !DILocation(line: 1456, column: 16, scope: !997)
!1003 = !DILocation(line: 1456, column: 33, scope: !997)
!1004 = !DILocation(line: 1456, column: 7, scope: !997)
!1005 = !DILocation(line: 1458, column: 5, scope: !997)
!1006 = !DILocation(line: 1458, column: 24, scope: !997)
!1007 = !DILocation(line: 1458, column: 33, scope: !997)
!1008 = !DILocation(line: 1459, column: 3, scope: !997)
!1009 = !DILocation(line: 1460, column: 18, scope: !997)
!1010 = !DILocation(line: 1460, column: 21, scope: !997)
!1011 = !DILocation(line: 1460, column: 37, scope: !997)
!1012 = !DILocation(line: 1460, column: 12, scope: !997)
!1013 = !DILocation(line: 1462, column: 5, scope: !997)
!1014 = !DILocation(line: 1462, column: 24, scope: !997)
!1015 = !DILocation(line: 1462, column: 33, scope: !997)
!1016 = !DILocation(line: 1463, column: 3, scope: !997)
!1017 = !DILocation(line: 1466, column: 5, scope: !997)
!1018 = !DILocation(line: 1466, column: 24, scope: !997)
!1019 = !DILocation(line: 1466, column: 33, scope: !997)
!1020 = !DILocation(line: 1470, column: 13, scope: !997)
!1021 = !DILocation(line: 1470, column: 16, scope: !997)
!1022 = !DILocation(line: 1470, column: 32, scope: !997)
!1023 = !DILocation(line: 1470, column: 7, scope: !997)
!1024 = !DILocation(line: 1472, column: 5, scope: !997)
!1025 = !DILocation(line: 1472, column: 24, scope: !997)
!1026 = !DILocation(line: 1472, column: 33, scope: !997)
!1027 = !DILocation(line: 1473, column: 3, scope: !997)
!1028 = !DILocation(line: 1476, column: 5, scope: !997)
!1029 = !DILocation(line: 1476, column: 24, scope: !997)
!1030 = !DILocation(line: 1476, column: 33, scope: !997)
!1031 = !DILocation(line: 1479, column: 61, scope: !997)
!1032 = !DILocation(line: 1479, column: 67, scope: !997)
!1033 = !DILocation(line: 1479, column: 88, scope: !997)
!1034 = !DILocation(line: 1479, column: 3, scope: !997)
!1035 = !DILocation(line: 1479, column: 22, scope: !997)
!1036 = !DILocation(line: 1479, column: 42, scope: !997)
!1037 = !DILocation(line: 1480, column: 55, scope: !997)
!1038 = !DILocation(line: 1480, column: 58, scope: !997)
!1039 = !DILocation(line: 1480, column: 3, scope: !997)
!1040 = !DILocation(line: 1480, column: 22, scope: !997)
!1041 = !DILocation(line: 1480, column: 36, scope: !997)
!1042 = !DILocation(line: 1483, column: 13, scope: !997)
!1043 = !DILocation(line: 1483, column: 16, scope: !997)
!1044 = !DILocation(line: 1483, column: 32, scope: !997)
!1045 = !DILocation(line: 1483, column: 7, scope: !997)
!1046 = !DILocation(line: 1485, column: 5, scope: !997)
!1047 = !DILocation(line: 1485, column: 24, scope: !997)
!1048 = !DILocation(line: 1485, column: 33, scope: !997)
!1049 = !DILocation(line: 1486, column: 3, scope: !997)
!1050 = !DILocation(line: 1489, column: 5, scope: !997)
!1051 = !DILocation(line: 1489, column: 24, scope: !997)
!1052 = !DILocation(line: 1489, column: 33, scope: !997)
!1053 = !DILocation(line: 1492, column: 61, scope: !997)
!1054 = !DILocation(line: 1492, column: 67, scope: !997)
!1055 = !DILocation(line: 1492, column: 88, scope: !997)
!1056 = !DILocation(line: 1492, column: 3, scope: !997)
!1057 = !DILocation(line: 1492, column: 22, scope: !997)
!1058 = !DILocation(line: 1492, column: 42, scope: !997)
!1059 = !DILocation(line: 1495, column: 13, scope: !997)
!1060 = !DILocation(line: 1495, column: 18, scope: !997)
!1061 = !DILocation(line: 1495, column: 37, scope: !997)
!1062 = !DILocation(line: 1495, column: 7, scope: !997)
!1063 = !DILocation(line: 1497, column: 15, scope: !997)
!1064 = !DILocation(line: 1497, column: 20, scope: !997)
!1065 = !DILocation(line: 1497, column: 41, scope: !997)
!1066 = !DILocation(line: 1497, column: 9, scope: !997)
!1067 = !DILocation(line: 1499, column: 7, scope: !997)
!1068 = !DILocation(line: 1499, column: 26, scope: !997)
!1069 = !DILocation(line: 1499, column: 35, scope: !997)
!1070 = !DILocation(line: 1500, column: 5, scope: !997)
!1071 = !DILocation(line: 1503, column: 7, scope: !997)
!1072 = !DILocation(line: 1503, column: 26, scope: !997)
!1073 = !DILocation(line: 1503, column: 35, scope: !997)
!1074 = !DILocation(line: 1505, column: 3, scope: !997)
!1075 = !DILocation(line: 1506, column: 18, scope: !997)
!1076 = !DILocation(line: 1506, column: 23, scope: !997)
!1077 = !DILocation(line: 1506, column: 41, scope: !997)
!1078 = !DILocation(line: 1506, column: 12, scope: !997)
!1079 = !DILocation(line: 1508, column: 15, scope: !997)
!1080 = !DILocation(line: 1508, column: 20, scope: !997)
!1081 = !DILocation(line: 1508, column: 41, scope: !997)
!1082 = !DILocation(line: 1508, column: 9, scope: !997)
!1083 = !DILocation(line: 1510, column: 7, scope: !997)
!1084 = !DILocation(line: 1510, column: 26, scope: !997)
!1085 = !DILocation(line: 1510, column: 35, scope: !997)
!1086 = !DILocation(line: 1511, column: 5, scope: !997)
!1087 = !DILocation(line: 1514, column: 7, scope: !997)
!1088 = !DILocation(line: 1514, column: 26, scope: !997)
!1089 = !DILocation(line: 1514, column: 35, scope: !997)
!1090 = !DILocation(line: 1516, column: 3, scope: !997)
!1091 = !DILocation(line: 1519, column: 5, scope: !997)
!1092 = !DILocation(line: 1519, column: 24, scope: !997)
!1093 = !DILocation(line: 1519, column: 33, scope: !997)
!1094 = !DILocation(line: 1523, column: 13, scope: !997)
!1095 = !DILocation(line: 1523, column: 17, scope: !997)
!1096 = !DILocation(line: 1523, column: 34, scope: !997)
!1097 = !DILocation(line: 1523, column: 7, scope: !997)
!1098 = !DILocation(line: 1525, column: 5, scope: !997)
!1099 = !DILocation(line: 1525, column: 24, scope: !997)
!1100 = !DILocation(line: 1525, column: 33, scope: !997)
!1101 = !DILocation(line: 1526, column: 3, scope: !997)
!1102 = !DILocation(line: 1529, column: 5, scope: !997)
!1103 = !DILocation(line: 1529, column: 24, scope: !997)
!1104 = !DILocation(line: 1529, column: 33, scope: !997)
!1105 = !DILocation(line: 1532, column: 13, scope: !997)
!1106 = !DILocation(line: 1532, column: 17, scope: !997)
!1107 = !DILocation(line: 1532, column: 35, scope: !997)
!1108 = !DILocation(line: 1532, column: 7, scope: !997)
!1109 = !DILocation(line: 1534, column: 5, scope: !997)
!1110 = !DILocation(line: 1534, column: 24, scope: !997)
!1111 = !DILocation(line: 1534, column: 31, scope: !997)
!1112 = !DILocation(line: 1535, column: 3, scope: !997)
!1113 = !DILocation(line: 1538, column: 5, scope: !997)
!1114 = !DILocation(line: 1538, column: 24, scope: !997)
!1115 = !DILocation(line: 1538, column: 31, scope: !997)
!1116 = !DILocation(line: 1542, column: 13, scope: !997)
!1117 = !DILocation(line: 1542, column: 19, scope: !997)
!1118 = !DILocation(line: 1542, column: 40, scope: !997)
!1119 = !DILocation(line: 1542, column: 7, scope: !997)
!1120 = !DILocation(line: 1544, column: 5, scope: !997)
!1121 = !DILocation(line: 1544, column: 24, scope: !997)
!1122 = !DILocation(line: 1544, column: 35, scope: !997)
!1123 = !DILocation(line: 1545, column: 3, scope: !997)
!1124 = !DILocation(line: 1548, column: 5, scope: !997)
!1125 = !DILocation(line: 1548, column: 24, scope: !997)
!1126 = !DILocation(line: 1548, column: 35, scope: !997)
!1127 = !DILocation(line: 1552, column: 13, scope: !997)
!1128 = !DILocation(line: 1552, column: 16, scope: !997)
!1129 = !DILocation(line: 1552, column: 32, scope: !997)
!1130 = !DILocation(line: 1552, column: 7, scope: !997)
!1131 = !DILocation(line: 1554, column: 5, scope: !997)
!1132 = !DILocation(line: 1554, column: 24, scope: !997)
!1133 = !DILocation(line: 1554, column: 28, scope: !997)
!1134 = !DILocation(line: 1554, column: 37, scope: !997)
!1135 = !DILocation(line: 1555, column: 3, scope: !997)
!1136 = !DILocation(line: 1558, column: 5, scope: !997)
!1137 = !DILocation(line: 1558, column: 24, scope: !997)
!1138 = !DILocation(line: 1558, column: 28, scope: !997)
!1139 = !DILocation(line: 1558, column: 37, scope: !997)
!1140 = !DILocation(line: 1560, column: 54, scope: !997)
!1141 = !DILocation(line: 1560, column: 62, scope: !997)
!1142 = !DILocation(line: 1560, column: 3, scope: !997)
!1143 = !DILocation(line: 1560, column: 22, scope: !997)
!1144 = !DILocation(line: 1560, column: 26, scope: !997)
!1145 = !DILocation(line: 1560, column: 36, scope: !997)
!1146 = !DILocation(line: 1561, column: 51, scope: !997)
!1147 = !DILocation(line: 1561, column: 59, scope: !997)
!1148 = !DILocation(line: 1561, column: 79, scope: !997)
!1149 = !DILocation(line: 1561, column: 104, scope: !997)
!1150 = !DILocation(line: 1561, column: 3, scope: !997)
!1151 = !DILocation(line: 1561, column: 22, scope: !997)
!1152 = !DILocation(line: 1561, column: 26, scope: !997)
!1153 = !DILocation(line: 1561, column: 31, scope: !997)
!1154 = !DILocation(line: 1562, column: 50, scope: !997)
!1155 = !DILocation(line: 1562, column: 58, scope: !997)
!1156 = !DILocation(line: 1562, column: 78, scope: !997)
!1157 = !DILocation(line: 1562, column: 3, scope: !997)
!1158 = !DILocation(line: 1562, column: 22, scope: !997)
!1159 = !DILocation(line: 1562, column: 26, scope: !997)
!1160 = !DILocation(line: 1562, column: 31, scope: !997)
!1161 = !DILocation(line: 1563, column: 52, scope: !997)
!1162 = !DILocation(line: 1563, column: 60, scope: !997)
!1163 = !DILocation(line: 1563, column: 80, scope: !997)
!1164 = !DILocation(line: 1563, column: 105, scope: !997)
!1165 = !DILocation(line: 1563, column: 111, scope: !997)
!1166 = !DILocation(line: 1563, column: 3, scope: !997)
!1167 = !DILocation(line: 1563, column: 22, scope: !997)
!1168 = !DILocation(line: 1563, column: 26, scope: !997)
!1169 = !DILocation(line: 1563, column: 31, scope: !997)
!1170 = !DILocation(line: 1564, column: 52, scope: !997)
!1171 = !DILocation(line: 1564, column: 60, scope: !997)
!1172 = !DILocation(line: 1564, column: 80, scope: !997)
!1173 = !DILocation(line: 1564, column: 105, scope: !997)
!1174 = !DILocation(line: 1564, column: 111, scope: !997)
!1175 = !DILocation(line: 1564, column: 3, scope: !997)
!1176 = !DILocation(line: 1564, column: 22, scope: !997)
!1177 = !DILocation(line: 1564, column: 26, scope: !997)
!1178 = !DILocation(line: 1564, column: 31, scope: !997)
!1179 = !DILocation(line: 1565, column: 50, scope: !997)
!1180 = !DILocation(line: 1565, column: 58, scope: !997)
!1181 = !DILocation(line: 1565, column: 81, scope: !997)
!1182 = !DILocation(line: 1565, column: 3, scope: !997)
!1183 = !DILocation(line: 1565, column: 22, scope: !997)
!1184 = !DILocation(line: 1565, column: 26, scope: !997)
!1185 = !DILocation(line: 1565, column: 31, scope: !997)
!1186 = !DILocation(line: 1566, column: 1, scope: !997)
!1187 = distinct !DISubprogram(name: "HAL_RCC_GetClockConfig", scope: !1, file: !1, line: 1576, type: !9, scopeLine: 1577, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1188 = !DILocation(line: 1583, column: 3, scope: !1187)
!1189 = !DILocation(line: 1583, column: 22, scope: !1187)
!1190 = !DILocation(line: 1583, column: 32, scope: !1187)
!1191 = !DILocation(line: 1586, column: 53, scope: !1187)
!1192 = !DILocation(line: 1586, column: 58, scope: !1187)
!1193 = !DILocation(line: 1586, column: 3, scope: !1187)
!1194 = !DILocation(line: 1586, column: 22, scope: !1187)
!1195 = !DILocation(line: 1586, column: 35, scope: !1187)
!1196 = !DILocation(line: 1589, column: 54, scope: !1187)
!1197 = !DILocation(line: 1589, column: 59, scope: !1187)
!1198 = !DILocation(line: 1589, column: 3, scope: !1187)
!1199 = !DILocation(line: 1589, column: 22, scope: !1187)
!1200 = !DILocation(line: 1589, column: 36, scope: !1187)
!1201 = !DILocation(line: 1592, column: 55, scope: !1187)
!1202 = !DILocation(line: 1592, column: 60, scope: !1187)
!1203 = !DILocation(line: 1592, column: 3, scope: !1187)
!1204 = !DILocation(line: 1592, column: 22, scope: !1187)
!1205 = !DILocation(line: 1592, column: 37, scope: !1187)
!1206 = !DILocation(line: 1595, column: 56, scope: !1187)
!1207 = !DILocation(line: 1595, column: 61, scope: !1187)
!1208 = !DILocation(line: 1595, column: 79, scope: !1187)
!1209 = !DILocation(line: 1595, column: 3, scope: !1187)
!1210 = !DILocation(line: 1595, column: 22, scope: !1187)
!1211 = !DILocation(line: 1595, column: 37, scope: !1187)
!1212 = !DILocation(line: 1598, column: 34, scope: !1187)
!1213 = !DILocation(line: 1598, column: 38, scope: !1187)
!1214 = !DILocation(line: 1598, column: 4, scope: !1187)
!1215 = !DILocation(line: 1598, column: 14, scope: !1187)
!1216 = !DILocation(line: 1599, column: 1, scope: !1187)
!1217 = distinct !DISubprogram(name: "HAL_RCC_EnableCSS", scope: !1, file: !1, line: 1611, type: !9, scopeLine: 1612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1218 = !DILocation(line: 1613, column: 3, scope: !1217)
!1219 = !DILocation(line: 1614, column: 1, scope: !1217)
!1220 = distinct !DISubprogram(name: "HAL_RCC_NMI_IRQHandler", scope: !1, file: !1, line: 1621, type: !9, scopeLine: 1622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1221 = !DILocation(line: 1624, column: 7, scope: !1220)
!1222 = !DILocation(line: 1627, column: 5, scope: !1220)
!1223 = !DILocation(line: 1630, column: 5, scope: !1220)
!1224 = !DILocation(line: 1631, column: 3, scope: !1220)
!1225 = !DILocation(line: 1632, column: 1, scope: !1220)
!1226 = distinct !DISubprogram(name: "HAL_RCC_CSSCallback", scope: !1, file: !1, line: 1638, type: !9, scopeLine: 1639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1227 = !DILocation(line: 1643, column: 1, scope: !1226)
!1228 = distinct !DISubprogram(name: "HAL_RCC_ConfigAttributes", scope: !1, file: !1, line: 1677, type: !9, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1229 = !DILocation(line: 1684, column: 8, scope: !1228)
!1230 = !DILocation(line: 1684, column: 19, scope: !1228)
!1231 = !DILocation(line: 1684, column: 31, scope: !1228)
!1232 = !DILocation(line: 1684, column: 7, scope: !1228)
!1233 = !DILocation(line: 1686, column: 5, scope: !1228)
!1234 = !DILocation(line: 1687, column: 3, scope: !1228)
!1235 = !DILocation(line: 1688, column: 13, scope: !1228)
!1236 = !DILocation(line: 1688, column: 24, scope: !1228)
!1237 = !DILocation(line: 1688, column: 37, scope: !1228)
!1238 = !DILocation(line: 1688, column: 12, scope: !1228)
!1239 = !DILocation(line: 1690, column: 5, scope: !1228)
!1240 = !DILocation(line: 1691, column: 3, scope: !1228)
!1241 = !DILocation(line: 1714, column: 1, scope: !1228)
!1242 = distinct !DISubprogram(name: "HAL_RCC_GetConfigAttributes", scope: !1, file: !1, line: 1724, type: !9, scopeLine: 1725, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1243 = !DILocation(line: 1729, column: 7, scope: !1242)
!1244 = !DILocation(line: 1729, column: 19, scope: !1242)
!1245 = !DILocation(line: 1731, column: 5, scope: !1242)
!1246 = !DILocation(line: 1738, column: 7, scope: !1242)
!1247 = !DILocation(line: 1738, column: 38, scope: !1242)
!1248 = !DILocation(line: 1740, column: 16, scope: !1242)
!1249 = !DILocation(line: 1741, column: 3, scope: !1242)
!1250 = !DILocation(line: 1744, column: 16, scope: !1242)
!1251 = !DILocation(line: 1762, column: 18, scope: !1242)
!1252 = !DILocation(line: 1762, column: 4, scope: !1242)
!1253 = !DILocation(line: 1762, column: 16, scope: !1242)
!1254 = !DILocation(line: 1764, column: 3, scope: !1242)
!1255 = !DILocation(line: 1765, column: 1, scope: !1242)
