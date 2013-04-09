% Empty file! Put whatever you want here

% NB run the function using 'localSearchCircle' not localSearch!!


% Our method of reducing the number of circles was to first give as input a
% random vector for a position. And we first allow an lower bound of (0,0) in
% the search space and an upper bound of (100,100) in the search space for
% the center of each of the 10 circles.
% For our proposal function, we use the mix of 3 random noises. The reason
% that this method is desirable is that besides moving all 10 circles at once,
% we have the possibility of sending one troublesome circle to somewhere else 
% in the circumscribed square, or simply changing its x or y coordinate.

% another special tweak we used on this algorithm involved searching only
% in an ever smaller and smaller square, by gradually shrinking the lower
% and upper bounds of the best x after 10 seconds. This ensures that our 
% rate of convergence is a lot faster, since the search space is smaller.

% we set epsilon as very low, since we used the method of putting in a 
% random vector, and the random permutation of 20 numbers at once
% would increase the probability of the funcToOptimize deproving by an 
% epsilon. Because if epsilon was high, then we increase the chance we are
% unlucky, and the square containing the circles might not decrease over
% time at all