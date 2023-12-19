program zad2;

var
  fft: text;
  i, j, n, k: integer;
  
begin
  readln(n, k);
  assign(fft, 'd:\fft.txt');
  rewrite(fft);
  for i:=1 to n do
    begin
    for j:=1 to k do
      print(fft, '*');
    writeln(fft, #10);
    end;
  close(fft);
end.