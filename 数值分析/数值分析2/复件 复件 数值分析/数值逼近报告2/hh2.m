function [hh]=hh2(x,y,t)
i=1;
n=length(x);
A=zeros(n-1);
u=zeros(n-3,1);
h=zeros(n-1,1);
r=zeros(n-3,1);

d=6*hhh2(x,y);

while i<n
    if i<n-1
   
    u(i)=1/2;
    r(i)=1/2;
    end
    if i<n-1
    A(i+1,i)=u(i);
    A(i,i+1)=r(i);
    end
    A(i,i)=2;
    i=i+1;
end
A(1,n-1)=0.5;
A(n-1,1)=0.5;
M =A\d';
i=n-1;
while i>0
M(i+1)=M(i);
i=i-1;
end
M(1)=M(n);

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
      
        
    

