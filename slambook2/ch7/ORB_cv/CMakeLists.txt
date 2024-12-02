cmake_minimum_required(VERSION 3.10)
project(orb_cv)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV REQUIRED)  # 查找 OpenCV 库

include_directories(
        ${OpenCV_INCLUDE_DIRS}
        "/usr/include/eigen3/"
)

add_executable(orb_cv orb_cv.cpp)
target_link_libraries(orb_cv ${OpenCV_LIBS})