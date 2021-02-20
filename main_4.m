%% main ASsignemtn 2 task 4 


%% Initiate matrices
d = 2;
n = 11;
N = 1000;

X = zeros(d,n+1,N);
W = zeros(n+1,N);

%% Initiate X_i^0 and w_0^i
%{
X ~ g_0 
-> X_i^0 = [0 0]

w = z_0(x)/g_0(x) = 1/(1/4)=4 for all i

%}

X = X; % Alreadz right value
W(1,:) = 1;

for k = 1:n
    for i = 1:N
        [x_kp1, C] = drawAvoidingPosition(X(:,1:k,i));
        X(:,k+1,i) = x_kp1;
        W(k+1,i) = C*W(k,i);        
    end
end

c = sum(W,2)/N


