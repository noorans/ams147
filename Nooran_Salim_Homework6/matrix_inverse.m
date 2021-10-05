function [Ai] = matrix_inverse(A)
    n = length(A);
    B = {};
    B{1}= eye(n);
    for k = 2 : n+1
        c = trace(A*B{k-1});
        a(k) = (1/(k-1)) * c;
        B{k} = -A*B{k-1} + a(k)*eye(n);
    end
    Ai = (1/a(n+1))*B{n};
end