x = [36 49 64];
y = sqrt(x);
xx = [5 50 115 185];
yy = sqrt(xx);
p = LagrInterp(x,y,xx);
disp(yy);
disp(p);
figure(1);
plot(xx,yy,xx,p,'r');
legend('f(x)','Pn(x)');