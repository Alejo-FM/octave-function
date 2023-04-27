function [raiz,numiter]=newton(f,df,x0,tol)
% Calculo de raices de ecuaciones no lineales con Metodo de Newton
for k=1:500
   f0=f(x0); df0=df(x0);
   del=-f0/df0;
      if abs(del)<tol
         break
      endif
   x0=x0+del
endfor
raiz=x0; numiter=k;
