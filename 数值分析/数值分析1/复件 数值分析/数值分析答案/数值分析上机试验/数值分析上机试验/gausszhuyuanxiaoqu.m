A=input('请输入线性方程组的增广矩阵A=');
n=length(A)-1;
x=zeros(n,1);
aa=zeros(n,1);
for j=1:n
    for i=1:(n+1)
        AA(j,i)=abs(A(j,i));
    end
end
for k=1:(n-1)
    for i=k:n
        aa(i-(k-1))=AA(i,k);
    end
    for i=k:n
        if AA(i,k)==max(aa)
            break
        end
    end
    if AA(i,k)==0
        break
        fprintf('方程组系数矩阵奇异\n');
    else
        for j=k:(n+1)
            jh=A(i,j);
            A(i,j)=A(k,j);
            A(k,j)=jh;
        end
    end
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
end
if k==(n-1)
    x(n)=A(n,(n+1))/A(n,n);
    for i=(n-1):(-1):1
        he=0;
        for j=(i+1):n
            he=he+A(i,j)*x(j);
        end
        x(i)=A(i,(n+1))-he;
    end
end
x

    
    
    
    