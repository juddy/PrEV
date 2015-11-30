. /Users/wm/Code/emscripten/emsdk_portable/emsdk_env.sh

export CC=/Users/wm/Code/emscripten/emcc
export CONFIGURE_CC=emcc
export CXX=/Users/wm/Code/emscripten/em++
echo "----> configure..."
emconfigure ./configure
echo "----> cmake..."
# To use this toolchain file with CMake, invoke CMake with the following command line parameters
# cmake -DCMAKE_TOOLCHAIN_FILE=<EmscriptenRoot>/cmake/Modules/Platform/Emscripten.cmake
#       -DCMAKE_BUILD_TYPE=<Debug|RelWithDebInfo|Release|MinSizeRel>
#       -G "Unix Makefiles" (Linux and OSX)
#       -G "MinGW Makefiles" (Windows)
#       <path/to/CMakeLists.txt> # Note, pass in here ONLY the path to the file, not the filename 'CMakeLists.txt' itself.
#emmake cmake ./ -Wno-dev
emcmake cmake -DCMAKE_TOOLCHAIN_FILE=./Emscripten.cmake -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" -Wno-dev ./

echo "----> make..."
emmake make

unpack_archives(){
	echo "----> archives..."
	touch archives.$$
	find ./ -name "*.a" >> ./archives.$$
        while read ARCH
	do
          ar x $ARCH $(ar t $ARCH | grep -v "^_")
	  OBJS=$(ar t $ARCH | grep -v "^_")
          ar x $ARCH $OBJS
	emcc ${OBJS} -s USE_SDL=1 -o previous.html
	done < archives.$$
}

mkjs(){
   
	echo "---> attempting to link LLVM bitcode objects..."
	OBJS=$(find ./ -name "*.o")
	emcc ${OBJS} -s USE_SDL=2 -o previous.html
}

#unpack_archives
#mkjs
