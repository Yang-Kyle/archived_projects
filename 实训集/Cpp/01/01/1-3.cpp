#include<stdio.h>
int main()
{
double eks,y;
printf("������������һ������\n");
scanf("%lf",&eks);
if(eks<1)
{ 
y=eks;
} 
else
{
 if(eks>=1&&eks<10)
 { 
 y=2*eks-1;
 }
 else
 {
 y=3*eks-11;
 } 
}
printf("y��ֵΪ%lf\n",y);
return 0;
}
