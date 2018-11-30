function l = LoG()

g = G(0, 1, -4:1:4);
gaussian = g .* g';

laplacian = [0, 1, 0; 1, -4, 1; 0, 1, 0];
l = conv2(laplacian, gaussian,  'same');
end