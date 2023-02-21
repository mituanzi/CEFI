; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_cortex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_cortex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, [92 x i32], i32, [15 x i32], i32, i32, i32, [1 x i32], i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.NVIC_Type = type { [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [496 x i8], [580 x i32], i32 }
%struct.SysTick_Type = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_SetPriorityGrouping(i32 %PriorityGroup) #0 !dbg !8 {
entry:
  %PriorityGroup.addr = alloca i32, align 4
  store i32 %PriorityGroup, i32* %PriorityGroup.addr, align 4
  %0 = load i32, i32* %PriorityGroup.addr, align 4, !dbg !10
  call arm_aapcs_vfpcc void @__NVIC_SetPriorityGrouping(i32 %0), !dbg !11
  ret void, !dbg !12
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_SetPriorityGrouping(i32 %PriorityGroup) #0 !dbg !13 {
entry:
  %PriorityGroup.addr = alloca i32, align 4
  %reg_value = alloca i32, align 4
  %PriorityGroupTmp = alloca i32, align 4
  store i32 %PriorityGroup, i32* %PriorityGroup.addr, align 4
  %0 = load i32, i32* %PriorityGroup.addr, align 4, !dbg !15
  %and = and i32 %0, 7, !dbg !16
  store i32 %and, i32* %PriorityGroupTmp, align 4, !dbg !17
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 3), align 4, !dbg !18
  store i32 %1, i32* %reg_value, align 4, !dbg !19
  %2 = load i32, i32* %reg_value, align 4, !dbg !20
  %and1 = and i32 %2, 63743, !dbg !20
  store i32 %and1, i32* %reg_value, align 4, !dbg !20
  %3 = load i32, i32* %reg_value, align 4, !dbg !21
  %or = or i32 %3, 100270080, !dbg !22
  %4 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !23
  %shl = shl i32 %4, 8, !dbg !24
  %or2 = or i32 %or, %shl, !dbg !25
  store i32 %or2, i32* %reg_value, align 4, !dbg !26
  %5 = load i32, i32* %reg_value, align 4, !dbg !27
  store volatile i32 %5, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 3), align 4, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_SetPriority(i8 signext %IRQn, i32 %PreemptPriority, i32 %SubPriority) #0 !dbg !30 {
entry:
  %IRQn.addr = alloca i8, align 1
  %PreemptPriority.addr = alloca i32, align 4
  %SubPriority.addr = alloca i32, align 4
  %prioritygroup = alloca i32, align 4
  store i8 %IRQn, i8* %IRQn.addr, align 1
  store i32 %PreemptPriority, i32* %PreemptPriority.addr, align 4
  store i32 %SubPriority, i32* %SubPriority.addr, align 4
  %call = call arm_aapcs_vfpcc i32 @__NVIC_GetPriorityGrouping(), !dbg !31
  store i32 %call, i32* %prioritygroup, align 4, !dbg !32
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !33
  %1 = load i32, i32* %prioritygroup, align 4, !dbg !34
  %2 = load i32, i32* %PreemptPriority.addr, align 4, !dbg !35
  %3 = load i32, i32* %SubPriority.addr, align 4, !dbg !36
  %call1 = call arm_aapcs_vfpcc i32 @NVIC_EncodePriority(i32 %1, i32 %2, i32 %3), !dbg !37
  call arm_aapcs_vfpcc void @__NVIC_SetPriority(i8 signext %0, i32 %call1), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @__NVIC_GetPriorityGrouping() #0 !dbg !40 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 3), align 4, !dbg !41
  %and = and i32 %0, 1792, !dbg !42
  %shr = lshr i32 %and, 8, !dbg !43
  ret i32 %shr, !dbg !44
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_SetPriority(i8 signext %IRQn, i32 %priority) #0 !dbg !45 {
entry:
  %IRQn.addr = alloca i8, align 1
  %priority.addr = alloca i32, align 4
  store i8 %IRQn, i8* %IRQn.addr, align 1
  store i32 %priority, i32* %priority.addr, align 4
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !46
  %conv = sext i8 %0 to i32, !dbg !47
  %cmp = icmp sge i32 %conv, 0, !dbg !48
  br i1 %cmp, label %if.then, label %if.else, !dbg !47

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %priority.addr, align 4, !dbg !49
  %shl = shl i32 %1, 5, !dbg !50
  %and = and i32 %shl, 255, !dbg !51
  %conv2 = trunc i32 %and to i8, !dbg !52
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !53
  %conv3 = sext i8 %2 to i32, !dbg !54
  %arrayidx = getelementptr inbounds [496 x i8], [496 x i8]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 12), i32 0, i32 %conv3, !dbg !55
  store volatile i8 %conv2, i8* %arrayidx, align 1, !dbg !56
  br label %if.end, !dbg !57

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %priority.addr, align 4, !dbg !58
  %shl4 = shl i32 %3, 5, !dbg !59
  %and5 = and i32 %shl4, 255, !dbg !60
  %conv6 = trunc i32 %and5 to i8, !dbg !61
  %4 = load i8, i8* %IRQn.addr, align 1, !dbg !62
  %conv7 = sext i8 %4 to i32, !dbg !63
  %and8 = and i32 %conv7, 15, !dbg !64
  %sub = sub i32 %and8, 4, !dbg !65
  %arrayidx9 = getelementptr inbounds [12 x i8], [12 x i8]* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 6), i32 0, i32 %sub, !dbg !66
  store volatile i8 %conv6, i8* %arrayidx9, align 1, !dbg !67
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !68
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @NVIC_EncodePriority(i32 %PriorityGroup, i32 %PreemptPriority, i32 %SubPriority) #0 !dbg !69 {
entry:
  %PriorityGroup.addr = alloca i32, align 4
  %PreemptPriority.addr = alloca i32, align 4
  %SubPriority.addr = alloca i32, align 4
  %PriorityGroupTmp = alloca i32, align 4
  %PreemptPriorityBits = alloca i32, align 4
  %SubPriorityBits = alloca i32, align 4
  store i32 %PriorityGroup, i32* %PriorityGroup.addr, align 4
  store i32 %PreemptPriority, i32* %PreemptPriority.addr, align 4
  store i32 %SubPriority, i32* %SubPriority.addr, align 4
  %0 = load i32, i32* %PriorityGroup.addr, align 4, !dbg !70
  %and = and i32 %0, 7, !dbg !71
  store i32 %and, i32* %PriorityGroupTmp, align 4, !dbg !72
  %1 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !73
  %sub = sub i32 7, %1, !dbg !74
  %cmp = icmp ugt i32 %sub, 3, !dbg !75
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !76

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !76

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !77
  %sub1 = sub i32 7, %2, !dbg !78
  br label %cond.end, !dbg !76

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %sub1, %cond.false ], !dbg !76
  store i32 %cond, i32* %PreemptPriorityBits, align 4, !dbg !79
  %3 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !80
  %add = add i32 %3, 3, !dbg !81
  %cmp2 = icmp ult i32 %add, 7, !dbg !82
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !83

