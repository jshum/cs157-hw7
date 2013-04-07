function out=wideScaleRandomNoiseOneCoordinateProposal(x)
% Changes a random coordinate of x by a random amount at a random scale
% chosen in an exponential fashion from a range at least [.0001,100]


% out = x+ (10^(6*rand(1,10)-2));
% end


num_elt = size(x, 2);
ith = ceil(rand(1)*num_elt);
radius = (10^(6*rand(1,1)-4));
out = x;
out(ith) =  x(ith) + (randn(1)*radius);

end