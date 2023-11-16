program lr9_2;

const n=10;

var
  a: array [1..n] of integer;
  i, q, max, maxind, minmod, maxotr: integer;

procedure maximum(i: integer; var max, maxind: integer);
const n=10;
var
  a: array [1..n] of integer;
  
begin
  writeln('Массив:');
  for i:=1 to n do
    a[i] := random(-20, 20);
  writeln(a);
  
  max := a[1];
  maxind := 1;
  for i:=2 to n do
    if a[i] > max then 
    begin
      max := a[i];
      maxind := i;
    end;
end;


procedure maximum2(i, q:integer; var minmod, maxotr: integer);
const n=10;
var
  a: array [1..n] of integer;
  
begin
  writeln('Массив:');
  for i:=1 to n do
    a[i] := random(-20, 20);
  writeln(a);
  
  if a[1]<0 then minmod := a[1]*-1
  else minmod := a[1];
  for i:=2 to n do
    if a[i]<0 then
    begin
      q := a[i]*-1;
      if q<minmod then minmod := q;
    end
    else
      if a[i]<minmod then minmod := a[i];
  
  maxotr := a[1];
  for i:=2 to n do
  begin
    if (a[i]<0) and (a[i-1]>0) then maxotr:=a[i];
  end;
  for i:=1 to n do
    if (a[i]<0) and (a[i]>maxotr) then maxotr:=a[i];
end;



begin
  maximum(i, max, maxind);
  writeln('Максимальный элемент: ', max);
  writeln('Индекс максимального элемента: ', maxind);
  writeln;
  
  maximum2(i, q, minmod, maxotr);
  writeln('Минимальный по модулю элемент: ', minmod);
  writeln('Максимальный отрицательный элемент: ', maxotr);
end.