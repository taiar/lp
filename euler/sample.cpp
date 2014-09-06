#include <vector>
#include <list>
#include <map>
#include <set>
#include <deque>
#include <queue>
#include <stack>
#include <bitset>
#include <algorithm>
#include <functional>
#include <numeric>
#include <utility>
#include <sstream>
#include <iostream>
#include <iomanip>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <cctype>
#include <string>
#include <cstring>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <ctime>
using namespace std;
typedef pair<long long ,long long> PL;
long long p[14]={2,3,5,7,11,13,17,19,23,29,31,37,41,43};
vector<long long > v[14];
vector<PL> T;
long long M=91;
long long sum=0;
int n=14;
long long GCD(long long a,long long b)
    {

        long long x = 0 ,lastx = 1,y = 1 ,lasty = 0;
        long long q,temp;
            while(b!=0)
        {
                q = a/b;

                temp = b;
                b= a % b;
                a = temp;

                temp = x;
                x = lastx-q*x;
                lastx = temp;

                temp = y;
                y = lasty-q*y;
                lasty = temp;
        }
            return  lasty;
    }





void Calchines(int lev)
    {
        //cout<<"lev= "<<lev<<endl;
        if(lev==14)
         {
            long long l=0;
            for(int i=0;i<T.size();i++)
            {
                long long c=M/T[i].second;
                l+=T[i].first*c*GCD(T[i].second,c);

            }
            //cout<<l<<endl;
            while(l<0) l+=M;
            while(l>=M) l-=M;
            sum+=l;
            //cout<<endl<<endl;
            return;
         }
        for(int i=0;i<v[lev].size();i++)
         {
            T.push_back(PL(v[lev][i],p[lev]));
            Calchines(lev+1);
            T.erase(T.end());
         }
    }

int main()
    {
        for(int i=0;i<n;i++)
         {
            for(long long j=1;j<=p[i];j++) if((j*j*j)%p[i]==1) v[i].push_back(j);

         }

        for(int i=0;i<v[0].size();i++)
        {
            T.push_back(PL(v[0][i],p[0]));
            Calchines(1);
            T.erase(T.end());
        }
        cout<<"sum= "<<sum-1<<endl;
    }