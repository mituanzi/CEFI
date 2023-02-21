; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_exti.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_exti.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.EXTI_HandleTypeDef = type { i32, void ()*, void ()* }
%struct.EXTI_ConfigTypeDef = type { i32, i32, i32, i32 }
%struct.EXTI_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], [4 x i32], i32, [3 x i32], i32, i32, [2 x i32], i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_EXTI_SetConfigLine(%struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_ConfigTypeDef* %pExtiConfig) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %pExtiConfig.addr = alloca %struct.EXTI_ConfigTypeDef*, align 4
  %regaddr = alloca i32*, align 4
  %regval = alloca i32, align 4
  %linepos = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  store %struct.EXTI_ConfigTypeDef* %pExtiConfig, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !10
  %cmp = icmp eq %struct.EXTI_HandleTypeDef* %0, null, !dbg !11
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !12

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !13
  %cmp1 = icmp eq %struct.EXTI_ConfigTypeDef* %1, null, !dbg !14
  br i1 %cmp1, label %if.then, label %if.end, !dbg !15

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, i8* %retval, align 1, !dbg !16
  br label %return, !dbg !16

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !17
  %Line = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %2, i32 0, i32 0, !dbg !18
  %3 = load i32, i32* %Line, align 4, !dbg !18
  %4 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !19
  %Line2 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %4, i32 0, i32 0, !dbg !20
  store i32 %3, i32* %Line2, align 4, !dbg !21
  %5 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !22
  %Line3 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %5, i32 0, i32 0, !dbg !23
  %6 = load i32, i32* %Line3, align 4, !dbg !23
  %and = and i32 %6, 65536, !dbg !24
  %shr = lshr i32 %and, 16, !dbg !25
  store i32 %shr, i32* %offset, align 4, !dbg !26
  %7 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !27
  %Line4 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %7, i32 0, i32 0, !dbg !28
  %8 = load i32, i32* %Line4, align 4, !dbg !28
  %and5 = and i32 %8, 31, !dbg !29
  store i32 %and5, i32* %linepos, align 4, !dbg !30
  %9 = load i32, i32* %linepos, align 4, !dbg !31
  %shl = shl i32 1, %9, !dbg !32
  store i32 %shl, i32* %maskline, align 4, !dbg !33
  %10 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !34
  %Line6 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %10, i32 0, i32 0, !dbg !35
  %11 = load i32, i32* %Line6, align 4, !dbg !35
  %and7 = and i32 %11, 33554432, !dbg !36
  %cmp8 = icmp ne i32 %and7, 0, !dbg !37
  br i1 %cmp8, label %if.then9, label %if.end43, !dbg !38

if.then9:                                         ; preds = %if.end
  %12 = load i32, i32* %offset, align 4, !dbg !39
  %mul = mul i32 8, %12, !dbg !40
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), i32 %mul, !dbg !41
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !42
  %13 = load i32*, i32** %regaddr, align 4, !dbg !43
  %14 = load volatile i32, i32* %13, align 4, !dbg !44
  store i32 %14, i32* %regval, align 4, !dbg !45
  %15 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !46
  %Trigger = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %15, i32 0, i32 2, !dbg !47
  %16 = load i32, i32* %Trigger, align 4, !dbg !47
  %and10 = and i32 %16, 1, !dbg !48
  %cmp11 = icmp ne i32 %and10, 0, !dbg !49
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !50

if.then12:                                        ; preds = %if.then9
  %17 = load i32, i32* %maskline, align 4, !dbg !51
  %18 = load i32, i32* %regval, align 4, !dbg !52
  %or = or i32 %18, %17, !dbg !52
  store i32 %or, i32* %regval, align 4, !dbg !52
  br label %if.end14, !dbg !53

if.else:                                          ; preds = %if.then9
  %19 = load i32, i32* %maskline, align 4, !dbg !54
  %neg = xor i32 %19, -1, !dbg !55
  %20 = load i32, i32* %regval, align 4, !dbg !56
  %and13 = and i32 %20, %neg, !dbg !56
  store i32 %and13, i32* %regval, align 4, !dbg !56
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %21 = load i32, i32* %regval, align 4, !dbg !57
  %22 = load i32*, i32** %regaddr, align 4, !dbg !58
  store volatile i32 %21, i32* %22, align 4, !dbg !59
  %23 = load i32, i32* %offset, align 4, !dbg !60
  %mul15 = mul i32 8, %23, !dbg !61
  %add.ptr16 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), i32 %mul15, !dbg !62
  store i32* %add.ptr16, i32** %regaddr, align 4, !dbg !63
  %24 = load i32*, i32** %regaddr, align 4, !dbg !64
  %25 = load volatile i32, i32* %24, align 4, !dbg !65
  store i32 %25, i32* %regval, align 4, !dbg !66
  %26 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !67
  %Trigger17 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %26, i32 0, i32 2, !dbg !68
  %27 = load i32, i32* %Trigger17, align 4, !dbg !68
  %and18 = and i32 %27, 2, !dbg !69
  %cmp19 = icmp ne i32 %and18, 0, !dbg !70
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !71

if.then20:                                        ; preds = %if.end14
  %28 = load i32, i32* %maskline, align 4, !dbg !72
  %29 = load i32, i32* %regval, align 4, !dbg !73
  %or21 = or i32 %29, %28, !dbg !73
  store i32 %or21, i32* %regval, align 4, !dbg !73
  br label %if.end25, !dbg !74

if.else22:                                        ; preds = %if.end14
  %30 = load i32, i32* %maskline, align 4, !dbg !75
  %neg23 = xor i32 %30, -1, !dbg !76
  %31 = load i32, i32* %regval, align 4, !dbg !77
  %and24 = and i32 %31, %neg23, !dbg !77
  store i32 %and24, i32* %regval, align 4, !dbg !77
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then20
  %32 = load i32, i32* %regval, align 4, !dbg !78
  %33 = load i32*, i32** %regaddr, align 4, !dbg !79
  store volatile i32 %32, i32* %33, align 4, !dbg !80
  %34 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !81
  %Line26 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %34, i32 0, i32 0, !dbg !82
  %35 = load i32, i32* %Line26, align 4, !dbg !82
  %and27 = and i32 %35, 100663296, !dbg !83
  %cmp28 = icmp eq i32 %and27, 100663296, !dbg !84
  br i1 %cmp28, label %if.then29, label %if.end42, !dbg !85

if.then29:                                        ; preds = %if.end25
  %36 = load i32, i32* %linepos, align 4, !dbg !86
  %shr30 = lshr i32 %36, 2, !dbg !87
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr30, !dbg !88
  %37 = load volatile i32, i32* %arrayidx, align 4, !dbg !88
  store i32 %37, i32* %regval, align 4, !dbg !89
  %38 = load i32, i32* %linepos, align 4, !dbg !90
  %and31 = and i32 %38, 3, !dbg !91
  %mul32 = mul i32 8, %and31, !dbg !92
  %shl33 = shl i32 255, %mul32, !dbg !93
  %neg34 = xor i32 %shl33, -1, !dbg !94
  %39 = load i32, i32* %regval, align 4, !dbg !95
  %and35 = and i32 %39, %neg34, !dbg !95
  store i32 %and35, i32* %regval, align 4, !dbg !95
  %40 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !96
  %GPIOSel = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %40, i32 0, i32 3, !dbg !97
  %41 = load i32, i32* %GPIOSel, align 4, !dbg !97
  %42 = load i32, i32* %linepos, align 4, !dbg !98
  %and36 = and i32 %42, 3, !dbg !99
  %mul37 = mul i32 8, %and36, !dbg !100
  %shl38 = shl i32 %41, %mul37, !dbg !101
  %43 = load i32, i32* %regval, align 4, !dbg !102
  %or39 = or i32 %43, %shl38, !dbg !102
  store i32 %or39, i32* %regval, align 4, !dbg !102
  %44 = load i32, i32* %regval, align 4, !dbg !103
  %45 = load i32, i32* %linepos, align 4, !dbg !104
  %shr40 = lshr i32 %45, 2, !dbg !105
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr40, !dbg !106
  store volatile i32 %44, i32* %arrayidx41, align 4, !dbg !107
  br label %if.end42, !dbg !108

if.end42:                                         ; preds = %if.then29, %if.end25
  br label %if.end43, !dbg !109

if.end43:                                         ; preds = %if.end42, %if.end
  %46 = load i32, i32* %offset, align 4, !dbg !110
  %mul44 = mul i32 4, %46, !dbg !111
  %add.ptr45 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), i32 %mul44, !dbg !112
  store i32* %add.ptr45, i32** %regaddr, align 4, !dbg !113
  %47 = load i32*, i32** %regaddr, align 4, !dbg !114
  %48 = load volatile i32, i32* %47, align 4, !dbg !115
  store i32 %48, i32* %regval, align 4, !dbg !116
  %49 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !117
  %Mode = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %49, i32 0, i32 1, !dbg !118
  %50 = load i32, i32* %Mode, align 4, !dbg !118
  %and46 = and i32 %50, 1, !dbg !119
  %cmp47 = icmp ne i32 %and46, 0, !dbg !120
  br i1 %cmp47, label %if.then48, label %if.else50, !dbg !121

if.then48:                                        ; preds = %if.end43
  %51 = load i32, i32* %maskline, align 4, !dbg !122
  %52 = load i32, i32* %regval, align 4, !dbg !123
  %or49 = or i32 %52, %51, !dbg !123
  store i32 %or49, i32* %regval, align 4, !dbg !123
  br label %if.end53, !dbg !124

if.else50:                                        ; preds = %if.end43
  %53 = load i32, i32* %maskline, align 4, !dbg !125
  %neg51 = xor i32 %53, -1, !dbg !126
  %54 = load i32, i32* %regval, align 4, !dbg !127
  %and52 = and i32 %54, %neg51, !dbg !127
  store i32 %and52, i32* %regval, align 4, !dbg !127
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.then48
  %55 = load i32, i32* %regval, align 4, !dbg !128
  %56 = load i32*, i32** %regaddr, align 4, !dbg !129
  store volatile i32 %55, i32* %56, align 4, !dbg !130
  %57 = load i32, i32* %offset, align 4, !dbg !131
  %mul54 = mul i32 4, %57, !dbg !132
  %add.ptr55 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), i32 %mul54, !dbg !133
  store i32* %add.ptr55, i32** %regaddr, align 4, !dbg !134
  %58 = load i32*, i32** %regaddr, align 4, !dbg !135
  %59 = load volatile i32, i32* %58, align 4, !dbg !136
  store i32 %59, i32* %regval, align 4, !dbg !137
  %60 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !138
  %Mode56 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %60, i32 0, i32 1, !dbg !139
  %61 = load i32, i32* %Mode56, align 4, !dbg !139
  %and57 = and i32 %61, 2, !dbg !140
  %cmp58 = icmp ne i32 %and57, 0, !dbg !141
  br i1 %cmp58, label %if.then59, label %if.else61, !dbg !142

if.then59:                                        ; preds = %if.end53
  %62 = load i32, i32* %maskline, align 4, !dbg !143
  %63 = load i32, i32* %regval, align 4, !dbg !144
  %or60 = or i32 %63, %62, !dbg !144
  store i32 %or60, i32* %regval, align 4, !dbg !144
  br label %if.end64, !dbg !145

