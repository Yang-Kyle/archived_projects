#include<stdio.h>
int main()
{
int a[4][4],i,j,msum=0,ssum=0;
printf("��������һ���������е�����\n",i,j);
for(i=0;i<4;++i)
{
for(j=0;j<4;++j)
{
scanf("%d",&a[i][j]);
}
}
printf("�����������Ϊ:\n");
for(i=0;i<4;++i) 
{
for(j=0;j<4;++j) 
{
printf("%4d",a[i][j]);
}
printf("\n");
}
for(i=0;i<4;++i)
{
msum+=a[i][i];
ssum+=a[i][3-i];
}
printf("���Խ��ߵĺ���:%d\nб�Խ��ߵĺ���:%d\n\n",msum,ssum);
return 0;
}
