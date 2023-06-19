#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

/* lcd_draw_bmp : 指定位置显示固定大小的图片
 * 指定位置：int x, int y
 * 固定大小：int w, int h
 * 图片名字：const char *pathname
 * 
 * */

int lcd_fd;
int *lcd_ptr;

int lcd_draw_bmp(const char *pathname, int x, int y, int w, int h)
{
	//1，打开文件

    // b 打开图片文件
    int bmp_fd = open(pathname, O_RDWR);

    if (bmp_fd == -1) {
        printf("open bmp file failed!\n");
        return -1;
    }else {
        printf("open bmp file success!\n");
    }

   

    //2，数据处理

    // a 读取图片颜色数据 800*480*3
    char header[54];
    char rgb_buf[w*h*3];

    //文件头的处理
    read(bmp_fd, header, 54);
    read(bmp_fd, rgb_buf, w*h*3); 

    int i, j;
    int b, g, r, color;

    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            b = rgb_buf[(w*j+i)*3+0];
            g = rgb_buf[(w*j+i)*3+1];
            r = rgb_buf[(w*j+i)*3+2];

            //数据合并
            color = r << 16 | g << 8 | b;

            // b 写入数据到lcd屏幕 数据的翻转
            *(lcd_ptr+800*(h-1-j+y)+i+x) = color;
        }
    }

    //3，关闭文件

    // b 关闭图片文件
    close(bmp_fd);

	return 0;
}

int main(void)
{
	// a 打开设备文件
    lcd_fd = open("/dev/fb0", O_RDWR);

    lcd_ptr = mmap(NULL, 800*480*4, PROT_READ | PROT_WRITE, MAP_SHARED, lcd_fd, 0);

    if (lcd_ptr == MAP_FAILED) {
        printf("map lcd failed!\n");
        return -1;
    }else {
        printf("map lcd success!\n");
    }

    int i; for (i = 0; i < 480; i++) {   lcd_draw_bmp("1.bmp", 0, 0, 800, i);}
 

    /* lcd_draw_bmp : 指定位置显示固定大小的图片
     * 指定位置：int x = 0, int y = 0;
     * 固定大小：int w = 800, h = 480;
     * 图片名字：const char *pathname = "1.bmp";
	 */
    munmap(lcd_ptr, 800*480*4);

    // a  关闭设备文件
    close(lcd_fd);

	return 0;
}