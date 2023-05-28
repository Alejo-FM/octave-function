function [x,k]=gausseidel(A,b,p)

    T= -inv( tril(A) ) * ( A-tril(A) );
    c=  inv( tril(A) ) * b;

    rad=max(abs(eig(T)));
    if rad>=1
        disp ("Radio espectral mayor que 1:"), disp (rad),
        disp ("el metodo diverge")
    endif

    P=p;
    for k=1:1500
        x=T*p+c;
        err=max(abs(x-p));
        p=x;
        P=[P,p];
        if err<10^(-6)
            break
        endif
    endfor
    x=P';
endfunction