clear;
close all;
clc;

n=60;
dim=2;

%平面上圆周上的一些点
theta=linspace(0,1.5*pi, n);
x=[cos(theta);sin(theta)]; 

% dim维空间中随机产生的n个点
%x=randn(dim,n); 

disp('参数化...');
tic;
t=parameterize(x);
toc;

tt=linspace(0,1,100000);
for d=1:dim
    disp(sprintf('第%d维插值...',dim));
    disp('差商...');
    tic;
    c=newtonip(t,x(d,:));
    toc;
    disp('多项式求值...');
    tic;
    xx(d,:)=polyeval(t,c,tt);
    toc;
end;

figure;
if dim==2
    plot(x(1,:),x(2,:),'r-o');
    hold on;
    plot(xx(1,:),xx(2,:));
    title('平面曲线的牛顿插值')
elseif dim==3
    plot3(x(1,:),x(2,:),x(3,:),'r-o');
    hold on;
    plot3(xx(1,:),xx(2,:),xx(3,:));
    title('空间曲线的牛顿插值')
end;
grid on;
axis equal;
legend('插值点','插值曲线');



