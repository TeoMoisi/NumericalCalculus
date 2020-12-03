function eval=lab8problem5(n)
    %n = 10 => ans = 0.785398163397448
    %n = 30 => ans = 0.811148922853102
    %n = 100 => ans = 0.811155735785765
    %n = 1000000 => ans = 0.811155735194726
    %Result: 0.8111579
    format long
    a = 0;
    b = pi;
    f = @(x) 1./(4 + sin(20.*x));
    
    eval = repsim(f, a, b, n);
end
