program zad5;
var
  a: array of integer;
  inp, out: text;
  min, max, n: integer;
  i: integer;

begin
  Assign(inp, 'd:\text.txt');
  Reset(inp);
  while not Eof(inp) do
  begin
    ReadLn(inp, n);
    SetLength(a, Length(a) + 1);
    a[high(a)] := n; //high - верхняя граница массива//записываем числа из файла в конец массива
  end;
  Close(inp);
  
  min := a[0];
  max := a[0];
  for i := 1 to high(a) do
  begin
    if a[i] < min then
      min := a[i];
    if a[i] > max then
      max := a[i];
  end;
  
  AssignFile(out, 'd:\output1.txt');
  Rewrite(out);
  WriteLn(out, min, ' ', max);
  CloseFile(out);
end.