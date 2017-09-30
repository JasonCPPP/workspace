/*
Problem: 3241        User: 96655
Memory: 920K        Time: 94MS
Language: C++        Result: Accepted
*/
#include<cstdio>
#include<cstring>
#include<algorithm>
#include<iostream>
#include<cstdlib>
#include<cmath>
using namespace std;
typedef long long LL;
const int maxn=10005;
const int INF=0x3f3f3f3f;
const int maxm=4015;
int n,k,p;
struct Point
{
    int x,y,id;
    bool operator<(const Point &e)const
    {
        if(x==e.x)return y<e.y;
        return x<e.x;
    }
} point[maxn];
struct Edge
{
    int u,v,w;
    bool operator<(const Edge &e)const
    {
        return w<e.w;
    }
} edge[maxn*10];
void addedge(int a,int b,int l,int r)
{
    ++p;
    edge[p].u=a;
    edge[p].v=b;
    edge[p].w=abs(l-r);
}
struct Node
{
    int len,id;
} node[(maxm+10)<<2];
void pushup(int rt)
{
    node[rt].len=min(node[rt*2].len,node[rt*2+1].len);
    if(node[rt].len==node[rt*2].len)node[rt].id=node[rt*2].id;
    else node[rt].id=node[rt*2+1].id;
}
void change(int rt,int l,int r,Point tt)
{
    if(l==r)
    {
        node[rt].len=tt.x+tt.y;
        node[rt].id=tt.id;
        return;
    }
    int pos=tt.y-tt.x+1005;
    int m=(l+r)>>1;
    if(pos<=m)change(rt*2,l,m,tt);
    else change(rt*2+1,m+1,r,tt);
    pushup(rt);
}
Node query(int rt,int l,int r,int x,int y)
{
    if(x<=l&&r<=y)
        return node[rt];
    int m=(l+r)>>1;
    if(y<=m)return query(rt*2,l,m,x,y);
    else if(x>m)return query(rt*2+1,m+1,r,x,y);
    else
    {
        Node t1,t2;
        t1=query(rt*2,l,m,x,y);
        t2=query(rt*2+1,m+1,r,x,y);
        if(t1.len<t2.len)return t1;
        else return t2;
    }
}
int fa[maxn];
int find(int x)
{
    if(x==fa[x])return x;
    return fa[x]=find(fa[x]);
}
void init()
{
    for(int i=0; i<(maxm<<2); ++i)
        node[i].len=INF,node[i].id=-1;
}
void build()
{
    sort(point+1,point+1+n);
    init();
    for(int i=n; i>0; --i)
    {
        int s=point[i].x+point[i].y;
        Node t=query(1,1,maxm,point[i].y-point[i].x+1005,maxm);
        if(t.id!=-1)
            addedge(point[i].id,t.id,s,t.len);
        change(1,1,maxm,point[i]);
    }

}
int solve()
{
    sort(edge+1,edge+p+1);
    int cnt=0;
    for(int i=1; i<=p; ++i)
    {
        int fx=find(edge[i].u);
        int fy=find(edge[i].v);
        if(fx!=fy)
        {
            fa[fy]=fx;
            ++cnt;
            int min_=min(edge[i].u-1,edge[i].v-1);
            printf("%d %d %d\n",edge[i].w, min_,edge[i].u-1+edge[i].v-1-min_);
            if(cnt==n-k)return edge[i].w;
        }
    }
}
int main()
{
    scanf("%d%d",&n,&k);
    for(int i=1; i<=n; ++i)
        scanf("%d%d",&point[i].x,&point[i].y),point[i].id=i;
    for(int i=1; i<=n; ++i)
        fa[i]=i;
    p=0;
    build();
    for(int i=1; i<=n; ++i)
        point[i].y=-point[i].y;
    build();
    for(int i=1; i<=n; ++i)
        point[i].y=-point[i].y,swap(point[i].x,point[i].y);
    build();
    for(int i=1; i<=n; ++i)
        point[i].y=-point[i].y;
    build();
    printf("%d\n",solve());
    return 0;
}
