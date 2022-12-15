nanoCH32V003
-----------
[English](./README.md)

* [nanoCH32V003介绍](#nanoCH32V003介绍) 
* [特性](#特性)
* [芯片资源](#芯片资源)
* [使用教程](#使用教程)
* [产品链接](#产品链接)
* [参考](#参考)


# nanoCH32V003介绍
nanoCH32V003 是MuseLab基于沁恒CH32V003F4U6芯片推出的开发板，板载24M晶振，引出所有IO口，TYPE-C USB供电，方便客户进行快速的原型验证及开发。

![3](https://github.com/wuxx/nanoCH32V003/blob/master/doc/3.jpg)
![4](https://github.com/wuxx/nanoCH32V003/blob/master/doc/4.jpg)
![5](https://github.com/wuxx/nanoCH32V003/blob/master/doc/5.jpg)


# 特性
- 板载24MHz
- 板载复位按键
- LED指示灯
- TYPE-C USB供电
- 所有IO口引出
- SWDIO单线下载调试

# 芯片资源
![CH32V003C8T6](https://github.com/wuxx/nanoCH32V003/blob/master/doc/CH32V003F4U6.png)

# 使用教程
## MounRiver Studio IDE
沁恒官方提供MounRiver Studio IDE开发环境，支持Windows/Linux/Mac，具体使用说明如下
 
### MounRiver Studio 下载
可在官网[MounRiver Studio](http://www.mounriver.com)下载IDE，选择最新版本下载即可。

### 编译
以GPIO工程为例，双击GPIO_Toggle.wvproj打开工程  
![MRS-1](https://github.com/wuxx/nanoCH32V003/blob/master/doc/MRS-1.png)
![MRS-2](https://github.com/wuxx/nanoCH32V003/blob/master/doc/MRS-2.png)  
点击 Project -> Build Project 对工程进行编译  
![MRS-3](https://github.com/wuxx/nanoCH32V003/blob/master/doc/MRS-3.png)


## 烧录
需要使用沁恒官方的下载器WCH-LinkE，点击 Flash -> Download 即可完成烧录，也可使用WCH提供的烧录软件WCH-LinkUtility，操作说明如下
注：编译生成的二进制文件位于工厂的obj目录下，如EVT\EXAM\GPIO\GPIO_Toggle\obj\GPIO_Toggle.hex

### WCH-LinkUtility 下载
可在[沁恒官网](https://www.wch.cn/downloads/WCH-LinkUtility_ZIP.html)下载WCH-LinkUtility工具

### WCH-LinkUtility 配置
![ISP-1](https://github.com/wuxx/nanoCH32V003/blob/master/doc/ISP-1.png)

WCH-LinkE和开发板连接3根线，GND, SWDIO, 3V3，MCU Core选择RISC-V系列，芯片型号选择CH32V003，点击 Target -> Connect WCH-Link，
然后在下方选择需要烧录的bin或者hex文件，再点击Target -> Program即可完成烧录。

## 开源工具链开发
### 工具链下载

将RISC-V工具链 https://github.com/xpack-dev-tools/riscv-none-embed-gcc-xpack/releases 下载到本地，然后修改~/.bashrc，将其导入环境变量，举例如下
```
export PATH=${PATH}:/home/pi/tool/xpack-riscv-none-embed-gcc-10.2.0-1.2/bin
```

### 编译
```
$git clone https://github.com/wuxx/CH32V003-makefile-example
$cd CH32V003-makefile-example
$make
```

### 烧录
通过openocd烧录 TODO.

# 产品链接
[nanoCH32V003 Board](https://item.taobao.com/item.htm?spm=a1z10.3-c.w4002-21349689064.10.6f55773dXd3CDz&id=689934001629)

# 参考
### WCH
https://www.wch.cn/
