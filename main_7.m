%% Task 7 

%% Set up
d = 5;
n = 11;
N = 100000;

%% Run 

X = zeros(d,n+1,N);
W = zeros(n+1,N);

%{
X ~ g_0 
-> X_i^0 = [0 0]

w = z_0(x)/g_0(x) = 1/(1/4)=4 for all i

%}

X = X; % Already right value
W(1,:) = 1;

for k = 1:n
    for i = 1:N
        [x_kp1, C] = drawAvoidingPosition(X(:,1:k,i));
        X(:,k+1,i) = x_kp1;
        W(k+1,i) = C*W(k,i);        
    end
end

c = sum(W,2)/N;

% estimate parameters
Y = log(c(2:end));
k = [1:n]';

M = [ones(n,1) k, log(k)];

X = M\Y;

% Transform back to values:

A = exp(X(1));
my = exp(X(2));
gamma = X(3)+1;


%% Check thing 7

ass = (d<= my && my <= 2*d-1)
mat = [d my d*2-1]

%% Check thing 8

ass = A >= 1
mat =[ 1 A]

%% Check thing 9

myassym = 2*d-1-1/(2*d)-3/(2*d)^2-16/(2*d)^3;
comp = [d my myassym]


