clear all
close all
clc
s=tf('s');
num1=5*(exp(-2*s))*(s+1);
den1=s*(5*s+1);
G=num1/den1
bode(G)