cond.true3:                                       ; preds = %cond.end
  br label %cond.end7, !dbg !83

cond.false4:                                      ; preds = %cond.end
  %4 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !84
  %sub5 = sub i32 %4, 7, !dbg !85
  %add6 = add i32 %sub5, 3, !dbg !86
  br label %cond.end7, !dbg !83

cond.end7:                                        ; preds = %cond.false4, %cond.true3
  %cond8 = phi i32 [ 0, %cond.true3 ], [ %add6, %cond.false4 ], !dbg !83
  store i32 %cond8, i32* %SubPriorityBits, align 4, !dbg !87
  %5 = load i32, i32* %PreemptPriority.addr, align 4, !dbg !88
  %6 = load i32, i32* %PreemptPriorityBits, align 4, !dbg !89
  %shl = shl i32 1, %6, !dbg !90
  %sub9 = sub i32 %shl, 1, !dbg !91
  %and10 = and i32 %5, %sub9, !dbg !92
  %7 = load i32, i32* %SubPriorityBits, align 4, !dbg !93
  %shl11 = shl i32 %and10, %7, !dbg !94
  %8 = load i32, i32* %SubPriority.addr, align 4, !dbg !95
  %9 = load i32, i32* %SubPriorityBits, align 4, !dbg !96
  %shl12 = shl i32 1, %9, !dbg !97
  %sub13 = sub i32 %shl12, 1, !dbg !98
  %and14 = and i32 %8, %sub13, !dbg !99
  %or = or i32 %shl11, %and14, !dbg !100
  ret i32 %or, !dbg !101
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_EnableIRQ(i8 signext %IRQn) #0 !dbg !102 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !103
  call arm_aapcs_vfpcc void @__NVIC_EnableIRQ(i8 signext %0), !dbg !104
  ret void, !dbg !105
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_EnableIRQ(i8 signext %IRQn) #0 !dbg !106 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !107
  %conv = sext i8 %0 to i32, !dbg !108
  %cmp = icmp sge i32 %conv, 0, !dbg !109
  br i1 %cmp, label %if.then, label %if.end, !dbg !108

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #2, !dbg !110, !srcloc !111
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !112
  %conv2 = sext i8 %1 to i32, !dbg !113
  %and = and i32 %conv2, 31, !dbg !114
  %shl = shl i32 1, %and, !dbg !115
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !116
  %conv3 = sext i8 %2 to i32, !dbg !117
  %shr = lshr i32 %conv3, 5, !dbg !118
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 0), i32 0, i32 %shr, !dbg !119
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !120
  call void asm sideeffect "", "~{memory}"() #2, !dbg !121, !srcloc !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_DisableIRQ(i8 signext %IRQn) #0 !dbg !125 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !126
  call arm_aapcs_vfpcc void @__NVIC_DisableIRQ(i8 signext %0), !dbg !127
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_DisableIRQ(i8 signext %IRQn) #0 !dbg !129 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !130
  %conv = sext i8 %0 to i32, !dbg !131
  %cmp = icmp sge i32 %conv, 0, !dbg !132
  br i1 %cmp, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !133
  %conv2 = sext i8 %1 to i32, !dbg !134
  %and = and i32 %conv2, 31, !dbg !135
  %shl = shl i32 1, %and, !dbg !136
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !137
  %conv3 = sext i8 %2 to i32, !dbg !138
  %shr = lshr i32 %conv3, 5, !dbg !139
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 2), i32 0, i32 %shr, !dbg !140
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !141
  call void asm sideeffect "dsb 0xF", "~{memory}"() #2, !dbg !142, !srcloc !146
  call void asm sideeffect "isb 0xF", "~{memory}"() #2, !dbg !147, !srcloc !150
  br label %if.end, !dbg !151

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_SystemReset() #0 !dbg !153 {
entry:
  call arm_aapcs_vfpcc void @__NVIC_SystemReset() #3, !dbg !154
  unreachable, !dbg !154
}

