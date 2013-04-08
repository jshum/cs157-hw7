function out=bridgeProposal(x, fail)
% bridgeSearch passes in two parameters to the proposal function
% where x is the input, and fail is the output of the function to be optimized.
%
% In this particular case, we know that the output of the function to be
% optimized, the chasm function, is negative the distance from the right 
% tip of the bridge to the point of fracture. This means that the 
% point of fracture from the left tip is the length of the bridge
% plus the negative distance. 
%
% From looking at the chasm function, we know that the strain on each 
% segment of the bridge is calculated by calculating some function over
% the thickness of all segments to the right of that point on the bridge.
% We also know that the strain can be reduced by either reducing the 
% thickness of the segments to the right or increasing the thickness of 
% the current segment
%
% We took the later approach. Therefore, given that we know the strain
% at segment 100+fail is to great, we increase the thickness of that
% particular segment by some random value between [0,0.1].
%
% At first, we tried rand-0.5 which added a number to the failing point 
% between [-.5,.5] every time. However, we found that for a timeDelta of 2,
% we often didn't reach the desired optimization value of -100
%
% So we reasoned that because we know that decreasing the thickness of the
% segment where it fractures never helps, we only increased the thickness.
% We started with rand which means [0,1] but the problem was that the steps
% it took were too large so that by the time it was trying to optimize
% segment 6,7 the segment length was already greater than 20 and there was
% no way to backtrack.
%
% We multipled rand by a factor less than 1 before we found 0.1 that
% constantly optimized to our answer. Therefore, the current solution is to
% add a random value between [0,0.1] at every segment until the strain is
% probable.
%
% The solution is a somewhat exponentially decreasing function over the
% length of the bridge.
%
% We observe that this optimization scheme is greedy and not very robust 
% and doesn't generalize very well to other scenarios. But we reasoned 
% that the point of the assignment is to think of ways to optimize, 
% and this is what we found to be the simplest but effective method.

% terminanting condition, if the output is already -100, we have reached
% the optimization goal
if fail == -100
    out = x;
    return 
end

x(100+fail) = x(100+fail)+(rand*0.1);
out = x;

end
