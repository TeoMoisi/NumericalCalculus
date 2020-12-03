function lab7problem2b()
    clf;
    temperature = [0 10 20 30 40 60 80 100];
    pressure = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];
    X = 0:0.1:100;
    
    
%     [val,~] = polyfit(temperature, pressure, 2);
%     polyval(val,45);
%     plot(X,polyval(polyfit(temperature, pressure, 2),X));
    
    plot(temperature, pressure, '*r');
    hold on;
    
    plot(temperature, NewtonInterp(temperature, pressure, temperature), 'g');
    hold on;
    
    plot(X,polyval(polyfit(temperature, pressure, 2),X), 'k');
end
