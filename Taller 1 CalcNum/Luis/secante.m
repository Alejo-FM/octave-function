function [raiz,numiter]=secante(f,x0,x1,tol)
% Calculo de raices de ecuaciones no lineales con Metodo de Secante
f0=f(x0); f1=f(x1);
for k=1:500
   del=-f1*((x1-x0)/(f1-f0));
      if abs(del)<tol
         break
      endif
   x0=x1; f0=f1;
   x1=x1+del; f1=f(x1);
endfor
raiz=x0; numiter=k;
endfunction
