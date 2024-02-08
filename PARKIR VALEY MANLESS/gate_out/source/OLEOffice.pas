unit OLEOffice;

interface

uses Forms, Controls, SysUtils, ComObj, Variants;

const
  wdCharacter = $00000001;
  wdLine = $00000005;
  wdCell = $0000000C;
  wdExtend = $00000001;
  xlLeft = $FFFFEFDD;
  xlTop = $FFFFEFC0;
  xlCenter = $FFFFEFF4;
  xlRight = $FFFFEFC8;
  wdPageBreak = $00000007;
  wdGotoBookmark = $FFFFFFFF;
  wdDialogFilePrint = $00000058;

  //excel cell border style
  xlInsideHorizontal = $0000000C;
  xlInsideVertical = $0000000B;
  xlDiagonalDown = $00000005;
  xlDiagonalUp = $00000006;
  xlEdgeBottom = $00000009;
  xlEdgeLeft = $00000007;
  xlEdgeRight = $0000000A;
  xlEdgeTop = $00000008;
  xlDialogPrint = $00000008;

  xlNone = $FFFFEFD2;
  xlContinuous = $00000001;
  xlThin = $00000002;
  xlAutomatic = $FFFFEFF7;
  xlSolid = $00000001;

  wdNoProtection = $FFFFFFFF;
  wdAllowOnlyRevisions = $00000000;
  wdAllowOnlyComments = $00000001;
  wdAllowOnlyFormFields = $00000002;

type
  IWaitCursor = interface
  end;

  TWaitCursor = class(TInterfacedObject, IWaitCursor)
  private
    OldCursor: TCursor;
  public
    constructor Create;
    destructor Destroy;override;
  end;

  TFontModifier = (fonAllCaps, fonBold, fonItalic, fonUnderline, fonStrikeThrough);
  TFontModifierSet = set of TFontModifier;
  
  TOLEWord=class(TObject)
  private
    OLEInterface: Variant;
  public
    ADoc, Table, Bookmark, Selection: Variant;
    constructor Create;
    function Summon: Boolean;
    function SummonDocument(FileName: string): Boolean;
    function ReplaceBookmark(mWhich, mWhat: string): Boolean;
    function Show(mCaption: string): Boolean;
    function PrintPreview(Protect : Boolean = true): Boolean;
    function isPrintPreview: Boolean;
    function Save(FileName: string): Boolean;
    function SaveAsHTML(FileName: string): Boolean;
    function DoPrint: Boolean;
    function ShowPrintDialog: Boolean;
    function DisableAlerts: Boolean;
    procedure Unsummon;
    destructor Destroy; override;
    //Word Table Handling
    function RowCount(mWhich: Integer): Integer;
    function ColCount(mWhich: Integer): Integer;
    function FillTable(mWhich, Row, Col: Integer; mWhat: string): Boolean;
    function FillTable2(mWhich: string; Row, Col: Integer; mWhat: string): Boolean;
    function SelectCell(mWhich, Row, Col: Integer): Boolean;
    function EmptyTable(mWhich, TitleCount: Integer): Boolean;
    function DeleteTable(mWhich: Integer): Boolean;
    function InsertCellBelow: Boolean;
    function SelectFirstRow(mWhich: Integer): Boolean;
    function SelectLastRow(mWhich: Integer): Boolean;
    function SelectRow: Boolean;
    function EmptyRow: Boolean;
    function DeleteRow: Boolean;
    function MoveLeft: Boolean;
    function MoveRight: Boolean;
    function MoveUp: Boolean;
    function MoveDown: Boolean;
    function MoveToBookmark(mWhat:String):Boolean;
    function InsertPicture(FileName: string): Boolean;
    function Selection_Between_Bookmark(Bm1, Bm2: string): Boolean;
    function Selection_Bookmark_Till_End_Document(Bm: string): Boolean;
    function Selection_Delete: Boolean;
    function CopyPasteSelection(Start,Ending:String):Boolean;
    function MoveDownAndReplace(mWhat:String):Boolean;
    function ModifyFont(FontMod: TFontModifierSet):Boolean;
  end;

  TOLEExcel=class(TObject)
  private
    OLEInterface: Variant;
  public
    OLEApplication: Variant;
    constructor Create;
    function Summon: Boolean;
    function SummonWorkBook(FileName: string): Boolean;
    function Show(mCaption: string): Boolean;
    function SetText(mWhere, mWhat: OleVariant): Boolean;
    function GetText(mWhere: OleVariant): OleVariant;
    function addRow(mWhere: string; mMuch: Integer): Boolean;
    function delRow(mWhere: string; mMuch: Integer): Boolean;
    function PrintPreview: Boolean;
    function Save(FileName: string): Boolean;
    function SaveAsHTML(FileName: string): Boolean;
    function DoPrint: Boolean;
    function ShowPrintDialog: Boolean;
    function DisableAlerts: Boolean;
    function RowFillDown(mWhere: string): Boolean;
    function Select(mWhere: string): Boolean;
    function GetRow(mWhere: string): integer;
    function GetColumn(mWhere: string): integer;
    function Left_Merge_Wrap: Boolean;
    function CenterAlign: Boolean;
    function RightAlign: Boolean;
    function LeftAlign: Boolean;
    function SetColumnWidth(mWhere: string; mWidth: Integer): Boolean;
    function SetBorder(mWhere: string; PatternType: Integer; isColored: Boolean): Boolean;
    function ColsHide(mWhere: String; isHide:Boolean): Boolean;
    procedure Unsummon;
    destructor Destroy; override;
  end;

