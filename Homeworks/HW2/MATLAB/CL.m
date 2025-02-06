clear all; close all; clc;

%% HW2-Q1

Mp = 44.3; ts = 1.41; tp = 0.332;
pi = 3.14;zeta = 0.464; wn=3.4*pi; k = 1;
s = zpk('s');
ex = exp(-zeta/sqrt(1-zeta^2));


Ms = k*wn^2 / (s^2+2*zeta*wn*s+wn^2);
Ls = Ms / (1-Ms);
ex^(wn*ts) == 0.02;
ex^pi == Mp;
pi / (wn*sqrt(1-zeta^2)) == tp

Ls
Ms
%% HW2-Q2

kt = 1; kb = 5; f = 0.2; J = 1; ra = 2;
km = 0.8; ka = 1;

s = zpk('s');
Ls = (ka*km/ra*J) / (s+(ra*f+kb*km)/(ra*J))
Ms = Ls / (1+kt*Ls)
step(Ms,Ls)
legend('L(t)','M(t)');
xlabel('t');
ylabel('step response');
grid on;

syms Ls Ms
ilaplace(Ls)
ilaplace(Ms)

%% HW2-Q3

for i=1:3
omega(i) = 2/zeta(i);
k(i)=omega(i)^2;
num=k(i);
den=[1 2*zeta(i)*omega(i) k(i)];
sys=tf(num,den);
x(:,i)=step(sys,t);
end
k
 
