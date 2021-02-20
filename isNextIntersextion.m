function B = isNextIntersextion(X,x)
%% Is next step an intersection?
%{
    X - current path
    x - next position in the path
%}

B = ismember(x',X','rows')';
end