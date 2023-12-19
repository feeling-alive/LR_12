program zad6;
var
  F_in,F_out: Text;
  line: string;

begin
 Assign(F_in, 'd:\text.txt');
 Assign(F_out,'d:\output.txt');

 Reset(F_in);
 Rewrite(F_out);

 While not eof(F_in) do
  begin
   Readln(F_in, line);
   if line<>'' then Writeln(F_out,line);
  end;

 Close(F_in);
 Close(F_out);
 {Erase(F_in);
 Rename(F_out, 'c:\input.txt');}
end.