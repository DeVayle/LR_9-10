program lr10_2;

var
  m: array [1..6, 1..8] of integer;
  a: array [1..6] of integer;
  i, j, k, p: integer;
  
begin
  for i:=1 to 6 do
    for j:=1 to 8 do
      m[i, j]:= random(-10, 10);
    
for i:=1 to 6 do 
begin
   for j:=1 to 8 do 
      write (m[i, j]:4); 
   writeln;
end;

for i:=1 to 6 do
  for j:=1 to 8 do
    if m[i, j] > 0 then inc(p);
  
if p = 48 then
  for k:=1 to 6 do
    a[k]:= 1
else
  for k:=1 to 6 do
    a[k]:= -1;
writeln;
writeln (a);
end.