; ModuleID = './Core/Src/led.c'
source_filename = "./Core/Src/led.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

@.str = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@__func__.led_on = private unnamed_addr constant [7 x i8] c"led_on\00", align 1
@__func__.led_off = private unnamed_addr constant [8 x i8] c"led_off\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @led_on() #0 !dbg !8 {
entry:
  %string = alloca [50 x i8], align 1
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !11
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !11
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !12
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.led_on, i32 0, i32 0)), !dbg !13
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !14
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !15
  ret void, !dbg !16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local arm_aapcs_vfpcc i32 @sprintf(i8*, i8*, ...) #2

declare dso_local arm_aapcs_vfpcc void @print(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @led_off() #0 !dbg !17 {
entry:
  %string = alloca [50 x i8], align 1
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !18
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !18
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !19
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.led_off, i32 0, i32 0)), !dbg !20
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !21
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !22
  ret void, !dbg !23
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/led.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "led_on", scope: !9, file: !9, line: 5, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/led.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 8, column: 16, scope: !8)
!12 = !DILocation(line: 9, column: 10, scope: !8)
!13 = !DILocation(line: 9, column: 2, scope: !8)
!14 = !DILocation(line: 10, column: 8, scope: !8)
!15 = !DILocation(line: 10, column: 2, scope: !8)
!16 = !DILocation(line: 12, column: 2, scope: !8)
!17 = distinct !DISubprogram(name: "led_off", scope: !9, file: !9, line: 15, type: !10, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DILocation(line: 18, column: 16, scope: !17)
!19 = !DILocation(line: 19, column: 10, scope: !17)
!20 = !DILocation(line: 19, column: 2, scope: !17)
!21 = !DILocation(line: 20, column: 8, scope: !17)
!22 = !DILocation(line: 20, column: 2, scope: !17)
!23 = !DILocation(line: 22, column: 2, scope: !17)
