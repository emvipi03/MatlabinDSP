function [X] = DFTwin(x,L,m,N)
    window = hamming(L);
    x1 = x(m : m+L-1);
    signal= x1 .* transpose(window);
    X = fft(signal,N);
end

