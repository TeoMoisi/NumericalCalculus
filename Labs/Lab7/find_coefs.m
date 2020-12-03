function [a, b] = find_coefs(x, f)
    m = length(x);
    sumx = sum(x);
    sumf = sum(f);
    sum_square = sum(x.^2);
    
    prod = x*f';
    %from course6, page 6, we got the equations for a and b
    a = (m * prod - sumx * sumf)./(m * sum_square - sumx.^2);
    b = (sum_square * sumf - prod * sumx)./(m * sum_square - sumx.^2);
end
