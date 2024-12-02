# 最低版本要求
cmake_minimum_required(VERSION 3.10)

# 定义项目名称和版本
project(HelloSLAM)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# 添加可执行文件
add_executable(helloSLAM helloSLAM.cpp)