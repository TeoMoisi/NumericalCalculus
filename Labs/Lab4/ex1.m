nodes = [1, 1.5, 2, 3, 4];
values = [0, 0.17609, 0.30103, 0.47712, 0.60206];
NewtonInterp(nodes, values, 2.5)
NewtonInterp(nodes, values, 3.25)

%maximum interpolation error
errors=[0 0 0 0 0 0 0 0 0 0];
for i=10:35
    y=i/10;
    res=NewtonInterp(nodes, values, y);
    logRes=log(y);
    error=abs(logRes-res)
    errors(i)=error;
    %print(error)
end
max(errors)
