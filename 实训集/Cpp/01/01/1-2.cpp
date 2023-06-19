#include<stdio.h>
int main()
{
int a,b,c;
float avgcj;
printf("请您输入三门课程的成绩\n");
scanf("%d%d%d",&a,&b,&c);
avgcj=(a+b+c)/3.0;
printf("您的三门课程成绩分别为%d、%d、%d\n",a,b,c);
printf("您的平均成绩是%.2f\n",avgcj);
return 0;
}
