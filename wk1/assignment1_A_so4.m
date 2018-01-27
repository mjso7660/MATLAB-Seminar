clc;
clear all;
close all;

% Assignemnt 1 for ECE210A
% Min Joon So

%% Problem 1
a1 = log(9);
b1 = asin(exp(-9))*10^4;
c1 = log10(2*pi/9);
d1 = 9 +1j;

v1 = [a1;b1;c1;d1];
%% Problem 2
a2 = real(d1);
b2 = imag(d1);
c2 = abs(d1);
d2 = angle(d1);

v2 = [a2 b2 c2 d2];
%% Problem 3
v12 = v1*v2;
v21 = v2*v1;

%% Problem 4
v2 = v2';
v3 = v1.*v2;
v4 = repmat(v3,1,4);

%% Problem 5
op1 = v12*v4;                   %matrix multiplication
op2 = v12.*v4;                  %element wise multiplication
op3 = conj(transpose(v12));     %conjugate transpose
op4 = inv(v12+eye(4));          %inverse of sum with 4x4 eye
op5 = v12^2;                    %square

%% Problem 6
n = fix(real(v21));
ls = linspace(1,n,1000);
cln = 0:0.1:n;

