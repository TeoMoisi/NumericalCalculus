function problem2()
    clf;
    %the x and y axes will be equl, x is from 0 to 2 and y is from 0 to 1
    axis equal;
    axis([0 2 0 1]);
    %the table will have little squares
    xticks(0:0.1:2);
    yticks(0:0.1:1);
    
     grid on;
     hold on;
     set(0, "defaultaxesfontsize", 15);
     set(0, "defaultaxesLineWidth", 3);
     %we read the coordinates of a single point
     [x,y] = ginput(1); 
     X=y; 
     Y=y;
     i = 1;
     %cat timp avem un punct citit, citim in continuare si afisam punctul
     %it stops when we press enter
     while ~isempty([x,y])
         plot(x,y,'*r','MarkerSize',10);
         %we show the number of the point
         text(x+0.1,y+0.1,num2str(i));
         %we read a new point
         [x,y]=ginput(1);
         i=i+1;
         X=[X,x];
         Y=[Y,y];
     end
     %the nodes number is equal to X length
     nodes = linspace(0,1,length(X)); 
     %we create a division with many points
     time = linspace(0,1,1000);
 
     %we construct the splines
     spline_x = spline(nodes,X,time);
     spline_y = spline(nodes,Y,time);
     plot(spline_x, spline_y);
end
