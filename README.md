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
- 
