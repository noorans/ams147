function [lambda,L]=compute_Lebesgue_function(xi,x)
n = length(xi); 
poly = ones(n,length(x));
lebesgue = 0;
maximum = 0;
for k=1:n
  for j=1:n         
    if j~=k             
    poly(k,:)=poly(k,:).*(x-xi(j))/(xi(k)-xi(j));         
    end   
  end
  lebesgue = sum(abs(poly));
  maximum = max(lebesgue); 
end
L = maximum;
lambda = lebesgue;
end