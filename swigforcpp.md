# swig for cpp
## swig支持的c/c++功能
- c99所有的preprocessing
- 所有ISO的c/c++数据类型
- 函数，变量，常量
- 类
- 单继承和多继承
- 函数和类方法的重载
- 运算符重载
- c++模板(including member templates, specialization, and partial specialization)
- 命名空间
- c++智能指针
- 可变长度参数(variable length arguments)
## 脚本语言和c的交互
1. 脚本语言的扩展
   脚本语言的指令需要通过解释器来执行，一般的当需要扩展解释器指令时，大部分的脚本语言提供了特殊的API给我们去增加指令。另外可以通过定义外部函数来定义新指令时如何嵌入到解释器的。
2. 解释器增加新指令
   将新指令增加到interpreter中需要做两件事：
   - wraper function: 写一个封装函数作为interpreter和c之间的沟通桥梁
   - provid key information: 通过wraper函数给interpreter提供转换的细节（函数名称，参数等）
3. wraper function
- example.c
```c
  1 double val = 3.00;
  2 int fact(int n)
  3 {
  4     if(n<=1)
  5     {
  6         return 1;
  7     }
  8     else
  9     {
 10         return n*fact(n-1);
 11     }
 12 }
 13 
 14 int my_mod(int n, int m)
 15 {
 16     return (n%m);
 17 }    
```
- example.i : wraper function
```c
  1 /*file:example.i*/
  2 %module example
  3 %{
  4 extern double val; 
  5 extern int fact(int);
  6 extern int my_mod(int n, int m);
  7 %}
  8 
  9 extern double val;
 10 extern int fact(int);
```
- 编译：
```shell
swig -python example.i
gcc -c -fpic example.c example_wrap.c -I/usr/include/python3.6
gcc -shared example.o example_wrap.o -o _example.so
```
- 应用：
```python
import _example as em
#全局变量访问
em.cvar.val
em.fact(10)
```
4. variable links
5. constants
6. structures and classes
7. Procxy Classes