if.else61:                                        ; preds = %if.end53
  %64 = load i32, i32* %maskline, align 4, !dbg !146
  %neg62 = xor i32 %64, -1, !dbg !147
  %65 = load i32, i32* %regval, align 4, !dbg !148
  %and63 = and i32 %65, %neg62, !dbg !148
  store i32 %and63, i32* %regval, align 4, !dbg !148
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %if.then59
  %66 = load i32, i32* %regval, align 4, !dbg !149
  %67 = load i32*, i32** %regaddr, align 4, !dbg !150
  store volatile i32 %66, i32* %67, align 4, !dbg !151
  store i8 0, i8* %retval, align 1, !dbg !152
  br label %return, !dbg !152

return:                                           ; preds = %if.end64, %if.then
  %68 = load i8, i8* %retval, align 1, !dbg !153
  ret i8 %68, !dbg !153
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_EXTI_GetConfigLine(%struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_ConfigTypeDef* %pExtiConfig) #0 !dbg !154 {
entry:
  %retval = alloca i8, align 1
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %pExtiConfig.addr = alloca %struct.EXTI_ConfigTypeDef*, align 4
  %regaddr = alloca i32*, align 4
  %regval = alloca i32, align 4
  %linepos = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  store %struct.EXTI_ConfigTypeDef* %pExtiConfig, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !155
  %cmp = icmp eq %struct.EXTI_HandleTypeDef* %0, null, !dbg !156
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !157

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !158
  %cmp1 = icmp eq %struct.EXTI_ConfigTypeDef* %1, null, !dbg !159
  br i1 %cmp1, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, i8* %retval, align 1, !dbg !161
  br label %return, !dbg !161

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !162
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 0, !dbg !163
  %3 = load i32, i32* %Line, align 4, !dbg !163
  %4 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !164
  %Line2 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %4, i32 0, i32 0, !dbg !165
  store i32 %3, i32* %Line2, align 4, !dbg !166
  %5 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !167
  %Line3 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %5, i32 0, i32 0, !dbg !168
  %6 = load i32, i32* %Line3, align 4, !dbg !168
  %and = and i32 %6, 65536, !dbg !169
  %shr = lshr i32 %and, 16, !dbg !170
  store i32 %shr, i32* %offset, align 4, !dbg !171
  %7 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !172
  %Line4 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %7, i32 0, i32 0, !dbg !173
  %8 = load i32, i32* %Line4, align 4, !dbg !173
  %and5 = and i32 %8, 31, !dbg !174
  store i32 %and5, i32* %linepos, align 4, !dbg !175
  %9 = load i32, i32* %linepos, align 4, !dbg !176
  %shl = shl i32 1, %9, !dbg !177
  store i32 %shl, i32* %maskline, align 4, !dbg !178
  %10 = load i32, i32* %offset, align 4, !dbg !179
  %mul = mul i32 4, %10, !dbg !180
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), i32 %mul, !dbg !181
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !182
  %11 = load i32*, i32** %regaddr, align 4, !dbg !183
  %12 = load volatile i32, i32* %11, align 4, !dbg !184
  store i32 %12, i32* %regval, align 4, !dbg !185
  %13 = load i32, i32* %regval, align 4, !dbg !186
  %14 = load i32, i32* %maskline, align 4, !dbg !187
  %and6 = and i32 %13, %14, !dbg !188
  %cmp7 = icmp ne i32 %and6, 0, !dbg !189
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !190

if.then8:                                         ; preds = %if.end
  %15 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !191
  %Mode = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %15, i32 0, i32 1, !dbg !192
  store i32 1, i32* %Mode, align 4, !dbg !193
  br label %if.end10, !dbg !194

if.else:                                          ; preds = %if.end
  %16 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !195
  %Mode9 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %16, i32 0, i32 1, !dbg !196
  store i32 0, i32* %Mode9, align 4, !dbg !197
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %17 = load i32, i32* %offset, align 4, !dbg !198
  %mul11 = mul i32 4, %17, !dbg !199
  %add.ptr12 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), i32 %mul11, !dbg !200
  store i32* %add.ptr12, i32** %regaddr, align 4, !dbg !201
  %18 = load i32*, i32** %regaddr, align 4, !dbg !202
  %19 = load volatile i32, i32* %18, align 4, !dbg !203
  store i32 %19, i32* %regval, align 4, !dbg !204
  %20 = load i32, i32* %regval, align 4, !dbg !205
  %21 = load i32, i32* %maskline, align 4, !dbg !206
  %and13 = and i32 %20, %21, !dbg !207
  %cmp14 = icmp ne i32 %and13, 0, !dbg !208
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !209

if.then15:                                        ; preds = %if.end10
  %22 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !210
  %Mode16 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %22, i32 0, i32 1, !dbg !211
  %23 = load i32, i32* %Mode16, align 4, !dbg !212
  %or = or i32 %23, 2, !dbg !212
  store i32 %or, i32* %Mode16, align 4, !dbg !212
  br label %if.end17, !dbg !213

if.end17:                                         ; preds = %if.then15, %if.end10
  %24 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !214
  %Line18 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %24, i32 0, i32 0, !dbg !215
  %25 = load i32, i32* %Line18, align 4, !dbg !215
  %and19 = and i32 %25, 33554432, !dbg !216
  %cmp20 = icmp ne i32 %and19, 0, !dbg !217
  br i1 %cmp20, label %if.then21, label %if.else50, !dbg !218

if.then21:                                        ; preds = %if.end17
  %26 = load i32, i32* %offset, align 4, !dbg !219
  %mul22 = mul i32 8, %26, !dbg !220
  %add.ptr23 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), i32 %mul22, !dbg !221
  store i32* %add.ptr23, i32** %regaddr, align 4, !dbg !222
  %27 = load i32*, i32** %regaddr, align 4, !dbg !223
  %28 = load volatile i32, i32* %27, align 4, !dbg !224
  store i32 %28, i32* %regval, align 4, !dbg !225
  %29 = load i32, i32* %regval, align 4, !dbg !226
  %30 = load i32, i32* %maskline, align 4, !dbg !227
  %and24 = and i32 %29, %30, !dbg !228
  %cmp25 = icmp ne i32 %and24, 0, !dbg !229
  br i1 %cmp25, label %if.then26, label %if.else27, !dbg !230

if.then26:                                        ; preds = %if.then21
  %31 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !231
  %Trigger = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %31, i32 0, i32 2, !dbg !232
  store i32 1, i32* %Trigger, align 4, !dbg !233
  br label %if.end29, !dbg !234

if.else27:                                        ; preds = %if.then21
  %32 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !235
  %Trigger28 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %32, i32 0, i32 2, !dbg !236
  store i32 0, i32* %Trigger28, align 4, !dbg !237
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %33 = load i32, i32* %offset, align 4, !dbg !238
  %mul30 = mul i32 8, %33, !dbg !239
  %add.ptr31 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), i32 %mul30, !dbg !240
  store i32* %add.ptr31, i32** %regaddr, align 4, !dbg !241
  %34 = load i32*, i32** %regaddr, align 4, !dbg !242
  %35 = load volatile i32, i32* %34, align 4, !dbg !243
  store i32 %35, i32* %regval, align 4, !dbg !244
  %36 = load i32, i32* %regval, align 4, !dbg !245
  %37 = load i32, i32* %maskline, align 4, !dbg !246
  %and32 = and i32 %36, %37, !dbg !247
  %cmp33 = icmp ne i32 %and32, 0, !dbg !248
  br i1 %cmp33, label %if.then34, label %if.end37, !dbg !249

if.then34:                                        ; preds = %if.end29
  %38 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !250
  %Trigger35 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %38, i32 0, i32 2, !dbg !251
  %39 = load i32, i32* %Trigger35, align 4, !dbg !252
  %or36 = or i32 %39, 2, !dbg !252
  store i32 %or36, i32* %Trigger35, align 4, !dbg !252
  br label %if.end37, !dbg !253

if.end37:                                         ; preds = %if.then34, %if.end29
  %40 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !254
  %Line38 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %40, i32 0, i32 0, !dbg !255
  %41 = load i32, i32* %Line38, align 4, !dbg !255
  %and39 = and i32 %41, 100663296, !dbg !256
  %cmp40 = icmp eq i32 %and39, 100663296, !dbg !257
  br i1 %cmp40, label %if.then41, label %if.else47, !dbg !258

if.then41:                                        ; preds = %if.end37
  %42 = load i32, i32* %linepos, align 4, !dbg !259
  %shr42 = lshr i32 %42, 2, !dbg !260
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr42, !dbg !261
  %43 = load volatile i32, i32* %arrayidx, align 4, !dbg !261
  store i32 %43, i32* %regval, align 4, !dbg !262
  %44 = load i32, i32* %regval, align 4, !dbg !263
  %45 = load i32, i32* %linepos, align 4, !dbg !264
  %and43 = and i32 %45, 3, !dbg !265
  %sub = sub i32 3, %and43, !dbg !266
  %mul44 = mul i32 8, %sub, !dbg !267
  %shl45 = shl i32 %44, %mul44, !dbg !268
  %shr46 = lshr i32 %shl45, 24, !dbg !269
  %46 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !270
  %GPIOSel = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %46, i32 0, i32 3, !dbg !271
  store i32 %shr46, i32* %GPIOSel, align 4, !dbg !272
  br label %if.end49, !dbg !273

if.else47:                                        ; preds = %if.end37
  %47 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !274
  %GPIOSel48 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %47, i32 0, i32 3, !dbg !275
  store i32 0, i32* %GPIOSel48, align 4, !dbg !276
  br label %if.end49

if.end49:                                         ; preds = %if.else47, %if.then41
  br label %if.end53, !dbg !277

if.else50:                                        ; preds = %if.end17
  %48 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !278
  %Trigger51 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %48, i32 0, i32 2, !dbg !279
  store i32 0, i32* %Trigger51, align 4, !dbg !280
  %49 = load %struct.EXTI_ConfigTypeDef*, %struct.EXTI_ConfigTypeDef** %pExtiConfig.addr, align 4, !dbg !281
  %GPIOSel52 = getelementptr inbounds %struct.EXTI_ConfigTypeDef, %struct.EXTI_ConfigTypeDef* %49, i32 0, i32 3, !dbg !282
  store i32 0, i32* %GPIOSel52, align 4, !dbg !283
  br label %if.end53

if.end53:                                         ; preds = %if.else50, %if.end49
  store i8 0, i8* %retval, align 1, !dbg !284
  br label %return, !dbg !284

return:                                           ; preds = %if.end53, %if.then
  %50 = load i8, i8* %retval, align 1, !dbg !285
  ret i8 %50, !dbg !285
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_EXTI_ClearConfigLine(%struct.EXTI_HandleTypeDef* %hexti) #0 !dbg !286 {
entry:
  %retval = alloca i8, align 1
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %regaddr = alloca i32*, align 4
  %regval = alloca i32, align 4
  %linepos = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !287
  %cmp = icmp eq %struct.EXTI_HandleTypeDef* %0, null, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !287

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !289
  br label %return, !dbg !289

