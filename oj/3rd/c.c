/*************************************************************************
        > File Name: c.c
      > Author:Jason(home/jaosn/.vimrc) 
      > Mail:Jasoncpp@qq.com 
      > Created Time: 2017年09月23日 星期六 10时11分02秒
 ************************************************************************/
#include<cstdio>

using namespace std;
int main(){

    int a =1;
    int *c =&a;
    int *b =&a;
    printf("%d",c==b);


}
