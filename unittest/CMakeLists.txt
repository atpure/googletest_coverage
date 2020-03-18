cmake_minimum_required(VERSION 2.6)

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIR} ${CMAKE_SOURCE_DIR}/src)

set(TARGET ${CMAKE_PROJECT_NAME}_test)

set(SRC
	main_tc.cc
	src/absol_tc.cc
	${CMAKE_SOURCE_DIR}/src/absol.cpp
)

add_executable(${TARGET} ${SRC})

target_link_libraries(${TARGET} ${GTEST_LIBRARIES} pthread)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage")

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fprofile-arcs -ftest-coverage")
