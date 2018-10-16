syms x f;
xx=input('请输入插值节点 as [x1,x2...]\n');
ff=input('请输入插值节点处对应的函数值 as [f1,f2...]\n');
m=input('请输入要求的插值次数m=');
n=length(xx);
for i=1:(m+1)
    syms fai x;
    fai=x^(i-1);
    for j=1:n
        x=xx(j);
        H(i,j)=eval(fai);
    end
end 
A=ff*(H)'*inv(H*(H)');
syms x; f=0;
for i=1:(m+1)
    f=f+A(i)*x^(i-1);
end
plot(xx,ff,'*')
hold on 
ezplot(f,[xx(1),xx(n)])
