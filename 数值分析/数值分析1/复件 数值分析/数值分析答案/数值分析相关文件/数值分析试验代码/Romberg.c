#include<stdio.h>
#include<math.h>
#define NUM 20
float f(float x)
{
	float result;
	result=exp(-x);
	return result;
}
main()
{
	int i,j,m,n,flag=1;
	float a,b,h,c;
	float T[NUM][NUM];
	printf("Please input a=");
	scanf("%d",&a);
	printf("\n");
	printf("Please input b="):
	scanf("%d",&b);
	h=b-a;
	c=h/2*(f(a)+f(b));
	T[0][0]=c;
	m=4;
	while(flag==1)
	{
		for(i=1;i<m;i++)
	{
		n=pow(2,i-1);
		h=h/2;
		c=c/2;
		for(j=1;j<=n;j++)
		{
			c=c+h*f(a+(2*j-1)*h);
		}
		T[0][i]=c;
	}
		for(i=1;i<m;i++)
		{
			for(j=0;j<m-i;j++)
			{
				T[i][j]=(pow(4,i)*T[i-1][j+1]-T[i-1][j])/(pow(4,i)-1);

			}
		}
		if(fabs(T[m][0]-T[m-1][0])<1e-5)
			flag=0;
		m=m+1;
	}
		
	}
	for(i=0;i<m;i++)
	{
		for(j=0;j<m-i;j++)
		{
			printf("%f",&T[i][j]);
		}
		printf("\n");				
	}
}