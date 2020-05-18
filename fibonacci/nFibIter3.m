% nFibIter3.m
% Adrian Henle

% Returns the first n Fibonacci numbers by the iterative method, using
% persistent variables to amortize execution over repeated calls

function F = nFibIter3(n)

    % persistent variables stay in memory between function calls
    % FF will grow the Fibonacci sequence as the program runs, so we will
    % never need to repeat a calculation for a specific Fibonacci number!
    persistent FF
    persistent N
    
    % Set the persistent variables up the first time the function runs
    if isempty(FF)
        FF(n) = 0;
        FF(2) = 1;
        FF(3) = 1;
        N = 3;
    end
    
    if n > N
        FF(n) = 0;
        for k = N:n
            FF(k) = FF(k-1) + FF(k-2);
        end
    N = n;    
    end
    
    F = FF(1:n);
end
