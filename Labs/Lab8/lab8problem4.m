function result=lab8problem4()
    a = 1;
    b = 2;
    f = @(x) x.*log(x);
    correctApproximation = 0.636294368858383;
    
    idealN = 0;
    for n=10:10:1000
        area = reptrap(f,a,b,n);
        if (abs(area-correctApproximation) < 0.000294368858383)
            idealN = n;
            break;
        end
    end
    idealN
    result = reptrap(f, a, b, idealN)
end
