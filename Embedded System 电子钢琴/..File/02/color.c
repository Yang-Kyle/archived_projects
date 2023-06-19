#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

int main(void)
{
	//打开设备
	int lcd_fd = open("/dev/fb0", O_RDWR);

	if (lcd_fd == -1) {
		printf("open lcd device failed!\n");
		return -1;
	}else {
		printf("open lcd device success!\n");
	}

	int *lcd_ptr = mmap(NULL, 800*480*4, PROT_READ | PROT_WRITE, MAP_SHARED, lcd_fd, 0);

	if (lcd_ptr == MAP_FAILED) {
		printf("map lcd failed!\n");
		return -1;
	}else {
		printf("map lcd success!\n");
	}

	//2，数据处理

	//a 设置即将要显示的颜色
	int color = 0xff;

	//int argb_buf[800*480];

	int i, j;

	/* 5000 = 800*6+200 */
	/* 2800 = 800*3+400 */

	//有多少行
	for (j = 0; j < 480; j++) {
		//一行的数据
		for (i = 0; i < 800; i++) {
			//argb_buf[800*j+i] = color;
			//lcd_ptr[800*j+i] = color;
			*(lcd_ptr+800*j+i) = color;
		}
	}
	

	//b  写入数据到lcd屏幕中
	//write(lcd_fd, argb_buf, 800*480*4);

	//3，关闭文件
	close(lcd_fd);

	return 0;
}