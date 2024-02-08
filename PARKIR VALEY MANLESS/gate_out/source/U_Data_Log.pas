unit U_Data_Log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, cxPC, cxGridBandedTableView, AdvToolBar,
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, wwdbdatetimepicker, cxSpinEdit, frxClass, frxDBSet,
  scExcelExport;

type
  TDataLogFrm = class(TForm)
    pnlBottom: TPanel;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    pnlTop: TSCPanel;
    dtpStart: TwwDBDateTimePicker;
    btnOK: TSCButton;
    cxLabel1: TcxLabel;
    Detail: TZQuery;
    dsDetail: TDataSource;
    cxLabel3: TcxLabel;
    dtpEnd: TwwDBDateTimePicker;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdLVL_Detail: TcxGridLevel;
    Detailno_trans: TStringField;
    Detailid_pos: TStringField;
    Detailshift: TStringField;
    Detailnominal: TStringField;
    Detaildt_trans: TStringField;
    Detailpan: TStringField;
    Detailsaldo_awal: TStringField;
    Detailsaldo_akhir: TStringField;
    Detailbank: TStringField;
    Detaildata_trans: TMemoField;
    Detailisexport: TStringField;
    Detailtgl_trx: TDateTimeField;
    grdDBTV_Detaildata_trans: TcxGridDBColumn;
    btnClose: TSCButton;
    btnExport: TSCButton;
    qID: TZReadOnlyQuery;
    qIDid_reader_cmd: TLargeintField;
    qIDpg_owner: TStringField;
    qIDstx: TStringField;
    qIDetx: TStringField;
    qIDnew_debet: TStringField;
    qIDecho_ping: TStringField;
    qIDlast_trans: TStringField;
    qIDcheck_balance: TStringField;
    qIDmerchant_code: TStringField;
    RzPanel1: TSCPanel;
    qExport: TZQuery;
    qExportdata_trans: TMemoField;
    scExcelExport1: TscExcelExport;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    _Printer_GtOt: String;
    function HexToString(H: String): String;
  public
    vJenis : String;
    { Public declarations }
  end;

var
  DataLogFrm: TDataLogFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP, ZipForge,
  cxGridDBDataDefinitions;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  DataLogFrm:= TDataLogFrm.Create(Application);
  DataLogFrm.Caption:= pNamaMenu;
  DataLogFrm.Show;
end;

function TDataLogFrm.HexToString(H: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;

procedure TDataLogFrm.btnOKClick(Sender: TObject);
begin
   try
     Detail.Close;
     Detail.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     Detail.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);
     Detail.Open;
   except
   end;
end;

procedure TDataLogFrm.FormShow(Sender: TObject);
begin
   _Printer_GtOt:= DM.gtOutPrint;
end;

procedure TDataLogFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:= dtpStart.Date;

end;

procedure TDataLogFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    dtpStart.Date:= dtpEnd.Date;
  end
end;

procedure TDataLogFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TDataLogFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;   
end;

procedure TDataLogFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, appPathtoRar, ttl, dt :string;
    archiver : TZipForge;
begin
   DM.vSysDate.Close;
   DM.vSysDate.Open;

   // Get Merchant Code
   qID.Close;
   qID.Open;

   try
     qExport.Close;
     qExport.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     qExport.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);
     qExport.Open;
   except
   end;

   appPath:= ExtractFilePath(Application.ExeName);
   dt:= FormatDateTime('YYYYMMDDHHmmSS',DM.vSysDatedt_server.AsDateTime);
   ttl:= qIDmerchant_code.AsString+'_consolidation_'+dt+'_v1';

    scExcelExport1.CloseAllExcelApps;
    scExcelExport1.Disconnect;

//    dir := GetCurrentDir;
    scExcelExport1.ShowTitles:= False;
    scExcelExport1.Filename:= ExtractFilePath(Application.ExeName)+'konsolidasi_format.csv';
    scExcelExport1.Dataset:= qExportdata_trans.DataSet;
    scExcelExport1.ExportDataset;
    scExcelExport1.SaveAs(appPath+ttl+'.csv',ffCSV);
    scExcelExport1.CloseAllExcelApps;
    scExcelExport1.Disconnect;

   // Convert to File Compress
    appPathtoRar:= ExtractFilePath(Application.ExeName)+'konsolidasi\'+ttl;
    archiver := TZipForge.Create(nil);
    try
    with archiver do
    begin
      FileName:= (appPathtoRar+'.rar');
      OpenArchive(fmCreate);
      AddFiles(appPath+ttl+'.csv');
      CloseArchive();

      // Hapus File .CSV Setelah jadi .RAR
      DeleteFile(appPath+ttl+'.csv');
    end;
    except
    on E: Exception do
      begin
        Writeln('Exception: ', E.Message);
        Readln;
      end;
    end;
end;

end.
