
# 

CC = gcc
CFLAGS = -std=gnu++0x -g -w -O2 -static-libgcc -static-libstdc++
CXX = g++
CXXFLAGS = $(CFLAGS)
HDR = blocAlloc.h flashIO.h genBench.h input.h microbench.h output.h random.h rndFormat.h utility.h
SRC = blocAlloc.cpp flashIO.cpp genBench.cpp input.cpp microbench.cpp output.cpp random.cpp rndFormat.cpp utility.cpp
OBJ = blocAlloc.o flashIO.o genBench.o input.o microbench.o output.o random.o rndFormat.o utility.o

all: FlashIO

FlashIO: $(HDR) $(OBJ)
	$(CXX) $(CXXFLAGS) -o ./FlashIO.exe $(OBJ)
#	-chmod $(PERMS) $(OBJ) 
#	-chmod $(EPERMS) ./FlashIO

clean:
	-rm -f $(OBJ) ./FlashIO.exe

files:
	echo $(SRC) $(HDR)
