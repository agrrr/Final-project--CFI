function [errorVector] = burstError(r,blockSize)
    errorVector{size(blockSize,1),1} = [];
    for i = 1:size(blockSize,1)
        R1 = [ 2 r ];
        m = round(rand*range(R1))+min(R1);
        ptrn = rand(1,r-m) < 0.5;
        burst = [ 1 ptrn 1 ];
        R2 = [ 1 (blockSize(i)-length(burst))];
        h = round(rand*range(R2))+min(R2);
        burst = [ burst zeros(1,blockSize(i)-length(burst))];
        errorVector{i} = circshift(burst,h); 
    end
end

