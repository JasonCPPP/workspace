#include<iostream>
#include<algorithm>
#include<cstdio>
#include<string>
#include<sstream>
using namespace std;

struct edge{
  int weight;
  int x;
  int y;
};
bool compare_edge1(edge e1,edge e2){
  if(e1.weight==e2.weight)return (e1.x<=e2.x)&&(e1.y<e2.y);
  return e1.weight<e2.weight;
}
bool compare_edge2(edge e1,edge e2){
  if(e1.weight==e2.weight)return (e1.x<=e2.x)&&(e1.y>=e2.y);
  return e1.weight<e2.weight;
}
bool compare_edge3(edge e1,edge e2){
  if(e1.weight==e2.weight)return (e1.x>e2.x)&&(e1.y<e2.y);
  return e1.weight<e2.weight;
}
bool compare_edge4(edge e1,edge e2){
  if(e1.weight==e2.weight)return (e1.x>e2.x)&&(e1.y>=e2.y);
  return e1.weight<e2.weight;
}

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
string Int_to_String(int n)
{
ostringstream stream;
stream<<n;  //n为int类型
return stream.str();
}
int main(){
   int n;
   cin>>n;
   while(n--){
      int vertice_number,edge_number;
      cin>>vertice_number>>edge_number;
      edge Edge[115*115];
      for(int i=0;i<115*115;i++){
          Edge[i].weight=(1<<31);
      }
      for(int i=0;i<edge_number;i++){
          int a,b,c;
          cin>>a>>b>>c;
          Edge[i].x=a;
          Edge[i].y=b;
          Edge[i].weight=c;
      }


      long long  int ans[4]={0};
      string com[4];
      com[0]=com[1]=com[2]=com[3]="";
      for(int loop=0;loop<4;++loop){
          for (int i=0;i<vertice_number;i++){
            parent[i] =i;

          }

          if (loop==0)sort(Edge,Edge+edge_number,compare_edge1);
          if (loop==1)sort(Edge,Edge+edge_number,compare_edge2);
          if (loop==2)sort(Edge,Edge+edge_number,compare_edge3);
          if (loop==3)sort(Edge,Edge+edge_number,compare_edge4);
          int count_=0;
          for (int i=0;i<edge_number;i++){
              if (find_parent( Edge[i].x)!=find_parent( Edge[i].y)){
                  ans[loop]+=Edge[i].weight;
                  com[loop]+=Int_to_String(Edge[i].x);
                  count_++;
                  union_node(Edge[i].x, Edge[i].y);
                }
                  if(count_==vertice_number-1)break;
              }
      }

      bool unique=true;
      for(int i=0;i<4;i++){
          for(int j=0;j<4;j++){
              if(i!=j&&com[i]!=com[j]){cout<<"Not Unique!\n";unique=false;break;}
          }
          if(!unique)break;
      }
    if(unique)cout<<ans[0]<<endl;
   }

  return 0;
}
