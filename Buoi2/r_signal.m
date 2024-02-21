function [ n,r ] = r_signal(n0,n1,n2,n3,n4)
    n = [n3:n4];
    r = (n >= n1 & n <= n2);
end

