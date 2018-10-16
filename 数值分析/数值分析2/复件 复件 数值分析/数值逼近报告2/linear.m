function [li] = linearrr(x,y,t)
n=length(x);
l=length(t);
m=1;
while m<l+1
a=-inf;
b=inf;
i=1;
c=0;
d=0;
e=0;
while i<n+1
    if x(i)<t(m) & x(i)>a
        a=x(i);
        c=i;
    elseif x(i)>t(m) & x(i)<b
        b=x(i);
        d=i;
    elseif x(i)==t(m) 
            li(m)=y(i);
            e=1;
            break
    end
    i=i+1;
end
if e==0
li(m)= y(c)+ (y(d)-y(c))*(t(m)-a)/(b-a);
end
m=m+1;
end