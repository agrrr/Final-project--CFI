function [ errorVector ] = nWeightError( weight, blockSize )
    errorVector{size(blockSize,1),1} = [];
    for i = 1:size(blockSize,1)
        error = zeros(1,blockSize(i));
        error(1:weight) = 1;
        error = error(randperm(numel(error)));
        errorVector{i} = error;
    end
end

