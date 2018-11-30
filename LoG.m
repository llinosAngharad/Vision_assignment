function l = LoG(s, x)
% s - standard deviation
% x - 

p = 1/(s * sqrt(2* pi)) * exp(-(x-0).^2/(2*s^2));
gaussian = p .* p';
gaussian
% This is called a negative laplacian because the central peak is negative.
% It is just as appropriate to reverse the signs of the elements to get a
% positive Laplacian, it doesnt matter.
laplacian = [0, 1, 0; 1, -4, 1; 0, 1, 0];
l = conv2(gaussian, laplacian,  'same');

end