function [qk] = qqkk (k, xx,x)
j=1;
l=length(xx);
while j<l+1
i=1;
q=1;
p=1;
n=length(x);
while i< n+1
    if i==k
        i=i+1;
    else
    p=p*(xx(j)-x(i));
    i=i+1;
    end
end
i=1;
while i< n+1
    if i==k
        i=i+1;
    else
    q=q*(x(k)-x(i));
    i=i+1;
    end
end
qk(j)=p/q;
j=j+1;
end