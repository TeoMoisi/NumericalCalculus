function x = gauss(A, b)
  n=length(b);
  A = [A b];
  for k = 1 : n-1
    [maxVal, maxPos] = max(abs(A(k:n, k)));
    maxPos = maxPos + k - 1;
    if maxVal == 0
        disp("No unique solution!")
        return
    elseif maxPos ~= k
        A([maxPos, k], k:n+1) = A([k, maxPos], k:n+1);
    end
    
    for i=k+1:n
        A(i, k:n+1) = A(i, k:n+1) - A(k, k:n+1) * A(i, k)/ A(k, k);
    end
    x = backward(A(:, 1:n), A(:, n+1));
  end
    
end
