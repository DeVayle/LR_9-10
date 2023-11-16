program lr10_1;

const n=6; m=8;

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
    if (a[i, 1]>4) or (a[i, 1]<-4) then b[i]:=a[i, 1]
    else b[i]:=0;
  writeln('Новый одномерный массив:');
  writeln(b);
end.
  