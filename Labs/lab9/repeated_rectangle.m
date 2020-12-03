function Rr=repeated_rectangle(f, a, b, n)
  % f - function to approximate
  % [a,b] - interval on which we approximate
  % n - number of equal splits of the interval
  
  h = (b - a) / n;
  
  % first we compute the sum and then the final formula
  x_1 = a + (b - a) / (2 * n);
  sum = f(x_1);
  for k = 2:n
    x_k = x_1 + (k - 1) * ((b - a) / n);
    sum += f(x_k);
  end
  
  % apply the final formula
  Rr = ((b - a) / n) * sum;
 end
