% testAmortization.m
% Adrian Henle

% Tests complexity amortization by previous calculation persistence

% Plot average time to produce first n Fibonacci numbers where n is
% randomly pulled from 1:N

clear; close all; clc

K = 10000; % Number of calls to run
N = 1000; % Maximum n

iter2(K) = 0;
iter3(K) = 0;

for k = 3:K
    %n = floor(N*rand()) + 1;
    n = k;
    
    tic
        nFibIter2(n);
    iter2(k) = (iter2(k-1)*(k-1) + toc)/k;
    
    tic
        nFibIter3(n);
    iter3(k) = (iter3(k-1)*(k-1) + toc)/k;
end



figure()
title(sprintf("Amortization Effect, Max n = %d", N))
xlabel("Function Calls")
ylabel("Average Execution Time")
hold on
plot(1:K, iter2, "linewidth", 2)
plot(1:K, iter3, "linewidth", 2)
legend("Without Recall", "With Recall")
hold off

figure()
hold on
title(sprintf("Amortization Effect, Max n = %d", N))
xlabel("Function Calls")
ylabel("Log Average Execution Time Ratio")
plot(1:K, log(iter2 ./ iter3), "linewidth", 2)
hold off