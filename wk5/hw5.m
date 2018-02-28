close all; clear all; clc;

%% ECE210 HW #5
load fisheriris

% assign
c = cell(length(meas),1);
for index = 1:length(meas)
    c{index} = Flower(meas(index,1),meas(index,2),meas(index,3),meas(index,4), species{index});
end

%% getSLength func
%Same sepal length
cL = getSLength(c{25}) == meas(25,4);


%% report func
report(c{1});