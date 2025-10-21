function plot_local_max(ecb, time, local_max)
    figure;
    plot(time, ecb, time(local_max), ecb(local_max), 'r*'); % mark local maxima in red stars

    xlabel('Time (s)')
    ylabel('Amplitude (mV)')
    legend('Signal', 'Local maxima', 'Location', 'best') % add legend
    grid on
end
