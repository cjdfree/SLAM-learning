cmake_minimum_required(VERSION 3.10)
project(3d3d)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 查找库
find_package(OpenCV REQUIRED)  

include_directories(
        ${OpenCV_INCLUDE_DIRS}
        ${Sophus_INCLUDE_DIRS}
        "/usr/include/eigen3/"
)

# g2o
list(APPEND CMAKE_MODULE_PATH /home/cjd/Documents/SLAM-Code/slambook2/ch7/3d2d/cmake_modules)
set(G2O_ROOT /usr/local/include/g2o)
find_package(G2O REQUIRED)
include_directories(${G2O_INCLUDE_DIRS})

add_executable(pose_estimation_3d3d pose_estimation_3d3d.cpp)
target_link_libraries(pose_estimation_3d3d
        g2o_core g2o_stuff
        ${OpenCV_LIBS})


