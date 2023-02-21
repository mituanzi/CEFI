; ModuleID = './Core/Src/util.c'
source_filename = "./Core/Src/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

@.str = private unnamed_addr constant [35 x i8] c"%s (int pin = %d, int mode = %d)\0D\0A\00", align 1
@__func__.pinMode = private unnamed_addr constant [8 x i8] c"pinMode\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s (int pin = %d)\0D\0A\00", align 1
@__func__.digitalRead = private unnamed_addr constant [12 x i8] c"digitalRead\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s (int pin = %d, int value = %d)\0D\0A\00", align 1
@__func__.digitalWrite = private unnamed_addr constant [13 x i8] c"digitalWrite\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s (int baud = %d)\0D\0A\00", align 1
@__func__.Serial_begin = private unnamed_addr constant [13 x i8] c"Serial_begin\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s() c:%c\0D\0A\00", align 1
@__func__.Serial_available = private unnamed_addr constant [17 x i8] c"Serial_available\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"read from pin %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @pinMode(i32 %pin, i32 %mode) #0 !dbg !8 {
entry:
  %pin.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %string = alloca [50 x i8], align 1
  store i32 %pin, i32* %pin.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !11
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !11
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !12
  %1 = load i32, i32* %pin.addr, align 4, !dbg !13
  %2 = load i32, i32* %mode.addr, align 4, !dbg !14
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.pinMode, i32 0, i32 0), i32 %1, i32 %2), !dbg !15
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !16
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local arm_aapcs_vfpcc i32 @sprintf(i8*, i8*, ...) #2

declare dso_local arm_aapcs_vfpcc void @print(i8*, i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @digitalRead(i32 %pin) #0 !dbg !19 {
entry:
  %pin.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %string = alloca [50 x i8], align 1
  store i32 %pin, i32* %pin.addr, align 4
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !20
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !20
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !21
  %1 = load i32, i32* %pin.addr, align 4, !dbg !22
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.digitalRead, i32 0, i32 0), i32 %1), !dbg !23
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !24
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !25
  %call2 = call arm_aapcs_vfpcc i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %val), !dbg !26
  %2 = load i32, i32* %val, align 4, !dbg !27
  ret i32 %2, !dbg !28
}

declare dso_local arm_aapcs_vfpcc i32 @scanf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @digitalWrite(i32 %pin, i32 %value) #0 !dbg !29 {
entry:
  %pin.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %string = alloca [50 x i8], align 1
  store i32 %pin, i32* %pin.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !30
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !31
  %1 = load i32, i32* %pin.addr, align 4, !dbg !32
  %2 = load i32, i32* %value.addr, align 4, !dbg !33
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.digitalWrite, i32 0, i32 0), i32 %1, i32 %2), !dbg !34
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !35
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @Serial_begin(i32 %baud) #0 !dbg !38 {
entry:
  %baud.addr = alloca i32, align 4
  %string = alloca [50 x i8], align 1
  store i32 %baud, i32* %baud.addr, align 4
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !39
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !39
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !40
  %1 = load i32, i32* %baud.addr, align 4, !dbg !41
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.Serial_begin, i32 0, i32 0), i32 %1), !dbg !42
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !43
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @Serial_available() #0 !dbg !46 {
entry:
  %c = alloca i8, align 1
  %string = alloca [50 x i8], align 1
  store i8 97, i8* %c, align 1, !dbg !47
  %0 = bitcast [50 x i8]* %string to i8*, !dbg !48
  call void @llvm.memset.p0i8.i32(i8* align 1 %0, i8 0, i32 50, i1 false), !dbg !48
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !49
  %1 = load i8, i8* %c, align 1, !dbg !50
  %conv = zext i8 %1 to i32, !dbg !50
  %call = call arm_aapcs_vfpcc i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.Serial_available, i32 0, i32 0), i32 %conv), !dbg !51
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %string, i32 0, i32 0, !dbg !52
  call arm_aapcs_vfpcc void @print(i8* %arraydecay1, i32 50), !dbg !53
  ret i32 1, !dbg !54
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @Serial_read() #0 !dbg !55 {
entry:
  %c = alloca i8, align 1
  %call = call arm_aapcs_vfpcc i32 @getchar(), !dbg !56
  %conv = trunc i32 %call to i8, !dbg !56
  store i8 %conv, i8* %c, align 1, !dbg !57
  %0 = load i8, i8* %c, align 1, !dbg !58
  %conv1 = zext i8 %0 to i32, !dbg !59
  ret i32 %conv1, !dbg !60
}

