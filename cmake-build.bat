PATH C:\msys32\mingw64\bin;%PATH%

mkdir .install
mkdir .install\bin
@REM copy .external\OpenCV-MinGW-Build\x64\mingw\bin\*core*.dll .install\bin
@REM copy .external\OpenCV-MinGW-Build\x64\mingw\bin\*imgcodecs*.dll .install\bin
@REM copy .external\OpenCV-MinGW-Build\x64\mingw\bin\*imgproc*.dll .install\bin
@REM copy .external\OpenCV-MinGW-Build\x64\mingw\bin\*highgui*.dll .install\bin
@REM copy .external\libusb-1.0\MinGW64\dll\libusb-1.0.dll .install\bin
@REM cp /mingw64/bin/pthreadGC2-w64.dll .install/bin
@REM cp /mingw64/bin/libwinpthread-1.dll .install/bin
@REM cp .toolchain/mingw64/bin/libstdc++-6.dll .install/bin
@REM cp .toolchain/mingw64/bin/libgcc_s_seh-1.dll .install/bin

cmake --build .build
cmake --install .build