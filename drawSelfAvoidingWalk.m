function X = drawSelfAvoidingWalk(d,n)

X = zeros(d,n+1);
for i = 1:n
    if i == 45
        as = 23;
    end
    d = drawAvoidingDirection(X(:,1:i));
    X(:,i+1) = X(:,i) + d;
end

end