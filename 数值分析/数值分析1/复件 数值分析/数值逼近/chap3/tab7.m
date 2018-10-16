clear;
close all;
clc;

x=[1,2,3,4,6];
x=x';
y=log(x);
d=[1,1/6];
type='d1';

xx=5;
yy_true=log(5);
yy=myspline(x,y,xx,type,d);
err=yy_true-yy
