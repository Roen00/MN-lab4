clc; clear all;

%modul bledu!
%wartosc dokladna
d = -sqrt(2)*log((9 - 4*sqrt(2))/7);


nVector = arrayfun(@(n) 2.^n, 3:10);

b = 0.5;
a = -0.5;
f = @(x) 2/(2-x^2);

pResult = arrayfun(@(n) P(b, a, n, f), nVector);
tResult = arrayfun(@(n) T(b, a, n, f), nVector);
sResult = arrayfun(@(n) S(b, a, n, f), nVector);
calculateError = @(result) abs(d-result);

pError = arrayfun(calculateError, pResult)
tError = arrayfun(calculateError, tResult)
sError = arrayfun(calculateError, sResult)