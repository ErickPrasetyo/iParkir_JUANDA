unit U_LapKendaraanParkir;

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
  dxSkinscxPCPainter, wwdbdatetimepicker, cxSpinEdit, frxClass, frxDBSet;

type
  TLapKendaraanParkirFrm = class(TForm)
    pnlBottom: TPanel;
    btnClose: TSCButton;
    btnAdd: TSCButton;
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
    btnExport: TSCButton;
    cxLabel3: TcxLabel;
    dtpEnd: TwwDBDateTimePicker;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_Detailjam_keluar: TcxGridDBColumn;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    grdDBTV_Detailjumlah: TcxGridDBColumn;
    grdDBTV_Detailusr_ins: TcxGridDBColumn;
    grdLVL_Detail: TcxGridLevel;
    Detailno_karcis: TStringField;
    Detailid_jns_anggota: TStringField;
    Detailjam_masuk: TDateTimeField;
    Detailjam_keluar: TDateTimeField;
    Detailtarif: TFloatField;
    Detailfoto_bg_in: TStringField;
    Detailpintu_masuk: TStringField;
    Detailno_gate_in: TIntegerField;
    Detailno_kartu_char: TStringField;
    Detailid_jns_kendaraan: TStringField;
    procedure btnOKClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    _Printer_GtOt: String;
  public
    vJenis : String;
    { Public declarations }
  end;

var
  LapKendaraanParkirFrm: TLapKendaraanParkirFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LapKendaraanParkirFrm:= TLapKendaraanParkirFrm.Create(Application);
//  LookPromo2Frm.lblHeader1.Caption:= pNamaMenu;
  LapKendaraanParkirFrm.Caption:= pNamaMenu;
  LapKendaraanParkirFrm.Show;
end;

procedure TLapKendaraanParkirFrm.btnOKClick(Sender: TObject);
begin
   try
     Detail.Close;
     Detail.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     Detail.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);
     Detail.Open;
   except
   end;

end;

procedure TLapKendaraanParkirFrm.btnAddClick(Sender: TObject);
begin
//   try
//     DM.Perusahaan.Close;
//     DM.Perusahaan.Open;
//     MemMasterList.Close;
//     MemMasterList.Open;
//     MemMasterList.Append;
//     MemMasterListlogo.LoadFromFile('Images/logo1.jpg');
//     MemMasterListlogo2.LoadFromFile('Images/logo2.jpg');
//     MemMasterListalamat.AsString:= DM.Perusahaanalamat.AsString;
//     MemMasterListtgl.AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
//     MemMasterListvnow.AsString:= FormatDateTime('dd-mm-yyyy hh:mm:ss',now);
//     MemMasterListsift.AsString:= '1';
//     MemMasterListuser.AsString:= DM.UserConnect;
//     MemMasterList.Post;
//
//     if pgcMaster.ActivePageIndex=1 then begin
//        frxKarcis.PrintOptions.Printer:= _Printer_GtOt;
//        frxKarcis.PrepareReport;
//        frxKarcis.PrintOptions.ShowDialog := False;
//        frxKarcis.Print;
//     end
//     else begin
//        frxRekap.PrintOptions.Printer:= _Printer_GtOt;
//        frxRekap.PrepareReport;
//        frxRekap.PrintOptions.ShowDialog := False;
//        frxRekap.Print;
//     end;
//   except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//   end;
end;

procedure TLapKendaraanParkirFrm.FormShow(Sender: TObject);
begin
   _Printer_GtOt:= DM.gtOutPrint;
end;

procedure TLapKendaraanParkirFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl, dt :string;
begin

   appPath:= ExtractFilePath(Application.ExeName);
   dt:= FormatDateTime('ddmmyy',dtpStart.Date)+'_sd_'+FormatDateTime('ddmmyy',dtpEnd.Date);



        ttl:='Lap_Kend_Parkir'+dt;

         if (Detail.Active) and (Detail.RecordCount>0) then begin
             ExportGridToExcel(appPath+ttl,grdDetail,true,true,true,'xls');
             try
              Excel:= CreateOleObject('Excel.Application');
              Excel.Visible:=True;
              Excel.Workbooks.Open(appPath+ttl);
             except
              ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
              'Instal Aplikasi Excel terlebih dulu');
             end;
         end;

end;

procedure TLapKendaraanParkirFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapKendaraanParkirFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TLapKendaraanParkirFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLapKendaraanParkirFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;   
end;

end.
