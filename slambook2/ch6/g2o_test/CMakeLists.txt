cmake_minimum_required(VERSION 3.10)
project(g2o)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

# OpenCV
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# g2o
list(APPEND CMAKE_MODULE_PATH /home/cjd/Documents/SLAM-Code/slambook2/ch6/g2o_test/cmake_modules)
set(G2O_ROOT /usr/local/include/g2o)
find_package(G2O REQUIRED)
include_directories(${G2O_INCLUDE_DIRS})

# Eigen
include_directories("/usr/include/eigen3")

add_executable(g2oCurveFitting g2oCurveFitting.cpp)
target_link_libraries(g2oCurveFitting ${OpenCV_LIBS} ${G2O_CORE_LIBRARY} ${G2O_STUFF_LIBRARY})
