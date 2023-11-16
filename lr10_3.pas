program lr10_3;

const n=8; m=8;

var
  a: array [1..n, 1..m] of integer;
  b: array [1..n] of integer;
  i, j: integer;
  
begin
  writeln('Исходный двумерный масив:');
  for i:=1 to n do
    for j:=1 to m do
      a[i, j] := random(-20, 20);
  writeln(a);
  writeln;
  
  for i:=1 to n do
    for j:=2 to m do
      if (a[i, j-1]+a[i, j]=7) then b[i]:=1
      else b[i]:=-1;
  writeln('Новый одномерный массив:');
  writeln(b);
end.