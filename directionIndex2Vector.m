function D = directionIndex2Vector(v,d)
%{
    Given an index this function returns the direction vector of the
    direction index

    in 2D:
            

            v=1  ->  [1 0]'
            v=1  ->  [0 1]'            
            v=1  ->  [-1 0]'
            v=1  ->  [0 -1]'
%}
[~,n] = size(v);
idx = sub2ind([d,n],rem(v-1,d)+1,[1:n]);
val = sign(d-v+0.5);
D = zeros(d,n);
D(idx) = val;
end