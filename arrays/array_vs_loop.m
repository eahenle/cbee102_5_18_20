% array_vs_loop.m
% Adrian Henle

% Demonstrates the speed boost for using array operations vs. loops

clear; clc

n = 1e3; % array lengths
k = 1e3; % number of trials


% Plot sin(x) by filling everything with loops
tic
    for j = 1:k
        x(n) = 0;
        y(n) = 0;
        for idx = 1:n
            x(idx) = idx/100;
            y(idx) = sin(x(idx));
        end

%         y(n) = 0;
%         for idx = 1:n
%             y(idx) = sin(x(idx));
%         end
    end
looptime = toc;


% Plot sin(x) by using all array operations
tic
    for j = 1:k
        x = 0.01:0.01:10;
        y = sin(x);
    end
arraytime = toc;

ratio = looptime/arraytime;

fprintf("Array operations are %0.2f-fold faster than looping.\n", ratio)
