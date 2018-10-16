%testmyspline

clc;
clear;
close all;

x=1:20;
x=x';
y=randn(size(x));

xx=linspace(min(x),max(x), 10000);
type='d1';
d=[-1,10];
yy_d1=myspline(x,y,xx,type,d);
type='d2';
d=[0,0];
yy_d2=myspline(x,y,xx,type,d);
type='periodic';
yy_per=myspline(x,y,xx,type,d);
figure(1);
hold on;
plot(x,y,'o');
plot(xx,yy_d1,'r');
plot(xx,yy_d2,'k--');
plot(xx,yy_per,'g-.');
legend('��ֵ��','D1����','D2����','��������','location','north');
title('����������ֵ���������������һ���Ѿ����޸�')