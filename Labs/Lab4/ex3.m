x=linspace(0,6,13);
f=@(x)exp(sin(x));

X=linspace(0,6,300);
plot(X, NewtonInterp(x,f(x),X))
