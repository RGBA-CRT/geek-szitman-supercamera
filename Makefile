MAKEFLAGS += --no-builtin-rules --no-builtin-variables
.SUFFIXES:

BIN:=out.exe
# OPENCVFLAGS:=`pkg-config --cflags --libs opencv4`

all: $(BIN)

-include $(BIN).d

$(BIN): supercamera_poc.cpp Makefile
	g++ -std=c++23 "$<" -Wall -Wextra -O2 -MMD -g $(OPENCVFLAGS)  -o "$@" $(CXXFLAGS)

clean:
	rm -rf $(BIN) $(BIN).d
