syms sv x
jx=[-1,0];
sv=dsolve('Dy=(x^2-y^2)','y(-1)=0','x');
xxx=jx(1):0.01:jx(2);
for n=1:length(xxx)
x=xxx(n);
yyy(n)=eval(sv);
end
plot(xxx,yyy)