declare dso_local arm_aapcs_vfpcc i32 @getchar() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @Serial_write(i8* %output, i32 %len) #0 !dbg !61 {
entry:
  %output.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  store i8* %output, i8** %output.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %output.addr, align 4, !dbg !62
  %1 = load i32, i32* %len.addr, align 4, !dbg !63
  call arm_aapcs_vfpcc void @print(i8* %0, i32 %1), !dbg !64
  ret i32 0, !dbg !65
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @analogRead(i32 %pin) #0 !dbg !66 {
entry:
  %pin.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %pin, i32* %pin.addr, align 4
  %0 = load i32, i32* %pin.addr, align 4, !dbg !67
  %call = call arm_aapcs_vfpcc i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i32 %0), !dbg !68
  %call1 = call arm_aapcs_vfpcc i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %val), !dbg !69
  %1 = load i32, i32* %val, align 4, !dbg !70
  ret i32 %1, !dbg !71
}

declare dso_local arm_aapcs_vfpcc i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @millis() #0 !dbg !72 {
entry:
  %start = alloca i32, align 4
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !73
  store i32 %call, i32* %start, align 4, !dbg !74
  %0 = load i32, i32* %start, align 4, !dbg !75
  ret i32 %0, !dbg !76
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @delayMicroseconds(float %usecs) #0 !dbg !77 {
entry:
  %usecs.addr = alloca float, align 4
  store float %usecs, float* %usecs.addr, align 4
  %0 = load float, float* %usecs.addr, align 4, !dbg !78
  %conv = fptoui float %0 to i32, !dbg !78
  call arm_aapcs_vfpcc void @HAL_Delay(i32 %conv), !dbg !79
  ret void, !dbg !80
}

declare dso_local arm_aapcs_vfpcc void @HAL_Delay(i32) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @toUInt(i8* %input, i32 %len) #0 !dbg !81 {
entry:
  %input.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %input.addr, align 4, !dbg !82
  %call = call arm_aapcs_vfpcc i32 @atoi(i8* %0), !dbg !83
  store i32 %call, i32* %val, align 4, !dbg !84
  %1 = load i32, i32* %val, align 4, !dbg !85
  ret i32 %1, !dbg !86
}

