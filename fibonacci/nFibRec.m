% nFibRec
% Adrian Henle

% Returns n Fibonacci numbers by calling fibRec

function F = nFibRec(n)
    F(n) = 0;
    for k = 1:n
        F(k) = fibRec(k);
    end
end
