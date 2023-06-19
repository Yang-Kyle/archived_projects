#include <stdio.h>
#include <sys/types.h>
#include <dirent.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <linux/input.h>
#include <sys/mman.h>
#include "jpeglib.h"     //开发者指定头文件路径
#include <setjmp.h>

unsigned char lcd_buf[800*480*4] = {0};

int lcd_fd, ts_fd;
int *lcd_ptr;

//画点
int lcd_draw_point(int i, int j, int color)
{
    *(lcd_ptr+800*j+i) = color;
}

int lcd_draw_bmp(const char *pathname, int x, int y, int w, int h)
{
    int i, j;
    
    //a 打开图片文件
    
    int bmp_fd = open(pathname, O_RDWR);
    
    //错误处理
    
    if (bmp_fd == -1) {
        printf("open bmp file failed!\n");
        return -1;
    }
    
    //2，将图片数据加载到lcd屏幕
    char header[54];
    char rgb_buf[w*h*3];
    //a 将图片颜色数据读取出来
    
    int pad = (4-(w*3)%4)%4; //计算每一行的无效字节数
    
    read(bmp_fd, header, 54);
    //read(bmp_fd, rgb_buf, w*h*3);
    

    for (i = 0; i < h; i++) {
        read(bmp_fd, &rgb_buf[w*i*3], w*3);
        lseek(bmp_fd, pad, SEEK_CUR);
    }

    //b 加载数据到lcd屏幕
    
    
    // int r = 0xef, g = 0xab, b = 0xcd;
    // int color = 0xefabcd;
    
    //int color = b;
    
    // 遇1结果则为1
    //     b : 00000000 00000000 00000000 11001101
    //     g : 00000000 00000000 10101011 00000000
    // color : 00000000 00000000 10101011 11001101
    
    // 1000  = 800*1+200
    // 1800  = 800*2+200
    
    //24 --- 32
    for (j = 0; j < h; j++) {
        for (i = 0; i < w; i++) {
            int b = rgb_buf[(j*w+i)*3+0];
            int g = rgb_buf[(j*w+i)*3+1];
            int r = rgb_buf[(j*w+i)*3+2];
            
            int color = b;
            color |= (g << 8);
            color |= (r << 16);
            
            //*(lcd_ptr+800*j+i) = color;
            lcd_draw_point(i+x, h-1-j+y, color);
        }
    }
    
    
    //3，关闭文件
    //a 关闭图片文件
    close(bmp_fd);
    
    return 0;
}

struct my_error_mgr {
  struct jpeg_error_mgr pub;    /* "public" fields */

  jmp_buf setjmp_buffer;    /* for return to caller */
};

typedef struct my_error_mgr * my_error_ptr;

/*
 * Here's the routine that will replace the standard error_exit method:
 */

METHODDEF(void)
my_error_exit (j_common_ptr cinfo)
{
  /* cinfo->err really points to a my_error_mgr struct, so coerce pointer */
  my_error_ptr myerr = (my_error_ptr) cinfo->err;

  /* Always display the message. */
  /* We could postpone this until after returning, if we chose. */
  (*cinfo->err->output_message) (cinfo);

  /* Return control to the setjmp point */
  longjmp(myerr->setjmp_buffer, 1);
}

/* lcd_draw_jpeg        : 指定静态/动态图像数据显示
 * int x, int y         : 图像显示起点位置
 * const char *pathname : 指定静态数据源  （例如 图片文件）
 * char *jpeg_buf       : 指定动态数据源  （例如 摄像头获取到的数据）
 * int jpeg_size        : 动态数据的大小
 * int zoom_flag        : 缩放比例     （分子：1/分母：zoom_flag，例如1/2缩小一倍）
 */
 
