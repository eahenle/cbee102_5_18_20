% flatten.m
% Adrian Henle

% Recursively flattens the contents of a cell array

function flat_array = flatten(cell_array)

    if iscell(cell_array)
        flat_array = flatten([cell_array{:}]);
    else
        flat_array = cell_array;
    end
end
