; ModuleID = './Core/Src/LiquidCrystal.c'
source_filename = "./Core/Src/LiquidCrystal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.LiquidCrystalStruct = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"%s (LiquidCrystal * lcd = 0x%x, unsigned int cols = %u, unsigned int rows = %u)\0D\0A\00", align 1
@__func__.lcd_begin = private unnamed_addr constant [10 x i8] c"lcd_begin\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s (LiquidCrystal * lcd = 0x%x\0D\0A\00", align 1
@__func__.lcd_clear = private unnamed_addr constant [10 x i8] c"lcd_clear\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"%s (LiquidCrystal * lcd = 0x%x, char* output = %s, int len = %d)\0D\0A\00", align 1
@__func__.lcd_print = private unnamed_addr constant [10 x i8] c"lcd_print\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"%s (LiquidCrystal * lcd = 0x%x, int x = %d, int y = %d\0D\0A\00", align 1
@__func__.lcd_setCursor = private unnamed_addr constant [14 x i8] c"lcd_setCursor\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @lcd_begin(%struct.LiquidCrystalStruct* %lcd, i32 %cols, i32 %rows) #0 !dbg !8 {
entry:
  %lcd.addr = alloca %struct.LiquidCrystalStruct*, align 4
  %cols.addr = alloca i32, align 4
  %rows.addr = alloca i32, align 4
  %string = alloca [100 x i8], align 1
  store %struct.LiquidCrystalStruct* %lcd, %struct.LiquidCrystalStruct** %lcd.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  store i32 %rows, i32* %rows.addr, align 4
  %0 = bitcast [100 x i8]* %string to i8*, !dbg !11
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 100, i1 false), !dbg !11
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0, !dbg !12
  %1 = load %struct.LiquidCrystalStruct*, %struct.LiquidCrystalStruct** %lcd.addr, align 4, !dbg !13
  %2 = load i32, i32* %cols.addr, align 4, !dbg !14
  %3 = load i32, i32* %rows.addr, align 4, !dbg !15
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.lcd_begin, i32 0, i32 0), %struct.LiquidCrystalStruct* %1, i32 %2, i32 %3), !dbg !16
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0, !dbg !17
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 100), !dbg !18
  ret void, !dbg !19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local arm_aapcs_vfpcc i32 @sprintf(i8*, i8*, ...) #2

declare dso_local arm_aapcs_vfpcc void @print(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @lcd_clear(%struct.LiquidCrystalStruct* %lcd) #0 !dbg !20 {
entry:
  %lcd.addr = alloca %struct.LiquidCrystalStruct*, align 4
  %string = alloca [50 x i8], align 1
  store %struct.LiquidCrystalStruct* %lcd, %struct.LiquidCrystalStruct** %lcd.addr, align 4
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !21
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !22
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.lcd_clear, i32 0, i32 0)), !dbg !23
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !24
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @lcd_print(%struct.LiquidCrystalStruct* %lcd, i8* %output, i32 %len) #0 !dbg !27 {
entry:
  %lcd.addr = alloca %struct.LiquidCrystalStruct*, align 4
  %output.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %string = alloca [200 x i8], align 1
  store %struct.LiquidCrystalStruct* %lcd, %struct.LiquidCrystalStruct** %lcd.addr, align 4
  store i8* %output, i8** %output.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = bitcast [200 x i8]* %string to i8*, !dbg !28
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 200, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %string, i32 0, i32 0, !dbg !29
  %1 = load %struct.LiquidCrystalStruct*, %struct.LiquidCrystalStruct** %lcd.addr, align 4, !dbg !30
  %2 = load i8*, i8** %output.addr, align 4, !dbg !31
  %3 = load i32, i32* %len.addr, align 4, !dbg !32
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.lcd_print, i32 0, i32 0), %struct.LiquidCrystalStruct* %1, i8* %2, i32 %3), !dbg !33
  %arraydecay1 = getelementptr inbounds [200 x i8], [200 x i8]* %string, i32 0, i32 0, !dbg !34
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 200), !dbg !35
  ret void, !dbg !36
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @lcd_setCursor(%struct.LiquidCrystalStruct* %lcd, i32 %x, i32 %y) #0 !dbg !37 {
entry:
  %lcd.addr = alloca %struct.LiquidCrystalStruct*, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %string = alloca [100 x i8], align 1
  store %struct.LiquidCrystalStruct* %lcd, %struct.LiquidCrystalStruct** %lcd.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = bitcast [100 x i8]* %string to i8*, !dbg !38
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 100, i1 false), !dbg !38
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0, !dbg !39
  %1 = load i32, i32* %x.addr, align 4, !dbg !40
  %2 = load i32, i32* %y.addr, align 4, !dbg !41
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.lcd_setCursor, i32 0, i32 0), i32 %1, i32 %2), !dbg !42
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %string, i32 0, i32 0, !dbg !43
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 100), !dbg !44
  ret void, !dbg !45
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/LiquidCrystal.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "lcd_begin", scope: !9, file: !9, line: 6, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/LiquidCrystal.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 9, column: 16, scope: !8)
!12 = !DILocation(line: 10, column: 10, scope: !8)
!13 = !DILocation(line: 10, column: 115, scope: !8)
!14 = !DILocation(line: 10, column: 120, scope: !8)
!15 = !DILocation(line: 10, column: 126, scope: !8)
!16 = !DILocation(line: 10, column: 2, scope: !8)
!17 = !DILocation(line: 11, column: 8, scope: !8)
!18 = !DILocation(line: 11, column: 2, scope: !8)
!19 = !DILocation(line: 13, column: 2, scope: !8)
!20 = distinct !DISubprogram(name: "lcd_clear", scope: !9, file: !9, line: 16, type: !10, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 19, column: 16, scope: !20)
!22 = !DILocation(line: 20, column: 10, scope: !20)
!23 = !DILocation(line: 20, column: 2, scope: !20)
!24 = !DILocation(line: 21, column: 8, scope: !20)
!25 = !DILocation(line: 21, column: 2, scope: !20)
!26 = !DILocation(line: 23, column: 2, scope: !20)
!27 = distinct !DISubprogram(name: "lcd_print", scope: !9, file: !9, line: 26, type: !10, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DILocation(line: 29, column: 16, scope: !27)
!29 = !DILocation(line: 30, column: 10, scope: !27)
!30 = !DILocation(line: 30, column: 100, scope: !27)
!31 = !DILocation(line: 30, column: 105, scope: !27)
!32 = !DILocation(line: 30, column: 113, scope: !27)
!33 = !DILocation(line: 30, column: 2, scope: !27)
!34 = !DILocation(line: 31, column: 8, scope: !27)
!35 = !DILocation(line: 31, column: 2, scope: !27)
!36 = !DILocation(line: 33, column: 2, scope: !27)
!37 = distinct !DISubprogram(name: "lcd_setCursor", scope: !9, file: !9, line: 36, type: !10, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DILocation(line: 39, column: 16, scope: !37)
!39 = !DILocation(line: 40, column: 10, scope: !37)
!40 = !DILocation(line: 40, column: 90, scope: !37)
!41 = !DILocation(line: 40, column: 93, scope: !37)
!42 = !DILocation(line: 40, column: 2, scope: !37)
!43 = !DILocation(line: 41, column: 8, scope: !37)
!44 = !DILocation(line: 41, column: 2, scope: !37)
!45 = !DILocation(line: 43, column: 2, scope: !37)
