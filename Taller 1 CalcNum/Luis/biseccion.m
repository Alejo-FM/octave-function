function [raiz,numiter]=biseccion(f,a,b,tol)
% Calculo de raices de ecuaciones no lineales mediante el método de Biseccion
fa=f(a); fb=f(b);
   for k=1:500
      c=(a+b)/2;
         if abs(b-c)<tol 
            break
         endif
      fc=f(c);
      if sign(fb)==sign(fc)
         b=c; fb=fc;
        else
         a=c; fa=fc;
      endif
   endfor
raiz=c; numiter=k;