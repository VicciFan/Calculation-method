#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define delta 0.0000000001


double fun(int sign,double x)
{
    switch(sign)
    {
        case 1:
            return cos(x) - x;
            break;
        case 2:
            return exp(-x) - sin(x);
            break;
        case 3:
            return x - exp(-x);
            break;
        case 4:
            return x*x - 2*x*exp(-x) + exp(-2*x);
            break;
        case 5:
            return (231*pow(x,6) - 315*pow(x,4) + 105*pow(x,2) - 5)/16;
            break;
        case 6:
            return 32*pow(x,6) -48*pow(x,4) + 18*pow(x,2) -1;
            break;
        case 7:
            return -pow(x,5) + 25*pow(x,4) - 200*pow(x,3) + 600*pow(x,2) - 600*x +120;
            break;
        default:
            return 64*pow(x,6) - 480*pow(x,4) + 720*pow(x,2) - 120;
            break;

    }
}

double diff(int sign,double x)
{
    return (fun(sign,x+delta) - fun(sign,x))/delta;
}

int main()
{
    double x0,x1,F,DF,eps1,eps2,tol;
    int sign, flag = 1,i,n;
    char c;

    loop:
    printf("Please choose one of the following functions:\n");
    printf("1, y = cos(x) - x\n2, y = exp(-x) - sin(x)\n3, y = x - exp(x)\n4, y = x^2 - 2*x*exp(-x) + exp(-2*x)\n");
    printf("5, y = (231*x^6)/16 - (315*x^4)/16 + (105*x^2)/16 - 5/16\n");
    printf("6, y = 32*x^6 - 48*x^4 + 18*x^2 - 1\n");
    printf("7, y = - x^5 + 25*x^4 - 200*x^3 + 600*x^2 - 600*x + 120\n");
    printf("8, y = 64*x^6 - 480*x^4 + 720*x^2 - 120\n");
    scanf("%d",&sign);
    printf("Please input the initial value of x:\n");
    scanf("%lf",&x0);
    printf("Please input the value of eps1:\n");
    scanf("%lf",&eps1);
    printf("Please input the value of eps2:\n");
    scanf("%lf",&eps2);
    printf("Please input n:\n");
    scanf("%d",&n);

    for(i = 1;i <= n;i++)
    {
        F = fun(sign,x0);
        DF = diff(sign,x0);
        if(fabs(F) < eps1)
        {
            printf("The zeros of the function is %.12lf\n",x0);
            flag = 0;
            break;
        }
        if(fabs(DF) < eps2) break;
        x1 = x0 - F/DF;
        tol = fabs(x0 - x1);
        if(tol < eps1)
        {
            printf("The zeros of the function is %.12lf\n",x1);
            flag = 0;
            break;
        }
        x0 = x1;
    }
    if(flag) printf("Failed to find the zeros!\n");
    fflush(stdin);
    loop1:
    printf("Do you want to continue?[Y/N]:\n");
    scanf("%c",&c);
    if(c == 'Y' || c == 'y')
        goto loop;
    else if(c == 'N' || c == 'n')
        exit(0);
    else
        goto loop1;
    return 0;
}
