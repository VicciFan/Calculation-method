function [h]=h(y,t)
n=length(y);
l=length(t);
m=1;
while m<l+1
a=-inf;
b=inf;
i=1;
e=0;
while i<n+1
    if y(i)<t(m) & y(i)>a
        a=y(i);
    elseif y(i)>t(m) & y(i)<b
        b=y(i);
    elseif y(i)==t(m) 
            h(m)=1/(1+t(m)^2);
            e=1;
            break
    end
    i=i+1;
end
if e==0
    h(m)=he([a,b],t(m));
end
m=m+1;
end