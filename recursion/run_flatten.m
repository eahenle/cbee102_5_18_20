% run_flatten.m
% Adrian Henle

% Demonstrates a task for which recursion is the obvious answer

% This is a normal array:
array = [1 2 3];

% This is a cell array:
cell_array = {1 2 3};

% Cell arrays are a different way to store data.  The example above is a
% cell array of numbers, but you can also have a cell array of cell arrays:
nested_cell_array = {{1 2 3} {4 5 6} {7 8 9}};

% You can even have a cell array of cell arrays of cell arrays:
deeper_cell_array = {{{1 2 3} {1 2 3} {1 2 3}} {{1 2 3} {1 2 3} {1 2 3}} {{1 2 3} {1 2 3} {1 2 3}}};

% Cell arrays can also be ragged (not every sub-array has same shape):
ragged_cell_array = {{{2 3} {1 2 3} {1 2 3}} {{1 2 3} {1 3} {1 2 3}} {{1 2 3} {1 2 3} {1 2}}};


flatten(array)
flatten(cell_array)
flatten(nested_cell_array)
flatten(deeper_cell_array)
flatten(ragged_cell_array)
