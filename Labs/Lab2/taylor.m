function taylor(n)
    Tk = @(x) 1;
    for k = 1:n
        Tk = @(x) Tk(x) + x.^k/factorial(k)
        %pk = @(x) (x-x0)/factorial(k) * diff(f,x0,k)
        %pn = pn + pk;
        fplot(Tk, [-1,3])
        hold on
    end
end