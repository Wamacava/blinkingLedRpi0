cmake_minimum_required (VERSION 3.0)


# Usually CMake is compiling simple test program and runs it
# In case of cross compiling the compiled program can't be run on host 
# so to avoid trying to run compiled program we can check by compiling library
# other solution is set CMAKE_C_COMPILER_WORKS
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
#set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")

# Name our project
project ("blinking-service")

# Create a variable that holds the path to our libwiringPi.so file
#set (WPI_PATH /home/lukasz/dev/cmakeapp/WiringPi/wiringPi)

# Add the local ‘include’ directory and the wiringPi directory to grab headers
include_directories ("include")

# Actually find the wiringPi library object
# find_library(WPI_LIB wiringPi HINTS ${WPI_PATH} NO_CMAKE_FIND_ROOT_PATH)

# Alert the user if we do not find it
#if(NOT WPI_LIB)
# message(FATAL_ERROR “wiringPi library not found”)
#endif()

# Add all the *.c files in our source directory to our executable output
FILE(GLOB SRC_FILES "src/*.cpp")
add_executable("${PROJECT_NAME}" "${SRC_FILES}")

# Link the pre-compiled wiringPi library to the executable we just declared 
#target_link_libraries(blink ${WPI_LIB})
