function A=lab3ex1(x)
    A=[];
    a=1;
    for i=1:length(x)
        for j=1:length(x)
            if i ~= j
                a=a*1/(x(i)-x(j));
            end
        end
        A=[A,a];
        a=1;
    end
end