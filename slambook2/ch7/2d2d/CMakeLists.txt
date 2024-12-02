cmake_minimum_required(VERSION 3.10)
project(2d2d)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV REQUIRED)  # 查找 OpenCV 库

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(pose_estimation_2d2d pose_estimation_2d2d.cpp)
target_link_libraries(pose_estimation_2d2d ${OpenCV_LIBS})