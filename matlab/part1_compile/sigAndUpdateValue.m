function [ sigVector,updateValue,preSigVector] = sigAndUpdateValue(opcodes, programInfo, polynomial, sigVector, preSigVector, updateValue, cb, bbNum, preBbNum)
    k = 16;
    if isnan(bbNum) %end of program
         updateValue{preBbNum} = zeros(1,length(polynomial)-1);
        return 
    end
    if isempty(sigVector{bbNum}) %calculate basic block signaute
        updateValue{preBbNum} = zeros(1,length(polynomial)-1);
        signature = preSigVector{bbNum};
        % basic block bounds
        bbStart = programInfo{bbNum,5};
        bbEnd = programInfo{bbNum,6}-1;
        for j = bbStart:bbEnd %calculate siganture for each command in the block
            try %handle 16 bits instruction
                instruction = hexToBinaryVector(opcodes{j,1},k);
            catch %handle 32 bits instruction by doing extra cycle
                command = hexToBinaryVector(opcodes{j,1},2*k);
                instruction = command(1:k);
                signature = CRC_func(instruction, polynomial,signature,k);
                instruction = command(17:2*k);
            end
            signature = CRC_func(instruction, polynomial,signature,k);
        end
        sigVector{bbNum} = signature;
        %determine basic path
        if ismember(programInfo{bbNum,3}{1}(1:3), cb) %path splits
            bbNum1 = bbNum+1; %not taken
            bbNum2 = programInfo{bbNum,4}; %taken
            if ~isnan(bbNum1) && isempty(preSigVector{bbNum1})
                preSigVector{bbNum1} = signature;
            end
            [sigVector,updateValue,preSigVector] = sigAndUpdateValue(opcodes, programInfo, polynomial, sigVector, preSigVector, updateValue, cb, bbNum1, bbNum);
            if ~isnan(bbNum2) && isempty(preSigVector{bbNum2})
                preSigVector{bbNum2} = signature;
            end
            [sigVector,updateValue,preSigVector] = sigAndUpdateValue(opcodes, programInfo, polynomial, sigVector, preSigVector, updateValue, cb, bbNum2, bbNum);
                return
        else %fixed path
            bbNum1 = programInfo{bbNum,4}; %update to the next block
            if ~isnan(bbNum1) && isempty(preSigVector{bbNum1})
                preSigVector{bbNum1} = signature;
            end
            [sigVector,updateValue,preSigVector] = sigAndUpdateValue(opcodes, programInfo, polynomial, sigVector, preSigVector, updateValue, cb, bbNum1, bbNum);
            return
        end
    else
        updateValue{preBbNum} = xor(sigVector{preBbNum},preSigVector{bbNum});
        return
    end
end