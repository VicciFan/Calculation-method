function [xx,yy]=mybezier(x,y,numpoints)
n=length(x);
if (length(y) ~= n)
   error('Dimensions of x and y do not match.');
end;
xx=zeros(numpoints,1);
yy=xx;
h=1/(numpoints-1);
for i=1:numpoints
   ctrlpnt=[x,y];
   t=(i-1)*h;
   for k=1:n-1
      for j=1:n-k
         ctrlpnt(j,:)=ctrlpnt(j,:)+t*(ctrlpnt(j+1,:)-ctrlpnt(j,:));
      end;
   end;
   xx(i)=ctrlpnt(1,1);
   yy(i)=ctrlpnt(1,2);
end;
return;

