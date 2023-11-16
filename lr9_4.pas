program lr9_4;

const n=10;

var
  a, b: array of integer;
  i, s1, s2: integer;
  
  
procedure pro10(i, s1, s2: integer; var a, b: array of integer);
const n=10;
var aa, bb: array [1..n] of integer;
begin
  writeln('Изначальные массивы:');
  for i:=1 to n do
  begin
    aa[i]:=random(-20, 20);
    bb[i]:=random(-20, 20);
  end;
  writeln(aa);
  writeln(bb);
  writeln;
  
  for i:=1 to n do
  begin
    if aa[i]>0 then s1:=s1+aa[i];
    if bb[i]>0 then s2:=s2+bb[i];
  end;
  if s1<s2 then
    for i:=1 to n do
      aa[i]:=aa[i]*10
  else
    for i:=1 to n do
      bb[i]:=bb[i]*10;
  writeln('Изменённые массивы:');
  writeln(aa);
  writeln(bb);
end;

begin
  pro10(i, s1, s2, a, b);
end.