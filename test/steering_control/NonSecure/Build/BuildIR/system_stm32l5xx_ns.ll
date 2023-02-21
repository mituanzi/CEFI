; ModuleID = './Core/Src/system_stm32l5xx_ns.c'
source_filename = "./Core/Src/system_stm32l5xx_ns.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

@SystemCoreClock = dso_local global i32 4000000, align 4
@AHBPrescTable = dso_local constant [16 x i8] c"\00\00\00\00\00\00\00\00\01\02\03\04\06\07\08\09", align 1
@APBPrescTable = dso_local constant [8 x i8] c"\00\00\00\00\01\02\03\04", align 1
@MSIRangeTable = dso_local constant [16 x i32] [i32 100000, i32 200000, i32 400000, i32 800000, i32 1000000, i32 2000000, i32 4000000, i32 8000000, i32 16000000, i32 24000000, i32 32000000, i32 48000000, i32 0, i32 0, i32 0, i32 0], align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @SystemInit() #0 !dbg !8 {
entry:
  ret void, !dbg !11
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @SystemCoreClockUpdate() #0 !dbg !12 {
entry:
  %call = call arm_aapcs_vfpcc i32 @SECURE_SystemCoreClockUpdate(), !dbg !13
  store i32 %call, i32* @SystemCoreClock, align 4, !dbg !14
  ret void, !dbg !15
}

declare dso_local arm_aapcs_vfpcc i32 @SECURE_SystemCoreClockUpdate() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/system_stm32l5xx_ns.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "SystemInit", scope: !9, file: !9, line: 163, type: !10, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/system_stm32l5xx_ns.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 175, column: 1, scope: !8)
!12 = distinct !DISubprogram(name: "SystemCoreClockUpdate", scope: !9, file: !9, line: 224, type: !10, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 227, column: 21, scope: !12)
!14 = !DILocation(line: 227, column: 19, scope: !12)
!15 = !DILocation(line: 228, column: 1, scope: !12)
