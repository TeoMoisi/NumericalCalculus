function table = div_diff_table(nodes, values, derivatives)
    %matrix dimension
    n = 2*length(nodes);
    %we initialise the table's values
    table = NaN(n);
    %on the first column we pun the double values
    table(:, 1) = repelem(values, 2)';
    %we double the nodes
    double_nodes = repelem(nodes, 2);
    %we complete the table beforehand in the points where we already know
    %the values, on the odd lines
    table(1:2:n-1, 2) = derivatives';
    %we also complete the values from the even lines
    table(2:2:n-2, 2) = diff(values)'./diff(nodes)';
    for j=3:n
        for i=1:n-j+1
            %compute Hermite Polynomial
            table(i, j) = (table(i+1, j-1) - table(i, j-1))/...
                (double_nodes(i+j-1)-double_nodes(i));
        end
    end
end
