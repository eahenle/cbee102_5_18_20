% factorial_iter.m

function f = factorial_iter(n)
    f = 1;
    for ni = 1:n
        f = f * ni;
    end
end
