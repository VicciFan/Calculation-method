syms f x y;
f=input('请输入f(x,y)=');
jx=input('请输入计算区间[a,b]=');
yy(1)=input('请输入初值y0=');
h=0.1;
xx=jx(1):0.1:jx(2);
for n=1:(length(xx)-1)
    x=xx(n); y=yy(n);
    k1=eval(f);
    x=xx(n)+h/2; y=yy(n)+k1*h/2;
    k2=eval(f);
    y=yy(n)+k2*h/2;
    k3=eval(f);
    x=xx(n+1); y=yy(n)+h*k3;
    k4=eval(f);
    yy(n+1)=yy(n)+(k1+2*k2+2*k3+k4)*h/6;
end
plot(xx,yy,'o')
