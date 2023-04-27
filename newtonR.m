function x = newtonR(F, jacobian, x0, tol, max_iter)
  x = x0;
  for i = 1:max_iter

    % Actualizar la solución con el método de Newton-Raphson
    delta_x = -jacobian(x) \ F(x);
    x = x + delta_x;

    % Comprobar la convergencia
    if norm(delta_x) < tol
      return
    end
  end
  warning('El método de Newton-Raphson no convergió en el número máximo de iteraciones');
end

function y = F(x)
  y = [ 
        x(1)^2- 10 * x(1)+x(2)^2+8; 
        x(1) * x(2)^2 + x(1) - 10 * x(2) + 8
      ];

end

function J = jacobian(x)
  J = [2*x(1) - 10, 2 * x(2) ;
       x(2)^2 + 1, 2 * x(1) * x(2) - 10];

end

%Llamada  solucion = newtonR(@F, @jacobian, x0, tol, max_iter)
