function out=wideScaleRandomNoiseMix3Proposal(x)
% Runs a random one of the three wideScaleRandomNoise proposal functions on
% the input
guess = ceil(3*rand(1));

if (guess == 1)
    out = wideScaleRandomNoiseProposal(x);
elseif (guess == 2)
    out = wideScaleRandomNoiseOneCoordinateProposal(x);   
else
    out = wideScaleRandomNoisePairProposal(x);
end