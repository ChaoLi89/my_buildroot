cmake_minimum_required(VERSION 3.14.0)
PROJECT(myproject VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -rdynamic")
#set(CMAKE_CXX_COMPILER "")


add_executable(test-cmake)

target_sources(test-cmake PRIVATE 
    main.cpp
    )

install(TARGETS test-cmake
RUNTIME DESTINATION bin # will go to target/bin or host/bin
)