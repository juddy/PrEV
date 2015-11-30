export CC=emcc
export CXX=emcc

emconfigure ./configure

emmake make

OBJS=$(find ./ -name "*.a")
emcc ${OBJS} -s USE_SDL=2 -o previous.html
