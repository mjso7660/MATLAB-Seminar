function [val, ind] = findCloest(x, desired)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
y = abs(x - desired);
small = min(min(y));
ind = find(y==small);
val = x(ind);

end

