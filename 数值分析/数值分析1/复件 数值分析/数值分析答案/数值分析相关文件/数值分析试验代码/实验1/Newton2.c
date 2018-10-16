#include<stdio.h>
#include<math.h>
float f(float x)
{
	float result;
	result=pow(x,3)-x-1;
	return result;
}
float f1(float x)
{
	float result;
	result=(f(x+1e-6)-f(x))/1e-6;
	return result;
}
main()
{
	float x0,x1,d1,d2,fx0,f1x0;
	int N,k;
	printf("Please input x0,d1,d2,N\n");
	scanf("%f,%f,%f,%d",&x0,&d1,&d2,&N);
	k=1;
	fx0=f(x0);
	f1x0=f1(x0);
	while(fabs(fx0)>d1)
	{
		x1=x0-fx0/f1x0;
		if(fabs(x1-x0)<d2) break;
		else if (k==N) break;
		x0=x1;
		k=k+1;
		fx0=f(x0);
		f1x0=f1(x0);
	}
	if(fabs(fx0)<d1) printf("Qiyi");
	if(fabs(x1-x0)<d2) printf("%7.6f\n%d",x1,k-1);
	if (k==N) printf("Fail");
}
