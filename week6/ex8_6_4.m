% ex8_6_4.m
% Adrian Henle

% Returns an array y(t) for an
% exponential decay function.

function y = ex8_6_4(k, y0, t)
    y = y0*exp(-k*t);
end
