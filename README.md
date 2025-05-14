nanoCH32V003
-----------
[中文](./README_cn.md)

* [Introduce](#Introduce)
* [Feature](#feature)
* [Chip Resources](#chip-resources)
* [How To Use](#how-to-use)
* [Product Link](#product-link)
* [Reference](#reference)


# Introduce
nanoCH32V003 is a development board made by MuseLab based on WCH CH32V003F4U6.
(note: The chip packages of CH32V002F4U6 and CH32V004F6U1 are exactly the same as CH32V003F4U6, so they can share the same PCB.)
![1](https://github.com/wuxx/nanoCH32V003/blob/master/doc/1.jpg)
![2](https://github.com/wuxx/nanoCH32V003/blob/master/doc/2.jpg)

# Feature
- on-board 24MHz Crystal oscillator
- Reset Button
- LED
- Power by TYPE-C USB
- Download with WCH-LinkE(1-wire serial debug interface)

# Chip Resources
![CH32V003F4U6](https://github.com/wuxx/nanoCH32V003/blob/master/doc/CH32V003F4U6.png)

# How To Use
## MounRiver Studio IDE
WCH officially provides MounRiver Studio IDE development environment, which supports Windows/Linux/Mac. The instructions are as follows
 
### MounRiver Studio Download
download the MounRiver Studio IDE from the official website [MounRiver Studio](http://www.mounriver.com), and just select the latest version to download.

### Compile
Take the GPIO project as an example, double-click GPIO_Toggle.wvproj to open the project
![MRS-1](https://github.com/wuxx/nanoCH32V003/blob/master/doc/MRS-1.png)
![MRS-2](https://github.com/wuxx/nanoCH32V003/blob/master/doc/MRS-2.png)  
Click Project -> Build Project to compile the project  
![MRS-3](https://github.com/wuxx/nanoCH32V003/blob/master/doc/MRS-3.png)


## Program
use WCH's official downloader WCH-LinkE, click Flash -> Download to program the flash. you can also use the WCH-LinkUtility tool, the operation instructions are as follows  
Note: The compiled binary file is located in the obj directory of the factory, such as EVT\EXAM\GPIO\GPIO_Toggle\obj\GPIO_Toggle.hex

### WCH-LinkUtility Download
download WCH-LinkUtility at [WCH Official Website](https://www.wch.cn/downloads/WCH-LinkUtility_ZIP.html)

### WCH-LinkUtility Config
![ISP-1](https://github.com/wuxx/nanoCH32V003/blob/master/doc/ISP-1.png)

The chip series select RISC-V, the chip model select CH32V003, click Target -> Connect WCH-Link, Then select the bin or hex file to be programmed, and click Target -> Program to program the firmware.

## Open Source Toolchain
### Toolchain Download

Download the RISC-V toolchain https://github.com/xpack-dev-tools/riscv-none-embed-gcc-xpack/releases to the local, then modify ~/.bashrc and import it into environment variables, for example as follows
```
export PATH=${PATH}:/home/pi/tool/xpack-riscv-none-embed-gcc-10.2.0-1.2/bin
```

### Compile
```
$git clone https://github.com/wuxx/CH32V003-makefile-example
$cd CH32V003-makefile-example
$make
```

### Program
#### build Openocd 
```
$git clone https://github.com/karlp/openocd-hacks
$cd openocd-hacks
$./bootstrap
$./configure --disable-werror
$make
$make install (can skip this step if other version of openocd is already installed)
```
#### Program With WCHLink-E
use a simple script `wlink_write.sh` to program, you may need to edit the path of openocd in script
```
$cd tools
$./wlink_write.sh ../demo/blink_1000.bin
```

# Product Link
[Aliexpress](https://www.aliexpress.com/item/1005005221751705.html?spm=5261.ProductManageOnline.0.0.10334edffmDOlC)  
[Tindie](https://www.tindie.com/products/johnnywu/nanoch32v003-development-board/)

# Reference
### WCH
https://www.wch.cn/
### openocd for ch32v003
https://github.com/karlp/openocd-hacks/
### makefile for ch32v003evt (WCH's official examples)
https://github.com/cjacker/ch32v003evt_gcc_makefile
