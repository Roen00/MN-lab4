function [ result ] = P( b, a, n, f )
hp = (b-a)/(2*n);
y = arrayfun(f, a:hp:b);
w2 = sum(y(2:2:length(y)));

result = 2*hp*w2;
end
