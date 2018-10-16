function c=hermitip(x,fx)
% function c=hermitip(x,fx);
% This function is used to compute the coefficient of
% Hermitian interpolating polynomial
%
% input: x nodes
%        fx values of f at x. if x(i-1)<x(i)=x(i+1)=...=x(i+k)<x(i+k+1)
%           then fx(i)=f(x(i)); fx(i+1)=f'(x(i)); fx(i+2)=f''(x(i));....
% output: c the coefficient, p(x)=c(1)+c(2)(x-x(1))+c(3)(x-x(1))(x-x(2))+...
%
% Su Yangfeng, 2007-09-19

n=length(x);
if (n ~= length(fx))
   error('dimension does not match');
end;
c=fx;
d=ones(n,1);
for i=2:n
   if x(i)==x(i-1)
      c(i)=c(i-1);
      d(i)=d(i-1);
   else
      d(i)=i;
   end;
end;


orderj=1; % j!
for j=1:n-1
   %compute the j-th order different quotient;
   orderj=orderj*j;
   for i=n:-1:j+1 %f(x_{i-j},x_{i-j+1},...,x_{i})
      if x(i)==x(i-j)
         c(i)=fx(d(i)+j)/orderj; %f^{(n)}(x(d(i))) / j!
      else
         c(i)=(c(i)-c(i-1))/(x(i)-x(i-j));
      end;      
   end;
end;
