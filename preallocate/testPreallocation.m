% testPreallocation.m
% Adrian Henle

% Tests the benefit of array pre-allocation by averaging the time to run
% over many inputs and plotting average performance vs. n

clear; close all; clc

K = 6; % Number of times to run each test
n_hi = 1e4; % Largest input size

% Create n values
num_n = log10(n_hi)*2;
N = floor(logspace(1, num_n, num_n));

% Run tests
pre(num_n) = 0;
nopre(num_n) = 0;
for ni = 1:num_n
    tic
        for k = 1:K
            preallocate(N(ni));
        end
     pre(ni) = toc/K;
     
     tic
        for k = 1:K
            noPreallocate(N(ni));
        end
     nopre(ni) = toc/K;
     
     fprintf("%d%%\n", floor(100*ni/num_n))
end

% Plot results
figure()
title("Speed Test")
xlabel("N")
ylabel("Time")

hold on
plot(N, pre, "linewidth", 2)
plot(N, nopre, "linewidth", 2)
hold off

legend("Preallocation", "No Preallocation")

figure()
hold on
title("Speed Ratio")
xlabel("logN")
ylabel("Preallocation / None")
plot(log(N), nopre ./ pre, "linewidth", 2)
hold off
