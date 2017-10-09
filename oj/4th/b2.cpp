/*************************************************************************
      > File Name: b2.cpp
      > Author:Jason(home/jaosn/.vimrc) 
      > Mail:Jasoncpp@qq.com 
      > Created Time: 2017年10月03日 星期二 14时52分36秒
 ************************************************************************/

#include<iostream>
#include<cstdio>
#include<cstring>

using namespace std;

int n;
const int N=1005;
int Map[N][N];
int Next[N];
bool expand(int s){
    int head =s;
    for(int i=0;i<n;i++){
        if (Map[head][i]){
            Next[head]=i;
            head =i;
        }
        else{
            
            
            
        }
    
    }


}


int main(){
    while(scanf("%d",&n)&&n){
        memset(Map,0,sizeof Map);
        memset(Next,-1,sizeof Map);
        for(int i=0;i<n;i++){
            for(int j=0;j<n;j++){
                scanf("%d",&Map[i][j]);    
            }
        }
    
    
    
    }
    


}
