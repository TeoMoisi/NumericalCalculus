function problem1a()
    %nodes
    x = [0, pi / 2, pi, (3 * pi) / 2, 2 * pi];
    %values
    y = [0, 1, 0, -1, 0];
    %show the val of the function on pi/4
    sin(pi/4)
    cubic_spline = spline(x, [1, y, 1]);
    %show cubic natural spline
    ppval(cubic_spline, pi / 4)
    
    clamped_spline = spline(x, y);
    %show cubic clamped spline
    ppval(clamped_spline, pi / 4)
    
end
