unit UNO_OO;

interface

uses SysUtils, Variants, uno_pascal_helper, uno_rtl_ustring, uno_shared,
    uno_pascal_proxy, uno_debug;

type
  TCursor = -32768..32767;

  EOOoError= class(Exception);

  TOpenOffice = class(TObject)
  private
    xComponentContext,
    xMultiComponentFactory,
    Desktop,
    xComponentLoader,
    xWriterComponent,
    mxDoc,
    mxDocFactory,
    mxDocText,
    mxDocCursor: Variant;

    fDocumentOpened: Boolean;
  public
    Constructor Create;
    destructor Destroy; override;

    function Connect: Boolean;
    function IsConnected: Boolean;
    procedure Disconnect(closeOpenOffice: Boolean=False);

    function CreateDocument(bReadOnly: Boolean): Boolean;
    function OpenDocument(Filename: string; isVisible: Boolean): Boolean;
    //procedure SaveToPDF(FileName:string);
    function CloseDocument: Boolean;

    procedure InsertString(Text: string);
    procedure GotoBookmarkandSetText(BookmarkName: string; isInsertText: Boolean; Text: string);
    function CreateTable(RowNum, ColNum: Integer): Variant;
    function GetTable(Index: Integer): Variant;
    procedure InsertIntoCell(TextTable: Variant; Row,Col: Integer; Text: string);
    procedure InsertRows(TextTable: Variant; RowPosition, Count: Integer);
  end;

const crHourGlass = TCursor(-11);
      crDefault   = TCursor(0);

implementation

uses Forms;

// Tests whether the Variant contains something
function isNullEmpty(thisVariant: Variant): Boolean;
begin
  Result:= VarIsEmpty(thisVariant) or VarIsNull(thisVariant) or VarIsClear(thisVariant);
end;

// creates an empty array for an empty list
function dummyArray: Variant;
begin
  Result:= VarArrayCreate([0, -1], varVariant);
end;

constructor TOpenOffice.Create;
begin
  inherited Create;
end;

destructor TOpenOffice.Destroy;
begin
  mxDocCursor:= Unassigned;
  mxDocText:= Unassigned;
  mxDocFactory:= Unassigned;
  mxDoc:= Unassigned;
  xWriterComponent:= Unassigned;
  xComponentLoader:= Unassigned;
  Desktop:= Unassigned;
  xMulticomponentFactory:= Unassigned;
  xComponentContext:= Unassigned;
  inherited Destroy;
end;

function TOpenOffice.Connect: Boolean;
begin
  Result:= False;
  if Result then
    Exit;
  Screen.Cursor:= crHourglass;
  Application.ProcessMessages;
  try
    Bootstrap(xComponentContext);
    xMulticomponentFactory:= xComponentContext.GetServiceManager;
    Desktop:=xMulticomponentFactory.createInstanceWithContext('com.sun.star.frame.Desktop', xComponentContext);
    xComponentLoader:=UNOQueryInterface(Desktop, 'com.sun.star.frame.XComponentLoader');
    Result:= True;
  finally
    Screen.Cursor:= crDefault;
  end;
end;

function TOpenOffice.IsConnected: Boolean;
var DeskTopTemp: Variant;
begin
  Result:= False;
  if isNullEmpty(xMulticomponentFactory) then
    Exit;
  // check if OpenOffice can return any service
  try
    DeskTopTemp:= UNOQueryInterface(Desktop, 'com.sun.star.frame.XComponentLoader');
    Result:= True;
  except
    // allow connect to Service Manager again
    xMulticomponentFactory:= Null;
  end;
end;

procedure TOpenOffice.Disconnect(closeOpenOffice: Boolean=False);
var xDesktop: Variant;
begin
  if closeOpenOffice then
    if fDocumentOpened then
      CloseDocument;

  try
    xDesktop:= UNOQueryInterface(Desktop, 'com.sun.star.frame.XDesktop');
    xDesktop.Terminate;
    xDesktop:= Unassigned;
  except
  end;

end;

function TOpenOffice.CreateDocument(bReadOnly: Boolean): Boolean;
var LoadParams,
    PropertyValue: Variant;
begin
  Result:= False;
  if not IsConnected then
    Exit;
  if bReadOnly then begin
    LoadParams:= VarArrayCreate([0, 0], varVariant);
    PropertyValue:= CreateUNOStructure('com.sun.star.beans.PropertyValue');
    PropertyValue.Name:= 'ReadOnly';
    PropertyValue.Value:= True;
    LoadParams[0]:= PropertyValue;
  end else
    LoadParams:= dummyArray;
  xWriterComponent:= xComponentLoader.LoadComponentFromURL( 'private:factory/swriter', '_blank', 0,  LoadParams);
  fDocumentOpened:= not (VarIsEmpty(xWriterComponent) or VarIsNull(xWriterComponent));
  mxDoc:= UNOQueryInterface(xWriterComponent, 'com.sun.star.text.XTextDocument');
  mxDocFactory:= UNOQueryInterface(mxDoc, 'com.sun.star.lang.XMultiServiceFactory');
  mxDocText:= mxDoc.getText;
  mxDocCursor:= mxDocText.createTextCursor;
  Result:= fDocumentOpened
