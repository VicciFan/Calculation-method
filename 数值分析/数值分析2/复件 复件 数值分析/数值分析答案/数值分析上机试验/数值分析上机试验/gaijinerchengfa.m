syms x f nihef nihe;
xx=input('请输入插值节点 as [x1,x2...]\n');
ff=input('请输入插值节点处对应的函数值 as [f1,f2...]\n');
n=length(xx);
for m=1:(n-1)
    for i=1:(m+1)
        syms fai x;
        fai=x^(i-1);
        for j=1:n
                x=xx(j);
                H(i,j)=eval(fai);
        end 
    end 
    A=ff*(H)'*inv(H*(H)');
    syms x f; f=0;
    for i=1:(m+1)
        f=f+A(i)*x^(i-1);
    end
    nihef(m)=f;
    for i=1:n
        x=xx(i);
        niheff(i)=eval(f);
        ee(i)=ff(i)-niheff(i);
    end
    e(m)=0;
    for i=1:(n-1)
        e(m)=(ee(i))^2+e(m);
    end
    e(m)=sqrt(e(m)/(n*(n-1)));
    eee(m)=1/e(m);
end
for k=1:n
    if eee(k)==max(eee);
        break
    end
end
syms x;
nihe=nihef(k);
emcino=e(k);
plot(xx,ff,'*')
hold on
ezplot(nihe,[xx(1),xx(n)])
fprintf('插值误差为e=%.6f',emcino)