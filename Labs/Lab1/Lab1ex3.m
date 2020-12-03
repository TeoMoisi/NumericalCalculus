%x = [0:0.1:1]
x = linspace(0,1)
y = exp(10.* x.*(x - 1)).* sin(12 * pi.* x)
%f(x) = x^2
z = 3 * exp(5.*x.^2).*cos(12*pi.*x)
%plot(x, y)
%plot(x, z)

%epicucloid....2.
t = linspace(0, 10*pi, 1000)
a = 2
b = 1
x = (a + b).*cos(t)-b.*cos((a/b+1).*t)
y = (a + b).*sin(t)-b.*sin((a/b+1).*t)
%plot(t, x)

%ex. 3
x = linspace(0, 2*pi, 1000)
f1 = cos(x)
f2 = sin(x)
f3 = cos(2.*x)
%plot(x, f1)

hold on
%plot(x, f2)

hold on

%plot(x, f3)

hold off

%ex. 4
x = -1:0.1:1
cond1 = x >= -1 & x <= 0
cond2 = x <= 1 & x > 0
f = zeros(size(x));
f(cond1) = x(cond1).^3+sqrt(1 - x(cond1))
f(cond2) = x(cond2).^3-sqrt(1 - x(cond2))
%plot(x, f)

%ex. 5
x = 0:2:50
y = 1:2:50
funcx = zeros(size(x))
funcy = zeros(size(y))
funcx = x./2
funcy = 3.*y+1
RGB = [255 153 153]/256
%scatter(x, funcx, [], RGB, 'filled')
%hold on
%scatter(y, funcy, [], RGB, 'filled')
%hold off

