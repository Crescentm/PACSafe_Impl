; ModuleID = 'io_opt.bc'
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
  %3 = bitcast i8** %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store i8* %0, i8** %2, align 8
  call void @addPAC(i8** %2)
  call void @authPAC(i8** %2, i32 0)
  %4 = load i8*, i8** %2, align 8
  call void @addPAC(i8** %2)
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  call void @authPAC(i8** %2, i32 0)
  %7 = load i8*, i8** %2, align 8
  call void @addPAC(i8** %2)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %7)
  br label %9

9:                                                ; preds = %6, %1
  call void @removeMetadataStack(i8** %2)
  ret void
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  %3 = bitcast i32** %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store i32* %0, i32** %2, align 8
  %4 = bitcast i32** %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i32** %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i32*, i32** %2, align 8
  %7 = bitcast i32** %2 to i8**
  call void @addPAC(i8** %7)
  %8 = icmp ne i32* %6, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = bitcast i32** %2 to i8**
  call void @authPAC(i8** %10, i32 0)
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast i32** %2 to i8**
  call void @addPAC(i8** %12)
  %13 = call i32 (i32*, ...) @wprintf(i32* noundef getelementptr inbounds ([5 x i32], [5 x i32]* @.str.1, i64 0, i64 0), i32* noundef %11)
  br label %14

14:                                               ; preds = %9, %1
  %15 = bitcast i32** %2 to i8**
  call void @removeMetadataStack(i8** %15)
  ret void
}

