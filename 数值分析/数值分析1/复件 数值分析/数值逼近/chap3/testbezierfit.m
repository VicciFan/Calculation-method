%testbezierfit ����ʹ��Bezier���߽������
clear;
close all;
clear;
t=(0:0.01:pi)';
%��ϵ�
xx=t;
yy=sin(t)+0.0001*rand(size(t));

%��ϵ�
xx=[1,3,5,7,9,14,17,20,24,30,40]';
yy=[2,5,6,3,5,2,12,4,24,16,44]';

%bezier���
[x,y,fiterror]=bezierfit(xx,yy,5);

%����Bezier����
[xx1,yy1]=mybezier(x,y,500);
figure(1);
%clf;

hold on;
plot(xx,yy,'r*');
plot(xx1,yy1,'k');
plot(x,y,'bd');
hold off;
%legend('fitted points','control points','','Bezier Curve');
legend('��ϵ�','Bezier ����','���Ƶ�');
title(strcat('Error: ', num2str(fiterror)));
zoom on;


