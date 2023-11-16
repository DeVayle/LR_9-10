program lr9_5;

var
  a, b: array of integer;
  i, j, a5, b5: integer;
  
function pon(arr, barr: array of integer): string;
var max, min, k, g, ind: integer;
begin
  max:= arr[0];
  for k:=1 to arr.Length - 1 do
    if arr[k] > max then max:= arr[k];
  for k:=0 to arr.length - 1 do
    if arr[k] = max then arr[k]:=0;
  
  min:= barr[0];
  for g:=1 to barr.Length - 1 do
    if barr[g] < min then min:= barr[g];
  for g:= 0 to barr.Length - 1 do
    if barr[g] = min then ind:=g;
  for g:= ind+1 to barr.length - 1 do
    barr[g]:= barr[g]*2;
  
  writeln(arr);
  writeln(barr);
  pon:= '';
end;


begin
  setlength (a, 10);
  setlength (b, 10);
  writeln ('Изначальные массивы: ');
  for i:=0 to a.length - 1 do
    a[i]:= random(-10, 10);
  for j:=0 to b.length - 1 do
    b[j]:= random(-10, 10);
  writeln (a);
  writeln (b);
  
  for i:=0 to a.Length - 1 do
    if (a[i] mod 5 = 0) then 
      begin 
      a5:=i+1; 
      break;
      end;
  
    for j:=0 to b.Length - 1 do
    if (b[j] mod 5 = 0) then
      begin 
      b5:=j+1; 
      break;
      end;
      writeln('Получившиеся массивы: ');
      if a5 < b5 then
      writeln(pon(a, b))
      else writeln (pon(b, a));
end.