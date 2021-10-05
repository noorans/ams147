function [x,p1,p2,p4,p8] = test_least_squares()
DJI = load("DJI_2014_2019.dat");
xi=DJI(:,1);
yi=DJI(:,2);
x = linspace(0, 1, 1000);
N = length(x);

[p1, err1] = poly_least_squares(xi, yi, 1);
[p2, err2] = poly_least_squares(xi, yi, 2);
[p4, err4] = poly_least_squares(xi, yi, 4);
[p8, err8] = poly_least_squares(xi, yi, 8);

y1 = p1(1) + (p1(2) * x);
y2 = p2(1) + (p2(2) * x) + (p2(3) * x.^2);
y4 = p4(1) + (p4(2) * x) + (p4(3) * x.^2) + (p4(4) * x.^3) + (p4(5) * x.^4);
y8 = p8(1) + (p8(2) * x) + (p8(3) * x.^2) + (p8(4) * x.^3) + (p8(5) * x.^4) + (p8(6) * x.^5) + (p8(7) * x.^6) + (p8(8) * x.^7) + (p8(9) * x.^8);

figure(1)
clf
plot(xi, yi, 'b')
hold on
plot(x, y1, 'r')
plot(x, y2, 'r')
plot(x, y4, 'r')
plot(x, y8, 'r')   
end