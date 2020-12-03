function leastSquaresLinear(k)
    clf;
    %the x and y axes will be equl, x is from 0 to 2 and y is from 0 to 1
    axis equal;
    axis([0 3 0 5]);
    %axis([0 2 0 1]);
    %the table will have little squares
    xticks(0:0.1:3);
    yticks(0:0.1:5);
    
     grid on;
     hold on;
     set(0, "defaultaxesfontsize", 15);
     set(0, "defaultaxesLineWidth", 3);
     %we read the coordinates of a single point
     [x,y] = ginput(1); 
     nodes=y; 
     values=y;
     i = 1;
     %cat timp avem un punct citit, citim in continuare si afisam punctul
     %it stops when we press enter
     while ~isempty([x,y])
         plot(x,y,'*r','MarkerSize',10);
         %we read a new point
         %the order does not matter
         [x,y]=ginput(1);
         i=i+1;
         nodes=[nodes,x];
         values=[values,y];
     end
     %X - nodes
     coefs_least_squares = polyfit(nodes, values, k);
     poly_least_squares = @(x)polyval(coefs_least_squares, x);
     fplot(poly_least_squares, [0, 3], 'LineWidth', 3);
     error=norm(values-poly_least_squares(nodes))
end