if.end:                                           ; preds = %entry
  %1 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !290
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %1, i32 0, i32 0, !dbg !291
  %2 = load i32, i32* %Line, align 4, !dbg !291
  %and = and i32 %2, 65536, !dbg !292
  %shr = lshr i32 %and, 16, !dbg !293
  store i32 %shr, i32* %offset, align 4, !dbg !294
  %3 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !295
  %Line1 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %3, i32 0, i32 0, !dbg !296
  %4 = load i32, i32* %Line1, align 4, !dbg !296
  %and2 = and i32 %4, 31, !dbg !297
  store i32 %and2, i32* %linepos, align 4, !dbg !298
  %5 = load i32, i32* %linepos, align 4, !dbg !299
  %shl = shl i32 1, %5, !dbg !300
  store i32 %shl, i32* %maskline, align 4, !dbg !301
  %6 = load i32, i32* %offset, align 4, !dbg !302
  %mul = mul i32 4, %6, !dbg !303
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), i32 %mul, !dbg !304
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !305
  %7 = load i32*, i32** %regaddr, align 4, !dbg !306
  %8 = load volatile i32, i32* %7, align 4, !dbg !307
  %9 = load i32, i32* %maskline, align 4, !dbg !308
  %neg = xor i32 %9, -1, !dbg !309
  %and3 = and i32 %8, %neg, !dbg !310
  store i32 %and3, i32* %regval, align 4, !dbg !311
  %10 = load i32, i32* %regval, align 4, !dbg !312
  %11 = load i32*, i32** %regaddr, align 4, !dbg !313
  store volatile i32 %10, i32* %11, align 4, !dbg !314
  %12 = load i32, i32* %offset, align 4, !dbg !315
  %mul4 = mul i32 4, %12, !dbg !316
  %add.ptr5 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), i32 %mul4, !dbg !317
  store i32* %add.ptr5, i32** %regaddr, align 4, !dbg !318
  %13 = load i32*, i32** %regaddr, align 4, !dbg !319
  %14 = load volatile i32, i32* %13, align 4, !dbg !320
  %15 = load i32, i32* %maskline, align 4, !dbg !321
  %neg6 = xor i32 %15, -1, !dbg !322
  %and7 = and i32 %14, %neg6, !dbg !323
  store i32 %and7, i32* %regval, align 4, !dbg !324
  %16 = load i32, i32* %regval, align 4, !dbg !325
  %17 = load i32*, i32** %regaddr, align 4, !dbg !326
  store volatile i32 %16, i32* %17, align 4, !dbg !327
  %18 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !328
  %Line8 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %18, i32 0, i32 0, !dbg !329
  %19 = load i32, i32* %Line8, align 4, !dbg !329
  %and9 = and i32 %19, 33554432, !dbg !330
  %cmp10 = icmp ne i32 %and9, 0, !dbg !331
  br i1 %cmp10, label %if.then11, label %if.end33, !dbg !332

if.then11:                                        ; preds = %if.end
  %20 = load i32, i32* %offset, align 4, !dbg !333
  %mul12 = mul i32 8, %20, !dbg !334
  %add.ptr13 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), i32 %mul12, !dbg !335
  store i32* %add.ptr13, i32** %regaddr, align 4, !dbg !336
  %21 = load i32*, i32** %regaddr, align 4, !dbg !337
  %22 = load volatile i32, i32* %21, align 4, !dbg !338
  %23 = load i32, i32* %maskline, align 4, !dbg !339
  %neg14 = xor i32 %23, -1, !dbg !340
  %and15 = and i32 %22, %neg14, !dbg !341
  store i32 %and15, i32* %regval, align 4, !dbg !342
  %24 = load i32, i32* %regval, align 4, !dbg !343
  %25 = load i32*, i32** %regaddr, align 4, !dbg !344
  store volatile i32 %24, i32* %25, align 4, !dbg !345
  %26 = load i32, i32* %offset, align 4, !dbg !346
  %mul16 = mul i32 8, %26, !dbg !347
  %add.ptr17 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), i32 %mul16, !dbg !348
  store i32* %add.ptr17, i32** %regaddr, align 4, !dbg !349
  %27 = load i32*, i32** %regaddr, align 4, !dbg !350
  %28 = load volatile i32, i32* %27, align 4, !dbg !351
  %29 = load i32, i32* %maskline, align 4, !dbg !352
  %neg18 = xor i32 %29, -1, !dbg !353
  %and19 = and i32 %28, %neg18, !dbg !354
  store i32 %and19, i32* %regval, align 4, !dbg !355
  %30 = load i32, i32* %regval, align 4, !dbg !356
  %31 = load i32*, i32** %regaddr, align 4, !dbg !357
  store volatile i32 %30, i32* %31, align 4, !dbg !358
  %32 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !359
  %Line20 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %32, i32 0, i32 0, !dbg !360
  %33 = load i32, i32* %Line20, align 4, !dbg !360
  %and21 = and i32 %33, 100663296, !dbg !361
  %cmp22 = icmp eq i32 %and21, 100663296, !dbg !362
  br i1 %cmp22, label %if.then23, label %if.end32, !dbg !363

if.then23:                                        ; preds = %if.then11
  %34 = load i32, i32* %linepos, align 4, !dbg !364
  %shr24 = lshr i32 %34, 2, !dbg !365
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr24, !dbg !366
  %35 = load volatile i32, i32* %arrayidx, align 4, !dbg !366
  store i32 %35, i32* %regval, align 4, !dbg !367
  %36 = load i32, i32* %linepos, align 4, !dbg !368
  %and25 = and i32 %36, 3, !dbg !369
  %mul26 = mul i32 8, %and25, !dbg !370
  %shl27 = shl i32 255, %mul26, !dbg !371
  %neg28 = xor i32 %shl27, -1, !dbg !372
  %37 = load i32, i32* %regval, align 4, !dbg !373
  %and29 = and i32 %37, %neg28, !dbg !373
  store i32 %and29, i32* %regval, align 4, !dbg !373
  %38 = load i32, i32* %regval, align 4, !dbg !374
  %39 = load i32, i32* %linepos, align 4, !dbg !375
  %shr30 = lshr i32 %39, 2, !dbg !376
  %arrayidx31 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr30, !dbg !377
  store volatile i32 %38, i32* %arrayidx31, align 4, !dbg !378
  br label %if.end32, !dbg !379

if.end32:                                         ; preds = %if.then23, %if.then11
  br label %if.end33, !dbg !380

if.end33:                                         ; preds = %if.end32, %if.end
  store i8 0, i8* %retval, align 1, !dbg !381
  br label %return, !dbg !381

return:                                           ; preds = %if.end33, %if.then
  %40 = load i8, i8* %retval, align 1, !dbg !382
  ret i8 %40, !dbg !382
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_EXTI_RegisterCallback(%struct.EXTI_HandleTypeDef* %hexti, i8 zeroext %CallbackID, void ()* %pPendingCbfn) #0 !dbg !383 {
entry:
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %CallbackID.addr = alloca i8, align 1
  %pPendingCbfn.addr = alloca void ()*, align 4
  %status = alloca i8, align 1
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  store i8 %CallbackID, i8* %CallbackID.addr, align 1
  store void ()* %pPendingCbfn, void ()** %pPendingCbfn.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !384
  %0 = load i8, i8* %CallbackID.addr, align 1, !dbg !385
  %conv = zext i8 %0 to i32, !dbg !385
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ], !dbg !386

sw.bb:                                            ; preds = %entry
  %1 = load void ()*, void ()** %pPendingCbfn.addr, align 4, !dbg !387
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !388
  %RisingCallback = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 1, !dbg !389
  store void ()* %1, void ()** %RisingCallback, align 4, !dbg !390
  %3 = load void ()*, void ()** %pPendingCbfn.addr, align 4, !dbg !391
  %4 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !392
  %FallingCallback = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %4, i32 0, i32 2, !dbg !393
  store void ()* %3, void ()** %FallingCallback, align 4, !dbg !394
  br label %sw.epilog, !dbg !395

sw.bb1:                                           ; preds = %entry
  %5 = load void ()*, void ()** %pPendingCbfn.addr, align 4, !dbg !396
  %6 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !397
  %RisingCallback2 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %6, i32 0, i32 1, !dbg !398
  store void ()* %5, void ()** %RisingCallback2, align 4, !dbg !399
  br label %sw.epilog, !dbg !400

sw.bb3:                                           ; preds = %entry
  %7 = load void ()*, void ()** %pPendingCbfn.addr, align 4, !dbg !401
  %8 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !402
  %FallingCallback4 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %8, i32 0, i32 2, !dbg !403
  store void ()* %7, void ()** %FallingCallback4, align 4, !dbg !404
  br label %sw.epilog, !dbg !405

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !406
  br label %sw.epilog, !dbg !407

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %9 = load i8, i8* %status, align 1, !dbg !408
  ret i8 %9, !dbg !409
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_EXTI_GetHandle(%struct.EXTI_HandleTypeDef* %hexti, i32 %ExtiLine) #0 !dbg !410 {
entry:
  %retval = alloca i8, align 1
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %ExtiLine.addr = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  store i32 %ExtiLine, i32* %ExtiLine.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !411
  %cmp = icmp eq %struct.EXTI_HandleTypeDef* %0, null, !dbg !412
  br i1 %cmp, label %if.then, label %if.end, !dbg !411

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !413
  br label %return, !dbg !413

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ExtiLine.addr, align 4, !dbg !414
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !415
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 0, !dbg !416
  store i32 %1, i32* %Line, align 4, !dbg !417
  store i8 0, i8* %retval, align 1, !dbg !418
  br label %return, !dbg !418

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, i8* %retval, align 1, !dbg !419
  ret i8 %3, !dbg !419
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_EXTI_IRQHandler(%struct.EXTI_HandleTypeDef* %hexti) #0 !dbg !420 {
entry:
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %regaddr = alloca i32*, align 4
  %regval = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !421
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %0, i32 0, i32 0, !dbg !422
  %1 = load i32, i32* %Line, align 4, !dbg !422
  %and = and i32 %1, 65536, !dbg !423
  %shr = lshr i32 %and, 16, !dbg !424
  store i32 %shr, i32* %offset, align 4, !dbg !425
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !426
  %Line1 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 0, !dbg !427
  %3 = load i32, i32* %Line1, align 4, !dbg !427
  %and2 = and i32 %3, 31, !dbg !428
  %shl = shl i32 1, %and2, !dbg !429
  store i32 %shl, i32* %maskline, align 4, !dbg !430
  %4 = load i32, i32* %offset, align 4, !dbg !431
  %mul = mul i32 8, %4, !dbg !432
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), i32 %mul, !dbg !433
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !434
  %5 = load i32*, i32** %regaddr, align 4, !dbg !435
  %6 = load volatile i32, i32* %5, align 4, !dbg !436
  %7 = load i32, i32* %maskline, align 4, !dbg !437
  %and3 = and i32 %6, %7, !dbg !438
  store i32 %and3, i32* %regval, align 4, !dbg !439
  %8 = load i32, i32* %regval, align 4, !dbg !440
  %cmp = icmp ne i32 %8, 0, !dbg !441
  br i1 %cmp, label %if.then, label %if.end7, !dbg !440

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %maskline, align 4, !dbg !442
  %10 = load i32*, i32** %regaddr, align 4, !dbg !443
  store volatile i32 %9, i32* %10, align 4, !dbg !444
  %11 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !445
  %RisingCallback = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %11, i32 0, i32 1, !dbg !446
  %12 = load void ()*, void ()** %RisingCallback, align 4, !dbg !446
  %cmp4 = icmp ne void ()* %12, null, !dbg !447
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !445

