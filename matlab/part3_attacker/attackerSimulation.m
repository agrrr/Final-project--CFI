clear all;
opcodes = readtable('sha_bin.txt','Format','auto');
programInfo = readtable('sha_flow_compiled.csv','Format','auto');
polynomial = (hexToBinaryVector('1a2eb'));
blockSize = programInfo{:,7};
maxBlockSize = 256;
d = 4;
maxLen = length(polynomial)-1;

R1 = [ 1 (d-1) ];
R2 = [ d maxBlockSize ];
errorRate = 0.01;
addRate = 0;
deleteRate = 0;
flag =0;
i = 0;
while flag == 0
    i = i+1 %print progress
    errorVector = burstError(maxLen, blockSize);
    %weight = round(rand*range(R1))+min(R1);
    %errorVector = nWeightError(weight, blockSize);
    %errorVector = maskedErrors(double(polynomial), blockSize);
    [flag, error, bbNum, hexSig] = runSystem( errorVector, errorRate, addRate, deleteRate );
    binaryVectorToHex(error)
end