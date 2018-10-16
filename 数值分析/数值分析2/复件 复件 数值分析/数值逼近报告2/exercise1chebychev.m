subplot(2,2,1);plot([-5:0.1:5],lagrange(cheb(5),f(cheb(5)),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')
subplot(2,2,2);plot([-5:0.1:5],lagrange(cheb(10),f(cheb(10)),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')
subplot(2,2,3);plot([-5:0.1:5],lagrange(cheb(15),f(cheb(15)),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')
subplot(2,2,4);plot([-5:0.1:5],lagrange(cheb(20),f(cheb(20)),[-5:0.1:5]))
hold on;
plot([-5:0.1:5],f([-5:0.1:5]),'red')