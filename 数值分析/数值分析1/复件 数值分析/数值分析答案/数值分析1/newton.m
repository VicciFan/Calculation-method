syms f x;
f=input('������f(x)=');
df=diff(f);
x0=input('�����������ֵx0=');
e1=input('�����������ж�e1=');
e2=input('��������������e2=');
N=input('���������������N=');
k=1;
while (k<N)
    x=x0;
    if abs(eval(f))<e1
        fprintf('����!\nx=%.6f\n��������Ϊ:%d\n',x0,k)
        break
    else
        x1=x0-eval(f)/eval(df);
        if abs(x1-x0)<e2
            fprintf('x=%.6f\n��������Ϊ:%d\n',x1,k)
            break
        else
            x0=x1;
            k=k+1;
        end
    end
end
if k>=N
    fprintf('ʧ��\n')
end