function x=denoiseQuadratic(inp,k)
% Given an input image inp, and a scaling factor k, returns the optimal
% quadratic denoising of the image, as specified in the handout

isize = size(inp, 1);
jsize = size(inp, 2);

% bigmat = zeros(isize+2, jsize+2);
% bigmat(2:isize+1, 2:jsize+1) = inp;
% bigmat(1, 2:jsize+1) = inp(size(inp, 1), :);
% bigmat(isize+2, 2:jsize+1) = inp(1, :);
% bigmat(2:isize+1, 1) = inp(:, size(inp, 2));
% bigmat(2:isize+1, jsize+2) = inp(:, 1);
% 
% % kernel = [0 -1 0; -1 4 -1; 0 -1 0];
kernel1 = zeros(isize, jsize);
kernel1(1,1) = k;
kernel1(2,1) = -k;
A1 = fft2(kernel1);
kernel2 = zeros(isize, jsize);
kernel2(1,1) = k;
kernel2(1,2) = -k;
A2 = fft2(kernel2);

I = fft2(inp);

x = zeros(isize, jsize);

for i=1:isize
    for j=1:jsize
        a = A1(i,j) + A2(i,j) + 1;
        b = -2*I(i,j);
        
        x(i,j) = -b/(2*a);
        
    end
end

x = ifft2(x);
end
% 
% for i=2:isize+1
%     for j=2:jsize+1
%         I = fft2(bigmat(i-1:i+1, j-1:j+1));
%         
%         
%         
%     end
% end