; Function Attrs: noinline noreturn nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_SystemReset() #1 !dbg !155 {
entry:
  call void asm sideeffect "dsb 0xF", "~{memory}"() #2, !dbg !156, !srcloc !146
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 3), align 4, !dbg !158
  %and = and i32 %0, 1792, !dbg !159
  %or = or i32 100270080, %and, !dbg !160
  %or1 = or i32 %or, 4, !dbg !161
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 3), align 4, !dbg !162
  call void asm sideeffect "dsb 0xF", "~{memory}"() #2, !dbg !163, !srcloc !146
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.cond, %entry
  call void asm sideeffect "nop", ""() #2, !dbg !166, !srcloc !167
  br label %for.cond, !dbg !165, !llvm.loop !168
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_SYSTICK_Config(i32 %TicksNumb) #0 !dbg !170 {
entry:
  %TicksNumb.addr = alloca i32, align 4
  store i32 %TicksNumb, i32* %TicksNumb.addr, align 4
  %0 = load i32, i32* %TicksNumb.addr, align 4, !dbg !171
  %call = call arm_aapcs_vfpcc i32 @SysTick_Config(i32 %0), !dbg !172
  ret i32 %call, !dbg !173
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @SysTick_Config(i32 %ticks) #0 !dbg !174 {
entry:
  %retval = alloca i32, align 4
  %ticks.addr = alloca i32, align 4
  store i32 %ticks, i32* %ticks.addr, align 4
  %0 = load i32, i32* %ticks.addr, align 4, !dbg !175
  %sub = sub i32 %0, 1, !dbg !176
  %cmp = icmp ugt i32 %sub, 16777215, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !178

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !179
  br label %return, !dbg !179

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ticks.addr, align 4, !dbg !180
  %sub1 = sub i32 %1, 1, !dbg !181
  store volatile i32 %sub1, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 1), align 4, !dbg !182
  call arm_aapcs_vfpcc void @__NVIC_SetPriority(i8 signext -1, i32 7), !dbg !183
  store volatile i32 0, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 2), align 4, !dbg !184
  store volatile i32 7, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !185
  store i32 0, i32* %retval, align 4, !dbg !186
  br label %return, !dbg !186

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !187
  ret i32 %2, !dbg !187
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_NVIC_GetPriorityGrouping() #0 !dbg !188 {
entry:
  %call = call arm_aapcs_vfpcc i32 @__NVIC_GetPriorityGrouping(), !dbg !189
  ret i32 %call, !dbg !190
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_GetPriority(i8 signext %IRQn, i32 %PriorityGroup, i32* %pPreemptPriority, i32* %pSubPriority) #0 !dbg !191 {
entry:
  %IRQn.addr = alloca i8, align 1
  %PriorityGroup.addr = alloca i32, align 4
  %pPreemptPriority.addr = alloca i32*, align 4
  %pSubPriority.addr = alloca i32*, align 4
  store i8 %IRQn, i8* %IRQn.addr, align 1
  store i32 %PriorityGroup, i32* %PriorityGroup.addr, align 4
  store i32* %pPreemptPriority, i32** %pPreemptPriority.addr, align 4
  store i32* %pSubPriority, i32** %pSubPriority.addr, align 4
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !192
  %call = call arm_aapcs_vfpcc i32 @__NVIC_GetPriority(i8 signext %0), !dbg !193
  %1 = load i32, i32* %PriorityGroup.addr, align 4, !dbg !194
  %2 = load i32*, i32** %pPreemptPriority.addr, align 4, !dbg !195
  %3 = load i32*, i32** %pSubPriority.addr, align 4, !dbg !196
  call arm_aapcs_vfpcc void @NVIC_DecodePriority(i32 %call, i32 %1, i32* %2, i32* %3), !dbg !197
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @NVIC_DecodePriority(i32 %Priority, i32 %PriorityGroup, i32* %pPreemptPriority, i32* %pSubPriority) #0 !dbg !199 {
entry:
  %Priority.addr = alloca i32, align 4
  %PriorityGroup.addr = alloca i32, align 4
  %pPreemptPriority.addr = alloca i32*, align 4
  %pSubPriority.addr = alloca i32*, align 4
  %PriorityGroupTmp = alloca i32, align 4
  %PreemptPriorityBits = alloca i32, align 4
  %SubPriorityBits = alloca i32, align 4
  store i32 %Priority, i32* %Priority.addr, align 4
  store i32 %PriorityGroup, i32* %PriorityGroup.addr, align 4
  store i32* %pPreemptPriority, i32** %pPreemptPriority.addr, align 4
  store i32* %pSubPriority, i32** %pSubPriority.addr, align 4
  %0 = load i32, i32* %PriorityGroup.addr, align 4, !dbg !200
  %and = and i32 %0, 7, !dbg !201
  store i32 %and, i32* %PriorityGroupTmp, align 4, !dbg !202
  %1 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !203
  %sub = sub i32 7, %1, !dbg !204
  %cmp = icmp ugt i32 %sub, 3, !dbg !205
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !206

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !206

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !207
  %sub1 = sub i32 7, %2, !dbg !208
  br label %cond.end, !dbg !206

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 3, %cond.true ], [ %sub1, %cond.false ], !dbg !206
  store i32 %cond, i32* %PreemptPriorityBits, align 4, !dbg !209
  %3 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !210
  %add = add i32 %3, 3, !dbg !211
  %cmp2 = icmp ult i32 %add, 7, !dbg !212
  br i1 %cmp2, label %cond.true3, label %cond.false4, !dbg !213

cond.true3:                                       ; preds = %cond.end
  br label %cond.end7, !dbg !213

cond.false4:                                      ; preds = %cond.end
  %4 = load i32, i32* %PriorityGroupTmp, align 4, !dbg !214
  %sub5 = sub i32 %4, 7, !dbg !215
  %add6 = add i32 %sub5, 3, !dbg !216
  br label %cond.end7, !dbg !213

cond.end7:                                        ; preds = %cond.false4, %cond.true3
  %cond8 = phi i32 [ 0, %cond.true3 ], [ %add6, %cond.false4 ], !dbg !213
  store i32 %cond8, i32* %SubPriorityBits, align 4, !dbg !217
  %5 = load i32, i32* %Priority.addr, align 4, !dbg !218
  %6 = load i32, i32* %SubPriorityBits, align 4, !dbg !219
  %shr = lshr i32 %5, %6, !dbg !220
  %7 = load i32, i32* %PreemptPriorityBits, align 4, !dbg !221
  %shl = shl i32 1, %7, !dbg !222
  %sub9 = sub i32 %shl, 1, !dbg !223
  %and10 = and i32 %shr, %sub9, !dbg !224
  %8 = load i32*, i32** %pPreemptPriority.addr, align 4, !dbg !225
  store i32 %and10, i32* %8, align 4, !dbg !226
  %9 = load i32, i32* %Priority.addr, align 4, !dbg !227
  %10 = load i32, i32* %SubPriorityBits, align 4, !dbg !228
  %shl11 = shl i32 1, %10, !dbg !229
  %sub12 = sub i32 %shl11, 1, !dbg !230
  %and13 = and i32 %9, %sub12, !dbg !231
  %11 = load i32*, i32** %pSubPriority.addr, align 4, !dbg !232
  store i32 %and13, i32* %11, align 4, !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @__NVIC_GetPriority(i8 signext %IRQn) #0 !dbg !235 {
entry:
  %retval = alloca i32, align 4
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !236
  %conv = sext i8 %0 to i32, !dbg !237
  %cmp = icmp sge i32 %conv, 0, !dbg !238
  br i1 %cmp, label %if.then, label %if.else, !dbg !237

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !239
  %conv2 = sext i8 %1 to i32, !dbg !240
  %arrayidx = getelementptr inbounds [496 x i8], [496 x i8]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 12), i32 0, i32 %conv2, !dbg !241
  %2 = load volatile i8, i8* %arrayidx, align 1, !dbg !241
  %conv3 = zext i8 %2 to i32, !dbg !242
  %shr = lshr i32 %conv3, 5, !dbg !243
  store i32 %shr, i32* %retval, align 4, !dbg !244
  br label %return, !dbg !244

