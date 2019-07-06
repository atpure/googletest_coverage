cmake_minimum_required(VERSION 2.6)

project(gtest)

set(TARGET ${CMAKE_PROJECT_NAME})

set(SRC
	src/main.cpp
	src/absol.cpp
)

add_executable(${TARGET} ${SRC})

add_subdirectory(unittest)
