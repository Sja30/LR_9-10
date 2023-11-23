program z1_2;
var
    a: array[1..20] of byte;
    max, n: byte;
    i: byte;
 
begin
   for i := 1 to 20 do
       begin
        a[i] := random(100);
        write (a[i]:3);
    end;
 
    n:= 1;
    max := a[1];
 
    for i := 2 to 20 do
        if a[i] < max then 
          begin
            n := i;
            max:= a[i];
        end;
 
    writeln;
    writeln ('Минимальный элемент: ',max);
    writeln ('номер элемента: ', n);
 
end.