declare i32 @wprintf(i32* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 4)
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i32* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i32, i32* %2, align 4
  %7 = bitcast i32* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %6)
  %9 = bitcast i32* %2 to i8**
  call void @removeMetadataStack(i8** %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = bitcast i16* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 2)
  store i16 %0, i16* %2, align 2
  %4 = bitcast i16* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i16* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i16, i16* %2, align 2
  %7 = bitcast i16* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = sext i16 %6 to i32
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %8)
  %10 = bitcast i16* %2 to i8**
  call void @removeMetadataStack(i8** %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float noundef %0) #0 {
  %2 = alloca float, align 4
  %3 = bitcast float* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 4)
  store float %0, float* %2, align 4
  %4 = bitcast float* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast float* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load float, float* %2, align 4
  %7 = bitcast float* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = fpext float %6 to double
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double noundef %8)
  %10 = bitcast float* %2 to i8**
  call void @removeMetadataStack(i8** %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store i64 %0, i64* %2, align 8
  %4 = bitcast i64* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i64* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i64, i64* %2, align 8
  %7 = bitcast i64* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef %6)
  %9 = bitcast i64* %2 to i8**
  call void @removeMetadataStack(i8** %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store i64 %0, i64* %2, align 8
  %4 = bitcast i64* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i64* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i64, i64* %2, align 8
  %7 = bitcast i64* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 noundef %6)
  %9 = bitcast i64* %2 to i8**
  call void @removeMetadataStack(i8** %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store i64 %0, i64* %2, align 8
  %4 = bitcast i64* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i64* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i64, i64* %2, align 8
  %7 = bitcast i64* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 noundef %6)
  %9 = bitcast i64* %2 to i8**
  call void @removeMetadataStack(i8** %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = bitcast i8* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 1)
  store i8 %0, i8* %2, align 1
  %4 = bitcast i8* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i8* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i8, i8* %2, align 1
  %7 = bitcast i8* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = zext i8 %6 to i32
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %8)
  %10 = bitcast i8* %2 to i8**
  call void @removeMetadataStack(i8** %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 4)
  %4 = alloca [2 x i32], align 4
  %memberptr1 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 0, i32 1
  %5 = bitcast i32* %memberptr1 to i8**
  call void @setMetadata(i8** %5, i32 2, i32 8)
  %memberptr = getelementptr inbounds [2 x i32], [2 x i32]* %4, i32 0, i32 0
  %6 = bitcast i32* %memberptr to i8**
  call void @setMetadata(i8** %6, i32 2, i32 8)
  store i32 %0, i32* %2, align 4
  %7 = bitcast i32* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = bitcast i32* %2 to i8**
  call void @authPAC(i8** %8, i32 0)
  %9 = load i32, i32* %2, align 4
  %10 = bitcast i32* %2 to i8**
  call void @addPAC(i8** %10)
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %9, i32* %11, align 4
  %12 = bitcast i32* %11 to i8**
  call void @addPAC(i8** %12)
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* noundef %14)
  %16 = bitcast i32* %2 to i8**
  call void @removeMetadataStack(i8** %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 4)
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i32* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i32, i32* %2, align 4
  %7 = bitcast i32* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 noundef %6)
  %9 = bitcast i32* %2 to i8**
  call void @removeMetadataStack(i8** %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = bitcast i8* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 1)
  store i8 %0, i8* %2, align 1
  %4 = bitcast i8* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast i8* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load i8, i8* %2, align 1
  %7 = bitcast i8* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = zext i8 %6 to i32
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 noundef %8)
  %10 = bitcast i8* %2 to i8**
  call void @removeMetadataStack(i8** %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double noundef %0) #0 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store double %0, double* %2, align 8
  %4 = bitcast double* %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast double* %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load double, double* %2, align 8
  %7 = bitcast double* %2 to i8**
  call void @addPAC(i8** %7)
  %8 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), double noundef %6)
  %9 = bitcast double* %2 to i8**
  call void @removeMetadataStack(i8** %9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* noundef %0) #0 {
  %2 = alloca %struct._twoIntsStruct*, align 8
  %3 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  store %struct._twoIntsStruct* %0, %struct._twoIntsStruct** %2, align 8
  %4 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @addPAC(i8** %4)
  %5 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @authPAC(i8** %5, i32 0)
  %6 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %7 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @addPAC(i8** %7)
  %8 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %6, i32 0, i32 0
  %9 = bitcast i32* %8 to i8**
  call void @authPAC(i8** %9, i32 0)
  %10 = load i32, i32* %8, align 4
  %11 = bitcast i32* %8 to i8**
  call void @addPAC(i8** %11)
  %12 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @authPAC(i8** %12, i32 0)
  %13 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %2, align 8
  %14 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @addPAC(i8** %14)
  %15 = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %13, i32 0, i32 1
  %16 = bitcast i32* %15 to i8**
  call void @authPAC(i8** %16, i32 0)
  %17 = load i32, i32* %15, align 4
  %18 = bitcast i32* %15 to i8**
  call void @addPAC(i8** %18)
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 noundef %10, i32 noundef %17)
  %20 = bitcast %struct._twoIntsStruct** %2 to i8**
  call void @removeMetadataStack(i8** %20)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = bitcast i8** %3 to i8**
  call void @setMetadata(i8** %4, i32 1, i32 8)
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8**
  call void @setMetadata(i8** %6, i32 1, i32 8)
  %7 = alloca i64, align 8
  %8 = bitcast i64* %7 to i8**
  call void @setMetadata(i8** %8, i32 1, i32 8)
  store i8* %0, i8** %3, align 8
  call void @addPAC(i8** %3)
  store i64 %1, i64* %5, align 8
  %9 = bitcast i64* %5 to i8**
  call void @addPAC(i8** %9)
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %11, i32 0)
  %12 = load i64, i64* %7, align 8
  %13 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %13)
  %14 = bitcast i64* %5 to i8**
  call void @authPAC(i8** %14, i32 0)
  %15 = load i64, i64* %5, align 8
  %16 = bitcast i64* %5 to i8**
  call void @addPAC(i8** %16)
  %17 = icmp ult i64 %12, %15
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  call void @authPAC(i8** %3, i32 0)
  %19 = load i8*, i8** %3, align 8
  call void @addPAC(i8** %3)
  %20 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %20, i32 0)
  %21 = load i64, i64* %7, align 8
  %22 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %22)
  %23 = getelementptr inbounds i8, i8* %19, i64 %21
  %24 = bitcast i8* %23 to i8**
  call void @authPAC(i8** %24, i32 0)
  %25 = load i8, i8* %23, align 1
  %26 = bitcast i8* %23 to i8**
  call void @addPAC(i8** %26)
  %27 = zext i8 %25 to i32
  %28 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 noundef %27)
  br label %29

