function [I]=int_trapezoidal_rule(fun,a,b,n)
    h = (b-a)/n;
    I = fun(a)*0.5;
    x = a + h;
    for k = 1 : n-1
        I = I + fun(x);
        x = x + h;
    end
    I = I + fun(b)*0.5;
    I = I*h;
end