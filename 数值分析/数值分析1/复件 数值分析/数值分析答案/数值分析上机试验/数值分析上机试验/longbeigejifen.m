syms f x;
f=input('��������ֺ���f=');
A=input('�������������[a,b]=');
e=input('�����������e=');
x=A(1);
fa=eval(f);
x=A(2);
fb=eval(f);
T(1)=(A(2)-A(1))*(fa+fb)/2;
m=1;
x=(A(1)+A(2));
t=T(1)/2+(A(2)-A(1))*eval(f)/2;
while abs(t-T(1))>e
    t=T(1);
    new=0;
    for i=1:(2^m)
        x=A(1)+(2*i-1)*(A(2)-A(1))/(2^(m+1));
        new=new+eval(f);
    end
    T(m+1)=T(m)/2+(A(2)-A(1))*new/(2^(m+1));
    for i=m:(-1):1
        L(m,i)=T(i);
    end
    for p=m:(-1):1
        T(p)=((4^(m+1-p))*T(p+1)-T(p))/(4^(m+1-p)-1);
    end
    m=m+1;
end
fprintf('��ֵ���ֽ��ΪT(1)=%.8f\n',T(1));
fprintf('������%d�ε���\n',m);