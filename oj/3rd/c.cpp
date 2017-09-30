#include <cstdio>
#include <algorithm>
#include <iostream>
#include <map>
#include <iterator>
using namespace std;
map<int,int>Map;
int ANS[205][205];
int base[205][205];
int count_=0;
void multiply(int ans[205][205],int a[205][205],int b[205][205]){
  for(int i=0;i<count_;++i){
    for(int j=0;j<count_;j++){
      for(int k=0;k<count_;k++){
          ans[j][k]=min(ans[j][k],a[j][i]+b[i][k]);
      }
    }
  }

}
void copy(int source[205][205],int destination[205][205]){
  for(int i=0;i<205;i++){
    for(int j=0;j<205;j++)
    destination[i][j]=source[i][j];
  }
}
void init(int ans[205][205]){
  for(int i=0;i<205;i++){
    for(int j=0;j<205;j++)
      ans[i][j]=1<<29;
  }
}


void quit_pow(int n){
  int ans[205][205];
  while(n){
    if(n&1) {
      init(ans);
      multiply(ans,ANS,base);
      copy(ans,ANS);
    }
    init(ans);
    multiply(ans,base,base);
    copy(ans,base);
    n>>=1;
  }

}

int main(){
  int N,T,S,E;
  scanf("%d%d%d%d",&N,&T,&S,&E);
  int a,b,c;
  init(ANS);
  init(base);
  for (int i=1;i<=T;++i){
    scanf("%d%d%d",&a,&b,&c);
    map<int,int>::iterator it1= Map.find(b);
    map<int,int>::iterator it2= Map.find(c);
    if(it1==Map.end())Map.insert(pair<int,int>(b,count_++));
    if(it2==Map.end())Map.insert(pair<int,int>(c,count_++));
    int x=Map[b];
    int y=Map[c];
    ANS[x][y]=ANS[y][x]=a;
    base[x][y]=base[y][x]=a;
  }

  quit_pow(N-1);
  for(int i=0;i<count_;i++){
    for(int j=0;j<count_;j++)
      cout<<ANS[i][j]<<" ";
    cout<<endl;
  }
  printf("%d\n",ANS[Map[S]][Map[E]]);
}
