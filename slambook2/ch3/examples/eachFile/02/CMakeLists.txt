# 声明要求的 cmake 最低版本
cmake_minimum_required(VERSION 2.8)

# 声明一个 cmake 工程
project(trajectory)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 设置编译模式
set(CMAKE_BUILD_TYPE "Debug")

# 添加库
include_directories("/usr/include/eigen3")
include_directories(${Pangolin_INCLUDE_DIRS})

find_package(Pangolin REQUIRED)

# 添加可执行程序调用hello库中函数
add_executable(plotTrajectory plotTrajectory.cpp)

target_link_libraries(plotTrajectory ${Pangolin_LIBRARIES})

