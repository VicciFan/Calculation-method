%testbezier
n=20;
x=zeros(n,1);
y=x;
for i=1:n
   x(i)=i;
   y(i)=sin(i);
end;
x(1)=x(1);%-5;
y(2)=y(2);%+1;
x(8)=x(8);%+7;
y(8)=y(8);%+3;
x(14)=x(14);%-6;
y(14)=y(14);%+2;
%x=[x;x(1)];
%y=[y;y(1)];
[xx,yy]=mybezier(x,y,300);
figure(1);
clf;
hold on;
plot(x,y,'ro-');%,x,y,'r');
plot(xx,yy,'b');
hold off;
legend('¿ØÖÆµã','BezierÇúÏß')

