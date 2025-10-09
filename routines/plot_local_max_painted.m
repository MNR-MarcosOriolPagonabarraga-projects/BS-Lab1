function plot_local_max_painted(ecb, time, local_max, window_size)
    if nargin < 4
        window_size = 100; % tamaño de la ventana (en samples) por defecto
    end
    
    figure;
    hold on;
    
    % Graficamos la serie de tiempo
    plot(time, ecb); 
    
    % Graficamos los puntos de los local_max como estrellas rojas
    plot(time(local_max), ecb(local_max), 'r*'); 
    
    % Dibujamos las zonas alrededor de los picos
    for i = 1:length(local_max)
        % Obtener el índice del local_max actual
        idx = local_max(i);
        
        % Definir el rango de la ventana de 100 samples alrededor del local_max
        start_idx = max(1, idx - floor(window_size / 2));
        end_idx = min(length(ecb), idx + floor(window_size / 2));
        
        % Ajustar los índices para obtener las coordenadas correctas
        x_area = [time(start_idx), time(start_idx:end_idx), time(end_idx)];
        y_area = [0, ecb(start_idx:end_idx), 0];
        
        % Rellenar la zona con color transparente (light gray)
        fill(x_area, y_area, 'k', 'FaceAlpha', 0.1, 'EdgeColor', 'none');
    end
    
    hold off;
    title('Gráfico con local_max y zonas destacadas');
    xlabel('Tiempo');
    ylabel('Valor ECB');
end
