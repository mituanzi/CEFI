; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.PWR_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32 }
%struct.PWR_PVDTypeDef = type { i32, i32 }
%struct.EXTI_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], [4 x i32], i32, [3 x i32], i32, i32, [2 x i32], i32, i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, [92 x i32], i32, [15 x i32], i32, i32, i32, [1 x i32], i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_DeInit() #0 !dbg !8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !10
  %or = or i32 %0, 268435456, !dbg !10
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !10
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !11
  %and = and i32 %1, -268435457, !dbg !11
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !11
  ret void, !dbg !12
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnableBkUpAccess() #0 !dbg !13 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !14
  %or = or i32 %0, 256, !dbg !14
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !14
  ret void, !dbg !15
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_DisableBkUpAccess() #0 !dbg !16 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !17
  %and = and i32 %0, -257, !dbg !17
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWR_ConfigPVD(%struct.PWR_PVDTypeDef* %sConfigPVD) #0 !dbg !19 {
entry:
  %sConfigPVD.addr = alloca %struct.PWR_PVDTypeDef*, align 4
  store %struct.PWR_PVDTypeDef* %sConfigPVD, %struct.PWR_PVDTypeDef** %sConfigPVD.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !20
  %and = and i32 %0, -15, !dbg !20
  %1 = load %struct.PWR_PVDTypeDef*, %struct.PWR_PVDTypeDef** %sConfigPVD.addr, align 4, !dbg !20
  %PVDLevel = getelementptr inbounds %struct.PWR_PVDTypeDef, %struct.PWR_PVDTypeDef* %1, i32 0, i32 0, !dbg !20
  %2 = load i32, i32* %PVDLevel, align 4, !dbg !20
  %or = or i32 %and, %2, !dbg !20
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !20
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !21
  %and1 = and i32 %3, -65537, !dbg !21
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !21
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !22
  %and2 = and i32 %4, -65537, !dbg !22
  store volatile i32 %and2, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !22
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !23
  %and3 = and i32 %5, -65537, !dbg !23
  store volatile i32 %and3, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !23
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !24
  %and4 = and i32 %6, -65537, !dbg !24
  store volatile i32 %and4, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !24
  %7 = load %struct.PWR_PVDTypeDef*, %struct.PWR_PVDTypeDef** %sConfigPVD.addr, align 4, !dbg !25
  %Mode = getelementptr inbounds %struct.PWR_PVDTypeDef, %struct.PWR_PVDTypeDef* %7, i32 0, i32 1, !dbg !26
  %8 = load i32, i32* %Mode, align 4, !dbg !26
  %and5 = and i32 %8, 65536, !dbg !27
  %cmp = icmp eq i32 %and5, 65536, !dbg !28
  br i1 %cmp, label %if.then, label %if.end, !dbg !29

if.then:                                          ; preds = %entry
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !30
  %or6 = or i32 %9, 65536, !dbg !30
  store volatile i32 %or6, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !30
  br label %if.end, !dbg !31

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.PWR_PVDTypeDef*, %struct.PWR_PVDTypeDef** %sConfigPVD.addr, align 4, !dbg !32
  %Mode7 = getelementptr inbounds %struct.PWR_PVDTypeDef, %struct.PWR_PVDTypeDef* %10, i32 0, i32 1, !dbg !33
  %11 = load i32, i32* %Mode7, align 4, !dbg !33
  %and8 = and i32 %11, 131072, !dbg !34
  %cmp9 = icmp eq i32 %and8, 131072, !dbg !35
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !36

if.then10:                                        ; preds = %if.end
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !37
  %or11 = or i32 %12, 65536, !dbg !37
  store volatile i32 %or11, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !37
  br label %if.end12, !dbg !38

if.end12:                                         ; preds = %if.then10, %if.end
  %13 = load %struct.PWR_PVDTypeDef*, %struct.PWR_PVDTypeDef** %sConfigPVD.addr, align 4, !dbg !39
  %Mode13 = getelementptr inbounds %struct.PWR_PVDTypeDef, %struct.PWR_PVDTypeDef* %13, i32 0, i32 1, !dbg !40
  %14 = load i32, i32* %Mode13, align 4, !dbg !40
  %and14 = and i32 %14, 1, !dbg !41
  %cmp15 = icmp eq i32 %and14, 1, !dbg !42
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !43

