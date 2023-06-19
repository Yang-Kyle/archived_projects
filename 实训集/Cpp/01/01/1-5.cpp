#include<stdio.h>
int main()
{
int a,b,sum,chu,nokori;
double fuchu;
printf("请您输入任意两个整数\n");
scanf("%d%d",&a,&b);
a=(int)a;
b=(int)b;
printf("您输入的两个整数为%d,%d\n",a,b);
sum=a+b;
chu=a/b;
fuchu=(float)a/b;
nokori=a%b; 
printf("a+b=%d\n",sum);
printf("a÷b的整数结果是%d\n",chu);
printf("a÷b的带小数结果是%lf\n",fuchu);
printf("a÷b的余数是%d\n",nokori);
return 0;
}
