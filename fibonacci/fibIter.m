% fibIter1.m
% Adrian Henle

% Returns the nth Fibonacci number by iteration

function f = fibIter(n)
    F(n) = 0;
    F(2) = 1;
    for k = 3:n
        F(k) = F(k-1) + F(k-2);
    end
    f = F(n);
end
