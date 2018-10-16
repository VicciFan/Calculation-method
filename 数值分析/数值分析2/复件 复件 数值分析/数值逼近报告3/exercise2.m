n=7;
x=linspace(0,1,n);
z=0.1*rand(n,1);
i=1;
while i<n+1
y(i)=exp(x(i))+exp(-x(i))+z(i);
i=i+1;
end
x;
y;
A=zeros(n,2);
k=1;
while k<n+1
    j=1;
    A(k,j)=exp(x(k));
    k=k+1;
end
k=1;
while k<n+1
    j=2;
    A(k,j)=exp(-x(k));
    k=k+1;
end
A;
G=A'*A;
m=1;
while m<n+1
    c(m,1)=y(m);
    m=m+1;
end
c;
b=A'*c;
a=G\b;
xx=[0:0.01:1];
yy=a(1)*exp(xx)+a(2)*exp(-xx);
plot(xx,yy,'black')
hold on;
plot(x,y,'blacko')

