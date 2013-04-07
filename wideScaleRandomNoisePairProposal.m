function out=wideScaleRandomNoisePairProposal(x)
% Changes two random coordinates 2i-1 and 2i of x by a random amount at a 
% random scale chosen in an exponential fashion from a range at least
% [.0001,100] 

num_elt = size(x, 2);
ith = ceil(rand(1)*floor(num_elt/2));

radius = (10^(6*rand(1,1)-4));
out = x;
out(2*ith-1) =  x(2*ith-1) + (randn(1)*radius);
out(2*ith) =  x(2*ith) + (randn(1)*radius);

end
