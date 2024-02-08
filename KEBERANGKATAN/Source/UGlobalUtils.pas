unit UGlobalUtils;

interface
uses
  SysUtils, Classes, Variants;

type
  TSQLLikeType = (ltAll, ltLeft, ltRight);
{-- Dynamic Array type --}
  TDynVariantArray = array of Variant;
  TDynStringArray = array of String;
  
function SplitStr(const ADelimiter: Char; const AStr: String): TStrings;
function TextToSQLIn(AText: String): String;
function SplitVariantToArray(const AValue: Variant): TDynVariantArray;

{-- Formatting --}
function FormatFieldDuration(ATimeType: String;
  DisplayText: Boolean; ADuration: Single): String;

implementation

function SplitStr(const ADelimiter: Char; const AStr: String): TStrings;
var
  S: TStrings;
begin
  S := TStringList.Create;
  Assert(Assigned(S)) ;
  S.Clear;
  S.Delimiter := ADelimiter;
  S.DelimitedText := AStr;
  Result := S;
end;

function TextToSQLIn(AText: String): String;
var
  S: TStrings;
  i:Integer;
begin
  S := SplitStr(',', AText);
  for i := 0 to S.Count-1 do
  begin
    S[i] := QuotedStr(S[i]); 
  end;
  Result := S.DelimitedText;
  S.Free;
end;

function SplitVariantToArray(const AValue: Variant): TDynVariantArray;
var
  I, L, H: Integer;
begin
  if VarIsArray(AValue) then
  begin
    L := VarArrayLowBound(AValue, 1);
    H := VarArrayHighBound(AValue, 1);
    SetLength(Result, H - L + 1);
    for I := L to H do
      Result[I - L] := AValue[I];
  end
  else
  begin
    SetLength(Result, 1);
    Result[0] := AValue;
  end;
end;


{-- Formatting --}
function FormatFieldDuration(ATimeType: String;
  DisplayText: Boolean; ADuration: Single): String;
var
  TimeFormat: String;
begin
  if DisplayText=True then
  begin
    if ADuration>1 then
      TimeFormat := ATimeType + 's'
    else
      TimeFormat := ATimeType;
    Result := FormatFloat('0.## ' + TimeFormat, ADuration);
  end;
end;

end.
