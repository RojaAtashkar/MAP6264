%% a
c = 0;
SX = 0;
SR = 0;
SI = 0;
for j =1:10000
    S = 0;
  T = -1000*log(rand(1));
    while S < T
    X = -1 * log(rand(1));
    c = c + 1;
    SX = SX + X;
   S = S + X;
    end
    R = S- T;
    I = X;
    SR = SR + R;
    SI = SI + I;
end

e_x = SX/c;
e_I = SI/10000;
e_R = SR/10000;
%% b
clc, clear all;
e_x = [];
e_I = [];
e_R = [];
for u = 0:0.5:5
    disp("yes")
    c = 0;
    SX = 0;
    SR = 0;
    SI = 0;
    for j =1:10000
    S = 0;
    T = -1000*log(rand(1));
    while S < T
    a = rand(1);
    if a < 0.9
     y = 1;
    else
        y = 11;
    end
    X = y + u;
    c = c + 1;
    SX = SX + X;
   S = S + X;
    end
    R = S- T;
    I = X;
    SR = SR + R;
    SI = SI + I;
    end
    
    e_x = [e_x, SX/c]
    e_I = [e_I, SI/10000]
    e_R = [e_R, SR/10000]
end
e_x
e_R
e_I
u = 0:0.5:5;
plot(u, e_R)

