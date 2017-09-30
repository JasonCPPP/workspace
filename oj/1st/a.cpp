#include<iostream>
#include<algorithm>
#include<cstdio>
using namespace std;

struct edge{
  int weight;
  int x;
  int y;
};
bool compare_edge(edge e1,edge e2){
  return e1.weight<e2.weight;
}
int n;
int parent[115];
int find_parent(int i){
  if(parent[i]!=i){
    parent[i]=find_parent( parent[i]);
  }
  return parent[i];
}
void union_node(int i,int j){
  parent[find_parent(i)]=find_parent(j);
}

int main(){
   while(scanf("%d",&n)!=EOF){
      int ak47;
      for (int i=0;i<n;i++){
          parent[i] =i;
      }
      edge Edge[115*115];
      int index=0;
      for (int i=0;i<n;i++){
          for(int j=0;j<n;j++){
              cin>>ak47;
              if(i>j){
              Edge[index].weight=ak47;
              Edge[index].x=i;
              Edge[index].y=j;
              index++;
              }
          }
      }
      long long int ans=0;
      sort(Edge,Edge+index,compare_edge);
    int count_=0;
      for (int i=0;i<index;i++){
          if (find_parent( Edge[i].x)!=find_parent( Edge[i].y)){
            ans+=Edge[i].weight;
            count_++;
            union_node(Edge[i].x, Edge[i].y);
          }
          if(count_==n-1)break;
      }
      cout<<ans<<endl;

   }

  return 0;
}
