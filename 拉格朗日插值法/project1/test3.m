n = 20;
h = 2.0/n;
x = -1:h:1;
y = 1./( 1 + x.^2 );
xx = [-0.95 -0.05 0.05 0.95];
yy = 1./( 1 + xx.^2 );
p = LagrInterp(x,y,xx);
disp(yy);
disp(p);
figure(1);
plot(xx,yy,xx,p,'ro');
legend('f(x)','Pn(x)');
%dlmwrite('f(x).txt',yy);
%dlmwrite('P(x).txt',p);

