clc; clear all;

wartoscDokladna = -sqrt(2)*log((9 - 4*sqrt(2))/7);

b = 0.5;
a = -0.5;
n = 2.^3;
f = @(x) 2/(2-x^2);

hp = (b-a)/(2*n);

y = arrayfun(f, a:hp:b);

w1 = y(1) + y(end);
w2 = sum(y(2:2:length(y)));
w3 = sum(y(3:2:length(y) - 1));

P = 2*hp*w2;
T = 2*hp*(w1/2 + w3);
S = hp/3*(w1 + 4*w2 + 2*w3);

P
T
S
