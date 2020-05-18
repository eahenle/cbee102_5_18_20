% app6.m
% Adrian Henle

clear; close all; clc

% Get user-selected data set
[x, y] = load_data2();

% Run least-squares regression
[M, B, Rsq] = least_squares(x, y);

% Print results
fprintf("Line of best fit: y = %0.3fx + %0.3f\n", M, B)
fprintf("R-Squared: %0.3f\n", Rsq)

% Original data scatter plot
plot(x, y, "b+")
hold on

% Fit line plot by end points
plot([x(1), x(length(x))], [B, B + M*x(length(x))])

% Title, Labels, and Legend
title("Linear Regression")
xlabel("x")
ylabel("y")
legend("Noisy Data", "Linear Fit")

% Axis auto-scaling
xmin = min(x)-0.1*(max(x)-min(x));
xmax = max(x)+0.1*(max(x)-min(x));
ymin = min(y)-0.1*(max(y)-min(y));
ymax = max(y)+0.1*(max(y)-min(y));
axis([xmin, xmax, ymin, ymax])










