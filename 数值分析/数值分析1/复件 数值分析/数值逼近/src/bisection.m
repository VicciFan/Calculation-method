function x=bisection(fun, a,b,errBound, varargin)
%ʹ�ö��ַ����㺯�����̵����
%���룺 fun����Ҫ�������ĺ����ĵ�ַ
%       a,b����ʼ����Ķ˵�
%       errBounb���������䳤��С��errBound
%       varargin:����fun����ʽΪ�� y=fun(x,varargin)
%����� x: ʹ�ö��ַ����õ������

if b<a
    error('b should be greater than a');
end;
fa=feval(fun,a,varargin{:});
fb=feval(fun,b,varargin{:});
if fa*fb>0
    error('f(a) and f(b) should have opposite sign');
end;
while b-a>errBound
    c=(a+b)/2;
    fc=feval(fun,c,varargin{:});
    if fc==0
        x=c;
        return;
    end;
    if fa*fc>0
        a=c;
        fa=fc;
    else
        b=c;
        fb=fc;
    end;
end;
x=c;
