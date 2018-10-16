syms f x;
f=input('请输入f(x)=');
A=input('请输入根的估计范围[a,b]=');
e=input('请输入根的误差限e=');
while (A(2)-A(1))>e
    c=(A(1)+A(2))/2;
    x=A(1);
    f1=eval(f);
    x=c;
    f2=eval(f);
    if (f1*f2)>0
        A(1)=c;
    else
        A(2)=c;
    end
end
c=(A(1)+A(2))/2;
fprintf('c=%.6f\na=%.6f\nb=%.6f\n',c,A)
