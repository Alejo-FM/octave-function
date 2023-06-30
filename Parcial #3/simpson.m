function I = simpson(f,a,b,n)
    h = (b-a)/n; %N debe ser par si o si
    xi = a+h:2*h: b-h;
    xp = a+2*h:2*h:b-2*h
    I = (h/3) * (f(a) + 4*sum(f(xi)) + 2*sum(f(xp)) + f(b)) 
endFunction