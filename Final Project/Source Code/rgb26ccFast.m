function [im6cc] =rgb26ccFast(imC)
%this function uses bitshift and poloynomial method 
%to convert rgb to 6-bit color

imC=bitshift(imC,-6);


im6cc= imC(:,:,1) .* 16 + imC(:,:,2) .* 4+ imC(:,:,3);
end
