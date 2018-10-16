function c=newtonip(x,fx)
% c=newtonip(x,fx) compute the difference quotient for Newton interpolation
% input: x: nodes
%           fx: values at nodes
%output: c: difference quotients. c(1)=f(x1), c(2)=f(x2,x2), ...
%
% Su Yangfeng, 2007-08-27
n=length(x);
if (n ~= length(fx))
   error('dimension does not match');
end;
c=fx;
disp('╡Нил╠М');
for j=1:n-1
   %compute the j-th order difference quotient;
   for i=n:-1:j+1 %f(x_{i-j},x_{i-j+1},...,x_{i})
      c(i)=(c(i)-c(i-1))/(x(i)-x(i-j));
   end;
   disp(sprintf('%d╫в╡Нил', j));
   disp(c(j+1:n));
end;
