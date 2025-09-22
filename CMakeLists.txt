cmake_minimum_required(VERSION 3.14) # for FetchContent_MakeAvailable

# Get the root folder name and use it as project name
get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${PROJECT_NAME} LANGUAGES CXX)

# Use C++17 (Change if necessary)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Set dependencies
#include(FetchContent)

# Fetch dependencies (add more if necessary)
# FetchContent_Declare(
#     <name>
#     GIT_REPOSITORY <github_repo_link>
#     GIT_TAG <version>
# )

# Example
# FetchContent_Declare(
#     fmt
#     GIT_REPOSITORY https://github.com/fmtlib/fmt.git
#     GIT_TAG 10.2.1
# )

# Make them available
#FetchContent_MakeAvailable(fmt spdlog)

# Collect source and header files
file(GLOB_RECURSE SOURCES "src/*.cpp")
file(GLOB_RECURSE HEADERS "include/*.h")

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

# Add include directory
target_include_directories(${PROJECT_NAME} PRIVATE include)
