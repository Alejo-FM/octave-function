% Esta función implementa el método de Bisección 
% para encontrar la raíz de una función en un intervalo dado [a, b].

function [raiz, niter] = Biseccion(f, a, b, tol)

% Entradas: f (función objetivo),
%           a (límite inferior del intervalo), 
%           b (límite superior del intervalo), 
%           tol (tolerancia para criterio de paro).

% Salidas: raiz (valor aproximado de la raíz), 
%          niter (número de iteraciones realizadas).

  % Bucle for que realiza un máximo de 200 iteraciones del método de Bisección.
  for k = 1:200
    c = (a + b) / 2; % Calcular el punto medio del intervalo [a, b].

    % Verificamos si el criterio de paro se cumple (la diferencia entre b y c es menor que la tolerancia).
    if abs(b - c) < tol
      break % Si se cumple el criterio, terminamos el bucle.
    endif

    % Elegimos el siguiente intervalo según el signo del producto f(a) * f(c).
    if f(a) * f(c) < 0
      b = c; % Si el producto es negativo, reemplazamos b por c.
    else
      a = c; % Si el producto es positivo, reemplazamos a por c.
    endif
  endfor

  raiz = (a + b) / 2; % Calculamos la raíz aproximada como el punto medio del último intervalo [a, b].
  niter = k; % Asignamos el número de iteraciones realizadas.
endfunction
