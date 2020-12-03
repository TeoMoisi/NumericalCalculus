function lab8problem1b()
    clf;
    hold on;
    grid on;
    a = 0;
    b = 1;
    f = @ (x) 2./(1+x.^2);
    %put the elements of the axis and the result of functions 
    x = [0 0 1 1];
    y = [0 f(0) f(1) 0];

    %plot of the function
    plot([a b],[f(a) f(b)],'r','LineWidth',8);
    %fill the plot
    fill([a b b a],[f([a b]) 0 0],'g','FaceAlpha',0.25);
    hold on
    x=0:0.01:1;
    plot(x,f(x));
    %fill the plot
    fill([x b a],[f(x) 0 0],'b','FaceAlpha',0.25);
end

