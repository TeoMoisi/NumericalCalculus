    x=1:1:115;
    y=sqrt(x);
    X=115;
    
    l=length(x);
    %transform from columns to lines to facilitate iterantion
    aitken=y';
    for i=1:l
        for j=1:i-1
            Det=det([aitken(j,j),x(j) - X; aitken(i,j),x(i) - X]);
            aitken(i,j+1)=1/(x(i)-x(j)) * Det;
        end
    end
    sqrt(X)
    aitken(l,l)
