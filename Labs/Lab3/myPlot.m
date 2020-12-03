function myPlot()
f = @(x) (1+cos(pi*x))./(1+x);
%     fplot(f,[0,10])
%     nodes = linspace(0,10,21)
%     values = [];
%     for i=1:21
%         values=[values,f(nodes(i))];
%     end
%     lagranges=[];
%     for i=1:21
%         lagranges=[lagranges, lagrange(nodes(i), nodes, values)];
%     end
clf;hold on;
fplot(f, [0,10], 'LineWidth', 4)
x=linspace(0,10,21);
L=@(n) lagrange(n, x, f(x));
fplot(L, [0,10], '--or')
end