29:                                               ; preds = %18
  %30 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %30, i32 0)
  %31 = load i64, i64* %7, align 8
  %32 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %32)
  %33 = add i64 %31, 1
  store i64 %33, i64* %7, align 8
  %34 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %34)
  br label %10, !llvm.loop !10

35:                                               ; preds = %10
  %36 = call i32 @puts(i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %37 = bitcast i64* %5 to i8**
  call void @removeMetadataStack(i8** %37)
  call void @removeMetadataStack(i8** %3)
  %38 = bitcast i64* %7 to i8**
  call void @removeMetadataStack(i8** %38)
  ret void
}

declare i32 @puts(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* noundef %0, i64 noundef %1, i8* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8**
  call void @setMetadata(i8** %5, i32 1, i32 8)
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to i8**
  call void @setMetadata(i8** %7, i32 1, i32 8)
  %8 = alloca i8*, align 8
  %9 = bitcast i8** %8 to i8**
  call void @setMetadata(i8** %9, i32 1, i32 8)
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to i8**
  call void @setMetadata(i8** %11, i32 1, i32 8)
  %12 = alloca i32, align 4
  %13 = bitcast i32* %12 to i8**
  call void @setMetadata(i8** %13, i32 1, i32 4)
  store i8* %0, i8** %4, align 8
  call void @addPAC(i8** %4)
  store i64 %1, i64* %6, align 8
  %14 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %14)
  store i8* %2, i8** %8, align 8
  call void @addPAC(i8** %8)
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %72, %3
  %16 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %16, i32 0)
  %17 = load i64, i64* %10, align 8
  %18 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %18)
  %19 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %19, i32 0)
  %20 = load i64, i64* %6, align 8
  %21 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %21)
  %22 = icmp ult i64 %17, %20
  br i1 %22, label %23, label %70

23:                                               ; preds = %15
  %24 = call i16** @__ctype_b_loc() #4
  %25 = bitcast i16** %24 to i8**
  call void @authPAC(i8** %25, i32 0)
  %26 = load i16*, i16** %24, align 8
  %27 = bitcast i16** %24 to i8**
  call void @addPAC(i8** %27)
  call void @authPAC(i8** %8, i32 0)
  %28 = load i8*, i8** %8, align 8
  call void @addPAC(i8** %8)
  %29 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %29, i32 0)
  %30 = load i64, i64* %10, align 8
  %31 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %31)
  %32 = mul i64 2, %30
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = bitcast i8* %33 to i8**
  call void @authPAC(i8** %34, i32 0)
  %35 = load i8, i8* %33, align 1
  %36 = bitcast i8* %33 to i8**
  call void @addPAC(i8** %36)
  %37 = zext i8 %35 to i32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %26, i64 %38
  %40 = bitcast i16* %39 to i8**
  call void @authPAC(i8** %40, i32 0)
  %41 = load i16, i16* %39, align 2
  %42 = bitcast i16* %39 to i8**
  call void @addPAC(i8** %42)
  %43 = zext i16 %41 to i32
  %44 = and i32 %43, 4096
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %23
  %47 = call i16** @__ctype_b_loc() #4
  %48 = bitcast i16** %47 to i8**
  call void @authPAC(i8** %48, i32 0)
  %49 = load i16*, i16** %47, align 8
  %50 = bitcast i16** %47 to i8**
  call void @addPAC(i8** %50)
  call void @authPAC(i8** %8, i32 0)
  %51 = load i8*, i8** %8, align 8
  call void @addPAC(i8** %8)
  %52 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %52, i32 0)
  %53 = load i64, i64* %10, align 8
  %54 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %54)
  %55 = mul i64 2, %53
  %56 = add i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = bitcast i8* %57 to i8**
  call void @authPAC(i8** %58, i32 0)
  %59 = load i8, i8* %57, align 1
  %60 = bitcast i8* %57 to i8**
  call void @addPAC(i8** %60)
  %61 = zext i8 %59 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %49, i64 %62
  %64 = bitcast i16* %63 to i8**
  call void @authPAC(i8** %64, i32 0)
  %65 = load i16, i16* %63, align 2
  %66 = bitcast i16* %63 to i8**
  call void @addPAC(i8** %66)
  %67 = zext i16 %65 to i32
  %68 = and i32 %67, 4096
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %46, %23, %15
  %71 = phi i1 [ false, %23 ], [ false, %15 ], [ %69, %46 ]
  br i1 %71, label %72, label %96

