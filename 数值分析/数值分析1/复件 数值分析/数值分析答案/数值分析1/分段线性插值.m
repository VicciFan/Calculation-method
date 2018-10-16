syms f x p lx;
f=1/(1+25*x^2);
N=input('请输入插值节点数N=');
xx=-1:2/N:1;
p=1; L=0;
ff=zeros(1,length(xx));
for i=1:(N+1)
    x=xx(i);
    ff(i)=eval(f);
end
syms x
for i=1:N
    for j=1:(N+1)
        if j==i
            lx(i,j)=(x-xx(i+1))/(xx(i)-xx(i+1));
        else if j==i+1
                lx(i,j)=(x-xx(i))/(xx(i+1)-xx(i));
            else
                lx(i,j)=0;
            end
        end
    end
end
p=lx*ff';
aa=[-0.96:0.1:-0.06,0,0.06:0.1:0.96];
for i=1:length(aa)
    x=aa(i);
    for j=1:N+1
        if x<xx(j)
            break
        end
    end
    S(i)=eval(p(j-1));
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
    SS(i)=eval(p(j-1));
end
plot(xxx,SS,'r')
hold on
plot(xx,ff,'*')
hold on
plot(aa,S,'o')
hold off
