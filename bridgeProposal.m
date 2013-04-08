function out=bridgeProposal(x, fail)
% Changes all coordinates of x by a random amount at a random scale chosen
% in an exponential fashion from a range at least [.0001,100]
if fail == -100
    out = x;
    return 
end
x(100+fail) = x(100+fail)+(rand*0.1);
% x(100+fail) = x(100+fail)+(rand*0.2-0.1);
out = x;

end
