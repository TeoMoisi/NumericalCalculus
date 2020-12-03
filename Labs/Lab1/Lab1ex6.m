%ex6.
g = 2
for index = 1:4
    %disp(index)
    g = 1 + 1/g
end
%disp('Hello')
disp(g)

%ex7
x = linspace(-2, 2)
y = linspace(-4, 4)
[x,y] = meshgrid(x,y)
z = exp(-1.*((x-1/2).^2+(y-1/2).^2));
mesh(x,y,z)
%surf(x,y,z)
colormap hsv
