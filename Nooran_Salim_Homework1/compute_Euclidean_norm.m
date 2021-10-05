function [z] = compute_Euclidean_norm(x)
v = 0;
for i = 1:length(x)
 v = v + x(i)^2;
end
z = sqrt(v);

end