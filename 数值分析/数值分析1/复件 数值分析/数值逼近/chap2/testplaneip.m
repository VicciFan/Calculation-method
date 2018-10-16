clear;
close all;
clc;

n=60;
dim=2;

%ƽ����Բ���ϵ�һЩ��
theta=linspace(0,1.5*pi, n);
x=[cos(theta);sin(theta)]; 

% dimά�ռ������������n����
%x=randn(dim,n); 

disp('������...');
tic;
t=parameterize(x);
toc;

tt=linspace(0,1,100000);
for d=1:dim
    disp(sprintf('��%dά��ֵ...',dim));
    disp('����...');
    tic;
    c=newtonip(t,x(d,:));
    toc;
    disp('����ʽ��ֵ...');
    tic;
    xx(d,:)=polyeval(t,c,tt);
    toc;
end;

figure;
if dim==2
    plot(x(1,:),x(2,:),'r-o');
    hold on;
    plot(xx(1,:),xx(2,:));
    title('ƽ�����ߵ�ţ�ٲ�ֵ')
elseif dim==3
    plot3(x(1,:),x(2,:),x(3,:),'r-o');
    hold on;
    plot3(xx(1,:),xx(2,:),xx(3,:));
    title('�ռ����ߵ�ţ�ٲ�ֵ')
end;
grid on;
axis equal;
legend('��ֵ��','��ֵ����');



