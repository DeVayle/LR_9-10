program lr10_5;

const n=8; m=8;

var
  a: array [1..n, 1..m] of integer;
  b, maxmass: array [1..n] of integer;
  i, j, k, max: integer;
  
begin
  writeln('Исходный двумерный масив:');
  for i:=1 to n do
    for j:=1 to m do
      a[i, j] := random(-20, 20);
  writeln(a);
  writeln;
  
  for i:=1 to n do
    begin
      max := a[i, 1];
      for j:=2 to m do
        if a[i, j]>max then max := a[i, j];
      for j:=1 to m do
        if a[i, j]=max then inc(k);
      if k=1 then b[i]:=1
      else b[i]:=-1;
      k:=0;
    end;
      
  writeln('Новый одномерный массив:');
  writeln(b);
end.