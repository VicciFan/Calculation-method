%testbezierfit 测试使用Bezier曲线进行拟合
clear;
close all;
clear;
t=(0:0.01:pi)';
%拟合点
xx=t;
yy=sin(t)+0.0001*rand(size(t));

%拟合点
xx=[1,3,5,7,9,14,17,20,24,30,40]';
yy=[2,5,6,3,5,2,12,4,24,16,44]';

%bezier拟合
[x,y,fiterror]=bezierfit(xx,yy,5);

%计算Bezier曲线
[xx1,yy1]=mybezier(x,y,500);
figure(1);
%clf;

hold on;
plot(xx,yy,'r*');
plot(xx1,yy1,'k');
plot(x,y,'bd');
hold off;
%legend('fitted points','control points','','Bezier Curve');
legend('拟合点','Bezier 曲线','控制点');
title(strcat('Error: ', num2str(fiterror)));
zoom on;


