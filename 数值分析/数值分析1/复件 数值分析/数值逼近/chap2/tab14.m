close all;
clear;
clc;
x=[1,1,2,2];
fx=[1,0.2,1.1486984,0.1148698];

c=hermitip(x,fx);
disp('╡Нил');
disp(c);