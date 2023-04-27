function [jac,f0] = jacobian3x3(func,x)
%
h = 1.0e-4;
n = length(x);
jac = zeros(n);

f0=func(x(1),x(2),x(3));

for i =1:n
    temp = x(i);
    x(i) = temp + h;
    f1 = func(x(1),x(2),x(3));
    x(i) = temp;
    jac(:,i) = (f1 - f0)/h;
end

