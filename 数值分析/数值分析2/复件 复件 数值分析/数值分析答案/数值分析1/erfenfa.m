syms f x;
f=input('������f(x)=');
A=input('��������Ĺ��Ʒ�Χ[a,b]=');
e=input('��������������e=');
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
