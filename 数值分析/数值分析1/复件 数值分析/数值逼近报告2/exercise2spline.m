subplot(2,2,1);plot([-5:0.1:5],spline([-5:10/5:5],f([-5:10/5:5]),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')
subplot(2,2,2);plot([-5:0.1:5],spline([-5:10/10:5],f([-5:10/10:5]),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')
subplot(2,2,3);plot([-5:0.1:5],spline([-5:10/15:5],f([-5:10/15:5]),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')
subplot(2,2,4);plot([-5:0.1:5],spline([-5:10/20:5],f([-5:10/20:5]),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')