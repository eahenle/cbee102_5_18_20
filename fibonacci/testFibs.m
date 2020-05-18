% testFibs.m
% Adrian Henle

% Test the speeds of algorithms for getting the first n Fibonacci numbers

clear; close all; clc


%% 3-way Competition

K = 5; % Number of times to run each test
n_hi = 20; % Largest input size
num_n = 36;

% Create n values
N = floor(linspace(1, n_hi, num_n));

rec(num_n) = 0;
iter1(num_n) = 0;
iter2(num_n) = 0;
for ni = 1:num_n
    
    fprintf("Pass %d of %d, n = %d\n", ni, num_n, N(ni))
    
     tic
         for k = 1:K
             nFibRec(N(ni));
         end
      rec(ni) = toc/K;
     
     tic
        for k = 1:K
            nFibIter1(N(ni));
        end
     iter1(ni) = toc/K;
     
     tic
        for k = 1:K
            nFibIter2(N(ni));
        end
     iter2(ni) = toc/K;
end

% Plot results

figure()
title("Speed Test 1")
xlabel("N")
ylabel("Time")

hold on
min_idx = 10;
plot(N(min_idx:length(N)), rec(min_idx:length(rec)), "b", "linewidth", 2)
plot(N(min_idx:length(N)), iter1(min_idx:length(iter1)), "r", "linewidth", 2)
plot(N(min_idx:length(N)), iter2(min_idx:length(iter2)), "g", "linewidth", 2)
hold off

legend("Recursive", "Iterative 1", "Iterative 2")

%% Iterative Showdown

K = 3; % Number of times to run each test
n_hi = 1e3; % Largest input size
num_n = 8;

% Create n values
N = floor(linspace(1, n_hi, num_n));

rec(num_n) = 0;
clear iter1 iter2
iter1(num_n) = 0;
iter2(num_n) = 0;
for ni = 1:length(N)
    
    fprintf("Pass %d of %d, n = %d\n", ni, num_n, N(ni))
    
     
     tic
        for k = 1:K
            nFibIter1(N(ni));
        end
     iter1(ni) = toc/K;
     
     tic
        for k = 1:K
            nFibIter2(N(ni));
        end
     iter2(ni) = toc/K;
end

% Plot results
figure()
title("Speed Test 2")
xlabel("N")
ylabel("Time")

hold on
plot(N, iter1, "r", "linewidth", 2)
plot(N, iter2, "g", "linewidth", 2)
hold off

legend("Iterative 1", "Iterative 2")


%% nFibIter2 Inspection

K = 3; % Number of times to run each test
n_hi = 1e6; % Largest input size
num_n = 8;

% Create n values
N = floor(linspace(1, n_hi, num_n));

rec(num_n) = 0;
iter1(num_n) = 0;
iter2(num_n) = 0;
for ni = 1:num_n
    
    fprintf("Pass %d of %d, n = %d\n", ni, num_n, N(ni))
     
     tic
        for k = 1:K
            nFibIter2(N(ni));
        end
     iter2(ni) = toc/K;
end

% Plot results
figure()
title("Speed Test 3")
xlabel("N")
ylabel("Time")

hold on
plot(N, iter2, "g", "linewidth", 2)
hold off
