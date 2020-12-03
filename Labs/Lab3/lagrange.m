function L=lagrange(n, x, y)
A=lab3ex1(x);
L=n;
for j=1:length(n)
    numitor=0;
    numarator=0;
    for i=1:length(x)
        numitor=numitor+A(i)*y(i)/(n(j)-x(i));
        numarator=numarator+A(i)/(n(j)-x(i));
    end
    L(j)=numitor/numarator;
end
end