function [jj]= jj(x,y)
n=length(x);
i=1;
while i<n+1
    jj(3*i-2)=x(i)-y;
    jj(3*i-1)=x(i);
    jj(3*i)=x(i)+y;
    i=i+1;
end