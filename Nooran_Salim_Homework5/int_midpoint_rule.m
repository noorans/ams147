function [I]=int_midpoint_rule(fun,a,b,n)
    h = (b-a)/n;
    x = a + h *0.5;
    I = 0;
    for k = 1:n
        I = I + fun(x);
        x = x + h;
    end
    I = I*h;
end