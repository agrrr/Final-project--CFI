function [flag, error, bbNum, hexSig] = runSystem( errorVector, errorRate, addRate, deleteRate )
    opcodes = readtable('sha_bin.txt','Format','auto');
    programInfo = readtable('sha_flow_compiled.csv','Format','auto');
    polynomial = (hexToBinaryVector('1a2eb')); %generator polynomial
    k = 16;
    r = length(polynomial) - 1;
    signature = zeros(1,r); %initial first signature
    hexSig{size(programInfo,1),1} = []; %vector of all signature
    bbNum = 1; %first block
    cb = {'ble', 'beq','bne','bpl','bmi','bcc','bcs','bgt','bge','blt','bhi','bls'}; %conditional branch commands type
    branchOpcodes1 = {'d0','d1','d2','d3','d4','d5','d8','d9','da','db','dc','dd','e0'}; %16bits branchs
    branchOpcodes2 = {'f000b','f0008','f0408','f53fa','f73fa','f2808','f6ffa','f3408','f2408'};%32bits branchs
    reminderMatrix = reminders(polynomial, k, r);
    flag = 0;

    while ~isnan(bbNum) %run program untill it finish
        error = errorVector{bbNum};
        % basic block bounds
        bbStart = programInfo{bbNum,5};
        bbEnd = programInfo{bbNum,6}-1;
        insertError = rand < errorRate;
        instCounter = 0;
        i = 1;
        for j = bbStart:bbEnd %calculate siganture for each command in the block
            deleteInst = rand < deleteRate;
            if deleteInst == 0
                try %handle 16 bits instruction
                    instruction = hexToBinaryVector(opcodes{j,1},k);
                    instruction = xor(instruction,(insertError*errorVector{bbNum}((i-1)*k+1:i*k)));
                    instCounter = instCounter + 1;
                    i = i+1;
                    inst = binaryVectorToHex(instruction);
                    if ismember(inst(1:2), branchOpcodes1)%check branch
                        if instCounter*k > programInfo{bbNum,7} %size check
                            break;
                        end
                    end
                catch %handle 32 bits instruction by doing extra cycle
                    command = hexToBinaryVector(opcodes{j,1},2*k);
                    command = xor(command,(insertError*errorVector{bbNum}((i-1)*k+1:2*i*k)));
                    instCounter = instCounter + 2;
                    i = i+2;
                    inst = binaryVectorToHex(command);
                    if ismember(inst(1:5), branchOpcodes2)%check branch
                        if instCounter*k > programInfo{bbNum,7} %size check
                            break;
                        end
                    end
                    instruction = command(1:k);
                    signature = hardwareCRC(instruction, signature, reminderMatrix);
                    instruction = command(17:2*k);       
                end
                signature = hardwareCRC(instruction, signature, reminderMatrix);
                %add instruction
                addInst = rand < addRate;
                if addInst == 1
                    R = [bbStart bbEnd];
                    s = round(rand*range(R))+min(R);
                 try %handle 16 bits instruction
                    instruction = hexToBinaryVector(opcodes{s,1},k);
                    instruction = xor(instruction,(insertError*errorVector{bbNum}((i-1)*k+1:i*k)));
                    instCounter = instCounter + 1;
                    i = i+1;
                    inst = binaryVectorToHex(instruction);
                    if ismember(inst(1:2), branchOpcodes1)%check branch
                        if instCounter*k > programInfo{bbNum,7} %size check
                            break;
                        end
                    end
                catch %handle 32 bits instruction by doing extra cycle
                    command = hexToBinaryVector(opcodes{s,1},2*k);
                    command = xor(command,(insertError*errorVector{bbNum}((i-1)*k+1:2*i*k)));
                    instCounter = instCounter + 2;
                    i = i+2;
                    inst = binaryVectorToHex(command);
                    if ismember(inst(1:5), branchOpcodes2)%check branch
                        if instCounter*k > programInfo{bbNum,7} %size check
                            break;
                        end
                    end
                    instruction = command(1:k);
                    signature = hardwareCRC(instruction, signature, reminderMatrix);
                    instruction = command(17:2*k);       
                 end
                    signature = hardwareCRC(instruction, signature, reminderMatrix);
                end
            end
        end
        hexSig{bbNum} = binaryVectorToHex(signature);
        %checker
        if strcmp(hexSig{bbNum},programInfo{bbNum,8}) && (insertError == 1)
            flag = 1;
            return
        end
        if ~strcmp(hexSig{bbNum},programInfo{bbNum,8})
           flag =1;
           return
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
end