declare dso_local arm_aapcs_vfpcc i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/util.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "pinMode", scope: !9, file: !9, line: 9, type: !10, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/util.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 12, column: 16, scope: !8)
!12 = !DILocation(line: 13, column: 10, scope: !8)
!13 = !DILocation(line: 13, column: 68, scope: !8)
!14 = !DILocation(line: 13, column: 73, scope: !8)
!15 = !DILocation(line: 13, column: 2, scope: !8)
!16 = !DILocation(line: 14, column: 8, scope: !8)
!17 = !DILocation(line: 14, column: 2, scope: !8)
!18 = !DILocation(line: 15, column: 2, scope: !8)
!19 = distinct !DISubprogram(name: "digitalRead", scope: !9, file: !9, line: 18, type: !10, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DILocation(line: 20, column: 16, scope: !19)
!21 = !DILocation(line: 21, column: 10, scope: !19)
!22 = !DILocation(line: 21, column: 53, scope: !19)
!23 = !DILocation(line: 21, column: 2, scope: !19)
!24 = !DILocation(line: 22, column: 8, scope: !19)
!25 = !DILocation(line: 22, column: 2, scope: !19)
!26 = !DILocation(line: 23, column: 2, scope: !19)
!27 = !DILocation(line: 24, column: 9, scope: !19)
!28 = !DILocation(line: 24, column: 2, scope: !19)
!29 = distinct !DISubprogram(name: "digitalWrite", scope: !9, file: !9, line: 27, type: !10, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!30 = !DILocation(line: 30, column: 16, scope: !29)
!31 = !DILocation(line: 31, column: 10, scope: !29)
!32 = !DILocation(line: 31, column: 69, scope: !29)
!33 = !DILocation(line: 31, column: 74, scope: !29)
!34 = !DILocation(line: 31, column: 2, scope: !29)
!35 = !DILocation(line: 32, column: 8, scope: !29)
!36 = !DILocation(line: 32, column: 2, scope: !29)
!37 = !DILocation(line: 34, column: 2, scope: !29)
!38 = distinct !DISubprogram(name: "Serial_begin", scope: !9, file: !9, line: 37, type: !10, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 40, column: 16, scope: !38)
!40 = !DILocation(line: 41, column: 10, scope: !38)
!41 = !DILocation(line: 41, column: 54, scope: !38)
!42 = !DILocation(line: 41, column: 2, scope: !38)
!43 = !DILocation(line: 42, column: 8, scope: !38)
!44 = !DILocation(line: 42, column: 2, scope: !38)
!45 = !DILocation(line: 44, column: 2, scope: !38)
!46 = distinct !DISubprogram(name: "Serial_available", scope: !9, file: !9, line: 47, type: !10, scopeLine: 47, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 51, column: 4, scope: !46)
!48 = !DILocation(line: 55, column: 16, scope: !46)
!49 = !DILocation(line: 56, column: 10, scope: !46)
!50 = !DILocation(line: 56, column: 45, scope: !46)
!51 = !DILocation(line: 56, column: 2, scope: !46)
!52 = !DILocation(line: 57, column: 8, scope: !46)
!53 = !DILocation(line: 57, column: 2, scope: !46)
!54 = !DILocation(line: 64, column: 2, scope: !46)
!55 = distinct !DISubprogram(name: "Serial_read", scope: !9, file: !9, line: 67, type: !10, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DILocation(line: 68, column: 11, scope: !55)
!57 = !DILocation(line: 68, column: 7, scope: !55)
!58 = !DILocation(line: 70, column: 14, scope: !55)
!59 = !DILocation(line: 70, column: 9, scope: !55)
!60 = !DILocation(line: 70, column: 2, scope: !55)
!61 = distinct !DISubprogram(name: "Serial_write", scope: !9, file: !9, line: 73, type: !10, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DILocation(line: 76, column: 8, scope: !61)
!63 = !DILocation(line: 76, column: 16, scope: !61)
!64 = !DILocation(line: 76, column: 2, scope: !61)
!65 = !DILocation(line: 78, column: 2, scope: !61)
!66 = distinct !DISubprogram(name: "analogRead", scope: !9, file: !9, line: 81, type: !10, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DILocation(line: 83, column: 31, scope: !66)
!68 = !DILocation(line: 83, column: 2, scope: !66)
!69 = !DILocation(line: 84, column: 2, scope: !66)
!70 = !DILocation(line: 85, column: 9, scope: !66)
!71 = !DILocation(line: 85, column: 2, scope: !66)
!72 = distinct !DISubprogram(name: "millis", scope: !9, file: !9, line: 88, type: !10, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DILocation(line: 91, column: 10, scope: !72)
!74 = !DILocation(line: 91, column: 8, scope: !72)
!75 = !DILocation(line: 93, column: 9, scope: !72)
!76 = !DILocation(line: 93, column: 2, scope: !72)
!77 = distinct !DISubprogram(name: "delayMicroseconds", scope: !9, file: !9, line: 106, type: !10, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocation(line: 108, column: 12, scope: !77)
!79 = !DILocation(line: 108, column: 2, scope: !77)
!80 = !DILocation(line: 109, column: 1, scope: !77)
!81 = distinct !DISubprogram(name: "toUInt", scope: !9, file: !9, line: 111, type: !10, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!82 = !DILocation(line: 113, column: 13, scope: !81)
!83 = !DILocation(line: 113, column: 8, scope: !81)
!84 = !DILocation(line: 113, column: 6, scope: !81)
!85 = !DILocation(line: 114, column: 9, scope: !81)
!86 = !DILocation(line: 114, column: 2, scope: !81)
