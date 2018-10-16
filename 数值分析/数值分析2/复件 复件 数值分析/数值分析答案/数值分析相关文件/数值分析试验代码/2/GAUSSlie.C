#include<stdio.h>
#include<math.h>
#define num 20
main()
{
	int n,i,j,k,r,flag=1;
	double a[num][num],A[num]={0},x[num],z,m;
	double amax;
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
	for(k=0;(flag==1)&&(k<n-1);k++)
	{
		amax=0;
		for(i=k;i<n;i++)
		{
			if (fabs(a[i][k])>fabs(amax))
			amax=fabs(a[i][k]);
			r=i;
		}
	if(amax<1e-10)
		flag=0;
	if(r>k)
		for(j=k;j<n+1;j++)
		{
			z=a[k][j];
			a[k][j]=a[r][j];
			a[r][j]=z;
		}
	for(i=k+1;i<n;i++)
	{
	m=a[i][k]/a[k][k];
		for(j=k;j<n+1;j++)
		{
			a[i][j]=a[i][j]-m*a[k][j];
		}
	}
	}
	if(fabs(a[n-1][n-1])<1e-10)
		flag=0;
	if(flag==0)
		printf("The END, wrong");
	else
	{
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
	}

			
	
	
