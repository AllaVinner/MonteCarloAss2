function v = drawAvoidingDirection(X)
%{
    Looks at the current path and returns a direction in which the path
    does not intersect with it self. If there are not avaliable actions.
    The functions returns a zeros vector.

    Example outpu:
                [1 0 0]'
                 
                [0 -1]'

%}
[d,n] = size(X);
D = [eye(d) -eye(d)];
P =[];
for i = 1:2*d
    x = X(:,end)+D(:,i);
    if isNextIntersextion(X,x)
        continue 
    end
    P = [P i];
end

%% draw one direction from P
if isempty(P)
    v = zeros(d,1); 
else
    i = randi(length(P));
    v = D(:,P(i));
end