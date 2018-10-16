#include<stdio.h>
#include<math.h>
float f(float x)
{
	float result;
	result=pow(x,3)-x-1;
	return result;
}
main()
{
	float a,b,c,d,fa,fc;
	printf("Please input a,b,d\n");
	scanf("%f,%f,%f",&a,&b,&d);
	do
	{
		c=(a+b)/2;
		fc=f(c);
		if(fc==0) break;
		fa=f(a);
		if (fa*fc>0) a=c;
		else b=c;
	}while(b-a>d);
	c=(a+b)/2;
	if(fc==0) printf("%7.6f\n",&c);
	else printf("%7.6f\n%7.6f\n%7.6f\n",a,b,c);
}
