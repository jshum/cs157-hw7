% Empty file! Put whatever you want here

% bilbwop(rand(20,2)*2-1,0)

min_f = 0;
for i=1:100
    i
x = localSearch(@bilbwop, @wideScaleRandomNoiseProposal, zeros(1,40), 0, -1,1,10,0.01);
    if bilbwop(x) < min_f;
        bilbwop(x)
        min_x = x;        
    end
    
end
bilbwop(min_x,0)

save 'bestbilbwop.mat' 'min'

