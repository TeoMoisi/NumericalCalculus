function problem1()
    %time
    nodes = [0,3,5,8,13];
    %distance
    values = [0,225,383,623,993];
    %speed
    derivatives = [75,77,80,74,72];
    t = 10;
    [distance, speed] = HermiteInterpolation(nodes, values, derivatives, t);
    disp(distance)
    disp(speed)
end
