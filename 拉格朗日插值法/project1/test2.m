n = 20;
x = -1:2/n:1;
y = exp(x);
xx = [-0.95 -0.05 0.05 0.95];
yy = exp(xx);
p = LagrInterp( x,y,xx );
disp(yy);
disp(p);
figure(1);
plot(xx,yy,xx,p,'ro');
legend('f(x)','Pn(x)');