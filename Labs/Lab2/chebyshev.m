%a)
function chebyshev(n)
    for index = 1:n
        Tn = @(x) cos(index * acos(x));
        fplot(Tn, [-1,1])
        hold on
    end
end