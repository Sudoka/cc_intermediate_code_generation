program parser_test;

var
  i,j,num  : integer;

procedure writestring(s : string); forward;

procedure writeint(i : integer); forward;

function readint() : integer;
var
    n : integer;
begin
    readint := n
end;

function divides(x,y : integer) : boolean;
begin
  divides := y = x*(y div x) 
end;


begin
  writestring("How many ?");
  num := readint();
  writestring("Divisor ?");
  i := readint();
  writeint(i);
  for j := 1 to num do begin
    writestring("###########");
    writeint(j);
    if divides(i,j) then 
      writestring("yes")
      else 
      writestring("no");
    writeint(j mod i)  
  end
end.
