#include<iostream>
#include<algorithm>
#include<cstdio>
#include<vector>
#include<cmath>
#include<iomanip>
using namespace std;
const int maxn=505;
struct edge{
  double weight;
  int x;
  int y;
};
bool compare_edge(edge e1,edge e2){
  return e1.weight<e2.weight;
}
int n;
int parent[maxn];
int find_parent(int i){
  if(parent[i]!=i){
    parent[i]=find_parent( parent[i]);
  }
  return parent[i];
}
void union_node(int i,int j){
  parent[find_parent(i)]=find_parent(j);
}
struct vertice{
  int x,y;
  vertice(int i,int j):x(i),y(j){}
  vertice(){}
};
vector<vertice>Node;
int main(){
  int num_loop;
  scanf("%d",&num_loop);
  for(int i=0;i<num_loop;++i){
      int S,P;
      Node.clear();
      scanf("%d%d",&S,&P);
      for(int j=0;j<P;j++){
          int m,n;
          cin>>m>>n;
          Node.push_back(vertice(m,n));
      }
      int index=0;
      edge Edge[maxn*maxn];
      for(int row=0;row<Node.size();row++){
          for( int line=0; line<Node.size();line++){
            if(row>line){
            Edge[index].x=row;
            Edge[index].y=line;
            Edge[index].weight=sqrt(pow(abs(Node[row].x-Node[line].x),2)+pow(abs(Node[row].y-Node[line].y),2));
            index++;
          }
          else break;
          }
      }
      long long  int ans=0;
      sort(Edge,Edge+index,compare_edge);
      vector<double> ans_vector;
      int count_=0;
      for (int i=0;i<P;i++){
        parent[i]=i;
      }
      for (int i=0;i<index;i++){
          if (find_parent(Edge[i].x)!=find_parent( Edge[i].y)){
            ans_vector.push_back(Edge[i].weight);
            count_++;
            union_node(Edge[i].x, Edge[i].y);
          }
          if(count_==P-1)break;
      }
      sort(ans_vector.begin(),ans_vector.end());
      S--;
      cout<<fixed<<setprecision(2)<<ans_vector[ans_vector.size()-S-1]<<endl;
}


  return 0;
}
