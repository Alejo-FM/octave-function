function [X,niter] = newtonRaphson(x,tol)
% Metodo de Newton para sistemas de ecuaciones no lineales
% fi(x1,x2,...,xn) = 0, i = 1,2,...,n.

% Verifica si se proporciona la tolerancia, de lo contrario establece un valor predeterminado
if nargin == 1; tol = 1.0e4*eps; end

% Asegura que el vector de soluciones iniciales sea un vector columna
if size(x,1) == 1; x = x'; endif  

% Inicializa el vector de soluciones y el error
X=x; E=1.0;

% Bucle principal del método de Newton-Raphson
for i = 1:100
   % Calcula la función y el Jacobiano
   [y, jac] = f(x);
   
   % Resuelve el sistema lineal y obtiene el paso
   dx = jac\(-y);
   
   % Actualiza el vector de soluciones
   x = x + dx;
   
   % Almacena el vector de soluciones y el error
   X=[X,x];
   err=norm(dx,inf);
   E=[E;err];

   % Verifica si se alcanza la tolerancia deseada y detiene el bucle si es así
   if  err< tol
       break
   end
end

% Asigna el número de iteraciones y devuelve el vector de soluciones y el error
niter=i; X=[X' E];
endfunction
