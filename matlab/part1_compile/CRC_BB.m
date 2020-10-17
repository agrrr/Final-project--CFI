clear all
opcodes = readtable('sha_bin.txt','Format','auto');
programInfo = readtable('sha_flow.csv');
polynomial = (hexToBinaryVector('1a2eb')); %generator polynomial
sigVector{size(programInfo,1),1} = []; %vector of all signature
preSigVector{size(programInfo,1),1} = []; %vector of all pre-signature
preSigVector{1} = zeros(1,length(polynomial)-1); %initial first signature
updateValue{size(programInfo,1),1} = []; %vector of update function value
bbNum = 1; %first block
cb = {'ble', 'beq'}; %conditional branch commands type

[sigVector,updateValue,preSigVector] = sigAndUpdateValue(opcodes, programInfo, polynomial, sigVector, preSigVector, updateValue, cb, bbNum, 1);
hexSig{size(programInfo,1),1} = [];
hexUpdate{size(programInfo,1),1} = [];
%preHexSig{size(programInfo,1),1} = [];
for i = 1:size(programInfo,1)
    hexSig{i} = binaryVectorToHex(sigVector{i});
    hexUpdate{i} = binaryVectorToHex(updateValue{i});
    %preHexSig{i} = binaryVectorToHex(preSigVector{i});
end
%writing values to file
T1 = array2table(hexSig);
T2 = array2table(hexUpdate);
programInfo = [ programInfo T1 T2 ];
writetable(programInfo, 'sha_flow_compiled.csv');



     