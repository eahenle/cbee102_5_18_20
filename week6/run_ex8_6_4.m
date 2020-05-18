% run_ex8_6_4.m
% Adrian Henle

% Plots a series of exponentials

clear; close all; clc

% Program Parameters
y0 = 1;
k1 = 1e-2;
k2 = 1e-1;
t1 = 0;
t2 = 500;

% Construct t and k arrays
t = t1:(t2-t1)/1e3:t2;
k = k1:(k2-k1)/10:k2;

% Plot y(t) for each k
figure()
hold on
for j = k
    plot(t, ex8_6_4(j, y0, t))
end
hold off

% Format plot
title("Exponential Decay")
xlabel("t")
ylabel("y")

% Auto-Legend
n = length(k);
labels(n) = "";
for j = 1:n
    labels(j) = "k = " + k(j);
end
legend(labels)
