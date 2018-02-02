function [ xRoots, yRoots ] = roots( M )
N = M(2:end);
M = M(1:end-1);
NM = N.*M;
xRoots = find(NM<0);
yRoots = M(xRoots);

end

