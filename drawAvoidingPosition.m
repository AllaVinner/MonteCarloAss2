function [x_p1, C] = drawAvoidingPosition(X)
%{
x_p1 - x plus 1

%}
[d,n] = size(X);
D = [eye(d) -eye(d)];
Q =[];
for i = 1:2*d
    x = X(:,end)+D(:,i);
    if isNextIntersextion(X,x)
        continue 
    end
    Q = [Q i];
end

%% draw one direction from P
if isempty(Q)
    v = zeros(d,1); 
else
    i = randi(length(Q));
    v = D(:,Q(i));
end
x_p1 = X(:,end)+v;
C = length(Q);

end