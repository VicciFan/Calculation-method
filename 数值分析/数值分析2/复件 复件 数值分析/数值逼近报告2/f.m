function [f] = f(x)
n=length(x);
i=1;
while i<n+1
f(i)=1/(1+x(i)^2);
i=i+1;
end