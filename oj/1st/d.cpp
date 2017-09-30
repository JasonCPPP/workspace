#include<iostream>
#include<algorithm>
#include<cstdio>
#include<vector>
#include<cmath>
#include<iomanip>
#include<queue>
using namespace std;
double x[1005];
double y[1005];
double z[1005];
double key[1005];
bool visited[1005];
double cost[1005][1005];
double length[1005][1005];
double weight[1005][1005];
int main(int argc, char const *argv[]) {
  int num_vertice;
  while(scanf("%d",&num_vertice)&&num_vertice){
      for(int i=0;i<num_vertice;++i){
          scanf("%lf%lf%lf",&x[i],&y[i],&z[i]);
      }
      double L=0.0;
      for(int i=0;i<num_vertice;++i){
          cost[i][i]=0;
          length[i][i]=0;
          for(int j=0;j<i;++j){
                cost[j][i]=cost[i][j]=fabs(z[i]-z[j]);
                length[j][i]=length[i][j]=sqrt(pow(x[i]-x[j],2)+pow(y[i]-y[j],2));
                L=(L>(cost[i][j]/length[i][j]))?L:(cost[i][j]/length[i][j]);
                }
          }

      double ans=0.0;
      double m,s;
      bool continue_=true;
      do{
        for(int i=0;i<num_vertice;++i){
                weight[i][i]=0;
                for(int j=0;j<i;++j){
                  weight[j][i]=weight[i][j]=cost[i][j]-length[i][j]*L;
                }
        }
        for(int i=0;i<num_vertice;++i){
          key[i]=100000000;
          visited[i]=false;
        }
        key[0]=0;
        m=s=0.0;
        ans=0.0;
        int index_min=0;
        int old_index_min;
        for(int loop=0;loop<num_vertice;++loop){
            old_index_min=index_min;
            double MIN=10000005;
            for(int i=0;i<num_vertice;++i){
              if(!visited[i]&&key[i]<MIN){
                index_min=i;
                MIN=key[i];
              }
            }
            m+=cost[index_min][old_index_min];
            s+=length[index_min][old_index_min];
            ans+=weight[index_min][old_index_min];
            //cout<<m<<" "<<s<<" "<<ans<<" "<<index_min<<" "<<old_index_min<<endl;
            visited[index_min]=true;
            for(int i=0;i<num_vertice;++i){
                if(!visited[i]&&weight[i][index_min]<key[i]){
                    key[i]=weight[i][index_min];
                }
            }
        }
        if(abs(ans)<0.00001)continue_=false;
        else {
          L=m/s;
        }
      }while(continue_);
      printf("%0.3lf\n",L);
  }
  return 0;
}