int lcd_draw_jpeg(int x, int y, const char *pathname, char *jpeg_buf, int jpeg_size, int zoom_flag)
{
    int img_fd;
    char *img_buf;
    int img_size;
    unsigned char *argb_buf = lcd_buf;
    int x_c = x;

    //jpeg解压缩对象和错误处理对象
    struct jpeg_decompress_struct cinfo;
    struct my_error_mgr jerr;
    struct stat statbuf;

    if (pathname != NULL) {
        //打开图片文件
        img_fd = open(pathname, O_RDWR);

        if (img_fd == -1) {
            printf("open jpeg file [ %s ] failed !\n", pathname);
            return -1;
        }

        //获取文件大小
        fstat(img_fd, &statbuf);

        img_size = statbuf.st_size;

        img_buf = calloc(1, img_size);

        read(img_fd, img_buf, img_size);
    }else {
        img_size = jpeg_size;
        img_buf = jpeg_buf;
    }

    /* Step 1: 分配并初始化jpeg解压缩对象 */


    //错误处理
    cinfo.err = jpeg_std_error(&jerr.pub);
    jerr.pub.error_exit = my_error_exit;

    if (setjmp(jerr.setjmp_buffer)) {
        //释放资源
        jpeg_destroy_decompress(&cinfo);
        if (pathname != NULL) {
             close(img_fd);
        }
        return -1;
    }

    //初始化解压缩对象
    jpeg_create_decompress(&cinfo);

    /* Step 2: 指定解压缩数据源 (eg, a file) */

    jpeg_mem_src(&cinfo, img_buf, img_size);

    /* Step 3: 读取图片文件的详细信息 */
    (void) jpeg_read_header(&cinfo, TRUE);

    /* Step 4: 解压缩的参数设置，一般默认 */
    cinfo.scale_num = 1;             // 1
    cinfo.scale_denom = zoom_flag;   // 

    /* Step 5: 开始解压 */
    (void) jpeg_start_decompress(&cinfo);

    int i, r, g, b, color;

    /* Step 6: 取出数据 */
    //cinfo.output_scanline：当前行号
    //cinfo.output_height：对应的图片的高
    //cinfo.output_width：对应的图片的宽
    while (cinfo.output_scanline < cinfo.output_height) {
        argb_buf = lcd_buf;
        //每次读取一行的数据
        (void) jpeg_read_scanlines(&cinfo, (JSAMPARRAY)&argb_buf, 1);

        for (i = 0; i < cinfo.output_width; i++) {
            b = *(argb_buf+2);
            g = *(argb_buf+1);
            r = *(argb_buf+0);


            //合并
            color = b;
            color |= (g << 8);
            color |= (r << 16);

            lcd_draw_point(x, y, color);

            argb_buf+=3;
            x++;
        }
        y++;
        x = x_c;
    }

    /* Step 7: 解压完毕 */
    (void) jpeg_finish_decompress(&cinfo);

    /* Step 8: 释放资源 */
    jpeg_destroy_decompress(&cinfo);

    if (pathname != NULL) {
        close(img_fd);
    }


    return 0;
}

int lcd_draw_gif(int num)
{
    char file_buf[4096] = {0};

    int i = 0; 

    for (i = 0; i < 75; i++) {
        if (i >= 0 && i < 10) {sprintf(file_buf, "gif/IMG0000%d.jpg", i);}
        if (i >= 10 && i < 100) {sprintf(file_buf, "gif/IMG000%d.jpg", i);}
        if (i >= 100 && i < 1000) {sprintf(file_buf, "gif/IMG00%d.jpg", i);}
        lcd_draw_jpeg(0, 0, file_buf, NULL, 0, 1);
        usleep(30000);
    }

    return 0;
}

int dev_init()
{
    lcd_fd = open("/dev/fb0", O_RDWR);
    
    //错误处理
    if (lcd_fd == -1) {
        printf("open lcd device failed!\n");
        return -1;
    }
    
    //2,为lcd设备建立内存映射关系
    lcd_ptr = mmap(NULL, 800*480*4, PROT_READ | PROT_WRITE, MAP_SHARED, lcd_fd, 0);
    
    if (lcd_ptr == MAP_FAILED) {
        printf("mmap failed!\n");
        return -2;
    }

    //清除屏幕
    memset(lcd_ptr, 0, 800*480*4);

    return 0;
}

void dev_uninit()
{
    munmap(lcd_ptr, 800*480*4);
    close(lcd_fd);
}

int main(void)
{
    //1，设备的初始化
    int rt = dev_init();

    if (rt != 0) {
        printf("rt : %d\n", rt);
        return -1;
    }

   //将一张800 480的jpeg图片居中显示
   
   /*
   
    const char *gif_buf[] = {"gif/1.jpg", "gif/2.jpg", "gif/3.jpg", ...};

    int i;

    for (i = 0; i < 75; i++) {
            lcd_draw_jpeg(0, 0, gif_buf[i], NULL, 0, 1);
            usleep(30000);
    }
    */
   
   //lcd_draw_gif(75);
   
   lcd_draw_jpeg(0, 0, "background.jpg", NULL, 0, 1);
   

    //3,设备的卸载
    dev_uninit();

    return 0;
}