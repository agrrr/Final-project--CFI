function [ signature ] = CRC_func( inst, poly, preSig, k )
% S_i = (s_i-1*x^k + I_i*x^r) mod g
msg = [preSig, zeros(1,k)] + [inst, zeros(1,(length(poly)-1))];
[q,reminder] = deconv(msg,poly);
signature = mod(reminder(k+1:end),2);
