function [em, et, es] = test_integration()
a = -3;
b = 1;
I = 1.6851344770476;

fun = @(x)(1./(1 + x.^2) .*(cos((3/2) .* exp(-x.^2)))) - (x.^3./30);
xi = linspace(-3,1,100);
figure(1);
plot(xi,fun(xi));

em(1)=0;
et(1)=0;
es(1)=0;

for n=2:100    
    [I1]=int_midpoint_rule(fun,a,b,n);
    em(n) = abs(I-I1);    
    [I2]=int_trapezoidal_rule(fun,a,b,n);
    et(n) = abs(I-I2);    
    [I3]=int_Simpson_rule(fun,a,b,n);
    es(n) = abs(I-I3);
end
   val = 100;
   figure(2);
   clf
   loglog((2:val),em(2:val),'r')
   hold on
   loglog((2:val),et(2:val),'g')
   loglog((2:val),es(2:val),'b')


 end