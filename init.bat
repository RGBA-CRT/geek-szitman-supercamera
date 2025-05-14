rm -rf .external 
mkdir .external
pushd .external
git clone --depth=1 -b OpenCV-4.5.5-x64 https://github.com/huihut/OpenCV-MinGW-Build/

mkdir libusb-1.0
pushd libusb-1.0
wget https://github.com/libusb/libusb/releases/download/v1.0.28/libusb-1.0.28.7z
7z x libusb-1.0.28.7z
cd include
mkdir libusb-1.0
move libusb.h libusb-1.0
popd
popd