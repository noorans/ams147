function [zc, ec, x, f] = test_zero()
fun = @(x) (16*x.^5 - 20*x.^3 + 5*x);
tol = 1e-15;
Nmax = 20000;
a = -0.99;
b = -0.9;
[z0, iter, res, his] = chord_method(fun, a, b, tol, Nmax);  
zc = cos(9*pi/10);  
ec = abs(his - zc);
x = linspace(-1, 1, 1000);
f = fun(x);
  
figure(1)
clf
plot(x, f);
title('Chebyshev Polynomial');
  
figure(2)
semilogy(1:iter, ec)
%semilogy(abs(his(1:iter)-zc),k(1:iter),'r');
title('Convergence History');

figure(3)
clf
hold on
%loglog(ec);
loglog(ec(1:iter-1), ec(2:iter));
xlabel('e_{k+1}'); ylabel('e_k');
title('Plot of e_{k+1} versus e_{k}');
end

