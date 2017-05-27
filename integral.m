function integral (fig, b, a, f ,d)
nVector = arrayfun(@(n) 2.^n, 3:10);


pResult = arrayfun(@(n) P(b, a, n, f), nVector);
tResult = arrayfun(@(n) T(b, a, n, f), nVector);
sResult = arrayfun(@(n) S(b, a, n, f), nVector);
calculateError = @(result) abs((result-d)/d);

pError = arrayfun(calculateError, pResult);
tError = arrayfun(calculateError, tResult);
sError = arrayfun(calculateError, sResult);

hp = arrayfun(@(n) (b-a)/(2*n), nVector);
figure(fig)
loglog(hp, pError, "+", hp, tError, "*", hp, sError, "^")
legend("metoda prostokatow",
       "metoda trapezow",
       "metoda simpsona",
       'Location','northwest'
       )
end