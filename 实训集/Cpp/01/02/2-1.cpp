#include<stdio.h>
int main()
{
int jsum,a,n;
for(jsum=1,a=3,n=1;n<50;n++) 
{
	jsum=jsum+a;
	a=a+2;
} 
printf("100���ڵ�������Ϊ%d\n",jsum);
printf("\n");
return 0;
}
