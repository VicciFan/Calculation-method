clear;
clc;
close all;

A0=[0.557, 0.402;0.457, 0.331];
b0=[0.959;0.788];

for k=1:16
    disp(sprintf('%d位有效数字计算',k));
    A=A0;
    b=b0;
    %使用高斯消去法求解方程组
    t1=trunc(A(2,1)/A(1,1),k);
    A(2,2)=trunc(A(2,2)-trunc(A(1,2)*t1,k),k);
    b(2)=trunc(b(2)-trunc(b(1)*t1,k),k);

    b(2)=trunc(b(2)/A(2,2),k);
    b(1)=trunc(b(1)-trunc(A(1,2)*b(2),k),k);
    b(1)=trunc(b(1)/A(1,1),k);
    disp(b);
end;