if.then5:                                         ; preds = %if.then
  %13 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !448
  %RisingCallback6 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %13, i32 0, i32 1, !dbg !449
  %14 = load void ()*, void ()** %RisingCallback6, align 4, !dbg !449
  call arm_aapcs_vfpcc void %14(), !dbg !448
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7, !dbg !451

if.end7:                                          ; preds = %if.end, %entry
  %15 = load i32, i32* %offset, align 4, !dbg !452
  %mul8 = mul i32 8, %15, !dbg !453
  %add.ptr9 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), i32 %mul8, !dbg !454
  store i32* %add.ptr9, i32** %regaddr, align 4, !dbg !455
  %16 = load i32*, i32** %regaddr, align 4, !dbg !456
  %17 = load volatile i32, i32* %16, align 4, !dbg !457
  %18 = load i32, i32* %maskline, align 4, !dbg !458
  %and10 = and i32 %17, %18, !dbg !459
  store i32 %and10, i32* %regval, align 4, !dbg !460
  %19 = load i32, i32* %regval, align 4, !dbg !461
  %cmp11 = icmp ne i32 %19, 0, !dbg !462
  br i1 %cmp11, label %if.then12, label %if.end17, !dbg !461

if.then12:                                        ; preds = %if.end7
  %20 = load i32, i32* %maskline, align 4, !dbg !463
  %21 = load i32*, i32** %regaddr, align 4, !dbg !464
  store volatile i32 %20, i32* %21, align 4, !dbg !465
  %22 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !466
  %FallingCallback = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %22, i32 0, i32 2, !dbg !467
  %23 = load void ()*, void ()** %FallingCallback, align 4, !dbg !467
  %cmp13 = icmp ne void ()* %23, null, !dbg !468
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !466

if.then14:                                        ; preds = %if.then12
  %24 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !469
  %FallingCallback15 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %24, i32 0, i32 2, !dbg !470
  %25 = load void ()*, void ()** %FallingCallback15, align 4, !dbg !470
  call arm_aapcs_vfpcc void %25(), !dbg !469
  br label %if.end16, !dbg !471

if.end16:                                         ; preds = %if.then14, %if.then12
  br label %if.end17, !dbg !472

if.end17:                                         ; preds = %if.end16, %if.end7
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_EXTI_GetPending(%struct.EXTI_HandleTypeDef* %hexti, i32 %Edge) #0 !dbg !474 {
entry:
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %Edge.addr = alloca i32, align 4
  %regaddr = alloca i32*, align 4
  %regval = alloca i32, align 4
  %linepos = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  store i32 %Edge, i32* %Edge.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !475
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %0, i32 0, i32 0, !dbg !476
  %1 = load i32, i32* %Line, align 4, !dbg !476
  %and = and i32 %1, 65536, !dbg !477
  %shr = lshr i32 %and, 16, !dbg !478
  store i32 %shr, i32* %offset, align 4, !dbg !479
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !480
  %Line1 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 0, !dbg !481
  %3 = load i32, i32* %Line1, align 4, !dbg !481
  %and2 = and i32 %3, 31, !dbg !482
  store i32 %and2, i32* %linepos, align 4, !dbg !483
  %4 = load i32, i32* %linepos, align 4, !dbg !484
  %shl = shl i32 1, %4, !dbg !485
  store i32 %shl, i32* %maskline, align 4, !dbg !486
  %5 = load i32, i32* %Edge.addr, align 4, !dbg !487
  %cmp = icmp ne i32 %5, 1, !dbg !488
  br i1 %cmp, label %if.then, label %if.else, !dbg !487

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %offset, align 4, !dbg !489
  %mul = mul i32 8, %6, !dbg !490
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), i32 %mul, !dbg !491
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !492
  br label %if.end, !dbg !493

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %offset, align 4, !dbg !494
  %mul3 = mul i32 8, %7, !dbg !495
  %add.ptr4 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), i32 %mul3, !dbg !496
  store i32* %add.ptr4, i32** %regaddr, align 4, !dbg !497
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32*, i32** %regaddr, align 4, !dbg !498
  %9 = load volatile i32, i32* %8, align 4, !dbg !499
  %10 = load i32, i32* %maskline, align 4, !dbg !500
  %and5 = and i32 %9, %10, !dbg !501
  %11 = load i32, i32* %linepos, align 4, !dbg !502
  %shr6 = lshr i32 %and5, %11, !dbg !503
  store i32 %shr6, i32* %regval, align 4, !dbg !504
  %12 = load i32, i32* %regval, align 4, !dbg !505
  ret i32 %12, !dbg !506
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_EXTI_ClearPending(%struct.EXTI_HandleTypeDef* %hexti, i32 %Edge) #0 !dbg !507 {
entry:
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %Edge.addr = alloca i32, align 4
  %regaddr = alloca i32*, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  store i32 %Edge, i32* %Edge.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !508
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %0, i32 0, i32 0, !dbg !509
  %1 = load i32, i32* %Line, align 4, !dbg !509
  %and = and i32 %1, 65536, !dbg !510
  %shr = lshr i32 %and, 16, !dbg !511
  store i32 %shr, i32* %offset, align 4, !dbg !512
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !513
  %Line1 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 0, !dbg !514
  %3 = load i32, i32* %Line1, align 4, !dbg !514
  %and2 = and i32 %3, 31, !dbg !515
  %shl = shl i32 1, %and2, !dbg !516
  store i32 %shl, i32* %maskline, align 4, !dbg !517
  %4 = load i32, i32* %Edge.addr, align 4, !dbg !518
  %cmp = icmp ne i32 %4, 1, !dbg !519
  br i1 %cmp, label %if.then, label %if.else, !dbg !518

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %offset, align 4, !dbg !520
  %mul = mul i32 8, %5, !dbg !521
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), i32 %mul, !dbg !522
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !523
  br label %if.end, !dbg !524

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %offset, align 4, !dbg !525
  %mul3 = mul i32 8, %6, !dbg !526
  %add.ptr4 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), i32 %mul3, !dbg !527
  store i32* %add.ptr4, i32** %regaddr, align 4, !dbg !528
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %maskline, align 4, !dbg !529
  %8 = load i32*, i32** %regaddr, align 4, !dbg !530
  store volatile i32 %7, i32* %8, align 4, !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_EXTI_GenerateSWI(%struct.EXTI_HandleTypeDef* %hexti) #0 !dbg !533 {
entry:
  %hexti.addr = alloca %struct.EXTI_HandleTypeDef*, align 4
  %regaddr = alloca i32*, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.EXTI_HandleTypeDef* %hexti, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4
  %0 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !534
  %Line = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %0, i32 0, i32 0, !dbg !535
  %1 = load i32, i32* %Line, align 4, !dbg !535
  %and = and i32 %1, 65536, !dbg !536
  %shr = lshr i32 %and, 16, !dbg !537
  store i32 %shr, i32* %offset, align 4, !dbg !538
  %2 = load %struct.EXTI_HandleTypeDef*, %struct.EXTI_HandleTypeDef** %hexti.addr, align 4, !dbg !539
  %Line1 = getelementptr inbounds %struct.EXTI_HandleTypeDef, %struct.EXTI_HandleTypeDef* %2, i32 0, i32 0, !dbg !540
  %3 = load i32, i32* %Line1, align 4, !dbg !540
  %and2 = and i32 %3, 31, !dbg !541
  %shl = shl i32 1, %and2, !dbg !542
  store i32 %shl, i32* %maskline, align 4, !dbg !543
  %4 = load i32, i32* %offset, align 4, !dbg !544
  %mul = mul i32 8, %4, !dbg !545
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 2), i32 %mul, !dbg !546
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !547
  %5 = load i32, i32* %maskline, align 4, !dbg !548
  %6 = load i32*, i32** %regaddr, align 4, !dbg !549
  store volatile i32 %5, i32* %6, align 4, !dbg !550
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_EXTI_ConfigLineAttributes(i32 %ExtiLine, i32 %LineAttributes) #0 !dbg !552 {
entry:
  %ExtiLine.addr = alloca i32, align 4
  %LineAttributes.addr = alloca i32, align 4
  %regaddr = alloca i32*, align 4
  %regval = alloca i32, align 4
  %linepos = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %ExtiLine, i32* %ExtiLine.addr, align 4
  store i32 %LineAttributes, i32* %LineAttributes.addr, align 4
  %0 = load i32, i32* %ExtiLine.addr, align 4, !dbg !553
  %and = and i32 %0, 65536, !dbg !554
  %shr = lshr i32 %and, 16, !dbg !555
  store i32 %shr, i32* %offset, align 4, !dbg !556
  %1 = load i32, i32* %ExtiLine.addr, align 4, !dbg !557
  %and1 = and i32 %1, 31, !dbg !558
  store i32 %and1, i32* %linepos, align 4, !dbg !559
  %2 = load i32, i32* %linepos, align 4, !dbg !560
  %shl = shl i32 1, %2, !dbg !561
  store i32 %shl, i32* %maskline, align 4, !dbg !562
  %3 = load i32, i32* %offset, align 4, !dbg !563
  %mul = mul i32 4, %3, !dbg !564
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 6), i32 %mul, !dbg !565
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !566
  %4 = load i32*, i32** %regaddr, align 4, !dbg !567
  %5 = load volatile i32, i32* %4, align 4, !dbg !568
  store i32 %5, i32* %regval, align 4, !dbg !569
  %6 = load i32, i32* %LineAttributes.addr, align 4, !dbg !570
  %and2 = and i32 %6, 514, !dbg !571
  %cmp = icmp eq i32 %and2, 514, !dbg !572
  br i1 %cmp, label %if.then, label %if.else, !dbg !573

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %maskline, align 4, !dbg !574
  %8 = load i32, i32* %regval, align 4, !dbg !575
  %or = or i32 %8, %7, !dbg !575
  store i32 %or, i32* %regval, align 4, !dbg !575
  br label %if.end8, !dbg !576

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %LineAttributes.addr, align 4, !dbg !577
  %and3 = and i32 %9, 512, !dbg !578
  %cmp4 = icmp eq i32 %and3, 512, !dbg !579
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !580

if.then5:                                         ; preds = %if.else
  %10 = load i32, i32* %maskline, align 4, !dbg !581
  %neg = xor i32 %10, -1, !dbg !582
  %11 = load i32, i32* %regval, align 4, !dbg !583
  %and6 = and i32 %11, %neg, !dbg !583
  store i32 %and6, i32* %regval, align 4, !dbg !583
  br label %if.end, !dbg !584

