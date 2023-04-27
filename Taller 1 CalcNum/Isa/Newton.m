function [raiz,error,numiter]=Newton(f,df,x0,tol)

for k=1:500
  x1=x0-(f(x0)/df(x0));
  err=abs(x1-x0);
  disp("Iteracion numero ") disp(k), 
  disp(x1),
    if err<tol
      break
    endif
    x0=x1;
    
  endfor
  
raiz=x1, numiter=k, error=err,
