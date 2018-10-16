clear;
close all;
clc;
format long

a=0;
b=1;

for i=1:6
    n=2^(i-1);
    h=(b-a)/n;
    x=linspace(0,1,n+1);
    fx=exp(x);
    T(i,1)=(0.5*(fx(1)+fx(n+1))+sum(fx(2:n)))*h;    
end;
for j=2:5
    for i=j:6
        T(i,j)=(4^(j-1)*T(i,j-1)-T(i-1,j-1))/(4^(j-1)-1);
    end;
end;
T

