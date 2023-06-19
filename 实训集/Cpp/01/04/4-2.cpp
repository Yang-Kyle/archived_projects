#include<stdio.h>
struct student
{
int num;
float fen1;
float fen2;
float fen3;
float aver;
}human[3];
int main()
{
int i;
for(i=1;i<=3;i++)
{
printf("请输入学生%d的学号及其三门课程的成绩：\n",i);
scanf("%d%f%f%f",&human[i].num,&human[i].fen1,&human[i].fen2,&human[i].fen3);
human[i].aver=(human[i].fen1+human[i].fen2+human[i].fen3)/3;
printf("学生%d的学号为%d,平均分为%f。\n",i,human[i].num,human[i].aver);
}
return 0;
}
