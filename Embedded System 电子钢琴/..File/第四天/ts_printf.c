#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <linux/input.h>


int main(void)
{
	//1，打开设备文件
	int ts_fd = open("/dev/input/event0", );
	//2，获取设备信息

	while (1) {
		read(ts_fd, &ts, sizeof(ts));

		printf("type : %d\t", ts.type);
		printf("code : %d\t", ts.code);
		printf("value : %d\n", ts.value);
	}

	//3，关闭设备文件
	

	return 0;
}