cmake_minimum_required(VERSION 3.10)
project(stereo)

find_package(OpenCV REQUIRED)  # 查找 OpenCV 库
find_package(Pangolin REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})  # 将 OpenCV 头文件和库链接到项目中
add_executable(stereoVision stereoVision.cpp)

target_link_libraries(stereoVision ${OpenCV_LIBS} ${Pangolin_LIBRARIES})  # 链接库