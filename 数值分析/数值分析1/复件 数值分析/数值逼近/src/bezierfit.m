function [x,y,fiterror]=bezierfit(xx,yy,n)
%function [x,y]=bezierfit(xx,yy,n)
% input: [xx,yy], fitting points
%         n, number of ctrl points-1
% output: [x,y], ctrl points
%              fiterror: Îó²î

m=length(xx);
%parameterize
t=zeros(m,1);
l=0;
for j=2:m
   t(j)=norm([xx(j),yy(j)]-[xx(j-1)-yy(j-1)],2);
   l=l+t(j);
   t(j)=t(j)+t(j-1);
end;
for j=2:m
   t(j)=t(j)/l;
end;

c=zeros(n+1,1); %c_(i+1)=c(n,i);
c(1)=1;
for i=1:n
   c(i+1)=c(i)*(n-i+1)/i;
end;

B=zeros(n+1,m); 
%c=1;
%
for j=1:m
   for i=0:n      
      B(i+1,j)=power(t(j),i)*power(1-t(j),n-i);
   end;   
end;
for i=0:n
   B(i+1,:)=B(i+1,:)*c(i+1);
end;
s=B'\[xx,yy]; %control points
e=B'*s-[xx,yy]; %fit error
fiterror=max(sqrt(e(:,1).*e(:,1)+e(:,2).*e(:,2)));
x=s(:,1);
y=s(:,2);
return;

function x=power(t,i)
if i==0
   x=ones(size(t));
else
   x=t^i;
end;
return;