if.else:                                          ; preds = %entry
  %3 = load i8, i8* %IRQn.addr, align 1, !dbg !245
  %conv4 = sext i8 %3 to i32, !dbg !246
  %and = and i32 %conv4, 15, !dbg !247
  %sub = sub i32 %and, 4, !dbg !248
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 6), i32 0, i32 %sub, !dbg !249
  %4 = load volatile i8, i8* %arrayidx5, align 1, !dbg !249
  %conv6 = zext i8 %4 to i32, !dbg !250
  %shr7 = lshr i32 %conv6, 5, !dbg !251
  store i32 %shr7, i32* %retval, align 4, !dbg !252
  br label %return, !dbg !252

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !253
  ret i32 %5, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_SetPendingIRQ(i8 signext %IRQn) #0 !dbg !254 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !255
  call arm_aapcs_vfpcc void @__NVIC_SetPendingIRQ(i8 signext %0), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_SetPendingIRQ(i8 signext %IRQn) #0 !dbg !258 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !259
  %conv = sext i8 %0 to i32, !dbg !260
  %cmp = icmp sge i32 %conv, 0, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !262
  %conv2 = sext i8 %1 to i32, !dbg !263
  %and = and i32 %conv2, 31, !dbg !264
  %shl = shl i32 1, %and, !dbg !265
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !266
  %conv3 = sext i8 %2 to i32, !dbg !267
  %shr = lshr i32 %conv3, 5, !dbg !268
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 4), i32 0, i32 %shr, !dbg !269
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_NVIC_GetPendingIRQ(i8 signext %IRQn) #0 !dbg !273 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !274
  %call = call arm_aapcs_vfpcc i32 @__NVIC_GetPendingIRQ(i8 signext %0), !dbg !275
  ret i32 %call, !dbg !276
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @__NVIC_GetPendingIRQ(i8 signext %IRQn) #0 !dbg !277 {
entry:
  %retval = alloca i32, align 4
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !278
  %conv = sext i8 %0 to i32, !dbg !279
  %cmp = icmp sge i32 %conv, 0, !dbg !280
  br i1 %cmp, label %if.then, label %if.else, !dbg !279

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !281
  %conv2 = sext i8 %1 to i32, !dbg !282
  %shr = lshr i32 %conv2, 5, !dbg !283
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 4), i32 0, i32 %shr, !dbg !284
  %2 = load volatile i32, i32* %arrayidx, align 4, !dbg !284
  %3 = load i8, i8* %IRQn.addr, align 1, !dbg !285
  %conv3 = sext i8 %3 to i32, !dbg !286
  %and = and i32 %conv3, 31, !dbg !287
  %shl = shl i32 1, %and, !dbg !288
  %and4 = and i32 %2, %shl, !dbg !289
  %cmp5 = icmp ne i32 %and4, 0, !dbg !290
  %4 = zext i1 %cmp5 to i64, !dbg !291
  %cond = select i1 %cmp5, i32 1, i32 0, !dbg !291
  store i32 %cond, i32* %retval, align 4, !dbg !292
  br label %return, !dbg !292

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !293
  br label %return, !dbg !293

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !294
  ret i32 %5, !dbg !294
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_NVIC_ClearPendingIRQ(i8 signext %IRQn) #0 !dbg !295 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !296
  call arm_aapcs_vfpcc void @__NVIC_ClearPendingIRQ(i8 signext %0), !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @__NVIC_ClearPendingIRQ(i8 signext %IRQn) #0 !dbg !299 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !300
  %conv = sext i8 %0 to i32, !dbg !301
  %cmp = icmp sge i32 %conv, 0, !dbg !302
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !303
  %conv2 = sext i8 %1 to i32, !dbg !304
  %and = and i32 %conv2, 31, !dbg !305
  %shl = shl i32 1, %and, !dbg !306
  %2 = load i8, i8* %IRQn.addr, align 1, !dbg !307
  %conv3 = sext i8 %2 to i32, !dbg !308
  %shr = lshr i32 %conv3, 5, !dbg !309
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 6), i32 0, i32 %shr, !dbg !310
  store volatile i32 %shl, i32* %arrayidx, align 4, !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_NVIC_GetActive(i8 signext %IRQn) #0 !dbg !314 {
entry:
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !315
  %call = call arm_aapcs_vfpcc i32 @__NVIC_GetActive(i8 signext %0), !dbg !316
  ret i32 %call, !dbg !317
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @__NVIC_GetActive(i8 signext %IRQn) #0 !dbg !318 {
entry:
  %retval = alloca i32, align 4
  %IRQn.addr = alloca i8, align 1
  store i8 %IRQn, i8* %IRQn.addr, align 1
  %0 = load i8, i8* %IRQn.addr, align 1, !dbg !319
  %conv = sext i8 %0 to i32, !dbg !320
  %cmp = icmp sge i32 %conv, 0, !dbg !321
  br i1 %cmp, label %if.then, label %if.else, !dbg !320

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %IRQn.addr, align 1, !dbg !322
  %conv2 = sext i8 %1 to i32, !dbg !323
  %shr = lshr i32 %conv2, 5, !dbg !324
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.NVIC_Type, %struct.NVIC_Type* inttoptr (i32 -536813312 to %struct.NVIC_Type*), i32 0, i32 8), i32 0, i32 %shr, !dbg !325
  %2 = load volatile i32, i32* %arrayidx, align 4, !dbg !325
  %3 = load i8, i8* %IRQn.addr, align 1, !dbg !326
  %conv3 = sext i8 %3 to i32, !dbg !327
  %and = and i32 %conv3, 31, !dbg !328
  %shl = shl i32 1, %and, !dbg !329
  %and4 = and i32 %2, %shl, !dbg !330
  %cmp5 = icmp ne i32 %and4, 0, !dbg !331
  %4 = zext i1 %cmp5 to i64, !dbg !332
  %cond = select i1 %cmp5, i32 1, i32 0, !dbg !332
  store i32 %cond, i32* %retval, align 4, !dbg !333
  br label %return, !dbg !333

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !334
  br label %return, !dbg !334

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !335
  ret i32 %5, !dbg !335
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSTICK_CLKSourceConfig(i32 %CLKSource) #0 !dbg !336 {
entry:
  %CLKSource.addr = alloca i32, align 4
  store i32 %CLKSource, i32* %CLKSource.addr, align 4
  %0 = load i32, i32* %CLKSource.addr, align 4, !dbg !337
  %cmp = icmp eq i32 %0, 4, !dbg !338
  br i1 %cmp, label %if.then, label %if.else, !dbg !337

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !339
  %or = or i32 %1, 4, !dbg !339
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !339
  br label %if.end, !dbg !340

