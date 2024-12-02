cmake_minimum_required(VERSION 3.10)
project(triangulation)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mpopcnt")

find_package(OpenCV REQUIRED)  # 查找 OpenCV 库

include_directories(${OpenCV_INCLUDE_DIRS})

add_executable(triangulation triangulation.cpp)
target_link_libraries(triangulation ${OpenCV_LIBS})