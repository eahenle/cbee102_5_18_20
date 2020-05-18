% least_squares.m
% Adrian Henle
% Plots line of best fit and reports goodness of fit

function [M, B, Rsq] = least_squares(x, y)
% Given x and y input arrays, calculate slope, intercept,
% and goodness of fit for a least-squares linear regression.

    % Terms needed for calculation
    xBar = mean(x);
    yBar = mean(y);

    % Best fit line calculation
    M = sum((x - xBar) .* (y-yBar))/sum((x-xBar).^2);
    B = yBar - M*xBar;

    % Goodness of fit calculation
    yHat = M .* x + B;
    Rsq = 1 - (sum((y - yHat).^2))/((sum((y - yBar).^2)));
end
