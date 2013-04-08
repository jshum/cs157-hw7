% Empty file! Put whatever you want here

% % bilbwop(rand(20,2)*2-1,0)

% We felt that it would be very difficult to actually come up with a
% mathematical model that would do well. And we are often told that CPU
% time is cheaper than human time. Therefore, we chose to just perform a
% localSearch using a wideScaleRandomNoise and record the best input we
% found.
%
% The input we found gave a very respectable -7.6 as the distance it
% reached.

% This piece of code can take an hour to run.
% min_f = 0;
% for i=1:100
%     i
% x = localSearch(@bilbwop, @wideScaleRandomNoiseProposal, zeros(1,40), 0, -1,1,10,0.01);
%     if bilbwop(x) < min_f;
%         bilbwop(x)
%         min_x = x;        
%     end
%     
% end
% bilbwop(min_x,0)
% 
% save 'bestbilbwop.mat' 'min_x'

best = load('bestbilbwop.mat')

% The second step of optimiziation we tried was just trying to run a small
% neighbordhood search using the current best input we have. Therefore, we
% wrote a proposal function that was smallScaleRandomNoise and only to
% modify the last few arguments because we had observed from the animation
% that the first three-quarters of the input result in mostly upright
% motion of the figure. 

% min_f2 = 0;
% for i=1:10
%     i
% x = localSearch(@bilbwop, @wideScaleRandomNoiseProposal, zeros(1,40), 0, -1,1,10,0.01);
%     if bilbwop(x) < min_f2;
%         bilbwop(x)
%         min_x2 = x;        
%     end
%     
% end
bilbwop(best.min_x2,0) 

