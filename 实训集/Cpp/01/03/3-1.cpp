#include<stdio.h>
int main()
{
int a,b;
int sz[10]={0,1,2,3,4,5,6,7,8,9};
sz[a]=sz[0]; 
for(b=1;b<10;b++)
if(sz[a]<sz[b])
sz[a]=sz[b];
printf("最大值为%d,该元素对应下标为%d",sz[a],a);
return 0;
}
