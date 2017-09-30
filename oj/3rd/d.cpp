#include<iostream>
#include<cstdio>
#include<vector>
int Map[205][205];
int copy_map[205][205];
int father[205][205];
using namespace std;
int m,n;
int inf=1<<29;
int ans=inf;
int start =-1;
int End=-1;
int middle=-1;
vector<int>fuc;
void FW(){
  for(int i=1;i<=n;i++){
    for(int p=1;p<=n;p++){
      for(int q=p+1;q<=n;q++){
        if(Map[p][q]<inf&&copy_map[p][i]<inf&copy_map[i][q]<inf&&(Map[p][q]+copy_map[p][i]+copy_map[i][q])<ans)
        {
          fuc.clear();
          ans=Map[p][q]+copy_map[p][i]+copy_map[i][q];
          start=p;
          End =q;
          middle=i;
          fuc.push_back(middle);
          fuc.push_back(End);
          while(father[start][End]!=start){
          fuc.push_back(father[start][End]);
            End=father[start][End];
          }
          fuc.push_back(start);
        }
      }
    }
    for(int j=1;j<=n;j++){
        for(int k=1;k<=n;k++){
          if(Map[j][k]>=Map[j][i]+Map[i][k]&&(j!=k)){
              father[j][k]=father[i][k];
              Map[j][k]=Map[j][i]+Map[i][k];

          }
        }
    }
  }
}



int main(){

    while(scanf("%d",&n)&&n>0){
        scanf("%d",&m);
        ans=inf;
        start=-1;
        End=-1;
        middle=-1;
        for(int i=0;i<205;i++){
          for(int j=0;j<205;j++){
            Map[i][j]=inf;
            copy_map[i][j]=inf;
          }
          father[i][i]=-1;
        }
        int a,b,c;
        for(int i=0;i<m;i++){
            scanf("%d%d%d",&a,&b,&c);
              if(c<Map[a][b]){
                  father[b][a]=b;
                  father[a][b]=a;
                  Map[a][b]=Map[b][a]=copy_map[a][b]=copy_map[b][a]=c;
          }

        }

        FW();
        if(ans<inf){
          for (int i=0;i<fuc.size()-1;i++){
            cout<<fuc[i]<<" ";
          }
          cout<<fuc[fuc.size()-1]<<endl;
        }
        else {
          printf("No solution.\n");
        }
      }
}
