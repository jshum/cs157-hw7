clear all
clc

% localSearch(@g5, @wideScaleRandomNoiseMix3Proposal, [ 0 0], 0, -10, 10, 10, 0.01);
% wideScaleRandomNoiseMix3Proposal
% wideScaleRandomNoiseProposal([0 0])

% arrangeCircles(1:20,0)

x = localSearchCircle(@arrangeCircles, @wideScaleRandomNoiseMix3Proposal, 1:20, 0, 0, 100, 10, 0.01);
%%
x=reshape(x,2,10);
width=max(x(1,:)+(1:10))-min(x(1,:)-(1:10));
height=max(x(2,:)+(1:10))-min(x(2,:)-(1:10));
rating=max(width,height);