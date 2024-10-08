
#include<fastmath67x.h>
//void Vi_DSKC6747_init( );
void main()
{
int Xn[4]= {1,2,3,4};	//xn and hn must need same value
int Hn[4] = {1,1,2,2};
int xn = 4;
int hn= 4;
int *Yn;
int i,n,m,l;

Yn=(int *)0xc0000100;

//  Vi_DSKC6747_init( );

for(i=0;i<xn+hn;i++)
	Yn[i]=0;


for(n=0;n<xn;n++)
	{
	for(m=0;m<hn;m++)
		{
		l=n-m;
			if(l<0)
			{
			l=l+xn;
			}
		Yn[n]=Yn[n]+(Xn[m]*Hn[l]);
		}
	}
}



