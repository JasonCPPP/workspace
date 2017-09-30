#include <cstdio>
#include <cstring>
#include <string>
#include <iostream>
#include <algorithm>
#include <vector>
#include <iterator>
using namespace std;
const int N=205;
int ANS[N][N];
int main() {
  int n;
  while(scanf("%d",&n)&&n){
      int tmp1,tmp2;
      memset(ANS,0,sizeof ANS);
      while(scanf("%d%d",&tmp1,&tmp2)&&tmp1+tmp2){
        char tmp[27];
        scanf("%s",tmp);
        int l=strlen(tmp);
        for(int i=0;i<l;i++){
          ANS[tmp1][tmp2]|=1<<(tmp[i]-'a');
        }
      }
      for(int i=1;i<=n;i++){
        for(int j=1;j<=n;j++){
          for(int k=1;k<=n;k++){
            ANS[j][k]|=(ANS[j][i]&ANS[i][k]);
          }
        }
      }
      while(scanf("%d%d",&tmp1,&tmp2)&&tmp1+tmp2){
        if(ANS[tmp1][tmp2]==0)
          putchar('-');
        else {
          for(int i=0;i<26;i++){
              if((ANS[tmp1][tmp2]&(1<<i)))
                putchar((i+'a'));
              }
        }
        putchar('\n');
    }
    putchar('\n');
  }
  return 0;
}
