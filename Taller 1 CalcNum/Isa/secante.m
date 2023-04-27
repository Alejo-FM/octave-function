function [p1] = secante(f,x0,x1,tol)
%f es la funcion introducida como cadena ''
%df es la derivada de f introducida como una cadena
%x0 valor incial
%tol es la toleracia

iter=1;            %Numero de iteraciones
error=1;
   fprintf('| Iter |         x0         |         x1         |        Xn+1      |      Error      |\n');
   fprintf('|------|--------------------|--------------------|------------------|-----------------|\n');
   while(error>tol)
      xn= x1 - ((feval(f,x1))*(x1-x0))/((feval(f,x1))-(feval(f,x0))); %Ecuacion Xn+1 = Xn - F(Xn) * (Xn - Xn-1) / F(Xn) - F(Xn-1)
      error=abs(xn-x1);                                               %Calcula el error
      fprintf('|  %d   |   %15.12f  |   %15.12f  | %15.12f  | %15.12f |\n',iter,x0,x1,xn,error);   
      %Imprime por pantalla la iteracion y el nuevo valor
      iter=iter+1;
      x0=x1;
      x1=xn;
   endwhile
   fprintf('|-------------------------------------------------------------------------------------|\n');
endfunction