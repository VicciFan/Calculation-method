function t=parameterize(X);
%��һЩ�������
%���룺 X: Nxd, N�ǵ�����d������Щ����dά�ռ��еĵ�
n=size(X,1);
t=zeros(n,1);
for i=2:n
    t(i)=norm(X(i,:)-X(i-1,:));
end;
t=cumsum(t);
t=t/t(n);
return;
