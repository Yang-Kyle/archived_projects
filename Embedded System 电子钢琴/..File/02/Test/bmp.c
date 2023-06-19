#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

int main(void)
{
	//1，打开文件

	// a 打开设备文件
	int lcd_fd = open("/dev/fb0", O_RDWR);
	// b 打开图片文件
	int bmp_fd = open("1.bmp", O_RDWR);

	if (bmp_fd == -1) {
		printf("open bmp file failed!\n");
		return -1;
	}else {
		printf("open bmp file success!\n");
	}

	int *lcd_ptr = mmap(NULL, 800*480*4, PROT_READ | PROT_WRITE, MAP_SHARED, lcd_fd, 0);

	if (lcd_ptr == MAP_FAILED) {
		printf("map lcd failed!\n");
		return -1;
	}else {
		printf("map lcd success!\n");
	}

	//2，数据处理

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

	//3，关闭文件

	// a  关闭设备文件
	close(lcd_fd);
	// b 关闭图片文件
	close(bmp_fd);

	return 0;
}