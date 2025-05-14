PATH C:\msys32\mingw64\bin;%PATH%
rm -rf .build
set OPENCV_DIR=./.external/OpenCV-MinGW-Build/x64/mingw/lib
set LIBUSB_DIR=./.external/libusb-1.0/MinGW64/static;./.external/libusb-1.0/include
cmake -B .build -DCMAKE_PREFIX_PATH=%OPENCV_DIR%;%LIBUSB_DIR%  -DCMAKE_INSTALL_PREFIX=.install
@REM -DCMAKE_FIND_DEBUG_MODE=1