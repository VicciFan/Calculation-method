function [hh]=hh(x,y,t)
i=1;
n=length(x);
A=zeros(n);
u=zeros(n-2,1);
h=zeros(n,1);
r=zeros(n-2,1);
d=6*hhh(x);

while i<n+1
     
    if i<n-1
   
    u(i)=1/2;
    r(i)=1/2;
    end
    if i<n-1
    A(i+1,i)=u(i);
    A(i+1,i+2)=r(i);
    end
    A(i,i)=2;
    if i==1
    A(i,i+1)=1;
    end
    if i==n
        A(i,i-1)=1;
    end 
    i=i+1;
end
M=inv(A)*d;

l=length(t);

j=1;
while j<l+1
    i=1;
    while i<n-1 && x(i+1)<=t(j)
        i=i+1;
    end
    hh(j)=y(i)+(y(i+1)-y(i))*(t(j)-x(i))/(x(i+1)-x(i))-(1/6*M(i+1)+1/3*M(i))*(x(i+1)-x(i))*(t(j)-x(i))+M(i)/2*(t(j)-x(i))^2+1/6*(M(i+1)-M(i))/(x(i+1)-x(i))*(t(j)-x(i))^3;
    j=j+1;
end
      
        
    

