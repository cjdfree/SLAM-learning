cmake_minimum_required(VERSION 3.10)
project(imageBasics)
find_package(OpenCV REQUIRED)  # 查找 OpenCV 库
include_directories(${OpenCV_INCLUDE_DIRS})  # 将 OpenCV 头文件和库链接到项目中
add_executable(imageBasics imageBasics.cpp)
add_executable(undistortImage undistortImage.cpp)
target_link_libraries(imageBasics ${OpenCV_LIBS})  # 链接OpenCV库
target_link_libraries(undistortImage ${OpenCV_LIBS})  # 链接OpenCV库到 undistortImage