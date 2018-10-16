%测试fft
clc;
clear;
close all;


%信号抽样
n=50001;
t=linspace(0,4*pi,n);
x0=1*sin(t)... %低频信号%    
    + .4*cos(5.1*t)+0.1*cos(9.1*t);%... %中频信号，高频信号    
x=x0+0.4*randn(size(t)); %白噪声
x(10001)=10; %脉冲信号

figure(1);
plot(t,x);


%fft
z=fft(x);
figure(2);
bar(abs(z));
title('z=FFT(x)');
xlabel('k');
ylabel('|z|');

%去噪  1%
tol=5*1.e-2;
zmax=max(abs(z));
ind=(abs(z)>tol*zmax);
z1=z.*ind;
x1=ifft(z1);
figure(1);
hold on;
plot(t,x1,'r');
hold off;

%去噪 50%
tol=5*1.e-1;
zmax=max(abs(z));
ind=(abs(z)>tol*zmax);
z2=z.*ind;
x2=ifft(z2);
figure(1);
hold on;

plot(t,x2,'g');
hold off;
axis([1,max(t),-3,5]);
title('使用FFT去噪声')

legend('抽样信号','去噪(1%)信号','去噪(50%)信号')


