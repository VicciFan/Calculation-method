function [ff]= ff(x,y)
m=2;
n=length(x);
k=gg(x,y);
ff(1)=(k(1)-(-2/(1+x(1)^2)))/(x(2)-x(1));
while m<n+1
    if m==n
        ff(m)=(-2/(1+x(m)^2)-k(m-1))/(x(m)-x(m-1));
    else
ff(m)=(k(m)-k(m-1))/(x(m+1)-x(m-1));
    end
m=m+1;
end