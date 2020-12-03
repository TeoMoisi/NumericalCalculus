function result=problem2()
    nodes = [1 2];
    values = [0 0.6931];
    derivatives = [1 0.5];
    
    [Hx, ~] = HermiteInterpolation(nodes, values, derivatives, 3/2);
    result = abs(Hx - log(3/2));
end
