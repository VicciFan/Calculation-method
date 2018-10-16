
function yy=polyeval(x,c,xx)
%计算多项式的值，该多项式是由牛顿或hermit插值所得
% 多项式：c(1)+c(2)(t-x(1))+c(3)(t-x(1))(t-x(2))+...+c(n+1)(x-x(1))...(x-x(n))
%输入： x,c:多项式的系数及节点
%             xx:需求值的点
% 输出： 多项式在xx上的值

n=length(x)-1;
yy=c(n+1)*ones(size(xx));
for k=n:-1:1
    yy=yy.*(xx-x(k))+c(k);
end;
return;