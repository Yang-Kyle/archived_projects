#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
	int lcd_fd = open("/dev/fb0", O_RDWR);

	if (lcd_fd == -1) {
		printf("open lcd device failed!\n");
		return -1;
	}else {
		printf("open lcd device success!\n");
	}

	//设置即将要显示的颜色
	

	//写入数据到lcd屏幕中
	write(lcd_fd, argb_buf, 800*480*4);

	close(lcd_fd);

	return 0;
}