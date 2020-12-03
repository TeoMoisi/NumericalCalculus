function table=divDiff(nodes,values)
  %nodes: x1..xn
  %values: f(x1)...f(nx)
  %table: divided differences
  n=length(nodes);
  table=NaN(n);
  %toate liniile de pe coloana 1
  %transpusa
  table(:,1)=values';
  %we transform the line in a columns
  nodes=nodes';
  %we iterate on columns, starting from the second one
  for i=2:n
    table(1:n-i+1,i)=diff(table(1:n-i+2,i-1))./(nodes(i:n)-nodes(1:n-i+1));
  end
end
