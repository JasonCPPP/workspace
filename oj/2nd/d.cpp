#include <cstdio>
#include <iostream>
#include <cmath>
#include <algorithm>
using namespace std;
const int M=1001;
struct stone{
    int x,y;
    stone(int a,int b):x(a),y(b){};
    stone(){};
};
struct stone Map[M];
int n,m;
double DIS[M];
bool vis[M];

double distance_(int s,int t){

  return sqrt(pow(Map[s].x-Map[t].x,2)+pow(Map[s].y-Map[t].y,2));
}
void relax(int a,int b){
        double m=distance_(a, b);
        if(m<DIS[a]){
          m=DIS[a];
        }
        if(m<DIS[b]){
          DIS[b]=m;
        }
}
/*
void Bellman_Ford(){
    for(int i=1;i<=n;i++){
        for(int j=1;j<=2*m;j++){
            relax(j);
        }
    }

}*/
int extract_min(){
   int ans=-1;
    int min_=1<<27;
    for(int i=1;i<=n;++i){
        if(DIS[i]<min_&&!vis[i]){
            min_=DIS[i];
            ans=i;
        }
    }
    vis[ans]=1;
    return ans;

return 1;
}
void dijkstra(){
   for(int i=1;i<n;++i){
        int ans=extract_min();
        for(int j=1;j<=n;++j){
            //printf("%d size: %d\n",ans,Map[ans].size());
           // cout<<Map[ans][j].v<<endl;
            relax(ans,j);
            //printf("hello\n");
        }
    }
}
int main(){
    int test=0;
    while(scanf("%d",&n)&&n){
        for(int i=1;i<=n;i++){
            int a,b;
            scanf("%d%d",&a,&b);
            Map[i]=stone(a,b);
        }
        for(int i=1;i<=n;++i){
            DIS[i]=1<<28;
            vis[i]=0;
        }
        DIS[1]=0;
       // Bellman_Ford(); too slow
        dijkstra();
        printf("Scenario #%d\n",++test);
        printf("Frog Distance = %0.3f\n",DIS[2]);
    }

}