if.else7:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %12 = load i32, i32* %regval, align 4, !dbg !585
  %13 = load i32*, i32** %regaddr, align 4, !dbg !586
  store volatile i32 %12, i32* %13, align 4, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_EXTI_GetConfigLineAttributes(i32 %ExtiLine, i32* %pLineAttributes) #0 !dbg !589 {
entry:
  %retval = alloca i8, align 1
  %ExtiLine.addr = alloca i32, align 4
  %pLineAttributes.addr = alloca i32*, align 4
  %regaddr = alloca i32*, align 4
  %linepos = alloca i32, align 4
  %maskline = alloca i32, align 4
  %offset = alloca i32, align 4
  %attributes = alloca i32, align 4
  store i32 %ExtiLine, i32* %ExtiLine.addr, align 4
  store i32* %pLineAttributes, i32** %pLineAttributes.addr, align 4
  %0 = load i32*, i32** %pLineAttributes.addr, align 4, !dbg !590
  %cmp = icmp eq i32* %0, null, !dbg !591
  br i1 %cmp, label %if.then, label %if.end, !dbg !590

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !592
  br label %return, !dbg !592

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %ExtiLine.addr, align 4, !dbg !593
  %and = and i32 %1, 65536, !dbg !594
  %shr = lshr i32 %and, 16, !dbg !595
  store i32 %shr, i32* %offset, align 4, !dbg !596
  %2 = load i32, i32* %ExtiLine.addr, align 4, !dbg !597
  %and1 = and i32 %2, 31, !dbg !598
  store i32 %and1, i32* %linepos, align 4, !dbg !599
  %3 = load i32, i32* %linepos, align 4, !dbg !600
  %shl = shl i32 1, %3, !dbg !601
  store i32 %shl, i32* %maskline, align 4, !dbg !602
  %4 = load i32, i32* %offset, align 4, !dbg !603
  %mul = mul i32 4, %4, !dbg !604
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 6), i32 %mul, !dbg !605
  store i32* %add.ptr, i32** %regaddr, align 4, !dbg !606
  %5 = load i32*, i32** %regaddr, align 4, !dbg !607
  %6 = load volatile i32, i32* %5, align 4, !dbg !608
  %7 = load i32, i32* %maskline, align 4, !dbg !609
  %and2 = and i32 %6, %7, !dbg !610
  %cmp3 = icmp ne i32 %and2, 0, !dbg !611
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !612

if.then4:                                         ; preds = %if.end
  store i32 514, i32* %attributes, align 4, !dbg !613
  br label %if.end5, !dbg !614

if.else:                                          ; preds = %if.end
  store i32 512, i32* %attributes, align 4, !dbg !615
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %8 = load i32, i32* %attributes, align 4, !dbg !616
  %9 = load i32*, i32** %pLineAttributes.addr, align 4, !dbg !617
  store i32 %8, i32* %9, align 4, !dbg !618
  store i8 0, i8* %retval, align 1, !dbg !619
  br label %return, !dbg !619

