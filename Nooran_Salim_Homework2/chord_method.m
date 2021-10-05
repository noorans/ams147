function [z0,iter,res,his]=chord_method(fun,a,b,tol,Nmax)
c=(fun(b)-fun(a))/(b-a);
xk=(a+b)/2;
his=xk;
iter=1;
res=1;
while res>tol
  xn=xk-fun(xk)/c;  
  his=[his,xn];
  res=abs(xn-xk);  
  xk=xn;
  iter=iter+1;
  if iter==Nmax
      disp(['Error tolerance not met'])
      break
  end
end
    z0 = xk;
  end
