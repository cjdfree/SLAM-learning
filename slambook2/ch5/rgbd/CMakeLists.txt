cmake_minimum_required(VERSION 3.10)
project(rgbd)

# 查找库
find_package(Sophus REQUIRED)
find_package(OpenCV REQUIRED)  
find_package(Pangolin REQUIRED)

# 将头文件和库链接到项目中
include_directories(${Sophus_INCLUDE_DIRS})
include_directories(${OpenCV_INCLUDE_DIRS})  

# 可执行程序
add_executable(joinMap joinMap.cpp)

# 链接库
target_link_libraries(joinMap ${OpenCV_LIBS} ${Pangolin_LIBRARIES})  