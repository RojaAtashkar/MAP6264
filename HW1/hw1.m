clc, clear all;
S = 10;
C = repelem(0, S);
NStop = 10000;
A = 0;
K = 0;
AB = 0;
landa = 4;
ta = 2.4;
for d = 1:NStop
    IA = -(1/landa) * log(rand(1));
    A = A + IA;
    J = 0;
    J = J + 1;
    while A <C(J)
        J = J + 1;
        if J == S + 1
        K = K + 1;
        break;
        end
    end
    if J == S + 1
        continue;
    end
    X = - ta *log(rand(1));
    C(J) = A + X;
    M = C(1);
    for i = 2:S
        if C(i) < M
            M = C(i);
        end
    end
    if M > A
        AB = AB + M - A;

    end
end
pi = K/NStop
p = AB/A