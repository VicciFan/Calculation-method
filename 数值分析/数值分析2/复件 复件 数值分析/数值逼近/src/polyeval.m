
function yy=polyeval(x,c,xx)
%�������ʽ��ֵ���ö���ʽ����ţ�ٻ�hermit��ֵ����
% ����ʽ��c(1)+c(2)(t-x(1))+c(3)(t-x(1))(t-x(2))+...+c(n+1)(x-x(1))...(x-x(n))
%���룺 x,c:����ʽ��ϵ�����ڵ�
%             xx:����ֵ�ĵ�
% ����� ����ʽ��xx�ϵ�ֵ

n=length(x)-1;
yy=c(n+1)*ones(size(xx));
for k=n:-1:1
    yy=yy.*(xx-x(k))+c(k);
end;
return;