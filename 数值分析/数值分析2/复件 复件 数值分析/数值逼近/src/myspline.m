function yy=myspline(x,y,xx,type,d);
%function yy=myspline(x,y,xx,type,d);
%    for given nodes and type, construct cubic spline.
%input:
%    x,y: given nodes vector and function value vector;
%    xx: the point vector on which the value of sp will be comuted;
%    type: string among: 'd1', 'd2','periodic', which corresponding to
%          D1 spline, D2 spline, periodic spline; other string will be
%          rejected as unknown type.
%    d: a vector consists two components of: if type='d1', then two
%       derivative value; if type='d2', then two 2nd derivative values;
%       if type='periodic', this vector is ignored. If you wants to get
%       natural spline, then input type='d2' and d=[0,0];
%output:
%    yy: the values of cubic spline on xx.
%
%Copyright: Su Yangfeng

x=x(:);
n=length(x);
if strcmpi(type,'periodic')
    y(n)=y(1);
end;
tx=[x;x(n)+x(2)-x(1)];
dq=[y;y(2)];
for i=1:2
   for j=n+1:-1:i+1
      dq(j)=(dq(j)-dq(j-1))/(tx(j)-tx(j-i)); 
   end;
end;
%dq(j)=f(x(j-2),x(j-1),x(j))
%dq(n+1) is used only for type='periodic' case

mu=x;
lambda=x;

for i=2:n-1
   mu(i)=(x(i)-x(i-1))/(x(i+1)-x(i-1));
   lambda(i)=1-mu(i);
end;

A=2*eye(n,n);
for i=2:n-1
   A(i,i-1)=mu(i);
   A(i,i+1)=lambda(i);
end;

rh=zeros(n,1);
for i=2:n-1
   rh(i)=6.0*dq(i+1);
end;

switch lower(type)
case 'd1'
   A(1,2)=1;
   z=x(1)-x(2);
   rh(1)=6*(d(1)-(y(1)-y(2))/z)/z; %6*f(x(1),x(1),x(2));
   A(n,n-1)=1;
   z=x(n)-x(n-1);
   rh(n)=6*(d(2)-(y(n)-y(n-1))/z)/z; %6*f(x(n-1),x(n),x(n));
case 'd2'
   A(1,1)=1;
   A(n,n)=1;
   rh(1)=d(1);
   rh(n)=d(2);   
case 'nature'
   A(1,1)=1;
   A(n,n)=1;
   rh(1)=0.;
   rh(n)=0.;
case 'periodic'
   A(1,1)=1;
   A(1,n)=-1;
   rh(1)=0;
   A(n,2)=(x(2)-x(1))/(x(n)-x(n-1)+x(2)-x(1));
   A(n,n-1)=1-A(n,2);
   rh(n)=6.0*dq(n+1);
otherwise
   error('Unknown spline type');
end;

M=A\rh
c=zeros(n-1,4); %in interval [x(i),x(i+1)], polynormial is c(i,1)+c(i,2)(x-x(i))+c(i,3)*(x-x(i))^2+c(i,4)(x-x(i))^3
for i=1:n-1
   z=x(i+1)-x(i);
   c(i,1)=y(i);
   c(i,2)=(y(i+1)-y(i))/z-(M(i+1)/6+M(i)/3)*z;
   c(i,3)=0.5*M(i);
   c(i,4)=(M(i+1)-M(i))/z/6;
end;
m=length(xx);
yy=zeros(m,1);

for i=1:m
    if xx(i)<=x(2)
        index=1;
    elseif xx(i)>=x(n-1)
        index=n-1;
    else
        for j=2:n-2
            if xx(i)>=x(j) & xx(i)<=x(j+1)
                index=j;
                break;
            end;
        end;
    end;
   %xx(i) is in [x(index),x(index+1)]
   z=xx(i)-x(index);
   yy(i)=((c(index,4)*z+c(index,3))*z+c(index,2))*z+c(index,1);
end;
return;

   
   


