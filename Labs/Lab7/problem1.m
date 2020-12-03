function rez = problem1() 
    %time interval [1 : 00; 7 : 00]:
    time = 1:7;
    %temperatures
    temperature = [13 15 20 14 15 13 10];
    clf;
    plot(time,temperature,'*');
    hold on;
    
    [coef_a, coef_b] = find_coefs(time,temperature);
%     coef_a = coefficients(1);
%     coef_b = coefficients(2);
    plot(time, coef_a * time + coef_b,'r');

    %rez = polyval([coef_a, coef_b],8);
    rez = polyval([coef_a, coef_b],4);
end
