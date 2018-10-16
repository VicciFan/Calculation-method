clear;
close all;
clc;

x=[0,1.5,2,3,4.5,5.45,6,7.5,9,9.8,10.5,12,13.38,14.48];
x=x';
y=[0.28,1.75,2,3.43,3.29,4,4.48,6,7.37,8,8.48,9.27,9.68,9.89];
y=y';
d=[0,0];
type='d2';

xx=linspace(min(x),max(x),10000);
yy=myspline(x,y,xx,type,d);

figure;
plot(x,y,'ro');
hold on;
plot(xx,yy);
legend('nodes','spline','Location','SouthEast');
title('三次样条')