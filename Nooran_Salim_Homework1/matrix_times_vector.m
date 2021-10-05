function [y] = matrix_times_vector(A, x)
   
    y = [];
    for i=1:size(A)
      v = 0;
      for j=1:size(A)
        v = v + (A(i,j)*x(j));
      end 
      y = [y; v]; 
    end 

end 