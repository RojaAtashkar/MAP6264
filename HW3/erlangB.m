function B = erlangB(a, s)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
B = 1;
N  = 0;
while N < s
    N = N + 1;
    B = a*B/(N + a*B);
end
end