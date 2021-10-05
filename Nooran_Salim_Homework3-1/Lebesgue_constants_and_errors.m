function [L1, L2, L3, L4, e1, e2, e3, e4] = Lebesgue_constants_and_errors()
    fun = @(x) 1 ./ (1 + (sin((2 * pi) .* x)).^2);
    x = linspace(-1, 1, 1000);
    f = fun(x);
    lamb1 = 0;
    lamb2 = 0;
    lamb3 = 0;
    lamb4 = 0;

    N = 14;
    for j = 0:N
        xi1(j+1) = -1 + (2 .* (j / N));
        yi1(j+1) = 1 ./ (1 + (sin((2 * pi) .* xi1(j+1))).^2);
    end
    [lamb1, L1] = compute_Lebesgue_function(xi1, x);
    P1 = Lagrange_interpolation(xi1, yi1, x);
    e1 = max(abs(f - P1));
    figure(1)
    clf
    plot(x, lamb1)

    N = 40;
    for j = 0:N
        xi2(j+1) = -1 + (2 .* (j / N));
        yi2(j+1) = 1 ./ (1 + (sin((2 * pi) .* xi2(j+1))).^2);
    end
    [lamb2, L2] = compute_Lebesgue_function(xi2, x);
    P2 = Lagrange_interpolation(xi2, yi2, x);
    e2 = max(abs(f - P2));
    figure(2);
    clf
    plot(x, lamb2)

    N = 14;
    for j = 0:N
        xi3(j+1) = cos((pi / N) * j);
        yi3(j+1) = 1 ./ (1 + (sin((2 * pi) .* xi3(j+1))).^2);
    end
    [lamb3, L3] = compute_Lebesgue_function(xi3, x);
    P3 = Lagrange_interpolation(xi3, yi3, x);
    e3 = max(abs(f - P3));
    figure(3);
    clf
    plot(x, lamb3)

    N = 40;
    for j = 0:N
        xi4(j+1) = cos((pi / N) * j);
        yi4(j+1) = 1 ./ (1 + (sin((2 * pi) .* xi4(j+1))).^2);
    end
    [lamb4, L4] = compute_Lebesgue_function(xi4, x);
    P4 = Lagrange_interpolation(xi4, yi4, x);
    e4 = max(abs(f - P4));
    figure(4);
    clf
    plot(x, lamb4)
end