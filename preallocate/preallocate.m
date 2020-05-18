% preallocate.m
% Adrian Henle

% Demonstrates the speed benefit from array pre-allocation

function A = preallocate(n)

    A(n) = 0;% Fill the array to the needed length (pre-allocate)

    for idx = 1:n
        A(idx) = rand();
    end

end
