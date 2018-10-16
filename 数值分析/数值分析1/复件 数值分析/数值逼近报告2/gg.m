function [gg]= gg(x,y)
i=1;
n=length(x);
while i<n
    gg(i)=(y(i+1)-y(i))/(x(i+1)-x(i));
    i=i+1;
end

    