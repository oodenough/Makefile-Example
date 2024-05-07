# 注释顶格　
# @ 符号用于抑制命令的输出，即在执行命令时不会将命令本身输出到终端。
# 非物理的target (虚拟目标) 用PHONY声明
.PHONY : all 
all : app/bin/app.exe
	@echo "构建结束"

# : 后为依赖的target
app/bin/app.exe : math/bin/libmath.so
	@echo "根据app/Makefile执行make"
	$(MAKE) -C app

math/bin/libmath.so : init
	@echo "根据math/Makefile执行make"
	$(MAKE) -C math

.PHONY : clean
clean :
	@echo "清理中..."
	$(MAKE) -C math clean
	$(MAKE) -C app  clean

.PHONY : init
init : say-hello
	@echo "为你创建文件夹..."
	mkdir -p app/bin app/obj math/bin math/obj
	@echo "已创建app/bin/ app/obj/ math/bin/ math/obj共4个目录"

.PHONY : say-hello
say-hello :
	@echo "Hello, Makefile!"
