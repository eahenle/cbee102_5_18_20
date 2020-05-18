% test_8_6_3.m
% Adrian Henle

% Shows the speed difference between array ops and looping for removing
% negative values from an input array

clear; clc

n = 1e3;
k = 1e3;
array = rand(n) - 0.5;

tic
    for j = 1:k
        ex8_6_3(array);
    end
arraytime = toc;

tic
    for j = 1:k
        ex8_6_3_loop(array);
    end
looptime = toc;

ratio = arraytime/looptime;

fprintf("Looping is %0.0f-fold faster than array operations.\n", ratio)
