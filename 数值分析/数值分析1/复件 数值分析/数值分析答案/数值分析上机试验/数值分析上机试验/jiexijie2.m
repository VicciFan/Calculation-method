syms sv x
jx=[0,1.5];
sv=dsolve('Dy=(y-2*x/y)','y(0)=1','x');
xxx=jx(1):0.01:jx(2);
for n=1:length(xxx)
x=xxx(n);
yyy(n)=eval(sv);
end
plot(xxx,yyy)