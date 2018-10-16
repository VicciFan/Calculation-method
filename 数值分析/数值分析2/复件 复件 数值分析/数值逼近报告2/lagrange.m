function [yy] = lagrange (x ,y , xx)
n=length(x);
l=length(xx);
j=1;
while j<l+1
k=1;
sum1=0;
while k < n+1
    b=qqkk(k ,xx ,x);
    sum1 = sum1 + y(k)*(b(j));
    k=k+1;
end
yy(j)=sum1;
j=j+1;
end