function t=parameterize(X);
%将一些点参数化
%输入： X: Nxd, N是点数，d代表这些点是d维空间中的点
n=size(X,1);
t=zeros(n,1);
for i=2:n
    t(i)=norm(X(i,:)-X(i-1,:));
end;
t=cumsum(t);
t=t/t(n);
return;
