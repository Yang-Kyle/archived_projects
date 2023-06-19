[TOC]

## 01
### 项目技术点!
1. 环境搭建（linx基础，开发板的使用，开发流程）
2. 界面设计（lcd屏幕：颜色，图片，图标）
3. 人机交互（触摸屏: 获取坐标，判断范围，滑屏）
4. 音色的控制（播放器：参数，文件的解码，线程操作）
### 环境搭建
	新建文件夹 实训 ，把所有的解压的文件放置这里
	1，解压安装解压工具：360zipsetup.zip
	2，虚拟化管理软件
	vmware workstaion：解压并安装，输入密钥
	VMP16.7z exe 安装 `增强功能`
	README.md : 用记事本打开，复制密钥往vmware黏贴
	3，usb转串口线驱动的安装
	Usb-to-Serial.7z 解压并安装
	蓝色：ch340：CH341SER.EXE
	黑色：pl2303：PL23XX-M_LogoDriver_Setup_v401_20220225.exe
	4，文本编辑器：notepad++/sublime text/atom/vs code
	Notepad++.zip解压并安装
### 解压！
> SecureCRT.rar 终端连接工具 ubuntu16.04.7z 打开vmware
> 文件（f）->打开（o）-》选择ubuntu16.04解压的位置去打开vmx
> 升级-》硬件兼容性-》16.2.x-》更改-》下一步-》完成-》开启
	用户全名：www.gec-edu.org 用户名：gec
	密码：123456 NumLock打开输入密码
#### `命令`ctrl alt f1~f6`图形`ctrl alt f7
### 命令行提示符
gec@ubuntu:~$	[root@GEC6818 /IOT]#
> `gec`正在登录的用户名`ubuntu`主机名`@`间隔符

`.`当前位置`..`上一级位置`-`上一次记录的位置
> 当前所在位置`~`家目录
> 用户标识提示`$`普通`#`超级管理员
### ※Linux基础命令
pwd:查看当前位置
ls 目录名:缺省，列出当前位置的文件
> -l 以列表的形式列出文件
> -a 查看所有文件
1. 切换目录：cd `目录`
2. 创建/删除空目录：mk/rmdir `目录`
- cat 文件名：显示/输入文件内容
- 创建文件/更改目录的文件所属：touch `文件`
- 删除文件 rm `文件`
- 复制文件：cp `源` `文件`
- 更改文件名字或移动文件：mv `源` `文件`
### Ubuntu的使用
#### 终端`Lin`Ctrl+Alt+T`Win`WinR cmd
2. 文件资源管理器
Linux`图形`Files`命令`nautilus
3. 文本编辑器`Win`notepad++`Lin`gedit
### 开发板的使用
	gec6818 ： http://www.gec-lab.com/arm/show/72.html `官网`
	该平台搭载三星Cortex-A53系列高性能八核处理器S5P6818，最高主频高达1.4GHz，
	ram 内存 标配1GB，可定制2GB
	rom 存储器 4GB/8GB/16GB/32GB emmc可选，标配8GB

	盒子：开发板，电源适配器，串口线，usb转串口线，网线，安卓线
	1，将电源适配器接在开发板的电源接口，通电，打上开关，开机
	正常：粤嵌logo 登录界面 系统的心跳灯正常
	异常：心跳灯不正常 黑屏
	2，将usb转串口线连接串口线，usb一端连接电脑，串口一端连接开发板的调试串口上
	3，查看驱动端口（usb转串口线的驱动是否安装）
	（窗口 e ）打开文件资源管理器 -》我的电脑-》属性-》设备管理器-》端口（com和lpt）
	usb serial ch340 com ???
	usb to serial com ???
	4，使用终端连接工具
	SecureCRT.rar-》SecureCRT-》SecureCRT.exe
	第一次：文件-》快速连接-》
	协议：serial
	端口：com ???
	波特率：115200
	流控：不需要，去掉勾
	连接
	第n次：
	在标签页中打开
	如果光标闪动，但是没有命令提示符则说明程序是在运行，
	需要退出程序`ctrl c`
	[root@GEC6818 /IOT]#
	连接正常，能够出现命令提示符，并且能够正常输入命令
