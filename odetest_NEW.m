function xprime = odetest_NEW(t,x)

%%%%% VARIABLES %%%%% 

beta = 8.3*10^-6;
delta = 4; %2; 
p = 7.7*10^-5; 
q = 6.1*10^-10; 
c = 20; 
d = 0.85; 

L = 10;
m = 2*10^11; 
omega = 0.01; 


t1 = 0; % between 0 and 7
t2 = 0; % between 0 and 7
k1 = 0; 
gamma = 0; 
epsilon1 = 0; %between 0 and 1
epsilon2 = 0; %between 0 and 1

% k2
if (x(4) < L) 
    k2 = 0;
else
    k2 = x(4) * gamma;
end

% s
if (x(1) < m) 
    s = 0;
else
    s = omega;
end

% fepsilon1
if (t < t1) 
    fepsilon1 = 0;
else
    fepsilon1 = epsilon1;
end

% fepsilon2
if (t < t2) 
    fepsilon2 = 0;
else
    fepsilon2 = epsilon2;
end

%x(1)=T
%x(2)=I
%x(3)=V
%x(4)=F

%%%%% FUNCTIONS %%%%%

    xprime=zeros(4,1);
xprime(1) = s*x(1) - beta*x(3)*x(1) - k2*x(1);
xprime(2) = beta*x(3)*x(1) - delta*x(2) - k1*x(2)*x(4);
xprime(3) = p*(1-fepsilon1)*x(2) - c*x(3);
xprime(4) = q*(1-fepsilon2)*x(2) - d*x(4);

end







