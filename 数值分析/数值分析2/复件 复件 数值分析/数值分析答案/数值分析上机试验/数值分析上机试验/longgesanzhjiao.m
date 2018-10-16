syms f x df s s1 s2 s3 s4;
f=1/(1+25*x^2);
df=diff(f);
N=input('请输入插值节点数N=');
h=2/N;
xx=-1:2/N:1;
p=1; L=0;
ff=zeros(1,length(xx));
for i=1:(N+1)
    x=xx(i);
    ff(i)=eval(f);
    dff(i)=eval(df);
end
syms x
for i=1:N
    s1=(x-xx(i+1))^2*(h+2*(x-xx(i)))*ff(i)/(h^3);
    s2=(x-xx(i))^2*(h+2*(xx(i+1)-x))*ff(i+1)/h^3;
    s3=(x-xx(i+1))^2*(x-xx(i))*dff(i)/h^2;
    s4=(x-xx(i))^2*(x-xx(i+1))*dff(i+1)/h^2;
    s(i)=s1+s2+s3+s4;
end
aa=[-0.96:0.1:-0.06,0,0.06:0.1:0.96];
for i=1:length(aa)
    x=aa(i);
    for j=1:N+1
        if x<xx(j)
            break
        end
    end
    S(i)=eval(s(j-1));
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
xxx=(-1:0.01:1);
for i=1:length(xxx)
    x=xxx(i);
    for j=1:N+1
        if x<xx(j)
            break
        end
    end
    SS(i)=eval(s(j-1));
end
plot(xxx,SS,'r')
hold on
plot(xx,ff,'*')
hold on
plot(aa,S,'o')
hold off