七，文件共享
### 开发流程
> [编程](#code)|[生成](#prog)|[上传](#uplo)
> [权限](#righ)|[运行](#run)

1. <p id="code">编写代码</p>
	(源文件:.c)
	#include <stdio.h>
	int main(void){
		return 0;
	}
	(头文件:.h)
	(库文件:.so,.a,.la)

	(1)区分中英文
	(2)区分圆半角
	(3)文件编码
2. <p id="prog">生成程序</p>
	确定源文件是在哪
	使用文件资源管理器右键终端打开
	输入生成程序的命令：
#### editor src para app`arm-linux-gcc main.c -o main`
ubuntu/Win：gcc|开发板：arm-linux-gcc
3. <p id="uplo">上传程序@开发板终端</p> 
#### 上传工具名 程序名`rx main`
	（1）拖动文件到开发板的终端选择发送xmodem
	（2）传输(T)-》发送xmodem
4. <p id="righ">赋予权限</p>
#### 赋予权限的命令 参数 文件名字`chmod a+x/777 main`
	-rwxrwxrwx 1 avalon avalon    32812 Nov 30  2021  debug.log
	-rwxrwxrwx
	第一个字符 文件类型 （7）
	- 普通文件|d 目录文件|p 管道文件
	s 套接字文件|b 块设备文件
	c 字符设备文件|l 链接文件
	九个字符被分为三组`rwxrwxrwx`
> 拥有者u 所属组g 其他o 全部a
r 读 w 写 x 执行 - 没有权限 + 增加 - 减少

	u+rwx g+rwx o+rwx 
	a+rwx
	r-xrw---x
	u+rx-w g+rw-x o+x-rw
	读，写，执行 111 7
	读          100 4
	写          010 2
	执行        001 1
5. <p id="run">运行程序</p>
#### path`./main`
	（pwd）
	/IOT/main
## 02
可以帮助手册（man）来查看函数接口`man man`
> man手册直接9个章节编号的功能
   1   应用程序 or shell命令
   2   系统调用 (内核提供的函数接口)
   3   库调用 (程序库，第三方库)
   4   特殊文件 (设备文件 /dev)
   5   文件格式 and 约定, e.g. /etc/passwd
   6   Games
   7   杂项 (including macro packages and conventions), e.g. man(7), groff(7)
   8   超级管理员的指令使用 (usually only for root)
   9   例程 [Non standard]

man -f [command]	man [page] [command]
`man -f open` `man 2 open`
内核提供函数接口来操作设备`open close read write`
屏幕设备文件 "/dev/fb0"

- lcd特性：
宽：800，高：480
尺寸/分辨率/像素点 ： 宽*高
位深度（一个像素点的所能够存储的数据大小）：32位
1字节 = 8位	4字节 = 32位
- 数据组成（一个像素点属性 1）
透明度，红，绿，蓝
- 1字节
十进制  ： 0~255
十六进制： 0~ff
> 透明度   红    绿   蓝
> 0 ~ 0x ff      ff    ff   ff
> 红：0x00 ff 00 00 0xff0000
> 蓝：0x00 00 00 ff (0xff)
#### 屏幕控制
```c
	int i,j,axxxxxxxxrgb_buf[800*480],color=0xff;
	/* 5000 = 800*6+200 */
	/* 2800 = 800*3+400 */
	//有多少行
	for (j = 0; j < 480; j++) {
		//一行的数据
		for (i = 0; i < 800; i++) {
			argb_buf[800*j+i] = color;
		}
	}

	//包含头文件
	#include <sys/types.h>
	#include <sys/stat.h>
	#include <fcntl.h>
	#include <unistd.h>

1. 打开设备文件(open)
	int open(const char *pathname, int flags);
	2个参数，一个返回值
	const char *pathname : 即将要被打开的文件名字（路径/文件名字）
	int flags : 操作标志

	常用：
	O_RDONLY 只读
	O_WRONLY 只写
	O_RDWR 可读可写

	扩展：
`eg`（创建）
	O_TRUNC | O_CREAT | O_RDWR

	返回值：
	成功返回文件的别名
	失败 -1

	代码（eg） int i = 10;
	int lcd_fd = open("/dev/fb0", O_RDWR);
	if (lcd_fd == -1) {
		printf("open lcd device failed!\n");
		return -1;
	}
2. 数据处理(read/write)
	ssize_t read(int fd, void *buf, size_t count);
	ssize_t write(int fd, void *buf, size_t count);

	3个参数，1个返回值

	int fd : 已经打开的文件的别名
	void *buf ：临时容器/缓冲区，存储读取到数据，存储即将要写入的数据
	size_t count：理想上设定的读取/写入的数据大小

	返回值：
	实际读取/写入的数据大小
	实际读取/写入的数据大小 <= 理想上设定的读取/写入的数据大小
	实际读取/写入 > 0  正常读取/写入
	实际读取/写入 < 0  异常读取/写入
	实际读取/写入 == 0 读取/写入结束

`eg`char argb_buf[800*480];
	read(lcd_fd, argb_buf, 800*480*4);
	//设置即将要显示的颜色
	write(lcd_fd, argb_buf, 800*480*4);

3. 设备文件的关闭(close)
	int close(int fd);
	int fd : 已经打开的文件的别名
```
#### 显示方式
```c
	系统输入输出（read/write）
	内存映射（mmap）
	//包含头文件
	#include <sys/mman.h>
	//建立
	void *mmap(void *addr, size_t length, int prot, int flags,
	      int fd, off_t offset);
	//解除
	int munmap(void *addr, size_t length);
	void *addr：建立内存映射的地址，一般填写NULL，由系统默认分配地址
	size_t length：内存映射的空间大小 800*480*4
	int prot ：操作标志
	PROT_READ | PROT_WRITE
	int flags：共享标志
	MAP_SHARED
	int fd lcd_fd
	已经打开准备建立内映射的文件别名
	off_t offset
	偏移地址 0

`eg`//返回显存的指针进行使用
	int *lcd_ptr = mmap(NULL, 800*480*4, PROT_READ | PROT_WRITE, MAP_SHARED, lcd_fd, 0);
	if (lcd_ptr == MAP_FAILED) {
		printf("map lcd failed!\n");
		return -1;
	}
	//解除
	munmap(lcd_ptr, 800*480*4);
图片的显示
`格式`jpg, png, gif, bmp, tif, psd, ....

`bmp格式`存储图片颜色数据是最为完整

	bmp特性：
	1，文件头：文件信息 ： 54字节
	2，位深度（一个像素点存储数据大小：3字节）：24
	lcd 32 4
	bmp 24 3
	图片颜色数据大小：宽*高*位深度/8
	图片大小：宽*高*位深度/8+文件头的大小
	3，存储方式：从左往右，从下往上
	lcd 从左往右，从上往下
	读取图片颜色数据，写入数据到开发板的lcd屏幕中
	操作步骤
1. 打开文件
	// a 打开设备文件
	int lcd_fd = open();
	// b 打开图片文件
	int bmp_fd = open("1.bmp", O_RDWR);

	if (bmp_fd == -1) {
		printf("open bmp file failed!\n");
		return -1;
	}else {
		printf("open bmp file success!\n");
	}

2. 数据处理
	// a 读取图片颜色数据 800*480*3
	char header[54];
	char rgb_buf[800*480*3];
	//文件头的处理
	read(bmp_fd, header, 54);
	read(bmp_fd, rgb_buf, 800*480*3); 
	int i, j;
	int b, g, r, color;

	for (j = 0; j < 480; j++) {
		for (i = 0; i < 800; i++) {
			b = rgb_buf[(800*j+i)*3+0];
			g = rgb_buf[(800*j+i)*3+1];
			r = rgb_buf[(800*j+i)*3+2];
			//数据合并
			color = r << 16 | g | b;
			// b 写入数据到lcd屏幕 数据的翻转
			*(lcd_ptr+800*j+i) = color;
		}
	}

3. 关闭文件
	// a  关闭设备文件
	close(lcd_fd);
	// b 关闭图片文件
	close(bmp_fd);
```
#### 具体操作
> 1. arm-linux-gcc bmp.c -o bmp @ ubuntu
> 2. 开发板的终端
rx 1.bmp|rx bmp
chmod +x bmp|./bmp
## 03
### jpeg图片显示
> https://www.ijg.org/

1. 环境配置
bin 可执行程序，运行 elf
lib 库文件， 编译，运行 .a .so .la
include 头文件，编译 .h
share 帮助手册，用户 man
> -I          指定头文件所在路径
> -L          指定库文件所在路径
> -l          链接库文件
- ubuntu的环境
将libjpeg2ubuntu.tar.gz压缩包复制到文件资源管理中
- 开发板的环境
		rx libjpeg2arm.tar.gz
		tar zxvf libjpeg2arm.tar.gz -C /
		chmod a+x /bin/*
2. 显示环节
```c
//解压
/* Step 1: 分配并初始化解压对象，错误处理对象 */
  cinfo.err = jpeg_std_error(&jerr.pub);
  jerr.pub.error_exit = my_error_exit;

  if (setjmp(jerr.setjmp_buffer)) {
    jpeg_destroy_decompress(&cinfo);
    fclose(infile);
    return 0;
  }
  jpeg_create_decompress(&cinfo);
/* Step 2: 指定解压缩数据源 (eg, a 文件) */
	jpeg_stdio_src(&cinfo, infile);
/* Step 3: 读取文件头 */
	(void) jpeg_read_header(&cinfo, TRUE);
/* Step 4: 设置解压缩参数 */
	/* In this example, we don't need to change any of the defaults set by
* jpeg_read_header(), so we do nothing here.
*/
/* Step 5: 开始解压 */
	(void) jpeg_start_decompress(&cinfo);
	row_stride = cinfo.output_width * cinfo.output_components;
	buffer = (*cinfo.mem->alloc_sarray)
	((j_common_ptr) &cinfo, JPOOL_IMAGE, row_stride, 1);
/* Step 6: 取出数据 */  
	while (cinfo.output_scanline < cinfo.output_height) {
    (void) jpeg_read_scanlines(&cinfo, buffer, 1);
     ...
  }
/* Step 7: 完成解压 */
	(void) jpeg_finish_decompress(&cinfo);
/* Step 8: 释放资源 */
	jpeg_destroy_decompress(&cinfo);
	//显示
	b = rgb_buf[(w*j+i)*3+0];
	g = rgb_buf[(w*j+i)*3+1];
	r = rgb_buf[(w*j+i)*3+2];
	//数据合并
	color = r << 16 | g << 8 | b;
	// b 写入数据到lcd屏幕 数据的翻转
	*(lcd_ptr+800*(h-1-j+y)+i+x) = color;
	/* lcd_draw_jpeg        : 指定静态/动态图像数据显示
	 * int x, int y         : 图像显示起点位置
	 * const char *pathname : 指定静态数据源  （例如 图片文件）
	 * char *jpeg_buf       : 指定动态数据源  （例如 摄像头获取到的数据）
	 * int jpeg_size        : 动态数据的大小
	 * int zoom_flag        : 缩放比例     （分子/分母：1/zoom_flag：例如1/2缩小一倍）
	 */

	int lcd_draw_jpeg(int x, int y, const char *pathname, char *jpeg_buf, int jpeg_size, int zoom_flag)
	显示静态数据（图片）
	lcd_draw_jpeg(0, 0, "1.jpg", NULL, 0, 1);
	显示动态数据（摄像头）
	lcd_draw_jpeg(0, 0, NULL, camera.data, camera.size, 1);
```
1. 编译
> arm-linux-gcc main.c -o main -I ~/libjpeg/include -L ~/libjpeg/lib -ljpeg

rx 1.jpg
`rx main|chmod +x main|./main`
#### 制作开机动画（gif）
	由一帧帧静态图片延时显示
1. 制作环节
	（1）下载gif（检查文件类型是否是gif）
	（2）分解（使用工具）
	GifSplitter.rar将gif转换为bmp
	BMP2JPEG.rar将bmp转换为jpg
	将文件夹里面所有的图片文件压缩打包成zip
	上传到开发板上
rx 1.zip|unzip 1.zip
`rx main|chmod +x main|./main`
2. 显示环节
```c
	//包含头文件
	#include <unistd.h>
	//秒
	unsigned int sleep(unsigned int seconds);
	//微秒
	int usleep(useconds_t usec);
	1秒 = 1000毫秒 = 1000000微秒
	usleep(1000000);   //1秒
	简单粗暴法：（数组）
	const char *gif_buf[] = {"1.jpg", "2.jpg", "3.jpg", ...};
	int i;
	for (i = 0; i < 75; i++) {
			lcd_draw_jpeg(0, 0, gif_buf[i], NULL, 0, 1);
			usleep(30000);
	}
算法设计（字符拼接）
int printf(const char *format, ...);
printf("IMG000.jpg\n");
int i = 0;
printf("IMG0000%d.jpg\n", i);
//将原本输出到屏幕的数据输出到数组中
int sprintf(char *str, const char *format, ...);
char buf[4096] = {0};
int count = 0;
sprintf(buf, "IMG0000%d.jpg", count);
printf("%s\n", buf);
/* IMG00000.jpg */
	char file_buf[4096] = {0};
	int i = 0; 
	for (i = 0; i < 75; i++) {
			sprintf(file_buf, "IMG0000%d.jpg", i);
			lcd_draw_jpeg(0, 0, file_buf, NULL, 0, 1);
			usleep(30000);
	}
```
## 04
### 触摸屏操作
	分类：
	电阻式触摸屏
	电容式触摸屏
	原理：
	材料的可变性（电解质）
	材料的导电性（生物电流）
	应用：
	现代智能手机
	设备文件："/dev/input/event0"
	/usr/include/stdio.h
	#include <stdio.h>
	/usr/include/linux/input.h
```c
	//包含头文件
	#include <linux/input.h>
	/*
	 * The event structure itself
	 */
	struct input_event {
		struct timeval time;	//时间片
		__u16 type;             //类型（键盘事件，绝对事件，....）33~55
		__u16 code;             //具体的事件类型（触摸事件，x轴，y轴，...）
		__s32 value;		    //键值（按下，松开，...）
	};
	struct input_event ts;
```
#### 操作步骤
	//1. 打开设备文件
int ts_fd = open("/dev/input/event0", O_RDWR);
	//2. 获取设备信息
read(ts_fd, &ts, sizeof(ts));
	//3. 关闭设备文件
close(ts_fd);
	type : 0 1 3
	// Event types
	#define EV_SYN			0x00      //同步事件
	#define EV_KEY			0x01      //键盘事件
	#define EV_ABS			0x03      //绝对事件
	code : 0 1 330
	// Absolute AXes
	#define ABS_X			0x00    //x轴
	#define ABS_Y			0x01    //y轴
	#define BTN_TOUCH		0x14a   //触摸事件
	// value
	#define KEY_RESERVED		0    //松开
	#define KEY_ESC			    1    //按下
	//1 0
	黑色：1024 600
	x = x*800/1024;
	y = y*480/600;
	蓝色：800 480
### 滑屏算法
	设置（起点位置，终点位置）
	int x1 = -1, y1 = -1, x2, y2;
	if (ts.type == EV_ABS) {
            if (ts.code == ABS_X && x_read == 0) {
            	if (x1 == -1) { x1 = ts.value*800/1024; }
            	x2 = ts.value*800/1024;
                //*x = ts.value;
                *x = ts.value*800/1024;
                x_read = 1;
                y_read = 0;
            }
            if (ts.code == ABS_Y && y_read == 0) {
            	if (y1 == -1) { y1 = ts.value*480/600; }
            	y2 = ts.value*480/600;
                //*y = ts.value;
                *y = ts.value*480/600;
                x_read = 0;
                y_read = 1;
            }
        }
	x
	起点位置 > 终点位置 左
	起点位置 > 终点位置 右
	y
	起点位置 > 终点位置 上
	起点位置 > 终点位置 下

	int x_c = x2-x1;
	int y_c = y2-y1;
	int abs_x = abs(x_c);
	int abs_y = abs(y_c);

	if (ts.type == EV_KEY) {
        if (ts.code == BTN_TOUCH) {
            if (ts.value == KEY_RESERVED) {
            	if (x_c > 30 && abs_x > abs_y*2) {
            		return 1;
            	}else if (x_c < -30 && abs_x > abs_y*2) {
            		return 2;
            	}else if (y_c > 30 && abs_y > abs_x*2) {
            		return 3;
            	}else if (x_c < -30 && abs_y > abs_x*2) {
            		return 4;
            	}
            }
        }
    }
## 05
### 线程的使用
班里各个同学属于应用，程序，进程
每个同学的硬件（手，大脑，脚，...）线程
	//包含头文件
#include <pthread.h>
1. 线程的创建
int pthread_create(pthread_t *thread, const pthread_attr_t *attr, void *(*start_routine) (void *), void *arg);
4个参数，1个返回值
pthread_t *thread：指针（用于创建线程的地址）
const pthread_attr_t *attr：线程的属性设置（一般填NULL,使用默认属性）
void *(*start_routine) (void *)：执行函数
void *arg：传递的参数
	返回值：
	成功返回0
2. 线程属性设置
	//分离
int pthread_detach(pthread_t thread);
pthread_t thread：线程的地址
	//结合
int pthread_join(pthread_t thread, void **retval);
pthread_t thread：线程的地址
void **retval：线程的属性设置，一般填NULL
	//获取自己的线程创建的地址
pthread_t pthread_self(void);
3. 线程的结束
pthread_exit();
Compile and link with -lpthread.
### 播放器的使用
1. 配置环节
	(1) cd /bin
（u盘：fat32：/mnt/udisk/）
格式`mount 参数 文件系统 盘符 目录位置 编码字符设置`
	(2.1) rx mplayer
	eg :
	fdisk -l
	mount -t ntfs /dev/sda1 /mnt/udisk -o utf8=1
	(2.2) cp /mnt/udisk/mplayer /bin
	(3) chmod a+x /bin/mpalyer
2. 播放环节
如果需要播放音乐，则要使用system函数进行命令
```c
#include <stdlib.h>
int system(const char *command);
	// eg
system("ls");
char buf[4096] = {0};
	//播放音乐
sprintf(buf, "mplayer d%d.mp3", i);
system(buf);
	//停止音乐
system("killall -9 mplayer");
```