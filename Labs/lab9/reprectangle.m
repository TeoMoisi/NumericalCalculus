function area=reprectangle(f,a,b,n)
  h=(b-a)/n;
  x=a+h:h:b-h;
  area=h*sum(f(x));
end

