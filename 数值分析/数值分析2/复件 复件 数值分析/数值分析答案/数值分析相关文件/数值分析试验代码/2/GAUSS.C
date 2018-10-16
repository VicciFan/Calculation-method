#include<stdio.h>
#include<math.h>
#define num 20
main()
{
	int n,i,j,k;
    double a[num][num],A[num]={0},x[num],m;
	printf("Please input n=\n");
	scanf("%d",&n);
	printf("Please input the Matrix:\n");
	for(i=0;i<n;i++)
	{
		for(j=0;j<n+1;j++)
		{
			scanf("%lf",&a[i][j]);
		}
	}
	for(i=0;i<n;i++)
	{
		for(j=0;j<n+1;j++)
		{
			printf("%lf",a[i][j]);
		}
		printf("\n");
	}
	for(k=0;k<n-1;k++)
	{	
		for(i=k+1;i<n;i++)
		{
			m=a[i][k]/a[k][k];
			for(j=k;j<n+1;j++)
			{
				a[i][j]=a[i][j]-m*a[k][j];
			}
		}
	}
	x[n-1]=a[n-1][n]/a[n-1][n-1];
	for(i=n-2;i>=0;i--)
	{
		for(j=i+1;j<n;j++)
		{
			A[i]=A[i]+a[i][j]*x[j];
		}
		x[i]=(a[i][n]-A[i])/a[i][i];
	}
	printf("The result is:\n");
	for(i=0;i<n;i++)
	{
		printf("%lf\n",x[i]);
	}
}

			
	
	
