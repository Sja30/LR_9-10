program z5;

const
  N = 8;

var
  twoDArray: array[1..N, 1..N] of Integer;
  oneDArray: array[1..N] of Integer;
  
  i, j, max, countMax: Integer;
  
begin
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      twoDArray[i, j] := Random(100) + 1;
    end;
  end;

  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      Write(twoDArray[i, j]:3);
    end;
    Writeln;
  end;

  for i := 1 to N do
  begin
    max := twoDArray[i, 1];
    countMax := 1;
    
    for j := 2 to N do
    begin
      if twoDArray[i, j] > max then
      begin
        max := twoDArray[i, j];
        countMax := 1;
      end
      else if twoDArray[i, j] = max then
        countMax := countMax + 1;
    end;
    
    if countMax = 1 then
      oneDArray[i] := 1
    else
      oneDArray[i] := -1;
  end;

  for i := 1 to N do
  begin
    Write(oneDArray[i]:3);
  end;
  
  Readln;
end.
