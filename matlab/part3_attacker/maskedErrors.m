function [ errorVector ] = maskedErrors( polynomial, blockSize)
    r = length(polynomial)-1;
    errorVector{size(blockSize,1),1} = [];
    for i = 1:size(blockSize,1)
        error = round(rand(1,blockSize(i)-r));
        errorVector{i} = mod(conv(error,polynomial),2);
    end
end

