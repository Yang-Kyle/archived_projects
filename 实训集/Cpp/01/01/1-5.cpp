#include<stdio.h>
int main()
{
int a,b,sum,chu,nokori;
double fuchu;
printf("��������������������\n");
scanf("%d%d",&a,&b);
a=(int)a;
b=(int)b;
printf("���������������Ϊ%d,%d\n",a,b);
sum=a+b;
chu=a/b;
fuchu=(float)a/b;
nokori=a%b; 
printf("a+b=%d\n",sum);
printf("a��b�����������%d\n",chu);
printf("a��b�Ĵ�С�������%lf\n",fuchu);
printf("a��b��������%d\n",nokori);
return 0;
}
