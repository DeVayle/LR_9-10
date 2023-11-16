program lr9_3;

var
  b: array of integer;
  j: integer;

function Coco(a: array of integer): integer;
var
  i, q: integer;
begin
  q := 0;
  for i := 0 to a.length - 1 do
        {if a[i] > 0 then begin
            q:= i+1;
            break;}//для первого положительного
    if a[i] < 0 then q := i + 1;
    {end;}
  Coco := q;
end;

begin
  writeln('Введите массив: ');
  setlength(b, 10);
  for j := 0 to b.Length - 1 do
    read(b[j]);
  
  writeln('Номер последнего отрицательного элемента массива: ', Coco(b));
end.