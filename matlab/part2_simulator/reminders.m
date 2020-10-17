function [ remindersMatrix ] = reminders(polynomial, k, r)
    n = k + r;
    remindersMatrix = zeros(n,r);
    for i = 1:n
        [q,s] = deconv([zeros(1,r-i), 1, zeros(1,i-1)], polynomial);
        remindersMatrix(i,:) = mod(s(length(s)-r+1:end),2);
    end
        remindersMatrix = flip(remindersMatrix);
        remindersMatrix = remindersMatrix(1:k,:);
end
