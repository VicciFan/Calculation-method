clear;
close all;
clc;


x=[0.2,0.02,0.002,0.0002,0.00002,...
    3.14159,3.16159,3.14359,3.14179];
x=x';
A=(1-cos(x))./x./x;
B=(sin(x)./x).^2 ./ (1+cos(x));
C=2*(sin(x/2)./x).^2;
disp('      x                      A                                      B                                   C');
for i=1:length(x)
    disp(sprintf('%.5f  %.14f      %.14f     %.14f', x(i), A(i), B(i), C(i)));
end;
    