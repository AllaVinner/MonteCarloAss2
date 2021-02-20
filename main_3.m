%% Main assignment 2 task 3

%{
    Setup:
        g - uniform distribution over a general random walk
        N - total number of simulations
        Nsa - Number of paths that are self avoiding
        d - Which dimension we are working in
        n - length of path (-1)
    Execution:
    
    i) draw X from g
    ii) repeat i) N times
    iii) Counte the number of X:s that was self avoiding: Nsa
    iv) set c = Nsa/N as the estimated coefficient
%}


%% Set N and d
N = 1000;
d = 2;
n = 4;

%% Sample N times
Nsa = 0;
for i = 1:N
   X = drawRandomWalk(d,n);
   Nsa = Nsa + isSelfAvoiding(X); 
end

%% Clauclate c

c = Nsa/N;


%% Do this for some some number of n
N = 1000;
d = 2;
n = 10;

c = zeros(1,n);
Nsa_count = zeros(1,n);
for i = 1:n
    Nsa = 0;
    for j = 1:N
       X = drawRandomWalk(d,i);
       Nsa = Nsa + isSelfAvoiding(X); 
    end
    
    c(i) = Nsa/N*(2*d)^i;
    Nsa_count(i) = Nsa;
end

%% Plot

plot(c(1:5),'b.-', 'Markersize', 15)
title('estimations of c for different lengths is 2 d');
xlabel('Length of our path');
ylabel('Estimated c');

%% Make to my

my = zeros(size(c));
for i = 1:length(my)
    my(i) = c(i)^(1/i);
end

plot(my)

