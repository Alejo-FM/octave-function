function [x,k]=jacobi(A,b,p)
% Metodo iterativo para la 
% solucion de sistemas lineales Ax=b
% p es el vector inicial....
T=-inv(diag(diag(A)))*(A-diag(diag(A)));
c=inv(diag(diag(A)))*b;
rad=max(abs(eig(T)));
 if rad>=1
   disp ("Radio espectral mayor que 1:"), disp (rad),
   disp ("el metodo diverge"),
   break
 endif

P=p;
T=-inv(diag(diag(A)))*(A-diag(diag(A)));
c=inv(diag(diag(A)))*b;

for k=1:1500
   x=T*p+c;
   err=abs(norm(x-p));
   p=x;
   P=[P,p];
   if err<10^(-6)
      break
   endif
endfor
x=P'; 