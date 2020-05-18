% fibRec.m
% Adrian Henle

% Returns the nth Fibonacci number by recursion

function f = fibRec(n)
    switch n
        case 1
            f = 0;
        case 2
            f = 1;
        otherwise
            f = fibRec(n-1) + fibRec(n-2);
    end
end
