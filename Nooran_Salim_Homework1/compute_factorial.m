function [b] = compute_factorial(n)

b = 1;
for i = 1:n
    b = b*i;
end
b;