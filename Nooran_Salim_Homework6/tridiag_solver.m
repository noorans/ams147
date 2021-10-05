function x = tridiag_solver(e, a, c, b)
    n = length(a);
    x = zeros(n, 1);
    alpha = zeros(n, 1);
    beta = zeros(n - 1, 1);
    alpha(1) = a(1);
    for i = 2:n
        beta(i-1) = e(i-1) / alpha(i - 1);
        alpha(i) = a(i) - beta(i - 1) * c(i - 1);
    end
    L = ones(n) + diag(beta, -1);
    U = diag(alpha) + diag(c, 1);
    
    % Ly = b
    y(1) = b(1);
    for i = 2:n
        y(i) = b(i) - beta(i - 1) * y(i - 1);
    end

    % Ux = y
    x(n) = y(n) / alpha(n);
    for i = n - 1:-1:1
        x(i) = (y(i) - c(i) * x(i + 1)) / alpha(i);
    end
end