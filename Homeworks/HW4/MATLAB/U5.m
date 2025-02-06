clear all
close all
clc
s=tf('s');
num1=0.1*(0.1*s+1);
den1=(0.01*s+1);
G=num1/den1
subplot(1,2,1)
bode(G)
grid on
subplot(1,2,2)
nyquist(G)
grid on
