clear all;
clc;

%ECE210-A Assignment II
%Min Joon So, 2018/01/25

%% Problem #1

steps1 = 100;
steps2 = 1000;

t1 = linspace(0,2*pi,steps1);  %vector from 0 to 2*pi with 100 steps
t2 = linspace(0,2*pi,steps2); %vector from 0 to 2*pi with 1000 steps

%Create two vectors ...
y1 = sin(t1);       %sine function over t1
y2 = sin(t2);       %sine function over t2

%Approximate the derivates ...
dy1 = diff(y1)/(2*pi/steps1);
dy2 = diff(y2)/(2*pi/steps2);

%Find out how well...
x1 = cos(t1(1:end-1));  %cosine is derivativeof sine / account for the length decrease
x2 = cos(t2(1:end-1));

epsilon1 = max(abs(dy1-x1));        %maximum difference is 10 times bigger for 100 steps
epsilon2 = max(abs(dy2-x2));

%Now approximate the integrals...
sum1 = cumsum(y1)*(2*pi/steps1);
sum2 = cumsum(y2)*(2*pi/steps2);
trapsum1 = cumtrapz(y1)*(2*pi/steps1);
trapsum2 = cumtrapz(y2)*(2*pi/steps2);

x3 = -cos(t1)+1;    %integral of sin(t1)
x4 = -cos(t2)+1;    %integral of sin(t2)

epsilon3 = max(abs(sum1 - x3));     % 0.0434 
epsilon4 = max(abs(sum2 - x4));     % 0.0043
epsilon5 = max(abs(trapsum1 - x3)); % 0.0207
epsilon6 = max(abs(trapsum2 - x4)); % 0.0020
%%%maximum difference is bigger for 100 steps

plot(t2(1:end-1),dy2);
title("trapsum2");

%% Problem #2

%use reshape to create 10 X 10 ...
A = 1:100;
A = reshape(A,10,[]);

%Flip the second column of B ...
B = flip(A(:,2),2);

%Flip the matrix A ...
A = flip(A,2);

%make a vector that is the column-wise...
C= sum(A);

%Make a vector that is the row-wise...
D= sum(A,2);

%Delete the last Column of A.
A(:,end) = [];


%% Problem #3

%Using for loops and no pre-allocation
tic
for i=1:300
    for j=1:500
        E(i,j) = (i^2+j^2)/(i+j+3);
    end
end
toc

%Using for loops and pre-allocating memory with zeros
tic
B = zeros(300,500);
for i=1:300
    for j=1:500
        F(i,j) = (i^2+j^2)/(i+j+3);
    end
end
toc

%Using only elementwise matrix operations.
tic
y = 1:300;
x = 1:500;
[X,Y] = meshgrid(x,y);
G = (X.^2+Y.^2)./(X+Y+3);
toc

%%%Comment: It takes the least time if memory is pre-allocated with zeros
%%%for the matrix and it takes the longest without pre-allocating and using
%%%for loops. Elapsed times show how great influence pre-allocating has
%%%with saving time.