if.then16:                                        ; preds = %if.end12
  %15 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !44
  %or17 = or i32 %15, 65536, !dbg !44
  store volatile i32 %or17, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !44
  br label %if.end18, !dbg !45

if.end18:                                         ; preds = %if.then16, %if.end12
  %16 = load %struct.PWR_PVDTypeDef*, %struct.PWR_PVDTypeDef** %sConfigPVD.addr, align 4, !dbg !46
  %Mode19 = getelementptr inbounds %struct.PWR_PVDTypeDef, %struct.PWR_PVDTypeDef* %16, i32 0, i32 1, !dbg !47
  %17 = load i32, i32* %Mode19, align 4, !dbg !47
  %and20 = and i32 %17, 2, !dbg !48
  %cmp21 = icmp eq i32 %and20, 2, !dbg !49
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !50

if.then22:                                        ; preds = %if.end18
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !51
  %or23 = or i32 %18, 65536, !dbg !51
  store volatile i32 %or23, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !51
  br label %if.end24, !dbg !52

if.end24:                                         ; preds = %if.then22, %if.end18
  ret i8 0, !dbg !53
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnablePVD() #0 !dbg !54 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !55
  %or = or i32 %0, 1, !dbg !55
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_DisablePVD() #0 !dbg !57 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !58
  %and = and i32 %0, -2, !dbg !58
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnableWakeUpPin(i32 %WakeUpPinPolarity) #0 !dbg !60 {
entry:
  %WakeUpPinPolarity.addr = alloca i32, align 4
  store i32 %WakeUpPinPolarity, i32* %WakeUpPinPolarity.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !61
  %1 = load i32, i32* %WakeUpPinPolarity.addr, align 4, !dbg !61
  %and = and i32 31, %1, !dbg !61
  %neg = xor i32 %and, -1, !dbg !61
  %and1 = and i32 %0, %neg, !dbg !61
  %2 = load i32, i32* %WakeUpPinPolarity.addr, align 4, !dbg !61
  %shr = lshr i32 %2, 5, !dbg !61
  %or = or i32 %and1, %shr, !dbg !61
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !61
  %3 = load i32, i32* %WakeUpPinPolarity.addr, align 4, !dbg !62
  %and2 = and i32 31, %3, !dbg !62
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !62
  %or3 = or i32 %4, %and2, !dbg !62
  store volatile i32 %or3, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_DisableWakeUpPin(i32 %WakeUpPinx) #0 !dbg !64 {
entry:
  %WakeUpPinx.addr = alloca i32, align 4
  store i32 %WakeUpPinx, i32* %WakeUpPinx.addr, align 4
  %0 = load i32, i32* %WakeUpPinx.addr, align 4, !dbg !65
  %and = and i32 31, %0, !dbg !65
  %neg = xor i32 %and, -1, !dbg !65
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !65
  %and1 = and i32 %1, %neg, !dbg !65
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnterSLEEPMode(i32 %Regulator, i8 zeroext %SLEEPEntry) #0 !dbg !67 {
entry:
  %Regulator.addr = alloca i32, align 4
  %SLEEPEntry.addr = alloca i8, align 1
  store i32 %Regulator, i32* %Regulator.addr, align 4
  store i8 %SLEEPEntry, i8* %SLEEPEntry.addr, align 1
  %0 = load i32, i32* %Regulator.addr, align 4, !dbg !68
  %cmp = icmp eq i32 %0, 0, !dbg !69
  br i1 %cmp, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 5), align 4, !dbg !70
  %and = and i32 %1, 512, !dbg !70
  %cmp1 = icmp eq i32 %and, 512, !dbg !70
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !70

if.then2:                                         ; preds = %if.then
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_DisableLowPowerRunMode(), !dbg !71
  %conv = zext i8 %call to i32, !dbg !71
  %cmp3 = icmp ne i32 %conv, 0, !dbg !72
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !71

if.then5:                                         ; preds = %if.then2
  br label %if.end21, !dbg !73

if.end:                                           ; preds = %if.then2
  br label %if.end6, !dbg !74

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end14, !dbg !75

