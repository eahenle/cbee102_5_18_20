% factorial_rec.m

function f = factorial_rec(n)
    switch n
        case 0
            f = 1;
        otherwise
            f = n * factorial_rec(n-1);
    end
end
