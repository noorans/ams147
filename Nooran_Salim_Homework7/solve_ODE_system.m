function [y,t] = solve_ODE_system()

NSTEPS = 1e5;
IOSTEP = 50;
DT = 1e-3;
y0 = [1;2;3];

fun = @(y,t) [-y(1) + y(2)*y(3); -y(2)+(y(3)-2)*y(1); 1-y(1)*y(2)];

[y,t] = AB2(fun,y0,NSTEPS,DT,IOSTEP)

figure(1);
clf
plot(t,y(1,:), t,y(2,:), t,y(3,:))

figure(2);
clf
plot3(y(1,:), y(2,:), y(3,:))

end