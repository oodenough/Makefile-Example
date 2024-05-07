Makefile-Example
================

[English](README.md) | [中文](README-zh.md)

Linux/Mac Makefile 示例。

原始文章在 [这里](http://cognitivewaves.wordpress.com/makefiles/)

我对其进行了一些修改，以便在执行 `make` 命令时显示**中文**信息。

## 如何使用

克隆仓库后：

1. 使用 make 进行构建

```bash
cd Makefile-Example
make
```

2. 将 `libmath.so` 添加到路径中

* Linux:

```bash
export LD_LIBRARY_PATH=path/to/Example-Makefile/math/bin/
```

* macOS:

```bash
export DYLD_LIBRARY_PATH=path/to/Example-Makefile/math/bin/
```

3. 执行程序

```bash
./app/bin/app.exe 4
```
