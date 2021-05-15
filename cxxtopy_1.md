## 封装简介
## 编译
1. 手动编译
- c
```shell
$ swig -python example.i 
$ gcc -O2 -fPIC -c example.c 
$ gcc -O2 -fPIC -c example_wrap.c -I/usr/include/python3.6 
$ gcc -shared example.o example_wrap.o -o _example.so
```
- c++
```shell
$ swig -c++ -python example.i 
$ g++ -O2 -fPIC -c example.cxx 
$ g++ -O2 -fPIC -c example_wrap.cxx -I/usr/include/python3.6 
$ g++ -shared example.o example_wrap.o -o _example.so
```
2. 使用distutils自动编译
- setup.py
```python
"""
setup.py file for Swig example
"""
#!/usr/bin/env python
from distutils.core import setup, Extension

example_module = Extension('_example', sources = ['example_wrap.c', 'example.c'])
setup(name        =  'example',
      version     = '0.1',
      author      = 'huangli',
      description = """Simple swig example from docs""",
      ext_modules = [example_module],
      py_modules  = ["example"])

```
- 编译
```shell
swig -python example.i
python setup.py build_ext --inplace
buid_ext: 告诉distutils编译扩展库
--inplace: 将编译结果放在本级目录下，否则将编译结果放在buid中
```
3. 静态编译
部分系统不支持使用动态库的话，需要重新将python interpreter重新编译一次
```c
%module example 
%inline %{ 
extern int fact(int); 
extern int mod(int, int);
extern double My_variable; 
%}
%include "embed.i" // Include code for a static version of Python
```
4. 
