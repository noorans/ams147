function [a,err] = poly_least_squares(xi,yi,M)
N = length(xi);
E = zeros(N,1);
for k = 1:N
  for j = 1:M+1
    b(k,j) = xi(k).^(j-1);
  end
end
a = (b' * b) \ (b' * yi);
err = 0;
for k = 1:N
  for j = 1:M+1
    E(k) = E(k) + (a(j) * xi(k)^(j - 1));
  end
  err = err + (yi(k)-E(k)).^2;
end
end