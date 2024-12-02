# 声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(HelloSLAM)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 设置编译模式
set(CMAKE_BUILD_TYPE "Debug")

# 添加hello库
# add_library(hello libHelloSLAM.cpp)  # 不指定库类型

add_library(hello_shared SHARED libHelloSLAM.cpp)  # 共享库

# 添加可执行程序调用hello库中函数
add_executable(useHello useHello.cpp)
# 将hello_shared库文件链接到可执行程序useHello上
target_link_libraries(useHello hello_shared)