if.else:                                          ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 5), align 4, !dbg !76
  %and7 = and i32 %2, 512, !dbg !76
  %cmp8 = icmp eq i32 %and7, 512, !dbg !76
  %conv9 = zext i1 %cmp8 to i32, !dbg !76
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !77
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !76

if.then12:                                        ; preds = %if.else
  call arm_aapcs_vfpcc void @HAL_PWREx_EnableLowPowerRunMode(), !dbg !78
  br label %if.end13, !dbg !79

if.end13:                                         ; preds = %if.then12, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end6
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !80
  %and15 = and i32 %3, -5, !dbg !80
  store volatile i32 %and15, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !80
  %4 = load i8, i8* %SLEEPEntry.addr, align 1, !dbg !81
  %conv16 = zext i8 %4 to i32, !dbg !81
  %cmp17 = icmp eq i32 %conv16, 1, !dbg !82
  br i1 %cmp17, label %if.then19, label %if.else20, !dbg !81

if.then19:                                        ; preds = %if.end14
  call void asm sideeffect "wfi", ""() #2, !dbg !83, !srcloc !84
  br label %if.end21, !dbg !85

if.else20:                                        ; preds = %if.end14
  call void asm sideeffect "sev", ""() #2, !dbg !86, !srcloc !87
  call void asm sideeffect "wfe", ""() #2, !dbg !88, !srcloc !89
  call void asm sideeffect "wfe", ""() #2, !dbg !90, !srcloc !91
  br label %if.end21

if.end21:                                         ; preds = %if.then5, %if.else20, %if.then19
  ret void, !dbg !92
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_DisableLowPowerRunMode() #1

declare dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableLowPowerRunMode() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnterSTOPMode(i32 %Regulator, i8 zeroext %STOPEntry) #0 !dbg !93 {
entry:
  %Regulator.addr = alloca i32, align 4
  %STOPEntry.addr = alloca i8, align 1
  store i32 %Regulator, i32* %Regulator.addr, align 4
  store i8 %STOPEntry, i8* %STOPEntry.addr, align 1
  %0 = load i32, i32* %Regulator.addr, align 4, !dbg !94
  %cmp = icmp eq i32 %0, 16384, !dbg !95
  br i1 %cmp, label %if.then, label %if.else, !dbg !94

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %STOPEntry.addr, align 1, !dbg !96
  call arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP1Mode(i8 zeroext %1), !dbg !97
  br label %if.end, !dbg !98

if.else:                                          ; preds = %entry
  %2 = load i8, i8* %STOPEntry.addr, align 1, !dbg !99
  call arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP0Mode(i8 zeroext %2), !dbg !100
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !101
}

declare dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP1Mode(i8 zeroext) #1

declare dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP0Mode(i8 zeroext) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnterSTANDBYMode() #0 !dbg !102 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !103
  %and = and i32 %0, -8, !dbg !103
  %or = or i32 %and, 3, !dbg !103
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !103
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !104
  %or1 = or i32 %1, 4, !dbg !104
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !104
  call void asm sideeffect "wfi", ""() #2, !dbg !105, !srcloc !106
  ret void, !dbg !107
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnableSleepOnExit() #0 !dbg !108 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !109
  %or = or i32 %0, 2, !dbg !109
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !109
  ret void, !dbg !110
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_DisableSleepOnExit() #0 !dbg !111 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !112
  %and = and i32 %0, -3, !dbg !112
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !112
  ret void, !dbg !113
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_EnableSEVOnPend() #0 !dbg !114 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !115
  %or = or i32 %0, 16, !dbg !115
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !115
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_DisableSEVOnPend() #0 !dbg !117 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !118
  %and = and i32 %0, -17, !dbg !118
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !118
  ret void, !dbg !119
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_PWR_PVDCallback() #0 !dbg !120 {
entry:
  ret void, !dbg !121
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWR_ConfigAttributes(i32 %Item, i32 %Attributes) #0 !dbg !122 {
entry:
  %Item.addr = alloca i32, align 4
  %Attributes.addr = alloca i32, align 4
  store i32 %Item, i32* %Item.addr, align 4
  store i32 %Attributes, i32* %Attributes.addr, align 4
  %0 = load i32, i32* %Attributes.addr, align 4, !dbg !123
  %and = and i32 %0, 514, !dbg !124
  %cmp = icmp eq i32 %and, 514, !dbg !125
  br i1 %cmp, label %if.then, label %if.else, !dbg !126

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 27), align 4, !dbg !127
  %or = or i32 %1, 1, !dbg !127
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 27), align 4, !dbg !127
  br label %if.end6, !dbg !128

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %Attributes.addr, align 4, !dbg !129
  %and1 = and i32 %2, 512, !dbg !130
  %cmp2 = icmp eq i32 %and1, 512, !dbg !131
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !132

