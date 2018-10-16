syms f x p dp lx L;
f=1/(1+25*x^2);
N=input('请输入插值节点数N=');
xx=-1:2/N:1;
p=1; L=0;
ff=zeros(1,length(xx));
for i=1:(N+1)
    x=xx(i);
    ff(i)=eval(f);
    syms x;
    p=p*(x-xx(i));
end
dp=diff(p);
for j=1:(N+1)
    x=xx(j);
    k=eval(dp);
    syms x;
    lx=p/((x-xx(j))*k); 
    L=L+lx*ff(j);
end
aa=[-0.96:0.1:-0.06,0,0.06:0.1:0.96];
for i=1:length(aa)
    x=aa(i);
    S(i)=eval(L);
    fff(i)=eval(f);
end
e=0;
for i=1:length(aa)
    e=e+(S(i)-fff(i))^2;
end
e=sqrt(e/(20*21));
fprintf('插值偏差为e=%.6f\n',e)
ezplot(f,[-1,1])
hold on
ezplot(L,[-1,1])
hold on
plot(xx,ff,'*')
hold on
plot(aa,S,'o')
hold off

