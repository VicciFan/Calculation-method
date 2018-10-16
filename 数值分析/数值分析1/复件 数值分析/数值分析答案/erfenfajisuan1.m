%二分法计算方程%
clear
clc
format  long
a=1;b=2;e=0.5e-5;s=b-a;i=1;
E= zeros(1,1000);
while(s>e)    %循环
    E(i)=(a+b)/2;    %中点
        f=sin(a)-a^2/2;
        g=f;
        f=sin(E(i))-E(i)^2/2;h=g*f;
           if  (f~=0)
               if  (h>0)
               a=E(i);
               else b=E(i);
               s=abs(b-a);
               end
               else E(i)
           end
           i=i+1;
end
  disp(a)
  disp(b)
disp((a+b)/2) 
disp(E(1:20))
       
    