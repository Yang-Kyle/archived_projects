1. 
	打开终端，创建三个目录，目录名自拟
	进入第一个目录，创建三个文件
	往第三个文件输入数据
	将第一个文件重名
	将第二个文件移动到第二个目录中
	将第三个 文件复制到第三个目录中
	返回上一级目录，删除所有文件

2. 
	全屏显示一种颜色
	扩展：
	- 三色旗
	- 圆
	圆心（x, y）
	int x = 400, y = 240;
	半径（r）
	r = 100;
	(x-i)*(x-i)+(y-j)*(y-j) == r*r
	- 彩虹
	int r1 = 100, r2 = 130; 
	(x-i)*(x-i)+(y-j)*(y-j) == r1*r1 && (x-i)*(x-i)+(y-j)*(y-j) == r2*r2

    ```c
    // color.c 全屏显示一种颜色
    // 三色旗
	// 一行的数据
	for (i = 0; i < 800; i++) {
		for (j = 0; j < 480; j++) {
			if (j >= 0 && j < 160) { argb_buf[800*j+i] = color; }
			if (320 > j && j >= 160) { argb_buf[800*j+i] = color; }
			if (480 > j && j >= 320) { argb_buf[800*j+i] = color; }
		}
	}
	// 圆
	// 圆心（x, y）
	int x1 = 400, y1 = 240, x2, y2, x3, y3;
	// 半径（r）
	r = 100;
	for (i = 0; i < 800; i++) {
		for (j = 0; j < 480; j++) {
			if ((x1-i)*(x1-i)+(y1-j)*(y1-j) <= r*r) { argb_buf[800*j+i] = color; }
			if ((x2-i)*(x2-i)+(y2-j)*(y2-j) <= r*r) { argb_buf[800*j+i] = color; }
			if ((x3-i)*(x3-i)+(y3-j)*(y3-j) <= r*r) { argb_buf[800*j+i] = color; }
		}
	}
	// 彩虹
	int r1 = 100, r2 = 130; 

	(x-i)*(x-i)+(y-j)*(y-j) == r1*r1 && (x-i)*(x-i)+(y-j)*(y-j) == r2*r2

	for (i = 0; i < 800; i++) {
		for (j = 0; j < 480; j++) {
			if ((x-i)*(x-i)+(y-j)*(y-j) <= r1*r1 && (x-i)*(x-i)+(y-j)*(y-j) <= r2*r2) { argb_buf[800*j+i] = color; }
			if ((x-i)*(x-i)+(y-j)*(y-j) == r1*r1 && (x-i)*(x-i)+(y-j)*(y-j) == r2*r2) { argb_buf[800*j+i] = color; }
			if ((x-i)*(x-i)+(y-j)*(y-j) == r1*r1 && (x-i)*(x-i)+(y-j)*(y-j) == r2*r2) { argb_buf[800*j+i] = color; }
		}
	}
    ```

3. 
- 指定位置显示固定大小的图片
- 将一张800 480的jpeg图片居中显示

4. 
使用线程实现操作：
线程1打印1到100的偶数
线程2打印1到100的奇数
线程3打印1到100的质数
`gcc main.c -o main -lpthread`