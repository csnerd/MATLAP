% Computes the Mean Absolute Difference (MAD) for the given two blocks
% Input
%       currentBlk : The block for which we are finding the MAD
%       refBlk : the block w.r.t. which the MAD is being computed
%       n : the side of the two square blocks
%
% Output
%       cost : The MAD for the two blocks

function cost = costFuncMAD(currentBlk,refBlk, n)
result = 0;
for i = 1:n
    for j = 1:n
        result = result + abs((currentBlk(i,j) - refBlk(i,j)));
    end
end
cost = result / (n*n);
