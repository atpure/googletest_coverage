cmake_minimum_required(VERSION 2.6)

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIR})

set(TARGET ${CMAKE_PROJECT_NAME}_test)

set(SRC
	src/gtest_tc.cc
)

add_executable(${TARGET} ${SRC})

target_link_libraries(${TARGET} ${GTEST_LIBRARIES} pthread)
