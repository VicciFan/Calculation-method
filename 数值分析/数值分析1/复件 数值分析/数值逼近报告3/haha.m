
n=7;
x=linspace(0,1,n);
i=1;
while i<n+1
z(i)=exp(x(i))+exp(-x(i));
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
plot(x,z,'blacko')
hold on;
for 1:400
z=0.1*rand(n,1);
i=1;
while i<n+1
y(i)=exp(x(i))+exp(-x(i))+z(i);
i=i+1;
end
y=y';
b=A'*y;
a=G\b;
xx=[0:0.01:1];
yy=a(1)*exp(xx)+a(2)*exp(-xx);
plot(xx,yy,'black')
hold on;
end
