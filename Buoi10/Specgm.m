function [A] = Specgm(x, L, overlap, N, fs)
    A = [];
    step = L - overlap;
    for i = 1:step:(length(x)-L)
        Spec = DFTwin(x,L,i,N);
        A = [A, transpose(Spec(1:N/2))];
    end
    [r, c] = size(A);
    y1 = linspace(0,fs/2,r);
    x1 = linspace(0,length(x),c);
    imagesc(x1,y1,20*log10(abs(A)));
    colormap(jet);
    axis xy;
    ylabel('Frequency (Hz)');
    xlabel('Time');
    
end

function [X] = DFTwin(x,L,m,N)
    window = hamming(L);
    x1 = x(m : m+L-1);
    signal = x1 .* transpose(window);
    X = fft(signal,N);
end


