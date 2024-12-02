cmake_minimum_required(VERSION 3.10)
project(ceresCurveFitting)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

# OpenCV
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Eigen
include_directories("/usr/include/eigen3")

# Ceres
find_package(Ceres REQUIRED)
include_directories(${CERES_INCLUDE_DIRS})

add_executable(ceresCurveFitting ceresCurveFitting.cpp)
target_link_libraries(ceresCurveFitting ${OpenCV_LIBS} ${CERES_LIBRARIES})
