% nFibIter1.m
% Adrian Henle

% Returns n Fibonacci numbers by calling fibIter

function F = nFibIter1(n)
    F(n) = 0;
    for k = 1:n
        F(k) = fibIter(n);
    end
end
