#include <iostream>
#include <cstdio>
#include <cstring>
#include <queue>
using namespace std;

#define N 1005
#define INF 0x3fffffff
/**
1. 如果要求最大值想办法把每个不等式变为标准x-y<=k的形式,然后建立一条从y到x权值为k的边,变得时候注意x-y<k =>x-y<=k-1

   如果要求最小值的话,变为x-y>=k的标准形式，然后建立一条从y到x的k边，求出最长路径即可

2.如果权值为正，用dijkstra，spfa，bellman都可以，如果为负不能用dijkstra，并且需要判断是否有负环，有的话就不存在
**/

int head[N],idx;
bool mark[N];
int dist[N],countt[N];

struct node
{
    int x,y;
    int next;
    int weight;
}edge[4*20*N];

void Init()
{
    idx = 0;
    memset(head,-1,sizeof(head));
}

void swap(int &a,int &b)
{
    int k = a;
    a = b;
    b = k;
}

void Add(int x,int y,int k)
{
    edge[idx].x = x;
    edge[idx].y = y;
    edge[idx].weight = k;
    edge[idx].next = head[x];
    head[x] = idx++;
}

bool SPFA(int start,int end)
{
    int i,x,y;
    memset(countt,0,sizeof(countt)); //统计每一个点加入队列的次数，判断是否有负环！
    memset(mark,false,sizeof(mark));
    for(i=start; i<=end; ++i)  dist[i] = INF;

    queue<int> q;
    q.push(start);
    countt[start]++;
    dist[start] = 0;

    mark[start] = true;
    while(!q.empty())
    {
        x = q.front();
        q.pop();
        for(i=head[x]; i!=-1; i=edge[i].next)
        {
            y = edge[i].y;
            if(dist[y]>dist[x]+edge[i].weight)
            {
                dist[y] = dist[x]+edge[i].weight;
                if(!mark[y])
                {
                    mark[y] = true;
                    q.push(y);
                    countt[y]++;
                    if(countt[y]>end) return false;
                }
            }
        }
        mark[x] = false;
    }
    return true;
}

int main()  /**求最大值，不等式化为x-y<=k的形式**/
{
    int n;
    int x,y,k;
    int ML,MD;
    while(scanf("%d %d %d",&n,&ML,&MD)!=EOF)
    {
        Init(); //初始化！
        int a=ML+MD;
        while(ML--)
        {
            scanf("%d %d %d",&x,&y,&k);
            if(x>y) swap(x,y);
            Add(x,y,k); /**y-x<=k**/
        }
        while(MD--)
        {
            scanf("%d %d %d",&x,&y,&k);
            if(x>y) swap(x,y);
            Add(y,x,-k); /**y-x>=k  =>  x-y<=-k**/
        }
        for(int i=0;i<a;i++){
            cout<<edge[i].x<<" "<<edge[i].y<<" "<<edge[i].next<<" "<<edge[i].weight<<endl;
        }
        bool flag = SPFA(1,n);
        if(!flag) printf("-1\n");
        else if(dist[n]==INF) printf("-2\n");
        else
            printf("%d\n",dist[n]);

    }
    return 0;
}