return:                                           ; preds = %if.end5, %if.then
  %10 = load i8, i8* %retval, align 1, !dbg !620
  ret i8 %10, !dbg !620
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_exti.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_EXTI_SetConfigLine", scope: !1, file: !1, line: 139, type: !9, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 148, column: 7, scope: !8)
!11 = !DILocation(line: 148, column: 13, scope: !8)
!12 = !DILocation(line: 148, column: 22, scope: !8)
!13 = !DILocation(line: 148, column: 26, scope: !8)
!14 = !DILocation(line: 148, column: 38, scope: !8)
!15 = !DILocation(line: 148, column: 6, scope: !8)
!16 = !DILocation(line: 150, column: 5, scope: !8)
!17 = !DILocation(line: 158, column: 17, scope: !8)
!18 = !DILocation(line: 158, column: 30, scope: !8)
!19 = !DILocation(line: 158, column: 3, scope: !8)
!20 = !DILocation(line: 158, column: 10, scope: !8)
!21 = !DILocation(line: 158, column: 15, scope: !8)
!22 = !DILocation(line: 161, column: 14, scope: !8)
!23 = !DILocation(line: 161, column: 27, scope: !8)
!24 = !DILocation(line: 161, column: 32, scope: !8)
!25 = !DILocation(line: 161, column: 49, scope: !8)
!26 = !DILocation(line: 161, column: 10, scope: !8)
!27 = !DILocation(line: 162, column: 14, scope: !8)
!28 = !DILocation(line: 162, column: 27, scope: !8)
!29 = !DILocation(line: 162, column: 32, scope: !8)
!30 = !DILocation(line: 162, column: 11, scope: !8)
!31 = !DILocation(line: 163, column: 22, scope: !8)
!32 = !DILocation(line: 163, column: 19, scope: !8)
!33 = !DILocation(line: 163, column: 12, scope: !8)
!34 = !DILocation(line: 166, column: 7, scope: !8)
!35 = !DILocation(line: 166, column: 20, scope: !8)
!36 = !DILocation(line: 166, column: 25, scope: !8)
!37 = !DILocation(line: 166, column: 40, scope: !8)
!38 = !DILocation(line: 166, column: 6, scope: !8)
!39 = !DILocation(line: 171, column: 53, scope: !8)
!40 = !DILocation(line: 171, column: 51, scope: !8)
!41 = !DILocation(line: 171, column: 29, scope: !8)
!42 = !DILocation(line: 171, column: 13, scope: !8)
!43 = !DILocation(line: 172, column: 15, scope: !8)
!44 = !DILocation(line: 172, column: 14, scope: !8)
!45 = !DILocation(line: 172, column: 12, scope: !8)
!46 = !DILocation(line: 175, column: 9, scope: !8)
!47 = !DILocation(line: 175, column: 22, scope: !8)
!48 = !DILocation(line: 175, column: 30, scope: !8)
!49 = !DILocation(line: 175, column: 53, scope: !8)
!50 = !DILocation(line: 175, column: 8, scope: !8)
!51 = !DILocation(line: 177, column: 17, scope: !8)
!52 = !DILocation(line: 177, column: 14, scope: !8)
!53 = !DILocation(line: 178, column: 5, scope: !8)
!54 = !DILocation(line: 181, column: 18, scope: !8)
!55 = !DILocation(line: 181, column: 17, scope: !8)
!56 = !DILocation(line: 181, column: 14, scope: !8)
!57 = !DILocation(line: 185, column: 16, scope: !8)
!58 = !DILocation(line: 185, column: 6, scope: !8)
!59 = !DILocation(line: 185, column: 14, scope: !8)
!60 = !DILocation(line: 188, column: 53, scope: !8)
!61 = !DILocation(line: 188, column: 51, scope: !8)
!62 = !DILocation(line: 188, column: 29, scope: !8)
!63 = !DILocation(line: 188, column: 13, scope: !8)
!64 = !DILocation(line: 189, column: 15, scope: !8)
!65 = !DILocation(line: 189, column: 14, scope: !8)
!66 = !DILocation(line: 189, column: 12, scope: !8)
!67 = !DILocation(line: 192, column: 9, scope: !8)
!68 = !DILocation(line: 192, column: 22, scope: !8)
!69 = !DILocation(line: 192, column: 30, scope: !8)
!70 = !DILocation(line: 192, column: 54, scope: !8)
!71 = !DILocation(line: 192, column: 8, scope: !8)
!72 = !DILocation(line: 194, column: 17, scope: !8)
!73 = !DILocation(line: 194, column: 14, scope: !8)
!74 = !DILocation(line: 195, column: 5, scope: !8)
!75 = !DILocation(line: 198, column: 18, scope: !8)
!76 = !DILocation(line: 198, column: 17, scope: !8)
!77 = !DILocation(line: 198, column: 14, scope: !8)
!78 = !DILocation(line: 202, column: 16, scope: !8)
!79 = !DILocation(line: 202, column: 6, scope: !8)
!80 = !DILocation(line: 202, column: 14, scope: !8)
!81 = !DILocation(line: 205, column: 9, scope: !8)
!82 = !DILocation(line: 205, column: 22, scope: !8)
!83 = !DILocation(line: 205, column: 27, scope: !8)
!84 = !DILocation(line: 205, column: 40, scope: !8)
!85 = !DILocation(line: 205, column: 8, scope: !8)
!86 = !DILocation(line: 210, column: 29, scope: !8)
!87 = !DILocation(line: 210, column: 37, scope: !8)
!88 = !DILocation(line: 210, column: 16, scope: !8)
!89 = !DILocation(line: 210, column: 14, scope: !8)
!90 = !DILocation(line: 211, column: 55, scope: !8)
!91 = !DILocation(line: 211, column: 63, scope: !8)
!92 = !DILocation(line: 211, column: 52, scope: !8)
!93 = !DILocation(line: 211, column: 25, scope: !8)
!94 = !DILocation(line: 211, column: 17, scope: !8)
!95 = !DILocation(line: 211, column: 14, scope: !8)
!96 = !DILocation(line: 212, column: 18, scope: !8)
!97 = !DILocation(line: 212, column: 31, scope: !8)
!98 = !DILocation(line: 212, column: 69, scope: !8)
!99 = !DILocation(line: 212, column: 77, scope: !8)
!100 = !DILocation(line: 212, column: 66, scope: !8)
!101 = !DILocation(line: 212, column: 39, scope: !8)
!102 = !DILocation(line: 212, column: 14, scope: !8)
!103 = !DILocation(line: 213, column: 37, scope: !8)
!104 = !DILocation(line: 213, column: 20, scope: !8)
!105 = !DILocation(line: 213, column: 28, scope: !8)
!106 = !DILocation(line: 213, column: 7, scope: !8)
!107 = !DILocation(line: 213, column: 35, scope: !8)
!108 = !DILocation(line: 214, column: 5, scope: !8)
!109 = !DILocation(line: 215, column: 3, scope: !8)
!110 = !DILocation(line: 218, column: 48, scope: !8)
!111 = !DILocation(line: 218, column: 46, scope: !8)
!112 = !DILocation(line: 218, column: 26, scope: !8)
!113 = !DILocation(line: 218, column: 11, scope: !8)
!114 = !DILocation(line: 219, column: 13, scope: !8)
!115 = !DILocation(line: 219, column: 12, scope: !8)
!116 = !DILocation(line: 219, column: 10, scope: !8)
!117 = !DILocation(line: 222, column: 7, scope: !8)
!118 = !DILocation(line: 222, column: 20, scope: !8)
!119 = !DILocation(line: 222, column: 25, scope: !8)
!120 = !DILocation(line: 222, column: 48, scope: !8)
!121 = !DILocation(line: 222, column: 6, scope: !8)
!122 = !DILocation(line: 224, column: 15, scope: !8)
!123 = !DILocation(line: 224, column: 12, scope: !8)
!124 = !DILocation(line: 225, column: 3, scope: !8)
!125 = !DILocation(line: 228, column: 16, scope: !8)
!126 = !DILocation(line: 228, column: 15, scope: !8)
!127 = !DILocation(line: 228, column: 12, scope: !8)
!128 = !DILocation(line: 232, column: 14, scope: !8)
!129 = !DILocation(line: 232, column: 4, scope: !8)
!130 = !DILocation(line: 232, column: 12, scope: !8)
!131 = !DILocation(line: 235, column: 48, scope: !8)
!132 = !DILocation(line: 235, column: 46, scope: !8)
!133 = !DILocation(line: 235, column: 26, scope: !8)
!134 = !DILocation(line: 235, column: 11, scope: !8)
!135 = !DILocation(line: 236, column: 13, scope: !8)
!136 = !DILocation(line: 236, column: 12, scope: !8)
!137 = !DILocation(line: 236, column: 10, scope: !8)
!138 = !DILocation(line: 239, column: 7, scope: !8)
!139 = !DILocation(line: 239, column: 20, scope: !8)
!140 = !DILocation(line: 239, column: 25, scope: !8)
!141 = !DILocation(line: 239, column: 44, scope: !8)
!142 = !DILocation(line: 239, column: 6, scope: !8)
!143 = !DILocation(line: 241, column: 15, scope: !8)
!144 = !DILocation(line: 241, column: 12, scope: !8)
!145 = !DILocation(line: 242, column: 3, scope: !8)
!146 = !DILocation(line: 245, column: 16, scope: !8)
!147 = !DILocation(line: 245, column: 15, scope: !8)
!148 = !DILocation(line: 245, column: 12, scope: !8)
!149 = !DILocation(line: 249, column: 14, scope: !8)
!150 = !DILocation(line: 249, column: 4, scope: !8)
!151 = !DILocation(line: 249, column: 12, scope: !8)
!152 = !DILocation(line: 251, column: 3, scope: !8)
!153 = !DILocation(line: 252, column: 1, scope: !8)
!154 = distinct !DISubprogram(name: "HAL_EXTI_GetConfigLine", scope: !1, file: !1, line: 261, type: !9, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!155 = !DILocation(line: 270, column: 7, scope: !154)
!156 = !DILocation(line: 270, column: 13, scope: !154)
!157 = !DILocation(line: 270, column: 22, scope: !154)
!158 = !DILocation(line: 270, column: 26, scope: !154)
!159 = !DILocation(line: 270, column: 38, scope: !154)
!160 = !DILocation(line: 270, column: 6, scope: !154)
!161 = !DILocation(line: 272, column: 5, scope: !154)
!162 = !DILocation(line: 279, column: 23, scope: !154)
!163 = !DILocation(line: 279, column: 30, scope: !154)
!164 = !DILocation(line: 279, column: 3, scope: !154)
!165 = !DILocation(line: 279, column: 16, scope: !154)
!166 = !DILocation(line: 279, column: 21, scope: !154)
!167 = !DILocation(line: 282, column: 14, scope: !154)
!168 = !DILocation(line: 282, column: 27, scope: !154)
!169 = !DILocation(line: 282, column: 32, scope: !154)
!170 = !DILocation(line: 282, column: 49, scope: !154)
!171 = !DILocation(line: 282, column: 10, scope: !154)
!172 = !DILocation(line: 283, column: 14, scope: !154)
!173 = !DILocation(line: 283, column: 27, scope: !154)
!174 = !DILocation(line: 283, column: 32, scope: !154)
!175 = !DILocation(line: 283, column: 11, scope: !154)
!176 = !DILocation(line: 284, column: 22, scope: !154)
!177 = !DILocation(line: 284, column: 19, scope: !154)
!178 = !DILocation(line: 284, column: 12, scope: !154)
!179 = !DILocation(line: 287, column: 48, scope: !154)
!180 = !DILocation(line: 287, column: 46, scope: !154)
!181 = !DILocation(line: 287, column: 26, scope: !154)
!182 = !DILocation(line: 287, column: 11, scope: !154)
!183 = !DILocation(line: 288, column: 13, scope: !154)
!184 = !DILocation(line: 288, column: 12, scope: !154)
!185 = !DILocation(line: 288, column: 10, scope: !154)
!186 = !DILocation(line: 291, column: 7, scope: !154)
!187 = !DILocation(line: 291, column: 16, scope: !154)
!188 = !DILocation(line: 291, column: 14, scope: !154)
!189 = !DILocation(line: 291, column: 26, scope: !154)
!190 = !DILocation(line: 291, column: 6, scope: !154)
!191 = !DILocation(line: 293, column: 5, scope: !154)
!192 = !DILocation(line: 293, column: 18, scope: !154)
!193 = !DILocation(line: 293, column: 23, scope: !154)
!194 = !DILocation(line: 294, column: 3, scope: !154)
!195 = !DILocation(line: 297, column: 5, scope: !154)
!196 = !DILocation(line: 297, column: 18, scope: !154)
!197 = !DILocation(line: 297, column: 23, scope: !154)
!198 = !DILocation(line: 301, column: 48, scope: !154)
!199 = !DILocation(line: 301, column: 46, scope: !154)
!200 = !DILocation(line: 301, column: 26, scope: !154)
!201 = !DILocation(line: 301, column: 11, scope: !154)
!202 = !DILocation(line: 302, column: 13, scope: !154)
!203 = !DILocation(line: 302, column: 12, scope: !154)
!204 = !DILocation(line: 302, column: 10, scope: !154)
!205 = !DILocation(line: 305, column: 7, scope: !154)
!206 = !DILocation(line: 305, column: 16, scope: !154)
!207 = !DILocation(line: 305, column: 14, scope: !154)
!208 = !DILocation(line: 305, column: 26, scope: !154)
!209 = !DILocation(line: 305, column: 6, scope: !154)
!210 = !DILocation(line: 307, column: 5, scope: !154)
!211 = !DILocation(line: 307, column: 18, scope: !154)
!212 = !DILocation(line: 307, column: 23, scope: !154)
!213 = !DILocation(line: 308, column: 3, scope: !154)
!214 = !DILocation(line: 311, column: 7, scope: !154)
!215 = !DILocation(line: 311, column: 20, scope: !154)
!216 = !DILocation(line: 311, column: 25, scope: !154)
!217 = !DILocation(line: 311, column: 40, scope: !154)
!218 = !DILocation(line: 311, column: 6, scope: !154)
!219 = !DILocation(line: 313, column: 53, scope: !154)
!220 = !DILocation(line: 313, column: 51, scope: !154)
!221 = !DILocation(line: 313, column: 29, scope: !154)
!222 = !DILocation(line: 313, column: 13, scope: !154)
!223 = !DILocation(line: 314, column: 15, scope: !154)
!224 = !DILocation(line: 314, column: 14, scope: !154)
!225 = !DILocation(line: 314, column: 12, scope: !154)
!226 = !DILocation(line: 317, column: 9, scope: !154)
!227 = !DILocation(line: 317, column: 18, scope: !154)
!228 = !DILocation(line: 317, column: 16, scope: !154)
!229 = !DILocation(line: 317, column: 28, scope: !154)
!230 = !DILocation(line: 317, column: 8, scope: !154)
!231 = !DILocation(line: 319, column: 7, scope: !154)
!232 = !DILocation(line: 319, column: 20, scope: !154)
!233 = !DILocation(line: 319, column: 28, scope: !154)
!234 = !DILocation(line: 320, column: 5, scope: !154)
!235 = !DILocation(line: 323, column: 7, scope: !154)
!236 = !DILocation(line: 323, column: 20, scope: !154)
!237 = !DILocation(line: 323, column: 28, scope: !154)
!238 = !DILocation(line: 327, column: 53, scope: !154)
!239 = !DILocation(line: 327, column: 51, scope: !154)
!240 = !DILocation(line: 327, column: 29, scope: !154)
!241 = !DILocation(line: 327, column: 13, scope: !154)
!242 = !DILocation(line: 328, column: 15, scope: !154)
!243 = !DILocation(line: 328, column: 14, scope: !154)
!244 = !DILocation(line: 328, column: 12, scope: !154)
!245 = !DILocation(line: 331, column: 9, scope: !154)
!246 = !DILocation(line: 331, column: 18, scope: !154)
!247 = !DILocation(line: 331, column: 16, scope: !154)
!248 = !DILocation(line: 331, column: 28, scope: !154)
!249 = !DILocation(line: 331, column: 8, scope: !154)
!250 = !DILocation(line: 333, column: 7, scope: !154)
!251 = !DILocation(line: 333, column: 20, scope: !154)
!252 = !DILocation(line: 333, column: 28, scope: !154)
!253 = !DILocation(line: 334, column: 5, scope: !154)
!254 = !DILocation(line: 337, column: 9, scope: !154)
!255 = !DILocation(line: 337, column: 22, scope: !154)
!256 = !DILocation(line: 337, column: 27, scope: !154)
!257 = !DILocation(line: 337, column: 40, scope: !154)
!258 = !DILocation(line: 337, column: 8, scope: !154)
!259 = !DILocation(line: 341, column: 29, scope: !154)
!260 = !DILocation(line: 341, column: 37, scope: !154)
!261 = !DILocation(line: 341, column: 16, scope: !154)
!262 = !DILocation(line: 341, column: 14, scope: !154)
!263 = !DILocation(line: 342, column: 32, scope: !154)
!264 = !DILocation(line: 342, column: 75, scope: !154)
!265 = !DILocation(line: 342, column: 83, scope: !154)
!266 = !DILocation(line: 342, column: 72, scope: !154)
!267 = !DILocation(line: 342, column: 66, scope: !154)
!268 = !DILocation(line: 342, column: 39, scope: !154)
!269 = !DILocation(line: 342, column: 95, scope: !154)
!270 = !DILocation(line: 342, column: 7, scope: !154)
!271 = !DILocation(line: 342, column: 20, scope: !154)
!272 = !DILocation(line: 342, column: 28, scope: !154)
!273 = !DILocation(line: 343, column: 5, scope: !154)
!274 = !DILocation(line: 346, column: 7, scope: !154)
!275 = !DILocation(line: 346, column: 20, scope: !154)
!276 = !DILocation(line: 346, column: 28, scope: !154)
!277 = !DILocation(line: 348, column: 3, scope: !154)
!278 = !DILocation(line: 351, column: 5, scope: !154)
!279 = !DILocation(line: 351, column: 18, scope: !154)
!280 = !DILocation(line: 351, column: 26, scope: !154)
!281 = !DILocation(line: 352, column: 5, scope: !154)
!282 = !DILocation(line: 352, column: 18, scope: !154)
!283 = !DILocation(line: 352, column: 26, scope: !154)
!284 = !DILocation(line: 355, column: 3, scope: !154)
!285 = !DILocation(line: 356, column: 1, scope: !154)
!286 = distinct !DISubprogram(name: "HAL_EXTI_ClearConfigLine", scope: !1, file: !1, line: 364, type: !9, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!287 = !DILocation(line: 373, column: 6, scope: !286)
!288 = !DILocation(line: 373, column: 12, scope: !286)
!289 = !DILocation(line: 375, column: 5, scope: !286)
!290 = !DILocation(line: 382, column: 14, scope: !286)
!291 = !DILocation(line: 382, column: 21, scope: !286)
!292 = !DILocation(line: 382, column: 26, scope: !286)
!293 = !DILocation(line: 382, column: 43, scope: !286)
!294 = !DILocation(line: 382, column: 10, scope: !286)
!295 = !DILocation(line: 383, column: 14, scope: !286)
!296 = !DILocation(line: 383, column: 21, scope: !286)
!297 = !DILocation(line: 383, column: 26, scope: !286)
!298 = !DILocation(line: 383, column: 11, scope: !286)
!299 = !DILocation(line: 384, column: 22, scope: !286)
!300 = !DILocation(line: 384, column: 19, scope: !286)
!301 = !DILocation(line: 384, column: 12, scope: !286)
!302 = !DILocation(line: 387, column: 48, scope: !286)
!303 = !DILocation(line: 387, column: 46, scope: !286)
!304 = !DILocation(line: 387, column: 26, scope: !286)
!305 = !DILocation(line: 387, column: 11, scope: !286)
!306 = !DILocation(line: 388, column: 14, scope: !286)
!307 = !DILocation(line: 388, column: 13, scope: !286)
!308 = !DILocation(line: 388, column: 25, scope: !286)
!309 = !DILocation(line: 388, column: 24, scope: !286)
!310 = !DILocation(line: 388, column: 22, scope: !286)
!311 = !DILocation(line: 388, column: 10, scope: !286)
!312 = !DILocation(line: 389, column: 14, scope: !286)
!313 = !DILocation(line: 389, column: 4, scope: !286)
!314 = !DILocation(line: 389, column: 12, scope: !286)
!315 = !DILocation(line: 392, column: 48, scope: !286)
!316 = !DILocation(line: 392, column: 46, scope: !286)
!317 = !DILocation(line: 392, column: 26, scope: !286)
!318 = !DILocation(line: 392, column: 11, scope: !286)
!319 = !DILocation(line: 393, column: 14, scope: !286)
!320 = !DILocation(line: 393, column: 13, scope: !286)
!321 = !DILocation(line: 393, column: 25, scope: !286)
!322 = !DILocation(line: 393, column: 24, scope: !286)
!323 = !DILocation(line: 393, column: 22, scope: !286)
!324 = !DILocation(line: 393, column: 10, scope: !286)
!325 = !DILocation(line: 394, column: 14, scope: !286)
!326 = !DILocation(line: 394, column: 4, scope: !286)
!327 = !DILocation(line: 394, column: 12, scope: !286)
!328 = !DILocation(line: 397, column: 7, scope: !286)
!329 = !DILocation(line: 397, column: 14, scope: !286)
!330 = !DILocation(line: 397, column: 19, scope: !286)
!331 = !DILocation(line: 397, column: 34, scope: !286)
!332 = !DILocation(line: 397, column: 6, scope: !286)
!333 = !DILocation(line: 399, column: 53, scope: !286)
!334 = !DILocation(line: 399, column: 51, scope: !286)
!335 = !DILocation(line: 399, column: 29, scope: !286)
!336 = !DILocation(line: 399, column: 13, scope: !286)
!337 = !DILocation(line: 400, column: 16, scope: !286)
!338 = !DILocation(line: 400, column: 15, scope: !286)
!339 = !DILocation(line: 400, column: 27, scope: !286)
!340 = !DILocation(line: 400, column: 26, scope: !286)
!341 = !DILocation(line: 400, column: 24, scope: !286)
!342 = !DILocation(line: 400, column: 12, scope: !286)
!343 = !DILocation(line: 401, column: 16, scope: !286)
!344 = !DILocation(line: 401, column: 6, scope: !286)
!345 = !DILocation(line: 401, column: 14, scope: !286)
!346 = !DILocation(line: 403, column: 53, scope: !286)
!347 = !DILocation(line: 403, column: 51, scope: !286)
!348 = !DILocation(line: 403, column: 29, scope: !286)
!349 = !DILocation(line: 403, column: 13, scope: !286)
!350 = !DILocation(line: 404, column: 16, scope: !286)
!351 = !DILocation(line: 404, column: 15, scope: !286)
!352 = !DILocation(line: 404, column: 27, scope: !286)
!353 = !DILocation(line: 404, column: 26, scope: !286)
!354 = !DILocation(line: 404, column: 24, scope: !286)
!355 = !DILocation(line: 404, column: 12, scope: !286)
!356 = !DILocation(line: 405, column: 16, scope: !286)
!357 = !DILocation(line: 405, column: 6, scope: !286)
!358 = !DILocation(line: 405, column: 14, scope: !286)
!359 = !DILocation(line: 408, column: 9, scope: !286)
!360 = !DILocation(line: 408, column: 16, scope: !286)
!361 = !DILocation(line: 408, column: 21, scope: !286)
!362 = !DILocation(line: 408, column: 34, scope: !286)
!363 = !DILocation(line: 408, column: 8, scope: !286)
!364 = !DILocation(line: 412, column: 29, scope: !286)
!365 = !DILocation(line: 412, column: 37, scope: !286)
!366 = !DILocation(line: 412, column: 16, scope: !286)
!367 = !DILocation(line: 412, column: 14, scope: !286)
!368 = !DILocation(line: 413, column: 55, scope: !286)
!369 = !DILocation(line: 413, column: 63, scope: !286)
!370 = !DILocation(line: 413, column: 52, scope: !286)
!371 = !DILocation(line: 413, column: 25, scope: !286)
!372 = !DILocation(line: 413, column: 17, scope: !286)
!373 = !DILocation(line: 413, column: 14, scope: !286)
!374 = !DILocation(line: 414, column: 37, scope: !286)
!375 = !DILocation(line: 414, column: 20, scope: !286)
!376 = !DILocation(line: 414, column: 28, scope: !286)
!377 = !DILocation(line: 414, column: 7, scope: !286)
!378 = !DILocation(line: 414, column: 35, scope: !286)
!379 = !DILocation(line: 415, column: 5, scope: !286)
!380 = !DILocation(line: 416, column: 3, scope: !286)
!381 = !DILocation(line: 418, column: 3, scope: !286)
!382 = !DILocation(line: 419, column: 1, scope: !286)
!383 = distinct !DISubprogram(name: "HAL_EXTI_RegisterCallback", scope: !1, file: !1, line: 430, type: !9, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!384 = !DILocation(line: 432, column: 21, scope: !383)
!385 = !DILocation(line: 434, column: 11, scope: !383)
!386 = !DILocation(line: 434, column: 3, scope: !383)
!387 = !DILocation(line: 437, column: 31, scope: !383)
!388 = !DILocation(line: 437, column: 7, scope: !383)
!389 = !DILocation(line: 437, column: 14, scope: !383)
!390 = !DILocation(line: 437, column: 29, scope: !383)
!391 = !DILocation(line: 438, column: 32, scope: !383)
!392 = !DILocation(line: 438, column: 7, scope: !383)
!393 = !DILocation(line: 438, column: 14, scope: !383)
!394 = !DILocation(line: 438, column: 30, scope: !383)
!395 = !DILocation(line: 439, column: 7, scope: !383)
!396 = !DILocation(line: 442, column: 31, scope: !383)
!397 = !DILocation(line: 442, column: 7, scope: !383)
!398 = !DILocation(line: 442, column: 14, scope: !383)
!399 = !DILocation(line: 442, column: 29, scope: !383)
!400 = !DILocation(line: 443, column: 7, scope: !383)
!401 = !DILocation(line: 446, column: 32, scope: !383)
!402 = !DILocation(line: 446, column: 7, scope: !383)
!403 = !DILocation(line: 446, column: 14, scope: !383)
!404 = !DILocation(line: 446, column: 30, scope: !383)
!405 = !DILocation(line: 447, column: 7, scope: !383)
!406 = !DILocation(line: 450, column: 14, scope: !383)
!407 = !DILocation(line: 451, column: 7, scope: !383)
!408 = !DILocation(line: 454, column: 10, scope: !383)
!409 = !DILocation(line: 454, column: 3, scope: !383)
!410 = distinct !DISubprogram(name: "HAL_EXTI_GetHandle", scope: !1, file: !1, line: 465, type: !9, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!411 = !DILocation(line: 468, column: 6, scope: !410)
!412 = !DILocation(line: 468, column: 12, scope: !410)
!413 = !DILocation(line: 470, column: 5, scope: !410)
!414 = !DILocation(line: 477, column: 17, scope: !410)
!415 = !DILocation(line: 477, column: 3, scope: !410)
!416 = !DILocation(line: 477, column: 10, scope: !410)
!417 = !DILocation(line: 477, column: 15, scope: !410)
!418 = !DILocation(line: 479, column: 3, scope: !410)
!419 = !DILocation(line: 480, column: 1, scope: !410)
!420 = distinct !DISubprogram(name: "HAL_EXTI_IRQHandler", scope: !1, file: !1, line: 504, type: !9, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!421 = !DILocation(line: 512, column: 14, scope: !420)
!422 = !DILocation(line: 512, column: 21, scope: !420)
!423 = !DILocation(line: 512, column: 26, scope: !420)
!424 = !DILocation(line: 512, column: 43, scope: !420)
!425 = !DILocation(line: 512, column: 10, scope: !420)
!426 = !DILocation(line: 513, column: 23, scope: !420)
!427 = !DILocation(line: 513, column: 30, scope: !420)
!428 = !DILocation(line: 513, column: 35, scope: !420)
!429 = !DILocation(line: 513, column: 19, scope: !420)
!430 = !DILocation(line: 513, column: 12, scope: !420)
!431 = !DILocation(line: 516, column: 50, scope: !420)
!432 = !DILocation(line: 516, column: 48, scope: !420)
!433 = !DILocation(line: 516, column: 26, scope: !420)
!434 = !DILocation(line: 516, column: 11, scope: !420)
!435 = !DILocation(line: 517, column: 14, scope: !420)
!436 = !DILocation(line: 517, column: 13, scope: !420)
!437 = !DILocation(line: 517, column: 24, scope: !420)
!438 = !DILocation(line: 517, column: 22, scope: !420)
!439 = !DILocation(line: 517, column: 10, scope: !420)
!440 = !DILocation(line: 519, column: 6, scope: !420)
!441 = !DILocation(line: 519, column: 13, scope: !420)
!442 = !DILocation(line: 522, column: 16, scope: !420)
!443 = !DILocation(line: 522, column: 6, scope: !420)
!444 = !DILocation(line: 522, column: 14, scope: !420)
!445 = !DILocation(line: 525, column: 8, scope: !420)
!446 = !DILocation(line: 525, column: 15, scope: !420)
!447 = !DILocation(line: 525, column: 30, scope: !420)
!448 = !DILocation(line: 527, column: 7, scope: !420)
!449 = !DILocation(line: 527, column: 14, scope: !420)
!450 = !DILocation(line: 528, column: 5, scope: !420)
!451 = !DILocation(line: 529, column: 3, scope: !420)
!452 = !DILocation(line: 532, column: 50, scope: !420)
!453 = !DILocation(line: 532, column: 48, scope: !420)
!454 = !DILocation(line: 532, column: 26, scope: !420)
!455 = !DILocation(line: 532, column: 11, scope: !420)
!456 = !DILocation(line: 533, column: 14, scope: !420)
!457 = !DILocation(line: 533, column: 13, scope: !420)
!458 = !DILocation(line: 533, column: 24, scope: !420)
!459 = !DILocation(line: 533, column: 22, scope: !420)
!460 = !DILocation(line: 533, column: 10, scope: !420)
!461 = !DILocation(line: 535, column: 6, scope: !420)
!462 = !DILocation(line: 535, column: 13, scope: !420)
!463 = !DILocation(line: 538, column: 16, scope: !420)
!464 = !DILocation(line: 538, column: 6, scope: !420)
!465 = !DILocation(line: 538, column: 14, scope: !420)
!466 = !DILocation(line: 541, column: 8, scope: !420)
!467 = !DILocation(line: 541, column: 15, scope: !420)
!468 = !DILocation(line: 541, column: 31, scope: !420)
!469 = !DILocation(line: 543, column: 7, scope: !420)
!470 = !DILocation(line: 543, column: 14, scope: !420)
!471 = !DILocation(line: 544, column: 5, scope: !420)
!472 = !DILocation(line: 545, column: 3, scope: !420)
!473 = !DILocation(line: 546, column: 1, scope: !420)
!474 = distinct !DISubprogram(name: "HAL_EXTI_GetPending", scope: !1, file: !1, line: 558, type: !9, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!475 = !DILocation(line: 572, column: 14, scope: !474)
!476 = !DILocation(line: 572, column: 21, scope: !474)
!477 = !DILocation(line: 572, column: 26, scope: !474)
!478 = !DILocation(line: 572, column: 43, scope: !474)
!479 = !DILocation(line: 572, column: 10, scope: !474)
!480 = !DILocation(line: 573, column: 14, scope: !474)
!481 = !DILocation(line: 573, column: 21, scope: !474)
!482 = !DILocation(line: 573, column: 26, scope: !474)
!483 = !DILocation(line: 573, column: 11, scope: !474)
!484 = !DILocation(line: 574, column: 22, scope: !474)
!485 = !DILocation(line: 574, column: 19, scope: !474)
!486 = !DILocation(line: 574, column: 12, scope: !474)
!487 = !DILocation(line: 576, column: 6, scope: !474)
!488 = !DILocation(line: 576, column: 11, scope: !474)
!489 = !DILocation(line: 579, column: 52, scope: !474)
!490 = !DILocation(line: 579, column: 50, scope: !474)
!491 = !DILocation(line: 579, column: 28, scope: !474)
!492 = !DILocation(line: 579, column: 13, scope: !474)
!493 = !DILocation(line: 580, column: 3, scope: !474)
!494 = !DILocation(line: 584, column: 52, scope: !474)
!495 = !DILocation(line: 584, column: 50, scope: !474)
!496 = !DILocation(line: 584, column: 28, scope: !474)
!497 = !DILocation(line: 584, column: 13, scope: !474)
!498 = !DILocation(line: 588, column: 15, scope: !474)
!499 = !DILocation(line: 588, column: 14, scope: !474)
!500 = !DILocation(line: 588, column: 25, scope: !474)
!501 = !DILocation(line: 588, column: 23, scope: !474)
!502 = !DILocation(line: 588, column: 38, scope: !474)
!503 = !DILocation(line: 588, column: 35, scope: !474)
!504 = !DILocation(line: 588, column: 10, scope: !474)
!505 = !DILocation(line: 589, column: 10, scope: !474)
!506 = !DILocation(line: 589, column: 3, scope: !474)
!507 = distinct !DISubprogram(name: "HAL_EXTI_ClearPending", scope: !1, file: !1, line: 602, type: !9, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!508 = !DILocation(line: 614, column: 14, scope: !507)
!509 = !DILocation(line: 614, column: 21, scope: !507)
!510 = !DILocation(line: 614, column: 26, scope: !507)
!511 = !DILocation(line: 614, column: 43, scope: !507)
!512 = !DILocation(line: 614, column: 10, scope: !507)
!513 = !DILocation(line: 615, column: 23, scope: !507)
!514 = !DILocation(line: 615, column: 30, scope: !507)
!515 = !DILocation(line: 615, column: 35, scope: !507)
!516 = !DILocation(line: 615, column: 19, scope: !507)
!517 = !DILocation(line: 615, column: 12, scope: !507)
!518 = !DILocation(line: 617, column: 6, scope: !507)
!519 = !DILocation(line: 617, column: 11, scope: !507)
!520 = !DILocation(line: 620, column: 52, scope: !507)
!521 = !DILocation(line: 620, column: 50, scope: !507)
!522 = !DILocation(line: 620, column: 28, scope: !507)
!523 = !DILocation(line: 620, column: 13, scope: !507)
!524 = !DILocation(line: 621, column: 3, scope: !507)
!525 = !DILocation(line: 625, column: 52, scope: !507)
!526 = !DILocation(line: 625, column: 50, scope: !507)
!527 = !DILocation(line: 625, column: 28, scope: !507)
!528 = !DILocation(line: 625, column: 13, scope: !507)
!529 = !DILocation(line: 629, column: 15, scope: !507)
!530 = !DILocation(line: 629, column: 4, scope: !507)
!531 = !DILocation(line: 629, column: 12, scope: !507)
!532 = !DILocation(line: 630, column: 1, scope: !507)
!533 = distinct !DISubprogram(name: "HAL_EXTI_GenerateSWI", scope: !1, file: !1, line: 638, type: !9, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!534 = !DILocation(line: 649, column: 14, scope: !533)
!535 = !DILocation(line: 649, column: 21, scope: !533)
!536 = !DILocation(line: 649, column: 26, scope: !533)
!537 = !DILocation(line: 649, column: 43, scope: !533)
!538 = !DILocation(line: 649, column: 10, scope: !533)
!539 = !DILocation(line: 650, column: 23, scope: !533)
!540 = !DILocation(line: 650, column: 30, scope: !533)
!541 = !DILocation(line: 650, column: 35, scope: !533)
!542 = !DILocation(line: 650, column: 19, scope: !533)
!543 = !DILocation(line: 650, column: 12, scope: !533)
!544 = !DILocation(line: 652, column: 52, scope: !533)
!545 = !DILocation(line: 652, column: 50, scope: !533)
!546 = !DILocation(line: 652, column: 28, scope: !533)
!547 = !DILocation(line: 652, column: 11, scope: !533)
!548 = !DILocation(line: 653, column: 14, scope: !533)
!549 = !DILocation(line: 653, column: 4, scope: !533)
!550 = !DILocation(line: 653, column: 12, scope: !533)
!551 = !DILocation(line: 654, column: 1, scope: !533)
!552 = distinct !DISubprogram(name: "HAL_EXTI_ConfigLineAttributes", scope: !1, file: !1, line: 689, type: !9, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!553 = !DILocation(line: 702, column: 14, scope: !552)
!554 = !DILocation(line: 702, column: 23, scope: !552)
!555 = !DILocation(line: 702, column: 40, scope: !552)
!556 = !DILocation(line: 702, column: 10, scope: !552)
!557 = !DILocation(line: 703, column: 14, scope: !552)
!558 = !DILocation(line: 703, column: 23, scope: !552)
!559 = !DILocation(line: 703, column: 11, scope: !552)
!560 = !DILocation(line: 704, column: 22, scope: !552)
!561 = !DILocation(line: 704, column: 19, scope: !552)
!562 = !DILocation(line: 704, column: 12, scope: !552)
!563 = !DILocation(line: 707, column: 57, scope: !552)
!564 = !DILocation(line: 707, column: 55, scope: !552)
!565 = !DILocation(line: 707, column: 31, scope: !552)
!566 = !DILocation(line: 707, column: 11, scope: !552)
!567 = !DILocation(line: 708, column: 13, scope: !552)
!568 = !DILocation(line: 708, column: 12, scope: !552)
!569 = !DILocation(line: 708, column: 10, scope: !552)
!570 = !DILocation(line: 711, column: 7, scope: !552)
!571 = !DILocation(line: 711, column: 22, scope: !552)
!572 = !DILocation(line: 711, column: 40, scope: !552)
!573 = !DILocation(line: 711, column: 6, scope: !552)
!574 = !DILocation(line: 713, column: 15, scope: !552)
!575 = !DILocation(line: 713, column: 12, scope: !552)
!576 = !DILocation(line: 714, column: 3, scope: !552)
!577 = !DILocation(line: 715, column: 12, scope: !552)
!578 = !DILocation(line: 715, column: 27, scope: !552)
!579 = !DILocation(line: 715, column: 46, scope: !552)
!580 = !DILocation(line: 715, column: 11, scope: !552)
!581 = !DILocation(line: 717, column: 16, scope: !552)
!582 = !DILocation(line: 717, column: 15, scope: !552)
!583 = !DILocation(line: 717, column: 12, scope: !552)
!584 = !DILocation(line: 718, column: 3, scope: !552)
!585 = !DILocation(line: 725, column: 14, scope: !552)
!586 = !DILocation(line: 725, column: 4, scope: !552)
!587 = !DILocation(line: 725, column: 12, scope: !552)
!588 = !DILocation(line: 751, column: 1, scope: !552)
!589 = distinct !DISubprogram(name: "HAL_EXTI_GetConfigLineAttributes", scope: !1, file: !1, line: 762, type: !9, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!590 = !DILocation(line: 771, column: 6, scope: !589)
!591 = !DILocation(line: 771, column: 22, scope: !589)
!592 = !DILocation(line: 773, column: 5, scope: !589)
!593 = !DILocation(line: 780, column: 14, scope: !589)
!594 = !DILocation(line: 780, column: 23, scope: !589)
!595 = !DILocation(line: 780, column: 40, scope: !589)
!596 = !DILocation(line: 780, column: 10, scope: !589)
!597 = !DILocation(line: 781, column: 14, scope: !589)
!598 = !DILocation(line: 781, column: 23, scope: !589)
!599 = !DILocation(line: 781, column: 11, scope: !589)
!600 = !DILocation(line: 782, column: 22, scope: !589)
!601 = !DILocation(line: 782, column: 19, scope: !589)
!602 = !DILocation(line: 782, column: 12, scope: !589)
!603 = !DILocation(line: 785, column: 57, scope: !589)
!604 = !DILocation(line: 785, column: 55, scope: !589)
!605 = !DILocation(line: 785, column: 31, scope: !589)
!606 = !DILocation(line: 785, column: 11, scope: !589)
!607 = !DILocation(line: 787, column: 8, scope: !589)
!608 = !DILocation(line: 787, column: 7, scope: !589)
!609 = !DILocation(line: 787, column: 18, scope: !589)
!610 = !DILocation(line: 787, column: 16, scope: !589)
!611 = !DILocation(line: 787, column: 28, scope: !589)
!612 = !DILocation(line: 787, column: 6, scope: !589)
!613 = !DILocation(line: 789, column: 16, scope: !589)
!614 = !DILocation(line: 790, column: 3, scope: !589)
!615 = !DILocation(line: 793, column: 16, scope: !589)
!616 = !DILocation(line: 813, column: 22, scope: !589)
!617 = !DILocation(line: 813, column: 4, scope: !589)
!618 = !DILocation(line: 813, column: 20, scope: !589)
!619 = !DILocation(line: 815, column: 3, scope: !589)
!620 = !DILocation(line: 816, column: 1, scope: !589)
