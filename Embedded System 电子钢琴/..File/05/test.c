#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void *start_routine(void *arg)
{
	pthread_detach(pthread_self());

	int i = 10;
	while (1) {
		printf("start_routine : %d\n", i);
		i++;
		sleep(1);
	}

	pthread_exit(NULL);
}

int main(void)
{
	int i = 0;

	pthread_t pthrad_tid; 

	pthread_create(&pthrad_tid, NULL, start_routine, NULL);

	while (1) {
		printf("main : %d\n", i);
		i++;
		sleep(1);
	}


	return 0;
}