% noPreallocate.m
% Adrian Henle

% Shows the speed penalty of not pre-allocating

function A = noPreallocate(n)

    for idx = 1:n
        A(idx) = rand();
    end

end
