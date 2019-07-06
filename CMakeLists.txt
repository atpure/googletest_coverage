cmake_minimum_required(VERSION 2.6)

project(gtestSample)

set(TARGET ${CMAKE_PROJECT_NAME})

set(SRC
	src/main.cpp
	src/absol.cpp
)

add_executable(${TARGET} ${SRC})

add_subdirectory(unittest)
