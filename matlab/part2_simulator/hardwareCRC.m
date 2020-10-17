function [ signature ] = hardwareCRC(instruction, preSig, remindersVector)
  r = length(preSig);
  k = length(instruction);
% S_i = (s_i-1*x^k + I_i*x^r) mod g
  msg = xor([preSig, zeros(1,k)],[instruction, zeros(1,r)]); 
  setPositions = find(msg);
  signature = zeros(1,r);
  for j = 1:length(setPositions) %mod g
   signature=xor(signature,remindersVector(setPositions(j),:));
  end
end
