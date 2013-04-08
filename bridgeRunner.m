% Empty file! Put whatever you want here
% naive choice : 42
% chasm([20:-19.8/99:0.2],0)
% 
% a=5;
% b=0.2;
% % : 39
% chasm([a:-(a-b)/99:b],0)
% 
% % f(1) = 20 ... f(100) = 1
% % 38
% f = @(x) -0.0019*x.^2+20;
% chasm(f(1:100),0) 
% 
% % 36
% maxh = 11;
% coeff = maxh/(105^2);
% f = @(x) -coeff*x.^2+maxh;
% chasm(f(1:100),0) 
% 
% % 27
% f = @(x) 20./x;
% chasm(f(1:100),0)

% 1 second time Delta

x = bridgeSearch(@chasm, @bridgeProposal, 0.2*ones(1,100), 0, 0.2, 20, 1, 0.01);



