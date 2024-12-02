cmake_minimum_required(VERSION 3.10)
project(orb_cv)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mpopcnt")

find_package(OpenCV REQUIRED)  # 查找 OpenCV 库

include_directories(
        ${OpenCV_INCLUDE_DIRS}
        "/usr/include/eigen3/"
)

add_executable(orb_self orb_self.cpp)
target_link_libraries(orb_self ${OpenCV_LIBS})