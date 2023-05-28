function [vectorAprox, error, iteracion] = jacobi(A,b,tol,maxIter)
  vectorInicial = zeros(1,3);
  diagonal = diag(diag(A));
  T = -inv(diagonal) * (A-diagonal);
  c = inv(diagonal) * b;
  radioEspectral = max(abs(eig(T)));

  for i=1:maxIter
    if i == 1
      x= c;
    else
      x = x2;
    endif
    x2 = T*x + c;
    error = norm(x2-x, inf);

    if error < tol
      break;
    endif
  endfor
  iteracion = i;
  vectorAprox = x2;
endfunction