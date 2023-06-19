#include<stdio.h>
int main()
{
int score;
char level;
printf("请您输入学生成绩\n");
scanf("%d",&score);
printf("该生的成绩为%d\n",score);
switch((int)(score/10))
{
case 10:;
case 9:printf("该生分数为A等级\n");break;
case 8:printf("该生分数为B等级\n");break;
case 7:printf("该生分数为C等级\n");break;
case 6:printf("该生分数为D等级\n");break;
case 5:
case 4:
case 3:
case 2:
case 1:
case 0:printf("该生分数为E等级\n");break;
default:printf("deta error!\n");break;
}
return 0;
}
