#include<cstdio>
#include<cstring>
#include<stack>

struct state{
    
    
    
};


using namespace std;
const int N=1005;
int n;
bool Map[N][N];
int Rank[N];
int state =0;
bool dfs(int *Rank,int k,int num){
    if (num==n&&Map[k][1])return true;
    for(int i=1;i<=n;i++){
        if(!Rank[i]&&Map[k][i]){
            Rank[k]=i;
            if(dfs(Rank,i,num+1))
                return true;
            else Rank[i]=0;       
        }
    }
    return false;
}
int main(){
    while(scanf("%d",&n)&&n){
        int tmp=1;
        for(int i=1;i<=n;++i){
            for(int j=1;j<=n;++j){
                scanf("%d",&tmp);
                Map[i][j]=tmp?1:0;
            }    
        }
        memset(Rank,0,sizeof Rank);
       int index=1;
       if (dfs(Rank,1,1)){
            for(int i=1;i<n;i++){
                printf("%d ",index);
                index = Rank[index];
            }
            printf("%d\n",index);
       }
       else printf("-1\n");
    }
    return 0;
}
