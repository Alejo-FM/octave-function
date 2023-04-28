
# Primer Ejericio

f = @(x,y) 2 * x.^2 + (y - 1).^2 - 2
g = @(x,y) 3 * x.^2 - 2 * x * x - 6 * y.^2 + 3

function [y, jac] = f(x)
  y = zeros (2, 1);
  y(1) = 2 * x(1)^2 + (x(2) - 1)^2 - 2;
  y(2) = 3 * x(1)^2 - 2 * x(1) * x(2) - 6 * x(2)^2 + 3;

  jac = zeros (2, 2);
  jac(1,1) = 4*x(1);
  jac(1,2) = 2 * (x(2) - 1) * 1;
  jac(2,1) = 6 * x(1) - 2 * x(2) ;
  jac(2,2) = - 2 * x(1) - 12 * x(2) ;

endfunction

# Segundo Ejercicio 

f = @(x,y) 3 * x.^3 - y.^2
g = @(x,y) 3 * x * y.^2 - x.^3 -1

function [y, jac] = f(x)
  y = zeros (2, 1);
  y(1) = 3 * x(1)^3 - x(2)^2;
  y(2) = 3 * x(1) * x(2)^2 - x(1)^3 -1;

  jac = zeros (2, 2);
  jac(1,1) = 9*x(1)^2;
  jac(1,2) = -2 * x(2);
  jac(2,1) = 3* x(2)^2 - 3 * x(1)^2 ;
  jac(2,2) = 6* x(1)* x(2) ;

endfunction

# Tercer Ejercicio

function [y, jac] = f(x)
  y = zeros (3, 1);
  y(1) =  x(1)^2 + x(2)^2 - x(3) - 2;
  y(2) =  x(1)^2 - x(2)^2 - x(3);
  y(3) =  3 * x(1) + 2 * x(2) - 6 * x(3);

  jac = zeros (3, 3);
  jac(1,1) = 2 * x(1);
  jac(1,2) = 2 * x(2);
  jac(1,3) = -1;
  jac(2,1) = 2 * x(1);
  jac(2,2) = -2 * x(2);
  jac(2,3) = -1;
  jac(3,1) = 3;
  jac(3,2) = 2;
  jac(3,3) = -6;

endfunction