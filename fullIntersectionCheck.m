function indeces = fullIntersectionCheck(X)
%% Full intersection check
%{
    Goes through a full random walk and checks if there are any
    intersections. It then returns a list of thoes columns indeces.


%}

[m,n] = size(X);
M = zeros(n,n);
for i = 1:n 
    M(i,:)= ismember(X',X(:,i)','rows')';
end

M = M-eye(n);
M = any(M,1);
indeces = find(M);

end