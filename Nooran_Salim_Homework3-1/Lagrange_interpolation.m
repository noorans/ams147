function y = Lagrange_interpolation(xi,yi,x)
n= length(xi);
L=ones(n,length(x));
y=0;
for i=1:n
     for j=1:n
         if j ~= i
                L(i, :) = L(i, :) .* (x-xi(j))/(xi(i)-xi(j));
         end
     end
         y = y + yi(i) * L(i, :);
end
end