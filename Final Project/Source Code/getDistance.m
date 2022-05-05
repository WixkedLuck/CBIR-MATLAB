function [d] = getDistance(p,q)
%p and q where p and q are two vectors of the same size. 

d= sqrt(sum((q-p).^2));

end