end;

function TOpenOffice.OpenDocument(Filename: string; isVisible: Boolean): Boolean;
var LoadParams,
    PropertyValue: Variant;
begin
  Result:= False;
  if not IsConnected then
   Exit;
  LoadParams:= VarArrayCreate([0, 0], varVariant);
  PropertyValue:= CreateUNOStructure('com.sun.star.beans.PropertyValue');
  if isVisible then begin
    PropertyValue.Name:= 'Show';
    PropertyValue.Value:= True;
  end else begin
    PropertyValue.Name:= 'Hidden';
    PropertyValue.Value:= True;
  end;
  LoadParams[0]:= PropertyValue;
  xWriterComponent:= xComponentLoader.LoadComponentFromURL('file:///'+ StringReplace(FileName, '\', '/', [rfIgnoreCase, rfReplaceAll]) , '_blank', 0, LoadParams);
  fDocumentOpened:= not (VarIsEmpty(xWriterComponent) or VarIsNull(xWriterComponent));
  mxDoc:= UNOQueryInterface(xWriterComponent, 'com.sun.star.text.XTextDocument');
  mxDocFactory:= UNOQueryInterface(mxDoc, 'com.sun.star.lang.XMultiServiceFactory');
  mxDocText:= mxDoc.getText;
  mxDocCursor:= mxDocText.createTextCursor;
  Result:= fDocumentOpened;
end;

function TOpenOffice.CloseDocument: Boolean;
var xModel, xCloseable, xComponent: Variant;
begin
  Result:= False;
  if fDocumentOpened then begin
    xModel:= UNOQueryInterface(xWriterComponent, 'com.sun.star.frame.XModel');
    if not VarIsNull(xModel) then begin
      xCloseable:= UNOQueryInterface(xModel, 'com.sun.star.util.XCloseable');
      if not VarIsNull(xCloseable) then
        xCloseable.Close(True)
      else begin
        xComponent:= UNOQueryInterface(xModel, 'com.sun.star.lang.XComponent');
        xComponent.Dispose;
      end;
      fDocumentOpened:= False;
      Result:= True;
    end;
  end;
end;

procedure TOpenOffice.InsertString(Text: string);
begin
  mxDocText.InsertString(mxDocCursor, Text, false);
end;

procedure TOpenOffice.GotoBookmarkandSetText(BookmarkName: string; isInsertText: Boolean; Text: string);
var xBookmarkSupplier, xNamedBookmarks, Bookmark,
    xBookmarkContent, xBookmarkRange: Variant;
begin
  xBookmarkSupplier:= UNOQueryInterface(xWriterComponent, 'com.sun.star.text.XBookmarksSupplier');
  xNamedBookmarks:= xBookmarkSupplier.GetBookmarks;
  Bookmark:= xNamedBookmarks.GetByName(BookmarkName);
  xBookmarkContent:= UNOQueryInterface(Bookmark, 'com.sun.star.text.XTextContent');
  xBookmarkRange:= xBookmarkContent.getAnchor;
  if isInsertText then
    xBookmarkRange.setString(Text);
end;

function TOpenOffice.CreateTable(RowNum, ColNum: Integer): Variant;
var TextTable, xTextTable: Variant;
begin
  TextTable:= mxDocFactory.createInstance('com.sun.star.text.TextTable');
  xTextTable:= UNOQueryInterface(TextTable,'com.sun.star.text.XTextTable');
  xTextTable.Initialize(RowNum,ColNum);
  mxDocText.insertTextContent(mxDocCursor, xTextTable, False);
  Result:= xTextTable;
end;

function TOpenOffice.GetTable(Index: Integer): Variant;
var xTablesSupplier, xNamedTables, xIndexedTables: Variant;
begin
  xTablesSupplier:= UNOQueryInterface(mxDoc, 'com.sun.star.text.XTextTablesSupplier');
  xNamedTables:= xTablesSupplier.getTextTables;
  xIndexedTables:= UNOQueryInterface(xNamedTables, 'com.sun.star.container.XIndexAccess');
  Result:= xIndexedTables.getByIndex(Index)
end;

procedure TOpenOffice.InsertIntoCell(TextTable: Variant; Row,Col: Integer; Text: string);
var xCellRange, xCell, xCellText, xCellCursor: Variant;
begin
  xCellRange:= UNOQueryInterface(TextTable, 'com.sun.star.table.XCellRange');
  xCell:= xCellRange.GetCellByPosition(Col, Row);
  xCellText:= UNOQueryInterface(xCell,'com.sun.star.text.XText');
  xCellCursor:= xCellText.CreateTextCursor;
  xCellText.setString(Text)
end;

procedure TOpenOffice.InsertRows(TextTable: Variant; RowPosition, Count: Integer);
var xRows: Variant;
begin
  xRows:= TextTable.GetRows;
  xRows.insertByIndex(RowPosition, Count)
end;

end.
