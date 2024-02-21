function [ n,u ] = u_signal(n0,n1,n2)
    n = [n1:n2];
    u = (n>=n0);
end

