#include<stdio.h>
int main()
{
int a[3][4]={{1,2,3,4},{1,2,3,4},{1,2,3,4}} ;
int b[3][4],i,j;
for(i=0;i<=2;i++)
for(j=0;j<=3;j++)
b[j][i]=a[i][j]; 
printf("获得行列互换的新数组为：\n");
for(j=0;j<=3;j++)
{
for(i=0;i<=2;i++)
printf("%d\t",b[j][i]);
printf("。\n");
} 
return 0;
}

