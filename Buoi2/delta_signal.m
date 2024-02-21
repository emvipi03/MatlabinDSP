function [n, delta] = delta_signal(n0,n1,n2)
    n = [n1:n2];
    delta = (n == n0);
end