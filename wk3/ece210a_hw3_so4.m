% ECE210A Assignment III
clear all; close all; clc;

%% #1. Lunar Eclipse
A = ones(100,100);
B = zeros(100, 100);

x = 1:100;
y = 1:100;
[X, Y] = meshgrid(x,y);

A =not(((X-50).^2+(Y-50).^2).^0.5 < 20);
B =((X-40).^2+(Y-40).^2).^0.5 < 20;

figure(1), imshow(A);
% displays zeros in black and ones in white. Forms a black circle in white
% background and this can be predicted from the equation above

figure(2), imshow(B);
% Creates a white circle (ones) in black background (zeros)

C = A&B; 
figure(3), imshow(C);
% Intersections (one&one) form a white (1 & 1) moon

D = A|B;
figure(4), imshow(D);
% turns each element to one if either of matrix's element is one ( 1&1 or 1&0 or 0&1). 

figure(5), imshow(not(C));
% switch colors from figure 3

figure(6), imshow(not(D));
% switch colors from figure 4

%% #2. Fun with find
N = sin(linspace(0,5,100))+1

[val, ind] = findClosest(N, 3/2); % returns [1.4928, 53]


%% #3. Sincing Ship
clear all; close all; clc;

x1 = -2*pi:4*pi/10000:2*pi;
y1 = sinc(x1);
figure(7), plot(y1), hold on;

[xRoots, yRoots] = roots(y1); % find roots
plot(xRoots, yRoots, 'ko');

dydx = diff(y1);
[xMinMax, temp] = roots(dydx);
yMinMax = y1(xMinMax);
plot(xMinMax, yMinMax, 'r*');



