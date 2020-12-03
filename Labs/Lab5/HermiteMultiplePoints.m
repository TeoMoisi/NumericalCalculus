function [Hx, derHx] = HermiteMultiplePoints(nodes, values, derivatives, X)
    %we will plot the graph which approximates the velocity of the driver
    %Hx - distance
    %derHx - velocity
    table = div_diff_table(nodes, values, derivatives);
    double_nodes = repelem(nodes, 2)';
    %first line of the table
    coefs = table(1, :);
    %Hx and derHxx have the same dimensions
    Hx = X;
    derHx = X;
    for i=1:length(X)
        Hx(i) = coefs(1);
        %the first product is 1
        Prod = 1;
        derHx(i) = 0;
        derProd = 0;
        for k=2:length(coefs)
            %we need the old Prod
            derProd = derProd * (X(i) - double_nodes(k-1)) + Prod;
            Prod = Prod * (X(i) - double_nodes(k-1));
            Hx(i) = Hx(i) + coefs(k)*Prod;
            derHx(i) = derHx(i) + coefs(k) * derProd;
        end
    end
end