if.then3:                                         ; preds = %if.else
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 27), align 4, !dbg !133
  %and4 = and i32 %3, -2, !dbg !133
  store volatile i32 %and4, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 27), align 4, !dbg !133
  br label %if.end, !dbg !134

if.else5:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWR_GetConfigAttributes(i32 %Item, i32* %pAttributes) #0 !dbg !136 {
entry:
  %retval = alloca i8, align 1
  %Item.addr = alloca i32, align 4
  %pAttributes.addr = alloca i32*, align 4
  %attributes = alloca i32, align 4
  store i32 %Item, i32* %Item.addr, align 4
  store i32* %pAttributes, i32** %pAttributes.addr, align 4
  %0 = load i32*, i32** %pAttributes.addr, align 4, !dbg !137
  %cmp = icmp eq i32* %0, null, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !139
  br label %return, !dbg !139

if.end:                                           ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 27), align 4, !dbg !140
  %and = and i32 %1, 1, !dbg !140
  %cmp1 = icmp ne i32 %and, 0, !dbg !141
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !140

if.then2:                                         ; preds = %if.end
  store i32 514, i32* %attributes, align 4, !dbg !142
  br label %if.end3, !dbg !143

if.else:                                          ; preds = %if.end
  store i32 512, i32* %attributes, align 4, !dbg !144
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %2 = load i32, i32* %attributes, align 4, !dbg !145
  %3 = load i32*, i32** %pAttributes.addr, align 4, !dbg !146
  store i32 %2, i32* %3, align 4, !dbg !147
  store i8 0, i8* %retval, align 1, !dbg !148
  br label %return, !dbg !148

