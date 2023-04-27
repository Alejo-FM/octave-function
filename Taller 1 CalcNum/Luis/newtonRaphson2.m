function [raiz,niter] = newtonRaphson2(func,x,tol)
% Métod de Newton para sistemas de ecuaciones no lineales
% fi(x1,x2,...,xn) = 0, i = 1,2,...,n.
% .......
% root =  vector solución.

if nargin == 2; tol = 1.0e4*eps; end

if size(x,1) == 1; x = x'; end  % x debe ser un vector columna

for i = 1:1000

    [jac,f0] = jacobian(func,x)
    %if norm(f0,inf) < tol
        %break
    %end

    dx = jac\(-f0)
    x = x + dx
    error = norm(dx,inf)
    if norm(dx,inf) < tol
        break
    end
end
raiz=x;  niter=i;



