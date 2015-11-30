export CC=emcc
export CXX=emcc

emconfigure ./configure

emmake make

OBJS=$(find ./ -name "*.a")
emcc ${OBJS} -ISDL-emscripten/include SDL-emscripten/build/libs/libSDL2.a -o previous.html
