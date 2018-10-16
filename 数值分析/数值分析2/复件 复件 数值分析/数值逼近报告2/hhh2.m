function hhh=hhh2(x,y)
n=length(x);
i=1;
while i<n-1
    hhh(i)=((y(i+1)-y(i))/(x(i+1)-x(i))-(y(i+2)-y(i+1))/(x(i+2)-x(i+1)))/(x(i)-x(i+2));
    i=i+1;
end
hhh(n-1)=((y(n)-y(n-1))/(x(n)-x(n-1))-(y(2)-y(n))/(x(2)-x(1)))/(x(n-1)-(x(n)+x(2)-x(1)));
