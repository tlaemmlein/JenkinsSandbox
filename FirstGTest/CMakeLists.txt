cmake_minimum_required(VERSION 3.1)

project(FirstGTest LANGUAGES CXX)
#include(CTest)

message(${PROJECT_NAME})

# force static runtime libraries for msvc builds
if(MSVC)
  set(variables 
    CMAKE_CXX_FLAGS_DEBUG
    CMAKE_CXX_FLAGS_RELEASE
	CMAKE_CXX_FLAGS_RELWITHDEBINFO
	CMAKE_CXX_FLAGS_MINSIZEREL
  )
  foreach(variable ${variables})
	if(${variable} MATCHES "/MD")
	  string(REGEX REPLACE "/MD" "/MT" ${variable} "${${variable}}")
	endif()
  endforeach()
endif()

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    #set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib-debug)
    #set(LIB_INSTALL_DIR ${CMAKE_BINARY_DIR}/lib-debug)
    set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bind)
else()
    #set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    #set(LIB_INSTALL_DIR ${CMAKE_BINARY_DIR}/lib)
    set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/bin)
endif()

enable_testing()
add_executable(${PROJECT_NAME} "main.cpp" "VeryImportantClassTest.cpp")
#add_executable(FirstGTester "main.cpp" "VeryImportantClassTest.cpp")
add_test(NAME FirstGTester COMMAND ${PROJECT_NAME})

include_directories("../third_party/googletest-1.9.0/include")
#link_directories("../third_party/googletest-1.9.0/lib/VisualStudio15_2017_Win64")
find_library(GTEST gtest HINTS ../third_party/googletest-1.9.0/lib/VisualStudio15_2017_Win64)
#add_library(gmock gmock.lib)
#add_library(gtest gtest.lib)
target_link_libraries(${PROJECT_NAME} PUBLIC ${GTEST})
#target_link_libraries(FirstGTester PUBLIC ${GTEST})


