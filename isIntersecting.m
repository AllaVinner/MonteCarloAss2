function B = isIntersecting(X)
%{
    Looks if the path is intersecting itself and if yes send back a 1,
    otherwise a 0
%}

B = ~isempty(fullIntersectionCheck(X));
end