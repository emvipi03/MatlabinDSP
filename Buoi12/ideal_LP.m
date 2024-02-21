function h_ideal = ideal_LP(wc, L)
    M = (L-1) / 2;
    n = 0:(L-1);
    m = n - M + eps;
    h_ideal = transpose(sin(wc*m) ./ (pi*m));
end