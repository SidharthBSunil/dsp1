#include<fastmath67x.h>

//void Vi_DSKC6747_init( );

void main()

	{


int *Xn,*Hn,*Yout;
int *xnlen,*hnlen;
int i,k,n,l,m;

	Xn=(int *)0xc0000100;//[1,2,1,1]
	Hn=(int *)0xc0000200;//[1,1,1]
	xnlen = (int *)0xc0000300;//[4]
	hnlen = (int *)0xc0000304;//[3]
	Yout=(int *)0xc0000400;//[1,3,4,4,2,1]

//	 Vi_DSKC6747_init( );
	
l = *xnlen;
m = *hnlen;

	for(i=0;i<50;i++)
	{
	Yout[i]=0;
	Xn[l+i]=0;
	Hn[m+i]=0;
	xnlen[2+i]=0;
	}

	


		for(n=0;n<(l+m-1);n++)


			{



				for(k=0;k<=n;k++)


				{
			

				Yout[n]=Yout[n]+(Xn[k]*Hn[n-k]);

				}
		
			}
		
 

	}










