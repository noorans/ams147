function [P,k,p]=pi_series()
P=[];
P(1)=3*(1+1/5);

for k=1:14
 P(k+1)=P(k)+3*((-1)^k)*(1/(6*k+1)+1/(6*k+5));
end
X = P;
k=1;
while(abs(pi-X(k)) > (10E-4))
 X(k+1)=X(k)+3*((-1)^k)*(1/(6*k+1)+1/(6*k+5));
 k=k+1;
end
b=k-1;
n=b;

a=1;
while( a < 1002)
 X(a+1)=X(a)+3*((-1)^a)*(1/(6*a+1)+1/(6*a+5));
 a = a+1;
 top = log(abs(1002-pi)) - log(abs(1001-pi));
 bottom = log(abs(1001-pi)) - log(abs(1000-pi));
end
 slope = top/bottom;
 p = slope;
end 

    