implementation

// TWaitCursor

constructor TWaitCursor.Create;
begin
  inherited;
  OldCursor:= Screen.Cursor;
  Screen.Cursor:= crHourGlass
end;

destructor TWaitCursor.Destroy;
begin
  Screen.Cursor:= OldCursor;
  inherited
end;

// TOLEWord

constructor TOLEWord.Create;
begin
  inherited;
  OLEInterface:= Unassigned
end;

function TOLEWord.Summon: Boolean;
begin
  Result:= False;
  try
    OLEInterface:= CreateOleObject('Word.Application');
    OLEInterface.Visible:= False;
    OLEInterface.ScreenUpdating:= False;
    OLEInterface.Options.CheckSpellingAsYouType := False;
    OLEInterface.Options.CheckGrammarAsYouType := False;
    Result:= True
  except
  end
end;

function TOLEWord.SummonDocument(FileName: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Documents.Add(FileName, False);
    ADoc:= OLEInterface.ActiveDocument;
    Table:= ADoc.Tables;
    Bookmark:= ADoc.Bookmarks;
    Selection:= OLEInterface.Selection;
    Result:= True
  except
  end
end;

function TOLEWord.ReplaceBookmark(mWhich, mWhat: string): Boolean;
begin
  Result:= False;
  try
    Bookmark.Item(mWhich).Range.Text:= mWhat;
    Result:= True
  except
  end
end;

function TOLEWord.MovetoBookmark(mWhat:String):Boolean;
begin
  Result := false;
  try
    Selection.GoTo(What:= wdGoToBookmark, Name:=mWhat).Select;
    result := true;
  except;
  end;
end;

function TOLEWord.MoveDownAndReplace(mWhat:String):Boolean;
begin
  Result := false;
  try
    Selection.MoveLeft(wdCharacter,1);
    Selection.MoveDown(wdLine,1);
    Selection.HomeKey(wdLine);
    Selection.EndKey(wdLine,wdExtend);
    Selection.TypeText(mWhat);
    result := true;
  except
  end;
end;

function TOLEWord.ModifyFont(FontMod: TFontModifierSet):Boolean;
begin
  Result:= True;
  try
    Selection.Font.AllCaps:= (fonAllCaps in FontMod);
  except Result:= False end;
  try
    Selection.Font.Bold:= (fonBold in FontMod);
  except Result:= False end;
  try
    Selection.Font.Italic:= (fonItalic in FontMod);
  except Result:= False end;
  try
    Selection.Font.UnderLine:= (fonUnderLine in FontMod);
  except Result:= False end;
  try
    Selection.Font.StrikeThrough:= (fonStrikeThrough in FontMod);
  except Result:= False end;
end;

function TOLEWord.Show(mCaption: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Caption:= mCaption;
    OLEInterface.ScreenUpdating:= True;
    OLEInterface.Visible:= True;
    Result:= True
  except
  end
end;

function TOLEWord.PrintPreview(Protect : Boolean = true): Boolean;
begin
  Result:= False;
  try
    //ADoc.Protect(2, False, 'awsxdrfvgyhnjik');
    if protect then
      //don't give any password for the lock...!!!
      ADoc.Protect(2);
    OLEInterface.WindowState:= 1;
    ADoc.PrintPreview;
    Result:= True          
  except
  end
end;

function TOLEWord.isPrintPreview: Boolean;
begin
  Result:= OLEInterface.PrintPreview
end;


function TOLEWord.CopyPasteSelection(Start,Ending:String):Boolean;
begin
  Result := false;
  try
    Selection_Between_Bookmark(Start,Ending);
    Selection.Copy;
    Bookmark.Item(Ending).Range.Select;
    MoveDown;
    Selection.InsertBreak(wdPageBreak);
    Selection.Paste;
    Result := true;
  except
  end;
end;

function TOLEWord.Save(FileName: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.DisplayAlerts:= 0;
    ADoc.SaveAs(FileName, 0);
    Result:= True
  except
  end
end;

function TOLEWord.SaveAsHTML(FileName: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.DisplayAlerts:= 0;
    ADoc.SaveAs(FileName, 8);
    Result:= True
  except
  end
end;

function TOLEWord.DoPrint: Boolean;
begin
  Result:= False;
  try
    ADoc.PrintOut(0);
    Result:= True
  except
  end
end;

function TOLEWord.ShowPrintDialog: Boolean;
begin 
  try
    OLEInterface.Dialogs.Item(wdDialogFilePrint).Show;
    Result:= True;
  finally
    OLEInterface.Visible:= False;
//    Result:= False;
  end;
end;

//Word Table Handling

function TOLEWord.RowCount(mWhich: Integer): Integer;
begin
  Result:= 0;
  try
    Result:= Table.Item(mWhich).Rows.Count
  except
  end
end;

function TOLEWord.ColCount(mWhich: Integer): Integer;
begin
  Result:= 0;
  try
    Result:= Table.Item(mWhich).Columns.Count
  except
  end
end;

function TOLEWord.FillTable(mWhich, Row, Col: Integer; mWhat: string): Boolean;
begin
  Result:= False;
  try
    SelectCell(mWhich, Row, Col);
    Selection.Text:= mWhat;
    Result:= True
  except
  end
end;

function TOLEWord.FillTable2(mWhich: string; Row, Col: Integer; mWhat: string): Boolean;
begin
  Result:= False;
  try
    Bookmark.Item(mWhich).Select;
    Selection.Tables.Item(1).Cell(Row, Col).Select;
    Selection.Text:= mWhat;
    Result:= True
  except
  end
end;

function TOLEWord.SelectCell(mWhich, Row, Col: Integer): Boolean;
begin
  Result:= False;
  try
    Table.Item(mWhich).Cell(Row,Col).Select;
    Result:= True
  except
  end
end;

//Empty table until 2 rows left
function TOLEWord.EmptyTable(mWhich, TitleCount: Integer): Boolean;
begin
  Result:= False;
  try
    SelectCell(mWhich, TitleCount+1, 1);
    while Table.Item(mWhich).Rows.Count > TitleCount+1 do
      Selection.Rows.Delete;
    SelectRow;
    EmptyRow;
    Result:= True
  except
  end
end;

function TOLEWord.DeleteTable(mWhich: Integer): Boolean;
begin
  Result:= False;
  try
    Table.Item(mWhich).Select; Table.Item(mWhich).Delete;
    Result:= True
  except
  end
end;

function TOLEWord.SelectFirstRow(mWhich: Integer): Boolean;
begin
  Result:= False;
  try
    Table.Item(mWhich).Rows.First.Select;
    Result:= True
  except
  end
end;

function TOLEWord.SelectLastRow(mWhich: Integer): Boolean;
begin
  Result:= False;
  try
    Table.Item(mWhich).Rows.Last.Select;
    Result:= True
  except
  end
end;

function TOLEWord.SelectRow: Boolean;
begin
  Result:= False;
  try
    Selection.SelectRow;
    Result:= True
  except
  end
end;

function TOLEWord.EmptyRow: Boolean;
begin
  Result:= False;
  try
    Selection.Delete(1,1);
    Result:= True
  except
  end
end;

function TOLEWord.DeleteRow: Boolean;
begin
  Result:= False;
  try
    Selection.Rows.Delete;
    Result:= True
  except
  end
end;

function TOLEWord.InsertCellBelow: Boolean;
begin
  Result:= False;
  try
    Selection.InsertRowsBelow(1);
    Result:= True
  except
  end
end;

function TOLEWord.MoveLeft: Boolean;
begin
  Result:= False;
  try
    Selection.MoveLeft(wdCell, 1);
    Result:= True
  except
  end
end;

function TOLEWord.MoveRight: Boolean;
begin
  Result:= False;
  try
    Selection.MoveRight(wdCell, 1);
    Result:= True
  except
  end
end;

function TOLEWord.MoveUp: Boolean;
begin
  Result:= False;
  try
    Selection.MoveUp(wdLine, 1);
    Result:= True
  except
  end
end;

function TOLEWord.MoveDown: Boolean;
begin
  Result:= False;
  try
    Selection.MoveDown(wdLine, 1);
    Result:= True
  except
  end
end;

// End Word Table Handling

function TOLEWord.InsertPicture(FileName: string): Boolean;
begin
  Result:= False;
  try
    Selection.InlineShapes.AddPicture(FileName, False, True);
    Result:= True
  except
  end
end;

function TOLEWord.Selection_Between_Bookmark(Bm1, Bm2: string): Boolean;
var R1, R2: Variant;
begin
  Result:= False;
  try
    R1:= Bookmark.Item(Bm1).Start; R2:= Bookmark.Item(Bm2).End;
    Selection.SetRange(R1, R2);
    Result:= True
  except
  end
end;

function TOLEWord.Selection_Bookmark_Till_End_Document(Bm: string): Boolean;
var R1, R2: Variant;
begin
  Result:= False;
  try
    R1:= Bookmark.Item(Bm).Start; R2:= ADoc.Content.End;
    Selection.SetRange(R1, R2);
    Result:= True
  except
  end
end;

function TOLEWord.Selection_Delete: Boolean;
begin
  Result:= False;
  try
    Selection.Delete;
    Result:= True
  except
  end
end;

function TOLEWord.DisableAlerts: Boolean;
begin
  Result:= False;
  try
    OLEInterface.DisplayAlerts:= 0;
    Result:= True
  except
  end
end;

procedure TOLEWord.Unsummon;
begin
  if not VarIsEmpty(OLEInterface) then begin
    try
      DisableAlerts;
      OLEInterface.Quit(0, 0, 0)
    finally
      OLEInterface:= Unassigned
    end;
  end;
end;

destructor TOLEWord.Destroy;
begin
  try
    if not VarIsEmpty(OLEInterface) then UnSummon
  finally
    inherited
  end
end;

// TOLEExcel

constructor TOLEExcel.Create;
begin
  inherited;
  OLEInterface:= Unassigned
end;

function TOLEExcel.Summon: Boolean;
begin
  Result:= False;
  try
    OLEInterface:= CreateOleObject('Excel.Application');
    //OLEInterface.Interactive:= False;
    OLEApplication:= OLEInterface;
    Result:= True
  except
  end
end;

function TOLEExcel.SummonWorkBook(FileName: string): Boolean;
begin
  Result:= False;
  try
    if FileName='' then OLEInterface.WorkBooks.Add
    else OLEInterface.WorkBooks.Add(FileName);
    Result:= True
  except
  end
end;

function TOLEExcel.Show(mCaption: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Caption:= mCaption;
    OLEInterface.Visible:= True;
    OLEInterface.WindowState:= $FFFFEFD7;
    Result:= True
  except
  end
end;


function TOLEExcel.ColsHide(mWhere: String; isHide:Boolean): Boolean;
begin
    Result := false;
    try
      //OLEInterface.Columns[mWhere + ':' + mwhere].Select;
      OleInterface.Range[mWhere].Activate;
      OleInterface.Selection.EntireColumn.Hidden := isHide;
      result := true;
    except
    end;
end;

function TOLEExcel.SetText(mWhere, mWhat: OLEVariant): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Range[mWhere].Value:= mWhat;
    Result:= True
  except
  end
end;

function TOLEExcel.GetText(mWhere: OleVariant): OleVariant;
begin
  Result:= Unassigned;
  try
    Result:= OLEInterface.Range[mWhere].Value;
  except
  end
end;

function TOLEExcel.addRow(mWhere: string; mMuch: Integer): Boolean;
var I: Integer;
begin
  Result:= False;
  try
    for I:= 1 to mMuch do
      OLEInterface.Range[mWhere].Insert(3);
    Result:= True
  except
  end
end;

function TOLEExcel.delRow(mWhere: string; mMuch: Integer): Boolean;
var I: Integer;
begin
 Result:= False;
  try
    for I:= 1 to mMuch do
      OLEInterface.Range[mWhere].Delete(3);
    Result:= True
  except
  end
end;

function TOLEExcel.PrintPreview: Boolean;
begin
  Result:= False;
  try
    OLEInterface.ActiveWorkbook.ActiveSheet.PrintPreview;
    Result:= True
  except
  end
end;

function TOLEExcel.Save(FileName: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.DisplayAlerts:= False;
    OLEInterface.ActiveWorkbook.SaveAs(FileName, $FFFFEFD1);
    Result:= True
  except
  end
end;

function TOLEExcel.SaveAsHTML(FileName: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.DisplayAlerts:= False;
    OLEInterface.ActiveWorkbook.SaveAs(FileName, 44);
    Result:= True
  except
  end
end;

function TOLEExcel.DoPrint: Boolean;
begin
  Result:= False;
  try
    OLEInterface.ActiveWorkbook.Activesheet.PrintOut;
    Result:= True
  except
  end;
end;

function TOLEExcel.DisableAlerts: Boolean;
begin
  Result:= False;
  try
    OLEInterface.DisplayAlerts:= False;
    Result:= True
  except
  end
end;

function TOLEExcel.RowFillDown(mWhere: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Range[mWhere].FillDown;
    Result:= True
  except
  end
end;

function TOLEExcel.Select(mWhere: string): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Range[mWhere].Select;
    Result:= True
  except
  end
end;

function TOLEExcel.Left_Merge_Wrap: Boolean;
begin
  Result:= False;
  try
    OLEInterface.Selection.HorizontalAlignment := xlLeft;
    OLEInterface.Selection.VerticalAlignment := xlTop;
    OLEInterface.Selection.WrapText := True;
    OLEInterface.Selection.ShrinkToFit := False;
    OLEInterface.Selection.MergeCells := True;
    OLEInterface.Selection.Orientation := 0;
    OLEInterface.Selection.AddIndent := False;
    OLEInterface.Selection.IndentLevel := 0;
    Result:= True
  except
  end
end;

function TOLEExcel.CenterAlign: Boolean;
begin
  Result:= False;
  try
    OLEInterface.Selection.HorizontalAlignment := xlCenter;
    Result:= True
  except
  end
end;

function TOLEExcel.LeftAlign: Boolean;
begin
  Result:= False;
  try
    OLEInterface.Selection.HorizontalAlignment := xlLeft;
    Result:= True
  except
  end
end;

function TOLEExcel.RightAlign: Boolean;
begin
  Result:= False;
  try
    OLEInterface.Selection.HorizontalAlignment := xlRight;
    Result:= True
  except
  end
end;

procedure TOLEExcel.Unsummon;
begin
  if not VarIsEmpty(OLEInterface) then begin
    try
      DisableAlerts;
      OLEInterface.Quit
    finally
      OLEInterface:= Unassigned
    end;
  end;
end;

destructor TOLEExcel.Destroy;
begin
  try
    if not VarIsEmpty(OLEInterface) then Unsummon
  finally
    inherited
  end
end;

function TOLEExcel.GetColumn(mWhere: string): integer;
begin
  Result:= -1;
  try
    Result:= OLEInterface.Range[mWhere].Column;
  except
  end
end;

function TOLEExcel.GetRow(mWhere: string): Integer;
begin
  Result:= -1;
  try
    Result:= OLEInterface.Range[mWhere].Row;
  except
  end
end;

function TOLEExcel.SetColumnWidth(mWhere: string; mWidth: Integer): Boolean;
begin
  Result:= False;
  try
    OLEInterface.Columns[mWhere].Select;
    OLEInterface.Selection.ColumnWidth := mWidth;
    Result:= True;
  except
  end;
end;

function TOLEExcel.SetBorder(mWhere: string; PatternType: Integer; isColored: Boolean): Boolean;
begin
  Result:= False;
  try
    Select(mWhere);

    //Basic Rectangle Pattern
    OLEInterface.Selection.Borders.Item[xlDiagonalDown].LineStyle:= xlNone;
    OLEInterface.Selection.Borders.Item[xlDiagonalUp].LineStyle:= xlNone;

    OLEInterface.Selection.Borders.Item[xlEdgeLeft].LineStyle:= xlContinuous;
    OLEInterface.Selection.Borders.Item[xlEdgeLeft].Weight:= xlThin;
    OLEInterface.Selection.Borders.Item[xlEdgeLeft].ColorIndex:= xlAutomatic;
    OLEInterface.Selection.Borders.Item[xlEdgeTop].LineStyle:= xlContinuous;
    OLEInterface.Selection.Borders.Item[xlEdgeTop].Weight:= xlThin;
    OLEInterface.Selection.Borders.Item[xlEdgeTop].ColorIndex:= xlAutomatic;
    OLEInterface.Selection.Borders.Item[xlEdgeBottom].LineStyle:= xlContinuous;
    OLEInterface.Selection.Borders.Item[xlEdgeBottom].Weight:= xlThin;
    OLEInterface.Selection.Borders.Item[xlEdgeBottom].ColorIndex:= xlAutomatic;
    OLEInterface.Selection.Borders.Item[xlEdgeRight].LineStyle:= xlContinuous;
    OLEInterface.Selection.Borders.Item[xlEdgeRight].Weight:= xlThin;
    OLEInterface.Selection.Borders.Item[xlEdgeRight].ColorIndex:= xlAutomatic;

    OLEInterface.Selection.Borders.Item[xlInsideVertical].LineStyle:= xlNone;
    OLEInterface.Selection.Borders.Item[xlInsideHorizontal].LineStyle:= xlNone;

    case PatternType of
      //with vertical inside
      1: begin
           OLEInterface.Selection.Borders.Item[xlInsideVertical].LineStyle:= xlContinuous;
           OLEInterface.Selection.Borders.Item[xlInsideVertical].Weight:= xlThin;
           OLEInterface.Selection.Borders.Item[xlInsideVertical].ColorIndex:= xlAutomatic;
         end;
      //with horizontal inside
      2: begin
           OLEInterface.Selection.Borders.Item[xlInsideHorizontal].LineStyle:= xlContinuous;
           OLEInterface.Selection.Borders.Item[xlInsideHorizontal].Weight:= xlThin;
           OLEInterface.Selection.Borders.Item[xlInsideHorizontal].ColorIndex:= xlAutomatic;
         end;
    end;

    if isColored then begin
      OLEInterface.Selection.Interior.ColorIndex:= 15;
      OLEInterface.Selection.Interior.Pattern:= xlSolid;
      OLEInterface.Selection.Interior.PatternColorIndex:= xlAutomatic
    end;

    Result:= True;
  except
  end;
end;

function TOLEExcel.ShowPrintDialog: Boolean;
begin
  try
    OLEInterface.Dialogs[xlDialogPrint].Show;
    Result:= True;
  finally
    OLEInterface.Visible:= False;
  end;
end;

end.
