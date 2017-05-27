clc; clear all;

integral(1,
  0.5,
  -0.5,
  @(x) 2/(2-x^2),
  -sqrt(2)*log((9 - 4*sqrt(2))/7)
  )
  
  
integral(2,
  1,
  -1,
  @(x) 1/(sqrt(x*x+0.0001)),
  2 * log(sqrt(10001) + 100)
  )
  
  
integral(3,
  2*pi,
  pi,
  @(x) x*sin(30*x)*cos(x),
  -(90*pi) / 899
  )
