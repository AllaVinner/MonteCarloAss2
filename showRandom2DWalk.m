function showRandom2DWalk(X)


[d,n] = size(X);

for i = 1:n
    
   visualize2DRandomWalk(X(:,1:i));
   title(string(i-1));
   pause(0.01)
end