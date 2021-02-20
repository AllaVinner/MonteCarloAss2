function X = drawRandomWalk(d,n)
%{
    Draws a random walk in d dimensions of length n.
    
    This walk might very well be self intersecting.
%}
V = randi(2*d,1,n);
D = directionIndex2Vector(V,d);
D = [zeros(d,1), D];
X = cumsum(D,2);
end