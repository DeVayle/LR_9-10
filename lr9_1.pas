program lr9_1;

var
  b: array of integer;

function Proiz(a: array of integer): integer;
var
  i, p: integer;
begin
  p:= 1; 
  i:=0;
  {for i := 0 to a.length - 1 do  
    p := p * a[i];} //1 часть задания
   for i := 0 to a.length - 1 do
    if a[i] mod 2 = 0 then  
    p := p * a[i];
  Proiz := p; 
end;

begin
  writeln ('Введите массив: ');
  setlength(b, 10);
  for var j := 0 to b.Length - 1 do
    read(b[j]);
  
  writeln('Произведение четных элементов массива = ', Proiz(b));
  
  setlength(b, 0);
end.