function area=reptrap(f,a,b,n)
  %trapezium’s quadrature formula
  %the height, multiple small intervals
  h=(b-a)/n; 
  x=a+h:h:b-h;
  area=h/2*(f(a)+2*sum(f(x))+f(b));
end
