program lr10_4;

var
  m: array [1..8, 1..8] of integer;
  a: array [1..8] of integer;
  min, sr, i, j: integer;
  answer: boolean;
  
begin
  for i:=1 to 8 do
   for j:=1 to 8 do
     m[i, j]:= random(-10, 10);
   
   for i:=1 to 8 do
   begin
     min:= m[i, 1];
     for j:= 2 to 8 do begin
       if m[i, j] < min then min:=m[i, j];
       a[i]:= min;
       end
   end;
   
   writeln (m);
   writeln;
   writeln (a);
   
   for i:=1 to 8 do
     sr:= sr+a[i];
  sr:= round(sr/8);

  for i:=1 to 8 do
    if a[i] = sr then begin
    answer:= TRUE;
    break;
    end
    else answer:= FALSE;
    
  if answer = FALSE then Writeln('Mассив НЕ содержит свое среднее арифметическое (', sr, ')')
  else writeln('Mассив содержит свое среднее арифметическое (', sr, ')')
end.
