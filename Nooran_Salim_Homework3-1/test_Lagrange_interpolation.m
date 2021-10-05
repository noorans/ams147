function [x,f,P1,P2,P3,P4] = test_Lagrange_interpolation()

fun = @(x) 1 ./ (1 + (sin((2 * pi) .* x)).^2);
x = linspace(-1,1,1000);
f = fun(x);
%figure(1)
%plot(x, f, 'b')

N=14;
xi1 = linspace(-1,1,15);
yi1 = 1 ./ (1 + (sin((2 * pi) .* xi1)).^2);
[P1] = Lagrange_interpolation(xi1,yi1,x);
figure(1);
clf
plot(x, fun(x), 'b')
hold on
plot(xi1, yi1, 'ro')
plot(x, P1, 'r')

N=40;
xi2 = linspace(-1,1,41);
yi2 = 1 ./ (1 + (sin((2 * pi) .* xi2)).^2);
[P2] = Lagrange_interpolation(xi2,yi2,x);
figure(2);
clf
plot(x, fun(x), 'b')
hold on
plot(xi2, yi2, 'ro')
plot(x, P2, 'r') 

N = 14;
for j = 0:N
    xi3(j+1) = cos((pi / N) * j);
    yi3(j+1) = 1 ./ (1 + (sin((2 * pi) .* xi3(j+1))).^2);
end
[P3] = Lagrange_interpolation(xi3,yi3,x); 
figure(3);
clf
plot(x, fun(x), 'b')
hold on
plot(xi3, yi3, 'ro')
plot(x, P3, 'r') 

N = 40;
for j = 0:N
    xi4(j+1) = cos((pi / N) * j);
    yi4(j+1) = 1 ./ (1 + (sin((2 * pi) .* xi4(j+1))).^2);
end
[P4] = Lagrange_interpolation(xi4,yi4,x); 
figure(4);
clf
plot(x, fun(x), 'b')
hold on
plot(xi4, yi4, 'ro')
plot(x, P4, 'r') 
end