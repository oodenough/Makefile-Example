
bin/libmath.so : obj/AdvancedFunctions.o obj/SimpleFunctions.o
	echo "根据对象文件obj/AdvancedFunctions.o 和 obj/SimpleFunctions.o 生成 共享对象文件share object中..."
	g++ -fPIC -shared -o bin/libmath.so obj/AdvancedFunctions.o obj/SimpleFunctions.o
	echo "编译结果为math/bin/libmath.so"

obj/AdvancedFunctions.o : advanced/AdvancedFunctions.cxx
	echo "进入math/advanced目录"
	echo "编译math/advanced/AdvancedFunctions.cxx中..."
	g++ -fPIC -I. -c -o obj/AdvancedFunctions.o advanced/AdvancedFunctions.cxx
	echo "编译结果为math/advanced/obj/AdvancedFunctions.o"

obj/SimpleFunctions.o : simple/SimpleFunctions.cxx
	echo "进入math/simple目录"
	echo "编译math/simple/SimpleFunctions.cxx中..."
	g++ -fPIC -I. -c -o obj/SimpleFunctions.o simple/SimpleFunctions.cxx
	echo "编译结果为math/simple/obj/SimpleFunctions.o"

.PHONY : clean
clean : 
	rm -fv bin/* obj/*
