function x=bisection(fun, a,b,errBound, varargin)
%使用二分法计算函数方程的零点
%输入： fun：需要计算零点的函数的地址
%       a,b：初始区间的端点
%       errBounb：最后的区间长度小于errBound
%       varargin:函数fun的形式为： y=fun(x,varargin)
%输出： x: 使用二分法所得到的零点

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
