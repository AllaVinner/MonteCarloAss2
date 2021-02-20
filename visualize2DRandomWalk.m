function visualize2DRandomWalk(X)
%% Visualising a random walk
%{
    X - (2,n) matrix where the first row is the x coordinates and the
    second is the y coordinate.

    The method plots the path in blue and puts red stars where (if) the
    path intersects itself
%}

%% Find intersections

idx = fullIntersectionCheck(X);

maxVal = max(abs(X),[],'all');
plot(X(1,:), X(2,:), 'b.-');
hold on
plot(X(1,idx), X(2,idx), 'r*');
axis([-maxVal-1  maxVal+1 -maxVal-1 maxVal+1]);


end