return:                                           ; preds = %if.end3, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !149
  ret i8 %4, !dbg !149
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_PWR_DeInit", scope: !1, file: !1, line: 87, type: !9, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 89, column: 3, scope: !8)
!11 = !DILocation(line: 90, column: 3, scope: !8)
!12 = !DILocation(line: 91, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "HAL_PWR_EnableBkUpAccess", scope: !1, file: !1, line: 105, type: !9, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 107, column: 3, scope: !13)
!15 = !DILocation(line: 108, column: 1, scope: !13)
!16 = distinct !DISubprogram(name: "HAL_PWR_DisableBkUpAccess", scope: !1, file: !1, line: 115, type: !9, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DILocation(line: 117, column: 3, scope: !16)
!18 = !DILocation(line: 118, column: 1, scope: !16)
!19 = distinct !DISubprogram(name: "HAL_PWR_ConfigPVD", scope: !1, file: !1, line: 312, type: !9, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DILocation(line: 319, column: 3, scope: !19)
!21 = !DILocation(line: 322, column: 3, scope: !19)
!22 = !DILocation(line: 323, column: 3, scope: !19)
!23 = !DILocation(line: 324, column: 3, scope: !19)
!24 = !DILocation(line: 325, column: 3, scope: !19)
!25 = !DILocation(line: 328, column: 8, scope: !19)
!26 = !DILocation(line: 328, column: 20, scope: !19)
!27 = !DILocation(line: 328, column: 25, scope: !19)
!28 = !DILocation(line: 328, column: 40, scope: !19)
!29 = !DILocation(line: 328, column: 7, scope: !19)
!30 = !DILocation(line: 330, column: 5, scope: !19)
!31 = !DILocation(line: 331, column: 3, scope: !19)
!32 = !DILocation(line: 334, column: 8, scope: !19)
!33 = !DILocation(line: 334, column: 20, scope: !19)
!34 = !DILocation(line: 334, column: 25, scope: !19)
!35 = !DILocation(line: 334, column: 41, scope: !19)
!36 = !DILocation(line: 334, column: 7, scope: !19)
!37 = !DILocation(line: 336, column: 5, scope: !19)
!38 = !DILocation(line: 337, column: 3, scope: !19)
!39 = !DILocation(line: 340, column: 8, scope: !19)
!40 = !DILocation(line: 340, column: 20, scope: !19)
!41 = !DILocation(line: 340, column: 25, scope: !19)
!42 = !DILocation(line: 340, column: 44, scope: !19)
!43 = !DILocation(line: 340, column: 7, scope: !19)
!44 = !DILocation(line: 342, column: 5, scope: !19)
!45 = !DILocation(line: 343, column: 3, scope: !19)
!46 = !DILocation(line: 345, column: 8, scope: !19)
!47 = !DILocation(line: 345, column: 20, scope: !19)
!48 = !DILocation(line: 345, column: 25, scope: !19)
!49 = !DILocation(line: 345, column: 45, scope: !19)
!50 = !DILocation(line: 345, column: 7, scope: !19)
!51 = !DILocation(line: 347, column: 5, scope: !19)
!52 = !DILocation(line: 348, column: 3, scope: !19)
!53 = !DILocation(line: 350, column: 3, scope: !19)
!54 = distinct !DISubprogram(name: "HAL_PWR_EnablePVD", scope: !1, file: !1, line: 358, type: !9, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 360, column: 3, scope: !54)
!56 = !DILocation(line: 361, column: 1, scope: !54)
!57 = distinct !DISubprogram(name: "HAL_PWR_DisablePVD", scope: !1, file: !1, line: 367, type: !9, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DILocation(line: 369, column: 3, scope: !57)
!59 = !DILocation(line: 370, column: 1, scope: !57)
!60 = distinct !DISubprogram(name: "HAL_PWR_EnableWakeUpPin", scope: !1, file: !1, line: 392, type: !9, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DILocation(line: 398, column: 3, scope: !60)
!62 = !DILocation(line: 401, column: 3, scope: !60)
!63 = !DILocation(line: 404, column: 1, scope: !60)
!64 = distinct !DISubprogram(name: "HAL_PWR_DisableWakeUpPin", scope: !1, file: !1, line: 413, type: !9, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DILocation(line: 417, column: 3, scope: !64)
!66 = !DILocation(line: 418, column: 1, scope: !64)
!67 = distinct !DISubprogram(name: "HAL_PWR_EnterSLEEPMode", scope: !1, file: !1, line: 445, type: !9, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DILocation(line: 452, column: 7, scope: !67)
!69 = !DILocation(line: 452, column: 17, scope: !67)
!70 = !DILocation(line: 455, column: 9, scope: !67)
!71 = !DILocation(line: 457, column: 11, scope: !67)
!72 = !DILocation(line: 457, column: 46, scope: !67)
!73 = !DILocation(line: 459, column: 9, scope: !67)
!74 = !DILocation(line: 461, column: 5, scope: !67)
!75 = !DILocation(line: 463, column: 3, scope: !67)
!76 = !DILocation(line: 468, column: 9, scope: !67)
!77 = !DILocation(line: 468, column: 50, scope: !67)
!78 = !DILocation(line: 470, column: 7, scope: !67)
!79 = !DILocation(line: 471, column: 5, scope: !67)
!80 = !DILocation(line: 475, column: 3, scope: !67)
!81 = !DILocation(line: 478, column: 7, scope: !67)
!82 = !DILocation(line: 478, column: 18, scope: !67)
!83 = !DILocation(line: 481, column: 5, scope: !67)
!84 = !{i32 -2144517365}
!85 = !DILocation(line: 482, column: 3, scope: !67)
!86 = !DILocation(line: 486, column: 5, scope: !67)
!87 = !{i32 -2144517336}
!88 = !DILocation(line: 487, column: 5, scope: !67)
!89 = !{i32 -2144517307}
!90 = !DILocation(line: 488, column: 5, scope: !67)
!91 = !{i32 -2144517278}
!92 = !DILocation(line: 491, column: 1, scope: !67)
!93 = distinct !DISubprogram(name: "HAL_PWR_EnterSTOPMode", scope: !1, file: !1, line: 524, type: !9, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocation(line: 529, column: 7, scope: !93)
!95 = !DILocation(line: 529, column: 17, scope: !93)
!96 = !DILocation(line: 531, column: 30, scope: !93)
!97 = !DILocation(line: 531, column: 5, scope: !93)
!98 = !DILocation(line: 532, column: 3, scope: !93)
!99 = !DILocation(line: 535, column: 30, scope: !93)
!100 = !DILocation(line: 535, column: 5, scope: !93)
!101 = !DILocation(line: 537, column: 1, scope: !93)
!102 = distinct !DISubprogram(name: "HAL_PWR_EnterSTANDBYMode", scope: !1, file: !1, line: 557, type: !9, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocation(line: 560, column: 3, scope: !102)
!104 = !DILocation(line: 563, column: 3, scope: !102)
!105 = !DILocation(line: 570, column: 3, scope: !102)
!106 = !{i32 -2144516203}
!107 = !DILocation(line: 571, column: 1, scope: !102)
!108 = distinct !DISubprogram(name: "HAL_PWR_EnableSleepOnExit", scope: !1, file: !1, line: 583, type: !9, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!109 = !DILocation(line: 586, column: 3, scope: !108)
!110 = !DILocation(line: 587, column: 1, scope: !108)
!111 = distinct !DISubprogram(name: "HAL_PWR_DisableSleepOnExit", scope: !1, file: !1, line: 596, type: !9, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DILocation(line: 599, column: 3, scope: !111)
!113 = !DILocation(line: 600, column: 1, scope: !111)
!114 = distinct !DISubprogram(name: "HAL_PWR_EnableSEVOnPend", scope: !1, file: !1, line: 610, type: !9, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!115 = !DILocation(line: 613, column: 3, scope: !114)
!116 = !DILocation(line: 614, column: 1, scope: !114)
!117 = distinct !DISubprogram(name: "HAL_PWR_DisableSEVOnPend", scope: !1, file: !1, line: 623, type: !9, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!118 = !DILocation(line: 626, column: 3, scope: !117)
!119 = !DILocation(line: 627, column: 1, scope: !117)
!120 = distinct !DISubprogram(name: "HAL_PWR_PVDCallback", scope: !1, file: !1, line: 637, type: !9, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocation(line: 642, column: 1, scope: !120)
!122 = distinct !DISubprogram(name: "HAL_PWR_ConfigAttributes", scope: !1, file: !1, line: 676, type: !9, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!123 = !DILocation(line: 683, column: 8, scope: !122)
!124 = !DILocation(line: 683, column: 19, scope: !122)
!125 = !DILocation(line: 683, column: 31, scope: !122)
!126 = !DILocation(line: 683, column: 7, scope: !122)
!127 = !DILocation(line: 685, column: 5, scope: !122)
!128 = !DILocation(line: 686, column: 3, scope: !122)
!129 = !DILocation(line: 687, column: 13, scope: !122)
!130 = !DILocation(line: 687, column: 24, scope: !122)
!131 = !DILocation(line: 687, column: 37, scope: !122)
!132 = !DILocation(line: 687, column: 12, scope: !122)
!133 = !DILocation(line: 689, column: 5, scope: !122)
!134 = !DILocation(line: 690, column: 3, scope: !122)
!135 = !DILocation(line: 714, column: 1, scope: !122)
!136 = distinct !DISubprogram(name: "HAL_PWR_GetConfigAttributes", scope: !1, file: !1, line: 724, type: !9, scopeLine: 725, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!137 = !DILocation(line: 729, column: 7, scope: !136)
!138 = !DILocation(line: 729, column: 19, scope: !136)
!139 = !DILocation(line: 731, column: 5, scope: !136)
!140 = !DILocation(line: 738, column: 7, scope: !136)
!141 = !DILocation(line: 738, column: 50, scope: !136)
!142 = !DILocation(line: 740, column: 16, scope: !136)
!143 = !DILocation(line: 741, column: 3, scope: !136)
!144 = !DILocation(line: 744, column: 16, scope: !136)
!145 = !DILocation(line: 762, column: 18, scope: !136)
!146 = !DILocation(line: 762, column: 4, scope: !136)
!147 = !DILocation(line: 762, column: 16, scope: !136)
!148 = !DILocation(line: 764, column: 3, scope: !136)
!149 = !DILocation(line: 765, column: 1, scope: !136)
