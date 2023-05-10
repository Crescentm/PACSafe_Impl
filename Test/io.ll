; ModuleID = 'io.c'
source_filename = "io.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4
@GLOBAL_CONST_TRUE = dso_local constant i32 1, align 4
@GLOBAL_CONST_FALSE = dso_local constant i32 0, align 4
@GLOBAL_CONST_FIVE = dso_local constant i32 5, align 4
@globalTrue = dso_local global i32 1, align 4
@globalFalse = dso_local global i32 0, align 4
@globalFive = dso_local global i32 5, align 4
@globalArgc = dso_local global i32 0, align 4
@globalArgv = dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %6)
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, ...) @wprintf(i32* noundef getelementptr inbounds ([5 x i32], [5 x i32]* @.str.1, i64 0, i64 0), i32* noundef %6)
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

declare i32 @wprintf(i32* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 noundef %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float noundef %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  %4 = fpext float %3 to double
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 noundef %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* noundef %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 noundef %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load i8, i8* %2, align 1
  %4 = zext i8 %3 to i32
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double noundef %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), double noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* noundef %0) #0 {
  %2 = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %0, %struct._twoIntsStruct** %2, align 8
  %3 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %4 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %7 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %5, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %6, !llvm.loop !10

20:                                               ; preds = %6
  %21 = call i32 @puts(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare i32 @puts(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %46, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = call i16** @__ctype_b_loc() #4
  %15 = load i16*, i16** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = mul i64 2, %17
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %15, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 4096
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %13
  %29 = call i16** @__ctype_b_loc() #4
  %30 = load i16*, i16** %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = mul i64 2, %32
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %30, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 4096
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %28, %13, %9
  %45 = phi i1 [ false, %13 ], [ false, %9 ], [ %43, %28 ]
  br i1 %45, label %46, label %59

46:                                               ; preds = %44
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = mul i64 2, %48
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %50, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* noundef %8) #5
  %52 = load i32, i32* %8, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %9, !llvm.loop !12

59:                                               ; preds = %44
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* noundef %0, i64 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %32, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = mul i64 2, %15
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @iswxdigit(i32 noundef %18) #5
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load i32*, i32** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = mul i64 2, %23
  %25 = add i64 %24, 1
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iswxdigit(i32 noundef %27) #5
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %21, %13, %9
  %31 = phi i1 [ false, %13 ], [ false, %9 ], [ %29, %21 ]
  br i1 %31, label %32, label %45

32:                                               ; preds = %30
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 2, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* noundef %36, i32* noundef getelementptr inbounds ([5 x i32], [5 x i32]* @.str.14, i64 0, i64 0), i32* noundef %8) #5
  %38 = load i32, i32* %8, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %42, align 1
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %9, !llvm.loop !13

45:                                               ; preds = %30
  %46 = load i64, i64* %7, align 8
  ret i64 %46
}

; Function Attrs: nounwind
declare i32 @iswxdigit(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @__isoc99_swscanf(i32* noundef, i32* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 {
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 {
  %1 = call i32 @rand() #5
  %2 = srem i32 %1, 2
  ret i32 %2
}

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Debian clang version 14.0.6"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
