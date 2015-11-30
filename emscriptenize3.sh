. /Users/wm/Code/emscripten/emsdk_portable/emsdk_env.sh

export CC=/Users/wm/Code/emscripten/emcc
export CXX=/Users/wm/Code/emscripten/em++
echo "----> configure..."
emconfigure ./configure
echo "----> cmake..."
emmake cmake ./
echo "----> make..."
emmake make

mkjs(){
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

echo "----> archives..."
mkjs
