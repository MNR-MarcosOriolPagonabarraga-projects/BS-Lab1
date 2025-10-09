function plot_local_max(ecb, time, local_max)
    figure;
    hold on
    plot(time, ecb, time(local_max), ecb(local_max), 'r*');
    hold off;
end

