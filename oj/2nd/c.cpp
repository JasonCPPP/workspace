#include<cstdio>
#include<algorithm>
#include<iostream>
#include<vector>
using namespace std;
int n,m,k;
vector<int>road[3005];
int kill[100005][3];
int main(int argc, char const *argv[]) {
  scanf("%d%d%d",&n,&m,&k);
  int a,b;
  for(int i=0;i<m;++i){
    scanf("%d%d",&a,&b);
    road[a].push_back(b);
  }

  return 0;
}
