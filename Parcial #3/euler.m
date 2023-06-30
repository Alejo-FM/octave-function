function M = euler(f,x0,y0,xf,n)

    h = (xf-x0) / n;
    X= zeros(1,n+1);
    Y= zeros(1,n+1);
    X= x0:h:xf;
    Y(1)= y0

    for j=1:n
        k =feval(f, X(j), Y(j) ); %Evalua la función F en Xj n Yj
        Y(j+1) = Y(j)+ h*k;
    endFor
    M =[X' Y'];
endFunction