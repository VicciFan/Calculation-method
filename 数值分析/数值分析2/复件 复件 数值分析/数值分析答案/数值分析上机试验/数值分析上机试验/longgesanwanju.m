syms f x ddf s;
f=1/(1+25*x^2);
ddf=diff(diff(f));
N=input('请输入插值节点数N=');
h=2/N;
xx=-1:2/N:1;
p=1; L=0;
ff=zeros(1,length(xx));
for i=1:(N+1)
    x=xx(i);
    ff(i)=eval(f);
    ddff(i)=eval(ddf);
end
syms x
for i=1:N
    A=(ff(i+1)-ff(i))/h-h*(ddff(i+1)-ddff(i))/6;
    B=ff(i)-h^2*ddff(i)/6;
    s(i)=(xx(i+1)-x)^3*ddff(i)/(6*h)+(x-xx(i))^3*ddff(i+1)/(6*h)+A*(x-xx(i))+B;
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

