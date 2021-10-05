function [I]=int_Simpson_rule(fun,a,b,n)
     h = (b-a)/(2*n);
     I = fun(a);
     x = a + h;
     for k = 1 : n-1
        I = I + 4*fun(x);
        x = x + h;
        I = I + 2*fun(x);
        x = x + h;
     end
    I = I + fun(x)*4;
    I = I + fun(b);
    I = I * h/3;
end