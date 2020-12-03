function formTrapez=lab8problem1a()
    f=@(x) 2./(1+x.^2);
    a=0;
    b=1;
    n=1;
    ans = reptrap(f,a,b,n)
    formTrapez = (b-a)/2*(f(a) + f(b));
    %simpsons = (b - a) / 6 * (f(a) + 4 * f((a + b) / 2) + f(b))
    %simpsons = repsim(f, a, b, n)
end

