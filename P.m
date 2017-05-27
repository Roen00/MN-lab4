function [ result ] = P( b, a, n, f )
hp = (b-a)/(2*n);
y = arrayfun(f, a:hp:b);
%w1 = y(1) + y(end);
w2 = sum(y(2:2:length(y)));
%w3 = sum(y(3:2:length(y) - 1));

result = 2*hp*w2;
end
