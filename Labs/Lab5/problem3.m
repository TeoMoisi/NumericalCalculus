function problem3()
    %nodes
    x = linspace(-5, 5, 15);
    %values
    f=@(x)(sin(2*x));
    %derivatives
    df = @(x)(2*cos(2*x));
    clf; 
    
%     plot(x, HermiteMultiplePoints(x, f(x), df(x), x));
%     hold on;
%     plot(x, f(x), '*');
    
    plot(x, HermiteMultiplePoints(x, f(x), df(x), x), x, f(x), '*');
end
