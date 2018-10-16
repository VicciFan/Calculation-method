syms f x;
f=input('请输入f(x)=');
df=diff(f);
x0=input('请输入迭代初值x0=');
e1=input('请输入奇异判断e1=');
e2=input('请输入根的误差限e2=');
N=input('请输入迭代次数限N=');
k=1;
while (k<N)
    x=x0;
    if abs(eval(f))<e1
        fprintf('奇异!\nx=%.6f\n迭代次数为:%d\n',x0,k)
        break
    else
        x1=x0-eval(f)/eval(df);
        if abs(x1-x0)<e2
            fprintf('x=%.6f\n迭代次数为:%d\n',x1,k)
            break
        else
            x0=x1;
            k=k+1;
        end
    end
end
if k>=N
    fprintf('失败\n')
end