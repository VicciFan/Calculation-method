function [h]=he(x,t)
n=length(x);

i=1;
while i<n+1
m(1,2*i-1)=x(i);
m(1,2*i)=x(i);
i=i+1;
end

i=1;
while i<n+1
m(2,2*i-1)=f(x(i));
m(2,2*i)=f(x(i));
i=i+1;
end

i=1;
while i<n+1
m(3,2*i-1)=-(2*x(i))/(x(i)^2 + 1)^2;
if i~=n
m(3,2*i)=(m(2,2*i+1)-m(2,2*i))/(m(1,2*i+1)-m(1,2*i));
end
i=i+1;
end
j=4;

while j<=2*n+1
    i=1;
    while i<=2*n+2-j
        m(j,i)=(m(j-1,i+1)-m(j-1,i))/(m(1,i+j-2)-m(1,i));
        i=i+1;
    end
    j=j+1;
end
l=length(t);
j=1;
while j<l+1
y=0;
k=1;
i=2;
while i<=2*n+1
    y=y+m(i,1)*k;
    k=k*(t(j)-m(1,i-1));
    i=i+1;
end
h(j)=y;
j=j+1;
end
