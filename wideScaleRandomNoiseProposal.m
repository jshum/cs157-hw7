function out=wideScaleRandomNoiseProposal(x)
% Changes all coordinates of x by a random amount at a random scale chosen
% in an exponential fashion from a range at least [.0001,100]

num_elt = size(x, 2);
radius = (10^(6*rand(1,1)-4));
% randn(1, num_elt)*radius
out = x + (randn(1, num_elt)*radius);

end