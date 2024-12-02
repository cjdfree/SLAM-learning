cmake_minimum_required(VERSION 3.10)

project(bundle_adjustment_g2o)
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-O3 -std=c++17")

# 添加 CMake 模块路径
list(APPEND CMAKE_MODULE_PATH /home/cjd/Documents/SLAM-Code/slambook2/ch9/g2o_BA/cmake_modules)

Find_Package(G2O REQUIRED)
Find_Package(Eigen3 REQUIRED)
Find_Package(Ceres REQUIRED)
Find_Package(Sophus REQUIRED)
Find_Package(CSparse REQUIRED)

SET(G2O_LIBS g2o_csparse_extension g2o_stuff g2o_core)

include_directories(${PROJECT_SOURCE_DIR} ${EIGEN3_INCLUDE_DIR} ${CSPARSE_INCLUDE_DIR})

add_library(bal_common common.cpp)
add_executable(bundle_adjustment_g2o bundle_adjustment_g2o.cpp)
target_link_libraries(bundle_adjustment_g2o ${G2O_LIBS} bal_common)

