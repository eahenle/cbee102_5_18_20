% ex8_6_3.m
% Adrian Henle

% Returns a copy of the input array with all negative numbers replaced with
% zero.

function no_neg = ex8_6_3(array)
    pos_idx = array > 0; % Build list of positive number locations
    no_neg(length(array)) = 0; % Build output list of all zeros
    no_neg(pos_idx) = array(pos_idx); % Copy only positive numbers
end
