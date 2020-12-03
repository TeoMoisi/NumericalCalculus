%b)
function chebyshev2(n)
    T0 = @(x) 1;
    T1 = @(x) x;
    for index = 1:n
        Tindex = @(x) 2*x*T1(x)-T0(x);
        T0 = T1;
        T1 = Tindex;
        fplot(Tindex, [-1,1])
        hold on
    end
end