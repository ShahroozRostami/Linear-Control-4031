clc
clear all
close all

s=tf('s');
num1=5*(s+1)*exp(-2*s);
den1=s*(5*s+1);
G1=num1/den1;
subplot(1,2,1)
nyquist(G1)
subplot(1,2,2)
bode(G1)