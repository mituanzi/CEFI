; ModuleID = './Core/Src/stm32l5xx_it.c'
source_filename = "./Core/Src/stm32l5xx_it.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.__UART_HandleTypeDef = type { %struct.USART_TypeDef*, %struct.UART_InitTypeDef, %struct.UART_AdvFeatureInitTypeDef, i8*, i16, i16, i8*, i16, i16, i16, i32, i16, i16, i32, {}*, {}*, %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef*, i8, i32, i32, i32 }
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

@huart1 = external dso_local global %struct.__UART_HandleTypeDef, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @MemManage_Handler() #0 !dbg !8 {
entry:
  br label %while.body, !dbg !11

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !11, !llvm.loop !12
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @UsageFault_Handler() #0 !dbg !14 {
entry:
  br label %while.body, !dbg !15

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !15, !llvm.loop !16
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @SVC_Handler() #0 !dbg !18 {
entry:
  ret void, !dbg !19
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @PendSV_Handler() #0 !dbg !20 {
entry:
  ret void, !dbg !21
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @SysTick_Handler() #0 !dbg !22 {
entry:
  call arm_aapcs_vfpcc void @HAL_IncTick(), !dbg !23
  ret void, !dbg !24
}

declare dso_local arm_aapcs_vfpcc void @HAL_IncTick() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @USART1_IRQHandler() #0 !dbg !25 {
entry:
  call arm_aapcs_vfpcc void @HAL_UART_IRQHandler(%struct.__UART_HandleTypeDef* @huart1), !dbg !26
  ret void, !dbg !27
}

declare dso_local arm_aapcs_vfpcc void @HAL_UART_IRQHandler(%struct.__UART_HandleTypeDef*) #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/stm32l5xx_it.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "MemManage_Handler", scope: !9, file: !9, line: 70, type: !10, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/stm32l5xx_it.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 75, column: 3, scope: !8)
!12 = distinct !{!12, !11, !13}
!13 = !DILocation(line: 79, column: 3, scope: !8)
!14 = distinct !DISubprogram(name: "UsageFault_Handler", scope: !9, file: !9, line: 85, type: !10, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 90, column: 3, scope: !14)
!16 = distinct !{!16, !15, !17}
!17 = !DILocation(line: 94, column: 3, scope: !14)
!18 = distinct !DISubprogram(name: "SVC_Handler", scope: !9, file: !9, line: 100, type: !10, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 108, column: 1, scope: !18)
!20 = distinct !DISubprogram(name: "PendSV_Handler", scope: !9, file: !9, line: 113, type: !10, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 121, column: 1, scope: !20)
!22 = distinct !DISubprogram(name: "SysTick_Handler", scope: !9, file: !9, line: 126, type: !10, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DILocation(line: 131, column: 3, scope: !22)
!24 = !DILocation(line: 135, column: 1, scope: !22)
!25 = distinct !DISubprogram(name: "USART1_IRQHandler", scope: !9, file: !9, line: 147, type: !10, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!26 = !DILocation(line: 152, column: 3, scope: !25)
!27 = !DILocation(line: 156, column: 1, scope: !25)
