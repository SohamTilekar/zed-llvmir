; ModuleID = 'main.gc'
source_filename = "/mnt/soham/soham_code/GigglyCode/./gpm//src/main.gc"

%shared_ptr = type { ptr, ptr }
%main.gc..StaticArray.0 = type { %shared_ptr, i64 }

declare void @puts(ptr)

declare i64 @printf(ptr, ...)

declare i64 @scanf(ptr, ...)

declare ptr @malloc(i64, ...)

declare void @free(ptr, ...)

define void @__init__(%shared_ptr %self, %shared_ptr %data, i64 %len) {
entry:
  %self1 = alloca %shared_ptr, align 8
  store %shared_ptr %self, ptr %self1, align 8
  %data2 = alloca %shared_ptr, align 8
  store %shared_ptr %data, ptr %data2, align 8
  %len3 = alloca i64, align 8
  store i64 %len, ptr %len3, align 8
  %0 = load ptr, ptr %data2, align 8
  %GetStructPointer = getelementptr inbounds %shared_ptr, ptr %self1, i32 0, i32 0
  %LoadedStructPointer = load ptr, ptr %GetStructPointer, align 8
  %acceseddata_from_StaticArray = getelementptr inbounds %main.gc..StaticArray.0, ptr %LoadedStructPointer, i32 0, i32 0
  store ptr %0, ptr %acceseddata_from_StaticArray, align 8
  %1 = load i64, ptr %len3, align 8
  %2 = alloca i64, align 8
  store i64 1, ptr %2, align 8
  %3 = sub i64 %1, 1
  %GetStructPointer4 = getelementptr inbounds %shared_ptr, ptr %self1, i32 0, i32 0
  %LoadedStructPointer5 = load ptr, ptr %GetStructPointer4, align 8
  %accesedlen_from_StaticArray = getelementptr inbounds %main.gc..StaticArray.0, ptr %LoadedStructPointer5, i32 0, i32 1
  %lodedlen = load i64, ptr %accesedlen_from_StaticArray, align 8
  store i64 %3, ptr %accesedlen_from_StaticArray, align 8
  ret void
  unreachable
}

define i64 @main() {
entry:
  %0 = alloca i64, align 8
  store i64 10, ptr %0, align 8
  %1 = alloca i64, align 8
  store i64 6, ptr %1, align 8
  %2 = alloca [2 x i64], align 8
  %3 = getelementptr [2 x i64], ptr %2, i64 0, i64 0
  store i64 10, ptr %3, align 8
  %4 = getelementptr [2 x i64], ptr %2, i64 0, i64 1
  store i64 6, ptr %4, align 8
  %5 = alloca %shared_ptr, align 8
  %6 = getelementptr %shared_ptr, ptr %5, i32 0
  store ptr %2, ptr %6, align 8
  %7 = getelementptr %shared_ptr, ptr %5, i32 1
  store ptr null, ptr %7, align 8
  %8 = load %shared_ptr, ptr %5, align 8
  %9 = alloca i64, align 8
  store i64 2, ptr %9, align 8
  %StaticArray = alloca %shared_ptr, align 8
  %StaticArray1 = alloca %main.gc..StaticArray.0, align 8
  %10 = getelementptr %shared_ptr, ptr %StaticArray, i32 0
  store ptr %StaticArray1, ptr %10, align 8
  %11 = getelementptr %shared_ptr, ptr %StaticArray, i32 1
  store ptr null, ptr %11, align 8
  %12 = load %shared_ptr, ptr %StaticArray, align 8
  call void @__init__(%shared_ptr %12, %shared_ptr %8, i64 2)
  %GetStructPointer = getelementptr inbounds %shared_ptr, ptr %StaticArray, i32 0, i32 0
  %LoadedStructPointer = load ptr, ptr %GetStructPointer, align 8
  %accesedlen_from_StaticArray = getelementptr inbounds %main.gc..StaticArray.0, ptr %LoadedStructPointer, i32 0, i32 1
  %lodedlen = load i64, ptr %accesedlen_from_StaticArray, align 8
  ret i64 %lodedlen
}