72:                                               ; preds = %70
  call void @authPAC(i8** %8, i32 0)
  %73 = load i8*, i8** %8, align 8
  call void @addPAC(i8** %8)
  %74 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %74, i32 0)
  %75 = load i64, i64* %10, align 8
  %76 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %76)
  %77 = mul i64 2, %75
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* noundef %78, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* noundef %12) #5
  %80 = bitcast i32* %12 to i8**
  call void @authPAC(i8** %80, i32 0)
  %81 = load i32, i32* %12, align 4
  %82 = bitcast i32* %12 to i8**
  call void @addPAC(i8** %82)
  %83 = trunc i32 %81 to i8
  call void @authPAC(i8** %4, i32 0)
  %84 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %85 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %85, i32 0)
  %86 = load i64, i64* %10, align 8
  %87 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %87)
  %88 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %83, i8* %88, align 1
  %89 = bitcast i8* %88 to i8**
  call void @setMetadataObj(i8** %89, i32 1, i32 8)
  %90 = bitcast i8* %88 to i8**
  call void @addPAC(i8** %90)
  call void @addPAC(i8** %4)
  %91 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %91, i32 0)
  %92 = load i64, i64* %10, align 8
  %93 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %93)
  %94 = add i64 %92, 1
  store i64 %94, i64* %10, align 8
  %95 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %95)
  br label %15, !llvm.loop !12

96:                                               ; preds = %70
  %97 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %97, i32 0)
  %98 = load i64, i64* %10, align 8
  %99 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %99)
  %100 = bitcast i64* %10 to i8**
  call void @removeMetadataStack(i8** %100)
  call void @removeMetadataStack(i8** %8)
  %101 = bitcast i64* %6 to i8**
  call void @removeMetadataStack(i8** %101)
  call void @removeMetadataStack(i8** %4)
  %102 = bitcast i32* %12 to i8**
  call void @removeMetadataStack(i8** %102)
  ret i64 %98
}

; Function Attrs: nounwind readnone willreturn
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8* noundef, i8* noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* noundef %0, i64 noundef %1, i32* noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8**
  call void @setMetadata(i8** %5, i32 1, i32 8)
  %6 = alloca i64, align 8
  %7 = bitcast i64* %6 to i8**
  call void @setMetadata(i8** %7, i32 1, i32 8)
  %8 = alloca i32*, align 8
  %9 = bitcast i32** %8 to i8**
  call void @setMetadata(i8** %9, i32 1, i32 8)
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to i8**
  call void @setMetadata(i8** %11, i32 1, i32 8)
  %12 = alloca i32, align 4
  %13 = bitcast i32* %12 to i8**
  call void @setMetadata(i8** %13, i32 1, i32 4)
  store i8* %0, i8** %4, align 8
  call void @addPAC(i8** %4)
  store i64 %1, i64* %6, align 8
  %14 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %14)
  store i32* %2, i32** %8, align 8
  %15 = bitcast i32** %8 to i8**
  call void @addPAC(i8** %15)
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %55, %3
  %17 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %17, i32 0)
  %18 = load i64, i64* %10, align 8
  %19 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %19)
  %20 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %20, i32 0)
  %21 = load i64, i64* %6, align 8
  %22 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %22)
  %23 = icmp ult i64 %18, %21
  br i1 %23, label %24, label %53

