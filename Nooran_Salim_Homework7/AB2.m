function [y,t] = AB2(fun,y0,NSTEPS,DT,IOSTEP)
  %f = @(y,t) [-y(1)+y(2)*y(3);-y(2)*(y(3)-2)*y(1);1-y(1)*(y(2)]
  y = y0;
  t = 0;
  ts = 0;
  y1 = y0 + 0.5*DT*(fun(y0+DT*fun(y0,ts),DT) + fun(y0,0));
  for ii = 2:NSTEPS
    ts = (ii)*DT;
    %y0 = y0 + 0.5*DT*(fun(y0+DT*fun(y0,ts),ts+DT) + fun(y0,ts));
    y2 = y1 + 0.5*DT*(3*fun(y1,ts+DT) - fun(y0,ts));
    if mod(ii,IOSTEP) == 0
        y = [y y2];
        t = [t ts];
    end
    y0 = y1;
    y1 = y2;
  end
end