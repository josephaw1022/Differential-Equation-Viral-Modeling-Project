
clear all
x0 = [350000000000 0 0.093 1 ];

options = odeset('RelTol',1e-18);
tspan =[1 7];
[t,x] = ode15s(@odetest_NEW,tspan, x0, options);
hold on;


 plot(t,x(:,1));
% legend('x1','x1','x2');
