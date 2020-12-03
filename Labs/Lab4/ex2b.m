X = linspace(1, 4, 100);
nodes=[1 2 3 4 5];
values=[22 23 25 30 28];
plot(X, NewtonInterp(nodes, values, X));
