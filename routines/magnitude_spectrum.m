function [magnitude,f] = magnitude_spectrum(signal,fs)
    Y = fft(signal);
    N = length(signal);  % Number of samples
    f = (0:N-1) * (fs / N);  % Frequency vector for single-sided spectrum
    
    Y = Y(1:N/2);  % Keep only the first half (positive frequencies)
    f = f(1:N/2);
    
    magnitude = abs(Y);
end