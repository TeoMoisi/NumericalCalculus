function area=lab8problem1c()
    %ans = 1.5667
    f=@(x) 2./(1+x.^2);
    a=0;
    b=1;
    %area of the function using Simpson's formula
    area = (b - a) / 6 * (f(a) + 4 * f((a + b) / 2) + f(b));
end

