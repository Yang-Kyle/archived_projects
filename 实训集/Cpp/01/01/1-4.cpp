#include<stdio.h>
int main()
{
int score;
char level;
printf("��������ѧ���ɼ�\n");
scanf("%d",&score);
printf("�����ĳɼ�Ϊ%d\n",score);
switch((int)(score/10))
{
case 10:;
case 9:printf("��������ΪA�ȼ�\n");break;
case 8:printf("��������ΪB�ȼ�\n");break;
case 7:printf("��������ΪC�ȼ�\n");break;
case 6:printf("��������ΪD�ȼ�\n");break;
case 5:
case 4:
case 3:
case 2:
case 1:
case 0:printf("��������ΪE�ȼ�\n");break;
default:printf("deta error!\n");break;
}
return 0;
}
