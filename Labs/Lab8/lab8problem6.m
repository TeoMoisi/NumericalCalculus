function err=lab8problem6(n)
    %n = 4 => ans = 0.520500251716589
    %n = 10 => and = 0.520499887354270
    %erf(0.5) = 0.520499876
    a = 0;
    %x = b = 0.5, erf() parameter
    b = 0.5;
    f = @(t) exp(-1 * t.^2);
    %f = @(t) e .^ (-1 * t .^ 2)
    
    simpson = repsim(f, a, b, n);
    err = 2 ./ sqrt(pi) * simpson;
end
