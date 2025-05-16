cmake_minimum_required(VERSION 3.5)

set(TARGET_NAME supercamera_poc)
project (${TARGET_NAME})

set(src_list 
	supercamera_poc.cpp)

set(CMAKE_CXX_STANDARD 23)

find_package(OpenCV REQUIRED)
find_library(LIB_USB NAMES libusb-1.0 REQUIRED)
find_path(LIBUSB_HEADER NAMES libusb-1.0/libusb.h REQUIRED)

if(WIN32)
	# mingw64
	# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++ -static-libgcc")
	# set(OTHER_LDFLAGS "${OTHER_LDFLAGS};-static-libstdc++;-static-libgcc;-static-pie")
	# set(OTHER_LDFLAGS "${OTHER_LDFLAGS};-lpthread;-static-libgcc")
endif()

# Add an executable
add_executable(${TARGET_NAME} ${src_list} ${LIB_USB})
target_include_directories(${TARGET_NAME} PRIVATE
	${LIBUSB_HEADER}
	${OpenCV_INCLUDE_DIRS})
target_link_libraries(${TARGET_NAME} ${OpenCV_LIBS} ${LIB_USB} ${OTHER_LDFLAGS})

install(TARGETS ${TARGET_NAME} RUNTIME DESTINATION bin)
