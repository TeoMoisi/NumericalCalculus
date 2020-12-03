subplot(2,2,1)
l1 = @(x) x;
fplot(l1, [0,1])
title('Subplot 1: l1)')
    
subplot(2,2,2)
l2 = @(x) 3/2*x^2-1/2;
fplot(l2, [0,1])
title('Subplot 1: l2)')

subplot(2,2,3)
l1 = @(x) 5/2*x^3-3/2*x;
fplot(l1, [0,1])
title('Subplot 1: l3)')
    
subplot(2,2,4)
l2 = @(x) 35/8*x^4-15/4*x^3+3/8;
fplot(l2, [0,1])
title('Subplot 1: l4)')