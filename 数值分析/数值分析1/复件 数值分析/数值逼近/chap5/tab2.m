%tab2.m
clear;
close all;
clc;
format long g

narray=[2,4,8,16,32,64,128];
for i=1:length(narray)
    n=narray(i);
    x=linspace(0,1,n+1);
    T(i)=0;
    S(i)=0;
    C(i)=0;
    for j=1:n
        y=linspace(x(j),x(j+1),2);
        y=exp(y);
        c=[1;1];
        T(i)=T(i)+y*c/2/n;
        y=linspace(x(j),x(j+1),3);
        y=exp(y);
        c=[1;4;1];
        S(i)=S(i)+y*c/6/n;
        y=linspace(x(j),x(j+1),5);
        y=exp(y);
        c=[7;32;12;32;7];
        C(i)=C(i)+y*c/90/n;
    end;
end;
disp([narray', T',S',C']);
        
        
    