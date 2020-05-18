% ex8_6_3_loop.m
% Adrian Henle

% Returns a copy of the input array with all negative numbers replaced with
% zero.

function no_neg = ex8_6_3_loop(array)
    no_neg(length(array)) = 0; % Pre-allocate
    for idx = 1:length(array) % Loop over input array
        if array(idx) < 0
            no_neg(idx) = 0; % Zero-out the negatives
        else
            no_neg(idx) = array(idx); % Copy the non-negatives
        end
    end
end
