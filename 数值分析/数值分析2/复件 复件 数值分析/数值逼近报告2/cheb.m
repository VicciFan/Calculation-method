function [z] = cheb(n)
i=0;
while i<n+1
z(i+1)=5*cos(pi*(2*i+1)/(2*(n+1)));
i=i+1;
end