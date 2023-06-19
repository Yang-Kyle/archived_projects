#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>

int main()
{
	int fd = open("/dev/fb0",O_RDWR);
	
	int *p = mmap(NULL,800*480*4,PROT_READ | PROT_WRITE ,MAP_SHARED , fd , 0);
	
	int x,y;
	
	for(x=0;x<800;x++)
		for(y=0;y<480;y++)
			if(y<160)
				*(p + 800*y + x) = 0x0000ff00;
			else if(y<320)
				*(p + 800*y + x) = 0x000000ff;
			else
				*(p + 800*y + x) = 0x00ff0000;
		
	close(fd);
	munmap(p,800*480*4);
}
