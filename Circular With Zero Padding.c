#include<math.h>


void main()
{
int *Xn,*Hn,*Yout;
int xnlen=6;
int hnlen=3;
int i,n,m,n1,l;
Xn=(int *)0xc0000100;//{1,2,3,4,5,6}
Hn=(int *)0xc0000200;//{1,1,1}
Yout=(int *)0xc0000300;//{12,9,6,9,12,15}
	

if(xnlen>hnlen)

	{
	n=xnlen;
	
	for(i=hnlen;i<n;i++)
		{
		Hn[i]=0;
		}

	}
else
	{
	n=hnlen;
	for(i=xnlen;i<n;i++)
		{
		Xn[i]=0;
		}
	}

for(i=0;i<=50;i++)/* Memory Clear */
	{
	Yout[i]=0;
	Xn[n+i]=0;
	Hn[n+i]=0;
	}


for(n1=0;n1<n;n1++)
	{
	for(m=0;m<n;m++)
		{
		l=n1-m;
			if(l<0)
			{
		l=l+n;
			}
		Yout[n1]=Yout[n1]+(Xn[m]*Hn[l]);
		}
	}
}

