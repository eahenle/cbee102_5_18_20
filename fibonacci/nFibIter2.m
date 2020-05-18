% nFibIter2.m
% Adrian Henle

% Returns the first n Fibonacci numbers by the iterative method

function F = nFibIter2(n)

    clearvars -except n

    F = zeros(n);
    F(2) = 1;
    for k = 3:n
        F(k) = F(k-1) + F(k-2);
    end
end
