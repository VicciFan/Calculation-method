%µÚÆßÕÂÀıÒ»
clear;
close all;
clc;

a=1;
b=1.3;
errBound=1.e-10;
x=bisection(@fun1, a,b,errBound)