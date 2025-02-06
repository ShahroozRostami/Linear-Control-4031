clearvars;
close all;
clc;
s = zpk('s');
g= 2500 / (s * (s + 5))
gc1= (1 + s / 38.25) / (1 + s / 94.1)
gc2= (1 + s / 2.1) / (1 + s / 0.59)
figure
bode(g)
margin(g)
figure
nichols(g)
grid on;
figure
bode(g * gc1)
margin(g * gc1)
figure
nichols(g * gc1)
grid on;
figure
bode(g * gc2)
margin(g * gc2)
figure
nichols(g * gc2)
grid on;