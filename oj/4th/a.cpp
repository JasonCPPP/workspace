#include<cstdio>
#include<cstring>
#include<algorithm>
using namespace std;
const int N=16;
int Map[N][N];
int n,m;
int ans;
int deg[N];
int state;
int St[1<<15];
int  dfs(int state){
    if (!state)return 0;
    if(St[state])return St[state];
    int i;
    for( i=1;i<=n;i++){
        if(state&1<<(i-1))break;
    }
    int Min = 1<<27;
    for(int j=i+1;j<=n;j++){
        if(state&1<<(j-1)){
        int tmp=  dfs(state-((1<<(j-1))+(1<<(i-1))))+Map[i][j];
         Min = min(Min,tmp);
        }
    }
    St[state]=Min;
    return Min;
}
void fw(){
    for(int i=1;i<=n;++i){
        for(int j=1;j<=n;j++){
            for(int k=1;k<=n;k++){
                Map[j][k]= min(Map[j][i]+Map[i][k],Map[j][k]);
            }
        }
    }
}
int main(){
    while(scanf("%d",&n)&&n){
        scanf("%d",&m);
        memset(St,0,sizeof St);
        for(int i=0;i<N;i++){
            for(int j=0;j<N;j++){
                Map[i][j]=1<<27;
            }
            Map[i][i]=0;
        }

        memset(deg,0,sizeof deg);
        int a,b,c;
        ans=0;

        

        for(int i=0;i<m;i++){
            scanf("%d%d%d",&a,&b,&c);
            Map[a][b]=Map[b][a]=min(c,Map[a][b]);
            ans+=c;
            deg[a]++;
            deg[b]++;
        }

        
        state =0;
        for (int i=1;i<=n;i++){
            if(deg[i]&1)
                state|=1<<(i-1);
        }
        if(!state){
            printf("%d\n",ans);
            continue;
        }
        fw();
        ans+=dfs(state);        
        printf("%d\n",ans);
    }


}
