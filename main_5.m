%% main 5


%% Initiate matrices
d = 2;
n = 5;
N = 100000;

X = zeros(d,n+1,N);
W = zeros(n+1,N);

X = X; % Alreadz right value
W(1,:) = 1;


%% Run alg 

for k = 1:n
    % Replicate
    w = W(k,:);
    childIdx = randsample(N,N,true,w);
    X(:,1:k,:) = X(:,1:k,childIdx);
    for i = 1:N
        [x_kp1, C] = drawAvoidingPosition(X(:,1:k,i));
        X(:,k+1,i) = x_kp1;
        W(k+1,i) = C;  
    end
end

c = cumprod(sum(W,2)/N)

%% Save:

save('C_from_task_4.mat','c');

