A=input('���������Է�������������A=');
n=length(A)-1;
x=zeros(n,1);
for k=1:(n-1)
    if A(k,k)==0
        break
        fprintf('�����鲻������ͨ�ĸ�˹��ȥ����\n');
    else
        fenzi=A(k,k);
        for j=k:(n+1)
            A(k,j)=A(k,j)/fenzi;
        end
        for p=(k+1):n
            jj=A(p,k);
            for j=k:(n+1)
                A(p,j)=A(p,j)-jj*A(k,j);
            end
        end
        x(n)=A(n,(n+1))/A(n,n);
        for i=(n-1):(-1):1
            he=0;
            for j=(i+1):n
                he=he+A(i,j)*x(j);
            end
            x(i)=A(i,(n+1))-he;
        end
    end
end
x

    
    
    
    