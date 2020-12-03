function electricalField = lab8problem3(n)
    %ans = 6.3131 for n = 10, 20, 30, 50, 1000...
    %edges of the interval
    a = 0;
    b = 2 * pi;
    %given constants
    r = 110;
    p = 75;
    
    f = @(x) sqrt(1 - (p/r).^2 * sin(x))
    
    trapezium = reptrap(f, a, b, n);
    electricalField = 60 * r / (r^2 - p^2) * trapezium;
end
