function [Hx, derHx] = HermiteInterpolation(nodes, values, derivatives, X)
    %Hx - distance
    %derHx - velocity
    table = div_diff_table(nodes, values, derivatives);
    double_nodes = repelem(nodes, 2)';
    %first line of the table
    coefs = table(1, :);
    Hx = coefs(1);
    %the first product is 1
    Prod = 1;
    derHx = 0;
    derProd = 0;
    for k=2:length(coefs)
        %we need the old Prod
        derProd = derProd * (X - double_nodes(k-1)) + Prod;
        Prod = Prod * (X - double_nodes(k-1));
        Hx = Hx + coefs(k)*Prod;
        derHx = derHx + coefs(k) * derProd;
    end
end
