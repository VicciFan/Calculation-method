function [hhh]=hhh(x)
n=length(x);
i=1;
while i<n+1
m(1,i+1)=x(i);
i=i+1;
end
m(1,1)=x(1);
m(1,n+2)=x(n);

i=1;
while i<n+1
m(2,i+1)=f(x(i));

i=i+1;
end
m(2,1)=f(x(1));
m(2,n+2)=f(x(n));

i=2;
while i<n+1

m(3,i)=(m(2,i+1)-m(2,i))/(m(1,i+1)-m(1,i));

i=i+1;
end
m(3,1)=-(2*x(1))/(x(1)^2 + 1)^2;
m(3,n+1)=-(2*x(n))/(x(n)^2 + 1)^2;

i=1;
while i<n+1

m(4,i)=(m(3,i+1)-m(3,i))/(m(1,i+2)-m(1,i));

i=i+1;
end
i=1;

hhh=m(4,1:n)';



