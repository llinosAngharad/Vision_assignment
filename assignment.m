shakey = read_image('','shakey.150.gif');

LoG_filter = LoG();
shakey1 = conv2(shakey, LoG_filter, 'same');
show_image(shakey1);

% for every pixel in the edgeimage:
%   look at each neighbour pixel and if any neighbour pixel is the opposite
%   sign to the current pixel
%   change = pixel = neihgour pixel
%   if(change > threshold):
%       edge = 1 (the pixel is an edge)
%   else:
%       edge = 0 (pixel is not an edge)
%   end
%
% shakey2 = edge(shakey1, "zerocross");
% show_image(shakey2);