clear;
clc;
close all;

x=[2,2.1,2.2,2.3,2.4];
x=x'
fx=sqrt(x)

c=newtonip(x,fx);

disp(sprintf('\n\n\n插值点'));
xx=2.05

disp('-----真实值---------');
fxx=sqrt(xx)

for n=1:4
    disp(sprintf('-----%d次多项式插值------',n));
    pnxx=polyeval(x(1:n+1),c(1:n+1),xx);
%     pnxx=c(n+1);
%     for j=n:-1:1
%         pnxx=pnxx*(xx-x(j))+c(j);
%     end;
disp(sprintf('插值结果：%.15f, 误差：%e', pnxx,fxx-pnxx));
end;


