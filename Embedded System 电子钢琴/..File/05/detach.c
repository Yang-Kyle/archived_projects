#include <pthread.h>
#include <stdio.h>
#include <unistd.h>

void *start_routine1(void *arg)
{
	pthread_detach(pthread_self());

	int i = 0;
	while (1) {
		printf("start_routine : %d\n", i);
		if (i%2 != 0) {printf("%d\n", i);}
		i++;
		sleep(1);
	}

	pthread_exit(NULL);
}


void *start_routine2(void *arg)
{
	pthread_detach(pthread_self());

	int i = 0;
	while (1) {
		
		sleep(1);
	}

	pthread_exit(NULL);
}

int main(void)
{
	int i = 0;

	pthread_t pthread_tid1, pthread_tid2; 

	pthread_create(&pthread_tid1, NULL, start_routine1, NULL);
	pthread_create(&pthread_tid2, NULL, start_routine2, NULL);

	int i = 0;
	while (1) {
		printf("start_routine : %d\n", i);
		if (i%2 == 0) {printf("%d\n", i);}
		i++;
		sleep(1);
	}


	return 0;
}