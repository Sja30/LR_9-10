program z1;
function MultiplyElements(arr: array of Integer): Integer;
var
  i: Integer;
begin
  Result := 1;
  for i := Low(arr) to High(arr) do
    Result := Result * arr[i];
end;

function MultiplyEvenElements(arr: array of Integer): Integer;
var
  i: Integer;
begin
  Result := 1;
  for i := Low(arr) to High(arr) do
  begin
    if arr[i] mod 2 = 0 then 
      Result := Result * arr[i];
  end;
end;

var
  arr: array of Integer;
  i: Integer;
begin
  SetLength(arr, 5);
  arr[0] := 2;
  arr[1] := 4;
  arr[2] := 6;
  arr[3] := 8;
  arr[4] := 10;
  writeln(MultiplyElements(arr)); 
  writeln(MultiplyEvenElements(arr)); 

  readln;
end.