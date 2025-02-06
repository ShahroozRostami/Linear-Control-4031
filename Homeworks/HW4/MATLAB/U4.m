clear all
close all
clc
s=tf('s');
num1=-(s+1)*(s+2)*(s+3)*(s+4);
den1=(s*s*s)*(s+100);
G=num1/den1
nyquist(G)

