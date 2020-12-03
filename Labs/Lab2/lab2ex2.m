%a)
function chebyshev(n)
    Tn(x) = cos(n * acos(x));
    fplot(Tn, [-1,1])
    hold on
end