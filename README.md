# 开发环境配置笔记
## 一、python
### 1、linux:
- python版本切换
```txt
update-alternatives: --install 需要 <链接> <名称> <路径> <优先级>
①、 update-alternatives --list python          >-查看已经使用update-alternative管理的python
②、 ls /usr/bin/pyth*                          >-查看已经安装的python版本，确定需要切换的python版本      
③、 update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1  >-绑定python2.7优先级1
    update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2  >-绑定python3.6优先级2
④、 update-alternatives --config python        >-手动切换python版本
```
- swig安装
这里安装pre会有些问题，所以暂时不安装pcre
```txt
①、默认安装目录：/usr/local
$ ./configure --without-pcre
$ make
$ make install
②、设置指定的目录
$ ./configure --prefix=/home/yourname/projects
$ make
$ make install
```
- swig使用例程
```txt
主要步骤：
①、swig -python example.i
②、gcc -c -fpic example.c  example_wrap.c -I/usr/include/python3.6
③、gcc -shared example.o example_wrap.o -o _example.so
主要文件：example.py, example.so
使用方式：import _example as em 或 import example
```
