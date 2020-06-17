% factorial_test

k = 1e3;

tic
    for n = 1:k
        factorial_rec(floor(rand()*n));
    end
rectime = toc;

tic
    for n = 1:k
        factorial_iter(floor(rand()*n));
    end
itertime = toc;

ratio = rectime/itertime
