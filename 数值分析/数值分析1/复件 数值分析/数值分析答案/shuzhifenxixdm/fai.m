function y=fai(x,y)
  y=1;
  for i=1:j
      y=x.*y;
  end
 clear
s=[3 4 5 6 7 8 9];
f=[2.01 2.98 3.50 5.02 5.47 6.02 7.05];
n=length(f);
m=10;
for k=0:m;
    g=zeros(1,m+1);
    for j=0:m;
    t=0;
    for i=1:n;
        t=t+fai(s(i),j)*fai(s(i),k);
    end
    g(j+1)=t;
    A(k=1;:)=g;
    t=0;
    for i=1:n;
        t=t+f(i)*fai(s(i),k);
    end
    b(k+1,1)=t
       a=A\b
    x=[s(1):0.01:s(n)]';
    y=0;
    for i=0:m;
        y=y+a(i+1)*fai(x,i);
    end
    plot(x,y)
    grid on
    hold on
    plot(s,f,'rx')