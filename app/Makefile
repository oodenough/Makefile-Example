bin/app.exe : obj/main.o
	echo "链接对象文件app/obj/main.o和math/bin下的库文件中..."
	g++ obj/main.o -L../math/bin -o bin/app.exe -lmath
	echo "链接结果为app/bin/app.exe"

obj/main.o : main.cxx
	echo "进入app目录"
	echo "编译main.cxx中..."
	g++ -I../math -c -o obj/main.o main.cxx
	echo "编译结果为对象文件app/obj/main.o"

.PHONY : clean
clean : 
	rm -fv bin/* obj/*