24:                                               ; preds = %16
  %25 = bitcast i32** %8 to i8**
  call void @authPAC(i8** %25, i32 0)
  %26 = load i32*, i32** %8, align 8
  %27 = bitcast i32** %8 to i8**
  call void @addPAC(i8** %27)
  %28 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %28, i32 0)
  %29 = load i64, i64* %10, align 8
  %30 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %30)
  %31 = mul i64 2, %29
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = bitcast i32* %32 to i8**
  call void @authPAC(i8** %33, i32 0)
  %34 = load i32, i32* %32, align 4
  %35 = bitcast i32* %32 to i8**
  call void @addPAC(i8** %35)
  %36 = call i32 @iswxdigit(i32 noundef %34) #5
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %24
  %39 = bitcast i32** %8 to i8**
  call void @authPAC(i8** %39, i32 0)
  %40 = load i32*, i32** %8, align 8
  %41 = bitcast i32** %8 to i8**
  call void @addPAC(i8** %41)
  %42 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %42, i32 0)
  %43 = load i64, i64* %10, align 8
  %44 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %44)
  %45 = mul i64 2, %43
  %46 = add i64 %45, 1
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = bitcast i32* %47 to i8**
  call void @authPAC(i8** %48, i32 0)
  %49 = load i32, i32* %47, align 4
  %50 = bitcast i32* %47 to i8**
  call void @addPAC(i8** %50)
  %51 = call i32 @iswxdigit(i32 noundef %49) #5
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %38, %24, %16
  %54 = phi i1 [ false, %24 ], [ false, %16 ], [ %52, %38 ]
  br i1 %54, label %55, label %81

55:                                               ; preds = %53
  %56 = bitcast i32** %8 to i8**
  call void @authPAC(i8** %56, i32 0)
  %57 = load i32*, i32** %8, align 8
  %58 = bitcast i32** %8 to i8**
  call void @addPAC(i8** %58)
  %59 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %59, i32 0)
  %60 = load i64, i64* %10, align 8
  %61 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %61)
  %62 = mul i64 2, %60
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* noundef %63, i32* noundef getelementptr inbounds ([5 x i32], [5 x i32]* @.str.14, i64 0, i64 0), i32* noundef %12) #5
  %65 = bitcast i32* %12 to i8**
  call void @authPAC(i8** %65, i32 0)
  %66 = load i32, i32* %12, align 4
  %67 = bitcast i32* %12 to i8**
  call void @addPAC(i8** %67)
  %68 = trunc i32 %66 to i8
  call void @authPAC(i8** %4, i32 0)
  %69 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %70 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %70, i32 0)
  %71 = load i64, i64* %10, align 8
  %72 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %72)
  %73 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 %68, i8* %73, align 1
  %74 = bitcast i8* %73 to i8**
  call void @setMetadataObj(i8** %74, i32 1, i32 8)
  %75 = bitcast i8* %73 to i8**
  call void @addPAC(i8** %75)
  call void @addPAC(i8** %4)
  %76 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %76, i32 0)
  %77 = load i64, i64* %10, align 8
  %78 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %78)
  %79 = add i64 %77, 1
  store i64 %79, i64* %10, align 8
  %80 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %80)
  br label %16, !llvm.loop !13

81:                                               ; preds = %53
  %82 = bitcast i64* %10 to i8**
  call void @authPAC(i8** %82, i32 0)
  %83 = load i64, i64* %10, align 8
  %84 = bitcast i64* %10 to i8**
  call void @addPAC(i8** %84)
  %85 = bitcast i32* %12 to i8**
  call void @removeMetadataStack(i8** %85)
  %86 = bitcast i32** %8 to i8**
  call void @removeMetadataStack(i8** %86)
  %87 = bitcast i64* %10 to i8**
  call void @removeMetadataStack(i8** %87)
  call void @removeMetadataStack(i8** %4)
  %88 = bitcast i64* %6 to i8**
  call void @removeMetadataStack(i8** %88)
  ret i64 %83
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

declare void @addPAC(i8**)

declare void @setMetadata(i8**, i32, i32)

declare void @authPAC(i8**, i32)

declare void @removeMetadataStack(i8**)

declare void @setMetadataObj(i8**, i32, i32)

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
