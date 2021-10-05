function [x] = backward_sub(U,b)
    [n,n] = size(U);
    x = zeros(n,1);
    x(n) = b(n) / U(n,n);
    for i = n-1 : -1 : 1
        A = 0;
        for j = i+1 : 1 : n
            A = A + U(i,j)*x(j);
        end
        x(i)=(b(i) - A) / U(i,i);
    end
end
