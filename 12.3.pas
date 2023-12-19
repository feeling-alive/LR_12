program zad3;

var
  pon: text;
  s: string;
  
begin
  read(s);
  assign(pon, 'd:\text.txt');
  append(pon); //дополнение файла
  writeln(pon, s);
  close(pon);
end.