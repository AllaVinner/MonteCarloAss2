%% Main 6


%% Load and initate
load C_from_task_4.mat
d = 2;
n = length(c)-1;


%% Set up matrices

Y = log(c(2:end));
k = [1:n]';

M = [ones(length(k),1) k, log(k)];

X = M\Y;

%% Transform back to values:

A = exp(X(1));
my = exp(X(2));
gamma = X(3)+1;


%% Try it out

ctheo = A*my.^k.*k.^(gamma-1)







