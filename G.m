 function p = G(m,s,x)

% G(m,s,x) - gives the Probability Density Function (pdf) of the Gaussian
% with mean m and standard deviation s, for the value x.
% example: p = N(0,0.1,[-3:1:3]);
% Calculates pdf with mean = 0, sd = 0.1, for a vector of 7 elements long

p = 1/(s * sqrt(2* pi)) * exp(-(x-m).^2/(2*s^2));
