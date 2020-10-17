clear all;
opcodes = readtable('sha_bin.txt','Format','auto');
programInfo = readtable('sha_flow_compiled.csv','Format','auto');
polynomial = (hexToBinaryVector('1a2eb')); %generator polynomial
k = 16;
r = length(polynomial) - 1;
signature = zeros(1,length(polynomial)-1); %initial first signature
hexSig{size(programInfo,1),1} = []; %vector of all signature
bbNum = 1; %first block
cb = {'ble', 'beq','bne','bpl','bmi','bcc','bcs','bgt','bge','blt','bhi','bls'}; %conditional branch commands type
remindersVector = reminders(polynomial, k, r);
branchOpcodes1 = {'d0','d1','d2','d3','d4','d5','d8','d9','da','db','dc','dd','e0'}; %16bits branchs
branchOpcodes2 = {'f000b','f0008','f0408','f53fa','f73fa','f2808','f6ffa','f3408','f2408'};%32bits branchs

while ~isnan(bbNum) %run program untill it finish
    % basic block bounds
    bbStart = programInfo{bbNum,5};
    bbEnd = programInfo{bbNum,6}-1;
    instCounter = 0;
    for j = bbStart:bbEnd %calculate siganture for each command in the block
        try %handle 16 bits instruction
            instruction = hexToBinaryVector(opcodes{j,1},k);
            instCounter = instCounter + 1;
            if ismember(opcodes{j,1}{1}(1:2), branchOpcodes1)%check branch
                if instCounter*k > programInfo{bbNum,7} %size check
                    break;
                end
            end
        catch %handle 32 bits instruction by doing extra cycle
            command = hexToBinaryVector(opcodes{j,1},2*k);
            instCounter = instCounter + 2;
            if ismember(opcodes{j,1}{1}(1:5), branchOpcodes2)%check branch
                if instCounter*k > programInfo{bbNum,7} %size check
                    break;
                end
            end
            instruction = command(1:k);
            signature = hardwareCRC(instruction, signature, remindersVector);
            instruction = command(17:2*k);
        end
        signature = hardwareCRC(instruction, signature, remindersVector);
    end
    hexSig{bbNum} = binaryVectorToHex(signature);
    %to do: checker
    if ~strcmp(hexSig{bbNum},programInfo{bbNum,8})
        break;
    end
    %determine path
    if ismember(programInfo{bbNum,3}{1}(1:3), cb) %path splits
        p = rand;
        if p > 0.5 %branch taken
            updateValue = hexToBinaryVector(programInfo{bbNum,9}{1});
            updateValue = [zeros(1, r-length(updateValue)), updateValue];
            signature = xor(updateValue, signature);
            hexSig{bbNum} = binaryVectorToHex(signature);
            bbNum = programInfo{bbNum,4};   
        else
            bbNum = bbNum+1; %branch not taken
        end
    else %fixed path
        updateValue = hexToBinaryVector(programInfo{bbNum,9}{1});
        updateValue = [zeros(1, r-length(updateValue)), updateValue];
        signature = xor(updateValue, signature);
        hexSig{bbNum} = binaryVectorToHex(signature);
        bbNum = programInfo{bbNum,4}; %update to the next block
    end
end