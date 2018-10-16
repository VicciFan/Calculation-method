syms f x y;
f=input('请输入f(x,y)=');
jx=input('请输入计算区间[a,b]=');
yy(1)=input('请输入初值y0=');
h=0.1;
xx=jx(1):0.1:jx(2);
for n=1:3
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
c(4)=yy(4); p(4)=yy(4);
for i=1:4
    x=xx(i); y=yy(i);
    ff(i)=eval(f);
end
for n=4:(length(xx)-1)
    p(n+1)=yy(n)+(55*ff(n)-59*ff(n-1)+37*ff(n-2)-9*ff(n-3))*h/24;
    m(n+1)=p(n+1)+251*(yy(n)-p(n))/270;
    x=xx(n+1); y=m(n+1);
    fff(n+1)=eval(f);
    c(n+1)=yy(n)+(9*fff(n+1)+19*ff(n)-5*ff(n-1)+ff(n-2))*h/24;
    yy(n+1)=c(n+1)-19*(c(n+1)-p(n+1))/270;
    y=yy(n+1);
    ff(n+1)=eval(f);
end
plot(xx,yy,'*')
hold on
