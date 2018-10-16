clear;
close all;
clc;

x=1:12;
x=x';
y=[256;201;159;61;77;40;17;25;103;156;222;345];
A=[ones(size(x)),x,x.*x];
c=A\y
figure;
plot(x,y,'r*');

xx=linspace(1,12,1000);
yy=c(1)+c(2)*xx+c(3)*xx.*xx;
hold on;
plot(xx,yy);
hold off;

xlabel('x');
ylabel('y');
legend('nodes','fitted polynomial curve')
title('多项式拟合')