if.else:                                          ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !341
  %and = and i32 %2, -5, !dbg !341
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !341
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !342
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSTICK_IRQHandler() #0 !dbg !343 {
entry:
  call arm_aapcs_vfpcc void @HAL_SYSTICK_Callback(), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_SYSTICK_Callback() #0 !dbg !346 {
entry:
  ret void, !dbg !347
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noreturn nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_cortex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_NVIC_SetPriorityGrouping", scope: !1, file: !1, line: 159, type: !9, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 165, column: 28, scope: !8)
!11 = !DILocation(line: 165, column: 3, scope: !8)
!12 = !DILocation(line: 166, column: 1, scope: !8)
!13 = distinct !DISubprogram(name: "__NVIC_SetPriorityGrouping", scope: !14, file: !14, line: 2096, type: !9, scopeLine: 2097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DIFile(filename: "../Drivers/CMSIS/Include/core_cm33.h", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!15 = !DILocation(line: 2099, column: 32, scope: !13)
!16 = !DILocation(line: 2099, column: 46, scope: !13)
!17 = !DILocation(line: 2099, column: 12, scope: !13)
!18 = !DILocation(line: 2101, column: 22, scope: !13)
!19 = !DILocation(line: 2101, column: 14, scope: !13)
!20 = !DILocation(line: 2102, column: 13, scope: !13)
!21 = !DILocation(line: 2103, column: 18, scope: !13)
!22 = !DILocation(line: 2103, column: 62, scope: !13)
!23 = !DILocation(line: 2105, column: 18, scope: !13)
!24 = !DILocation(line: 2105, column: 35, scope: !13)
!25 = !DILocation(line: 2104, column: 62, scope: !13)
!26 = !DILocation(line: 2103, column: 14, scope: !13)
!27 = !DILocation(line: 2106, column: 17, scope: !13)
!28 = !DILocation(line: 2106, column: 14, scope: !13)
!29 = !DILocation(line: 2107, column: 1, scope: !13)
!30 = distinct !DISubprogram(name: "HAL_NVIC_SetPriority", scope: !1, file: !1, line: 181, type: !9, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 189, column: 19, scope: !30)
!32 = !DILocation(line: 189, column: 17, scope: !30)
!33 = !DILocation(line: 191, column: 20, scope: !30)
!34 = !DILocation(line: 191, column: 46, scope: !30)
!35 = !DILocation(line: 191, column: 61, scope: !30)
!36 = !DILocation(line: 191, column: 78, scope: !30)
!37 = !DILocation(line: 191, column: 26, scope: !30)
!38 = !DILocation(line: 191, column: 3, scope: !30)
!39 = !DILocation(line: 192, column: 1, scope: !30)
!40 = distinct !DISubprogram(name: "__NVIC_GetPriorityGrouping", scope: !14, file: !14, line: 2115, type: !9, scopeLine: 2116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DILocation(line: 2117, column: 28, scope: !40)
!42 = !DILocation(line: 2117, column: 34, scope: !40)
!43 = !DILocation(line: 2117, column: 60, scope: !40)
!44 = !DILocation(line: 2117, column: 3, scope: !40)
!45 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !14, file: !14, line: 2324, type: !9, scopeLine: 2325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 2326, column: 17, scope: !45)
!47 = !DILocation(line: 2326, column: 7, scope: !45)
!48 = !DILocation(line: 2326, column: 23, scope: !45)
!49 = !DILocation(line: 2328, column: 60, scope: !45)
!50 = !DILocation(line: 2328, column: 69, scope: !45)
!51 = !DILocation(line: 2328, column: 97, scope: !45)
!52 = !DILocation(line: 2328, column: 49, scope: !45)
!53 = !DILocation(line: 2328, column: 26, scope: !45)
!54 = !DILocation(line: 2328, column: 16, scope: !45)
!55 = !DILocation(line: 2328, column: 5, scope: !45)
!56 = !DILocation(line: 2328, column: 47, scope: !45)
!57 = !DILocation(line: 2329, column: 3, scope: !45)
!58 = !DILocation(line: 2332, column: 60, scope: !45)
!59 = !DILocation(line: 2332, column: 69, scope: !45)
!60 = !DILocation(line: 2332, column: 97, scope: !45)
!61 = !DILocation(line: 2332, column: 49, scope: !45)
!62 = !DILocation(line: 2332, column: 27, scope: !45)
!63 = !DILocation(line: 2332, column: 17, scope: !45)
!64 = !DILocation(line: 2332, column: 33, scope: !45)
!65 = !DILocation(line: 2332, column: 41, scope: !45)
!66 = !DILocation(line: 2332, column: 5, scope: !45)
!67 = !DILocation(line: 2332, column: 47, scope: !45)
!68 = !DILocation(line: 2334, column: 1, scope: !45)
!69 = distinct !DISubprogram(name: "NVIC_EncodePriority", scope: !14, file: !14, line: 2371, type: !9, scopeLine: 2372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DILocation(line: 2373, column: 32, scope: !69)
!71 = !DILocation(line: 2373, column: 46, scope: !69)
!72 = !DILocation(line: 2373, column: 12, scope: !69)
!73 = !DILocation(line: 2377, column: 33, scope: !69)
!74 = !DILocation(line: 2377, column: 31, scope: !69)
!75 = !DILocation(line: 2377, column: 51, scope: !69)
!76 = !DILocation(line: 2377, column: 25, scope: !69)
!77 = !DILocation(line: 2377, column: 133, scope: !69)
!78 = !DILocation(line: 2377, column: 131, scope: !69)
!79 = !DILocation(line: 2377, column: 23, scope: !69)
!80 = !DILocation(line: 2378, column: 27, scope: !69)
!81 = !DILocation(line: 2378, column: 44, scope: !69)
!82 = !DILocation(line: 2378, column: 76, scope: !69)
!83 = !DILocation(line: 2378, column: 25, scope: !69)
!84 = !DILocation(line: 2378, column: 123, scope: !69)
!85 = !DILocation(line: 2378, column: 140, scope: !69)
!86 = !DILocation(line: 2378, column: 147, scope: !69)
!87 = !DILocation(line: 2378, column: 23, scope: !69)
!88 = !DILocation(line: 2381, column: 14, scope: !69)
!89 = !DILocation(line: 2381, column: 52, scope: !69)
!90 = !DILocation(line: 2381, column: 48, scope: !69)
!91 = !DILocation(line: 2381, column: 74, scope: !69)
!92 = !DILocation(line: 2381, column: 30, scope: !69)
!93 = !DILocation(line: 2381, column: 85, scope: !69)
!94 = !DILocation(line: 2381, column: 82, scope: !69)
!95 = !DILocation(line: 2382, column: 14, scope: !69)
!96 = !DILocation(line: 2382, column: 52, scope: !69)
!97 = !DILocation(line: 2382, column: 48, scope: !69)
!98 = !DILocation(line: 2382, column: 74, scope: !69)
!99 = !DILocation(line: 2382, column: 30, scope: !69)
!100 = !DILocation(line: 2381, column: 102, scope: !69)
!101 = !DILocation(line: 2380, column: 3, scope: !69)
!102 = distinct !DISubprogram(name: "HAL_NVIC_EnableIRQ", scope: !1, file: !1, line: 203, type: !9, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocation(line: 209, column: 18, scope: !102)
!104 = !DILocation(line: 209, column: 3, scope: !102)
!105 = !DILocation(line: 210, column: 1, scope: !102)
!106 = distinct !DISubprogram(name: "__NVIC_EnableIRQ", scope: !14, file: !14, line: 2127, type: !9, scopeLine: 2128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!107 = !DILocation(line: 2129, column: 17, scope: !106)
!108 = !DILocation(line: 2129, column: 7, scope: !106)
!109 = !DILocation(line: 2129, column: 23, scope: !106)
!110 = !DILocation(line: 2131, column: 5, scope: !106)
!111 = !{i32 -2145309161}
!112 = !DILocation(line: 2132, column: 75, scope: !106)
!113 = !DILocation(line: 2132, column: 65, scope: !106)
!114 = !DILocation(line: 2132, column: 81, scope: !106)
!115 = !DILocation(line: 2132, column: 60, scope: !106)
!116 = !DILocation(line: 2132, column: 28, scope: !106)
!117 = !DILocation(line: 2132, column: 18, scope: !106)
!118 = !DILocation(line: 2132, column: 34, scope: !106)
!119 = !DILocation(line: 2132, column: 5, scope: !106)
!120 = !DILocation(line: 2132, column: 43, scope: !106)
!121 = !DILocation(line: 2133, column: 5, scope: !106)
!122 = !{i32 -2145309044}
!123 = !DILocation(line: 2134, column: 3, scope: !106)
!124 = !DILocation(line: 2135, column: 1, scope: !106)
!125 = distinct !DISubprogram(name: "HAL_NVIC_DisableIRQ", scope: !1, file: !1, line: 219, type: !9, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocation(line: 225, column: 19, scope: !125)
!127 = !DILocation(line: 225, column: 3, scope: !125)
!128 = !DILocation(line: 226, column: 1, scope: !125)
!129 = distinct !DISubprogram(name: "__NVIC_DisableIRQ", scope: !14, file: !14, line: 2165, type: !9, scopeLine: 2166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!130 = !DILocation(line: 2167, column: 17, scope: !129)
!131 = !DILocation(line: 2167, column: 7, scope: !129)
!132 = !DILocation(line: 2167, column: 23, scope: !129)
!133 = !DILocation(line: 2169, column: 75, scope: !129)
!134 = !DILocation(line: 2169, column: 65, scope: !129)
!135 = !DILocation(line: 2169, column: 81, scope: !129)
!136 = !DILocation(line: 2169, column: 60, scope: !129)
!137 = !DILocation(line: 2169, column: 28, scope: !129)
!138 = !DILocation(line: 2169, column: 18, scope: !129)
!139 = !DILocation(line: 2169, column: 34, scope: !129)
!140 = !DILocation(line: 2169, column: 5, scope: !129)
!141 = !DILocation(line: 2169, column: 43, scope: !129)
!142 = !DILocation(line: 946, column: 3, scope: !143, inlinedAt: !145)
!143 = distinct !DISubprogram(name: "__DSB", scope: !144, file: !144, line: 944, type: !9, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DIFile(filename: "../Drivers/CMSIS/Include/cmsis_gcc.h", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!145 = distinct !DILocation(line: 2170, column: 5, scope: !129)
!146 = !{i32 2130566}
!147 = !DILocation(line: 935, column: 3, scope: !148, inlinedAt: !149)
!148 = distinct !DISubprogram(name: "__ISB", scope: !144, file: !144, line: 933, type: !9, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = distinct !DILocation(line: 2171, column: 5, scope: !129)
!150 = !{i32 2130272}
!151 = !DILocation(line: 2172, column: 3, scope: !129)
!152 = !DILocation(line: 2173, column: 1, scope: !129)
!153 = distinct !DISubprogram(name: "HAL_NVIC_SystemReset", scope: !1, file: !1, line: 232, type: !9, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!154 = !DILocation(line: 235, column: 3, scope: !153)
!155 = distinct !DISubprogram(name: "__NVIC_SystemReset", scope: !14, file: !14, line: 2448, type: !9, scopeLine: 2449, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!156 = !DILocation(line: 946, column: 3, scope: !143, inlinedAt: !157)
!157 = distinct !DILocation(line: 2450, column: 3, scope: !155)
!158 = !DILocation(line: 2453, column: 34, scope: !155)
!159 = !DILocation(line: 2453, column: 40, scope: !155)
!160 = !DILocation(line: 2452, column: 66, scope: !155)
!161 = !DILocation(line: 2453, column: 66, scope: !155)
!162 = !DILocation(line: 2452, column: 15, scope: !155)
!163 = !DILocation(line: 946, column: 3, scope: !143, inlinedAt: !164)
!164 = distinct !DILocation(line: 2455, column: 3, scope: !155)
!165 = !DILocation(line: 2457, column: 3, scope: !155)
!166 = !DILocation(line: 2459, column: 5, scope: !155)
!167 = !{i32 -2145307540}
!168 = distinct !{!168, !165, !169}
!169 = !DILocation(line: 2460, column: 3, scope: !155)
!170 = distinct !DISubprogram(name: "HAL_SYSTICK_Config", scope: !1, file: !1, line: 245, type: !9, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DILocation(line: 247, column: 25, scope: !170)
!172 = !DILocation(line: 247, column: 10, scope: !170)
!173 = !DILocation(line: 247, column: 3, scope: !170)
!174 = distinct !DISubprogram(name: "SysTick_Config", scope: !14, file: !14, line: 2773, type: !9, scopeLine: 2774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!175 = !DILocation(line: 2775, column: 8, scope: !174)
!176 = !DILocation(line: 2775, column: 14, scope: !174)
!177 = !DILocation(line: 2775, column: 21, scope: !174)
!178 = !DILocation(line: 2775, column: 7, scope: !174)
!179 = !DILocation(line: 2777, column: 5, scope: !174)
!180 = !DILocation(line: 2780, column: 31, scope: !174)
!181 = !DILocation(line: 2780, column: 37, scope: !174)
!182 = !DILocation(line: 2780, column: 18, scope: !174)
!183 = !DILocation(line: 2781, column: 3, scope: !174)
!184 = !DILocation(line: 2782, column: 18, scope: !174)
!185 = !DILocation(line: 2783, column: 18, scope: !174)
!186 = !DILocation(line: 2786, column: 3, scope: !174)
!187 = !DILocation(line: 2787, column: 1, scope: !174)
!188 = distinct !DISubprogram(name: "HAL_NVIC_GetPriorityGrouping", scope: !1, file: !1, line: 273, type: !9, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!189 = !DILocation(line: 276, column: 10, scope: !188)
!190 = !DILocation(line: 276, column: 3, scope: !188)
!191 = distinct !DISubprogram(name: "HAL_NVIC_GetPriority", scope: !1, file: !1, line: 298, type: !9, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!192 = !DILocation(line: 303, column: 40, scope: !191)
!193 = !DILocation(line: 303, column: 23, scope: !191)
!194 = !DILocation(line: 303, column: 47, scope: !191)
!195 = !DILocation(line: 303, column: 62, scope: !191)
!196 = !DILocation(line: 303, column: 80, scope: !191)
!197 = !DILocation(line: 303, column: 3, scope: !191)
!198 = !DILocation(line: 304, column: 1, scope: !191)
!199 = distinct !DISubprogram(name: "NVIC_DecodePriority", scope: !14, file: !14, line: 2398, type: !9, scopeLine: 2399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!200 = !DILocation(line: 2400, column: 32, scope: !199)
!201 = !DILocation(line: 2400, column: 46, scope: !199)
!202 = !DILocation(line: 2400, column: 12, scope: !199)
!203 = !DILocation(line: 2404, column: 33, scope: !199)
!204 = !DILocation(line: 2404, column: 31, scope: !199)
!205 = !DILocation(line: 2404, column: 51, scope: !199)
!206 = !DILocation(line: 2404, column: 25, scope: !199)
!207 = !DILocation(line: 2404, column: 133, scope: !199)
!208 = !DILocation(line: 2404, column: 131, scope: !199)
!209 = !DILocation(line: 2404, column: 23, scope: !199)
!210 = !DILocation(line: 2405, column: 27, scope: !199)
!211 = !DILocation(line: 2405, column: 44, scope: !199)
!212 = !DILocation(line: 2405, column: 76, scope: !199)
!213 = !DILocation(line: 2405, column: 25, scope: !199)
!214 = !DILocation(line: 2405, column: 123, scope: !199)
!215 = !DILocation(line: 2405, column: 140, scope: !199)
!216 = !DILocation(line: 2405, column: 147, scope: !199)
!217 = !DILocation(line: 2405, column: 23, scope: !199)
!218 = !DILocation(line: 2407, column: 24, scope: !199)
!219 = !DILocation(line: 2407, column: 36, scope: !199)
!220 = !DILocation(line: 2407, column: 33, scope: !199)
!221 = !DILocation(line: 2407, column: 75, scope: !199)
!222 = !DILocation(line: 2407, column: 71, scope: !199)
!223 = !DILocation(line: 2407, column: 97, scope: !199)
!224 = !DILocation(line: 2407, column: 53, scope: !199)
!225 = !DILocation(line: 2407, column: 4, scope: !199)
!226 = !DILocation(line: 2407, column: 21, scope: !199)
!227 = !DILocation(line: 2408, column: 24, scope: !199)
!228 = !DILocation(line: 2408, column: 75, scope: !199)
!229 = !DILocation(line: 2408, column: 71, scope: !199)
!230 = !DILocation(line: 2408, column: 97, scope: !199)
!231 = !DILocation(line: 2408, column: 53, scope: !199)
!232 = !DILocation(line: 2408, column: 4, scope: !199)
!233 = !DILocation(line: 2408, column: 21, scope: !199)
!234 = !DILocation(line: 2409, column: 1, scope: !199)
!235 = distinct !DISubprogram(name: "__NVIC_GetPriority", scope: !14, file: !14, line: 2346, type: !9, scopeLine: 2347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!236 = !DILocation(line: 2349, column: 17, scope: !235)
!237 = !DILocation(line: 2349, column: 7, scope: !235)
!238 = !DILocation(line: 2349, column: 23, scope: !235)
!239 = !DILocation(line: 2351, column: 44, scope: !235)
!240 = !DILocation(line: 2351, column: 34, scope: !235)
!241 = !DILocation(line: 2351, column: 23, scope: !235)
!242 = !DILocation(line: 2351, column: 13, scope: !235)
!243 = !DILocation(line: 2351, column: 65, scope: !235)
!244 = !DILocation(line: 2351, column: 5, scope: !235)
!245 = !DILocation(line: 2355, column: 45, scope: !235)
!246 = !DILocation(line: 2355, column: 35, scope: !235)
!247 = !DILocation(line: 2355, column: 51, scope: !235)
!248 = !DILocation(line: 2355, column: 59, scope: !235)
!249 = !DILocation(line: 2355, column: 23, scope: !235)
!250 = !DILocation(line: 2355, column: 13, scope: !235)
!251 = !DILocation(line: 2355, column: 65, scope: !235)
!252 = !DILocation(line: 2355, column: 5, scope: !235)
!253 = !DILocation(line: 2357, column: 1, scope: !235)
!254 = distinct !DISubprogram(name: "HAL_NVIC_SetPendingIRQ", scope: !1, file: !1, line: 313, type: !9, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!255 = !DILocation(line: 316, column: 22, scope: !254)
!256 = !DILocation(line: 316, column: 3, scope: !254)
!257 = !DILocation(line: 317, column: 1, scope: !254)
!258 = distinct !DISubprogram(name: "__NVIC_SetPendingIRQ", scope: !14, file: !14, line: 2203, type: !9, scopeLine: 2204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!259 = !DILocation(line: 2205, column: 17, scope: !258)
!260 = !DILocation(line: 2205, column: 7, scope: !258)
!261 = !DILocation(line: 2205, column: 23, scope: !258)
!262 = !DILocation(line: 2207, column: 75, scope: !258)
!263 = !DILocation(line: 2207, column: 65, scope: !258)
!264 = !DILocation(line: 2207, column: 81, scope: !258)
!265 = !DILocation(line: 2207, column: 60, scope: !258)
!266 = !DILocation(line: 2207, column: 28, scope: !258)
!267 = !DILocation(line: 2207, column: 18, scope: !258)
!268 = !DILocation(line: 2207, column: 34, scope: !258)
!269 = !DILocation(line: 2207, column: 5, scope: !258)
!270 = !DILocation(line: 2207, column: 43, scope: !258)
!271 = !DILocation(line: 2208, column: 3, scope: !258)
!272 = !DILocation(line: 2209, column: 1, scope: !258)
!273 = distinct !DISubprogram(name: "HAL_NVIC_GetPendingIRQ", scope: !1, file: !1, line: 328, type: !9, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!274 = !DILocation(line: 331, column: 29, scope: !273)
!275 = !DILocation(line: 331, column: 10, scope: !273)
!276 = !DILocation(line: 331, column: 3, scope: !273)
!277 = distinct !DISubprogram(name: "__NVIC_GetPendingIRQ", scope: !14, file: !14, line: 2184, type: !9, scopeLine: 2185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!278 = !DILocation(line: 2186, column: 17, scope: !277)
!279 = !DILocation(line: 2186, column: 7, scope: !277)
!280 = !DILocation(line: 2186, column: 23, scope: !277)
!281 = !DILocation(line: 2188, column: 48, scope: !277)
!282 = !DILocation(line: 2188, column: 38, scope: !277)
!283 = !DILocation(line: 2188, column: 54, scope: !277)
!284 = !DILocation(line: 2188, column: 25, scope: !277)
!285 = !DILocation(line: 2188, column: 85, scope: !277)
!286 = !DILocation(line: 2188, column: 75, scope: !277)
!287 = !DILocation(line: 2188, column: 91, scope: !277)
!288 = !DILocation(line: 2188, column: 70, scope: !277)
!289 = !DILocation(line: 2188, column: 63, scope: !277)
!290 = !DILocation(line: 2188, column: 103, scope: !277)
!291 = !DILocation(line: 2188, column: 23, scope: !277)
!292 = !DILocation(line: 2188, column: 5, scope: !277)
!293 = !DILocation(line: 2192, column: 5, scope: !277)
!294 = !DILocation(line: 2194, column: 1, scope: !277)
!295 = distinct !DISubprogram(name: "HAL_NVIC_ClearPendingIRQ", scope: !1, file: !1, line: 341, type: !9, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!296 = !DILocation(line: 344, column: 24, scope: !295)
!297 = !DILocation(line: 344, column: 3, scope: !295)
!298 = !DILocation(line: 345, column: 1, scope: !295)
!299 = distinct !DISubprogram(name: "__NVIC_ClearPendingIRQ", scope: !14, file: !14, line: 2218, type: !9, scopeLine: 2219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!300 = !DILocation(line: 2220, column: 17, scope: !299)
!301 = !DILocation(line: 2220, column: 7, scope: !299)
!302 = !DILocation(line: 2220, column: 23, scope: !299)
!303 = !DILocation(line: 2222, column: 75, scope: !299)
!304 = !DILocation(line: 2222, column: 65, scope: !299)
!305 = !DILocation(line: 2222, column: 81, scope: !299)
!306 = !DILocation(line: 2222, column: 60, scope: !299)
!307 = !DILocation(line: 2222, column: 28, scope: !299)
!308 = !DILocation(line: 2222, column: 18, scope: !299)
!309 = !DILocation(line: 2222, column: 34, scope: !299)
!310 = !DILocation(line: 2222, column: 5, scope: !299)
!311 = !DILocation(line: 2222, column: 43, scope: !299)
!312 = !DILocation(line: 2223, column: 3, scope: !299)
!313 = !DILocation(line: 2224, column: 1, scope: !299)
!314 = distinct !DISubprogram(name: "HAL_NVIC_GetActive", scope: !1, file: !1, line: 355, type: !9, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!315 = !DILocation(line: 358, column: 25, scope: !314)
!316 = !DILocation(line: 358, column: 10, scope: !314)
!317 = !DILocation(line: 358, column: 3, scope: !314)
!318 = distinct !DISubprogram(name: "__NVIC_GetActive", scope: !14, file: !14, line: 2235, type: !9, scopeLine: 2236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!319 = !DILocation(line: 2237, column: 17, scope: !318)
!320 = !DILocation(line: 2237, column: 7, scope: !318)
!321 = !DILocation(line: 2237, column: 23, scope: !318)
!322 = !DILocation(line: 2239, column: 48, scope: !318)
!323 = !DILocation(line: 2239, column: 38, scope: !318)
!324 = !DILocation(line: 2239, column: 54, scope: !318)
!325 = !DILocation(line: 2239, column: 25, scope: !318)
!326 = !DILocation(line: 2239, column: 85, scope: !318)
!327 = !DILocation(line: 2239, column: 75, scope: !318)
!328 = !DILocation(line: 2239, column: 91, scope: !318)
!329 = !DILocation(line: 2239, column: 70, scope: !318)
!330 = !DILocation(line: 2239, column: 63, scope: !318)
!331 = !DILocation(line: 2239, column: 103, scope: !318)
!332 = !DILocation(line: 2239, column: 23, scope: !318)
!333 = !DILocation(line: 2239, column: 5, scope: !318)
!334 = !DILocation(line: 2243, column: 5, scope: !318)
!335 = !DILocation(line: 2245, column: 1, scope: !318)
!336 = distinct !DISubprogram(name: "HAL_SYSTICK_CLKSourceConfig", scope: !1, file: !1, line: 369, type: !9, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!337 = !DILocation(line: 373, column: 7, scope: !336)
!338 = !DILocation(line: 373, column: 17, scope: !336)
!339 = !DILocation(line: 375, column: 19, scope: !336)
!340 = !DILocation(line: 376, column: 3, scope: !336)
!341 = !DILocation(line: 379, column: 19, scope: !336)
!342 = !DILocation(line: 381, column: 1, scope: !336)
!343 = distinct !DISubprogram(name: "HAL_SYSTICK_IRQHandler", scope: !1, file: !1, line: 387, type: !9, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!344 = !DILocation(line: 389, column: 3, scope: !343)
!345 = !DILocation(line: 390, column: 1, scope: !343)
!346 = distinct !DISubprogram(name: "HAL_SYSTICK_Callback", scope: !1, file: !1, line: 396, type: !9, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!347 = !DILocation(line: 401, column: 1, scope: !346)
