unit U_LapPerPeriode;

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
  TLapPerPeriodeFrm = class(TForm)
    dsLPR_Item_Status: TDataSource;
    qRekap: TZQuery;
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
    qRekapid_jns_anggota: TStringField;
    qRekapid_jns_kendaraan: TStringField;
    qRekapjns_anggota: TStringField;
    qRekapjns_kendaraan: TStringField;
    qRekapjumlah: TFloatField;
    pnlTop: TSCPanel;
    dtpStart: TwwDBDateTimePicker;
    btnOK: TSCButton;
    cxLabel1: TcxLabel;
    frxDBPrint: TfrxDBDataset;
    frxKarcis: TfrxReport;
    MemMasterList: TkbmMemTable;
    frxDBList: TfrxDBDataset;
    MemMasterListtgl: TStringField;
    MemMasterListsift: TStringField;
    pgcMaster: TcxPageControl;
    tabRekap: TcxTabSheet;
    tabDetail: TcxTabSheet;
    grdRekap: TcxGrid;
    grdDBTV_Rekap: TcxGridDBTableView;
    grdDBTV_Rekapjns_anggota: TcxGridDBColumn;
    grdDBTV_Rekapjns_kendaraan: TcxGridDBColumn;
    grdDBTV_Rekapjumlah: TcxGridDBColumn;
    grdLVLRekap: TcxGridLevel;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdLVL_Detail: TcxGridLevel;
    Detail: TZQuery;
    dsDetail: TDataSource;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjumlah: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    frxDBDetail: TfrxDBDataset;
    frxRekap: TfrxReport;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    grdDBTV_Detailusr_ins: TcxGridDBColumn;
    MemMasterListuser: TStringField;
    qRekapjml_kendaraan: TFloatField;
    grdDBTV_Rekapjml_kendaraan: TcxGridDBColumn;
    grdDBTV_Rekaptarif: TcxGridDBColumn;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_Detailjam_keluar: TcxGridDBColumn;
    MemMasterListlogo: TBlobField;
    MemMasterListlogo2: TBlobField;
    MemMasterListalamat: TStringField;
    MemMasterListvnow: TStringField;
    btnExport: TSCButton;
    cxLabel3: TcxLabel;
    dtpEnd: TwwDBDateTimePicker;
    qRekapnomor: TIntegerField;
    qRekapstatus: TStringField;
    grdDBTV_Rekapstatus: TcxGridDBColumn;
    Detailno_karcis: TStringField;
    Detailid_jns_anggota: TStringField;
    Detailid_jns_kendaraan: TStringField;
    Detailjns_anggota: TStringField;
    Detailjns_kendaraan: TStringField;
    Detailtarif: TFloatField;
    Detailstatus: TStringField;
    Detailjam_masuk: TStringField;
    Detailjam_keluar: TStringField;
    Detailusr_upd: TStringField;
    Detailshift: TIntegerField;
    grdDBTV_DetailShift: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    grdExport: TcxGrid;
    grdDBTVExport: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    grdLvlExport: TcxGridLevel;
    grdDBTVExportColumn1: TcxGridDBColumn;
    grdDBTVExportColumn2: TcxGridDBColumn;
    grdDBTVExportColumn3: TcxGridDBColumn;
    grdDBTVExportColumn4: TcxGridDBColumn;
    grdDBTVExportColumn5: TcxGridDBColumn;
    grdDBTVExportColumn6: TcxGridDBColumn;
    grdDBTVExportColumn7: TcxGridDBColumn;
    grdDBTVExportColumn8: TcxGridDBColumn;
    grdDBTVExportColumn9: TcxGridDBColumn;
    grdDBTVExportColumn10: TcxGridDBColumn;
    grdDBTVExportColumn11: TcxGridDBColumn;
    grdDBTVExportColumn12: TcxGridDBColumn;
    grdDBTVExportColumn13: TcxGridDBColumn;
    grdDBTVExportColumn14: TcxGridDBColumn;
    grdDBTVExportColumn15: TcxGridDBColumn;
    grdDBTVExportColumn16: TcxGridDBColumn;
    grdDBTVExportColumn17: TcxGridDBColumn;
    grdDBTVExportColumn18: TcxGridDBColumn;
    grdDBTVExportColumn19: TcxGridDBColumn;
    grdDBTVExportColumn20: TcxGridDBColumn;
    grdDBTVExportColumn21: TcxGridDBColumn;
    grdDBTVExportColumn22: TcxGridDBColumn;
    grdDBTVExportColumn23: TcxGridDBColumn;
    grdDBTVExportColumn24: TcxGridDBColumn;
    grdDBTVExportColumn25: TcxGridDBColumn;
    grdDBTVExportColumn26: TcxGridDBColumn;
    grdDBTVExportColumn27: TcxGridDBColumn;
    grdDBTVExportColumn28: TcxGridDBColumn;
    grdDBTVExportColumn29: TcxGridDBColumn;
    grdDBTVExportColumn30: TcxGridDBColumn;
    grdDBTVExportColumn31: TcxGridDBColumn;
    grdDBTVExportColumn32: TcxGridDBColumn;
    grdDBTVExportColumn33: TcxGridDBColumn;
    grdDBTVExportColumn34: TcxGridDBColumn;
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
  LapPerPeriodeFrm: TLapPerPeriodeFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LapPerPeriodeFrm:= TLapPerPeriodeFrm.Create(Application);
//  LookPromo2Frm.lblHeader1.Caption:= pNamaMenu;
  LapPerPeriodeFrm.Caption:= pNamaMenu;
  LapPerPeriodeFrm.Show;
end;

procedure TLapPerPeriodeFrm.btnOKClick(Sender: TObject);
begin
   try
     qRekap.Close;
     qRekap.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     qRekap.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);
     qRekap.Open;

     Detail.Close;
     Detail.Params.ParamByName('ptgl0').AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     Detail.Params.ParamByName('ptgl1').AsString:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);
     Detail.Open;
   except
   end;

end;

procedure TLapPerPeriodeFrm.btnAddClick(Sender: TObject);
begin
   try
     DM.Perusahaan.Close;
     DM.Perusahaan.Open;
     MemMasterList.Close;
     MemMasterList.Open;
     MemMasterList.Append;
     MemMasterListlogo.LoadFromFile('Images/logo1.jpg');
     MemMasterListlogo2.LoadFromFile('Images/logo2.jpg');
     MemMasterListalamat.AsString:= DM.Perusahaanalamat.AsString;
     MemMasterListtgl.AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     MemMasterListvnow.AsString:= FormatDateTime('dd-mm-yyyy hh:mm:ss',now);
     MemMasterListsift.AsString:= '1';
     MemMasterListuser.AsString:= DM.UserConnect;
     MemMasterList.Post;

     if pgcMaster.ActivePageIndex=1 then begin
        frxKarcis.PrintOptions.Printer:= _Printer_GtOt;
        frxKarcis.PrepareReport;
        frxKarcis.PrintOptions.ShowDialog := False;
        frxKarcis.Print;
     end
     else begin
        frxRekap.PrintOptions.Printer:= _Printer_GtOt;
        frxRekap.PrepareReport;
        frxRekap.PrintOptions.ShowDialog := False;
        frxRekap.Print;
     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TLapPerPeriodeFrm.FormShow(Sender: TObject);
begin
   pgcMaster.ActivePageIndex:= 0;
   _Printer_GtOt:= DM.gtOutPrint;
end;

procedure TLapPerPeriodeFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl, dt :string;
begin

   appPath:= ExtractFilePath(Application.ExeName);
   dt:= FormatDateTime('ddmmyy',dtpStart.Date)+'_sd_'+FormatDateTime('ddmmyy',dtpEnd.Date);

    if pgcMaster.ActivePageIndex=0 then begin
        ttl:='Rekap_Parkir_Periode_'+dt;

         if (qRekap.Active) and (qRekap.RecordCount>0) then begin
             ExportGridToExcel(appPath+ttl,grdExport,true,true,true,'xls');
             try
              Excel:= CreateOleObject('Excel.Application');
              Excel.Visible:=True;
              Excel.Workbooks.Open(appPath+ttl);
             except
              ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
              'Instal Aplikasi Excel terlebih dulu');
             end;
         end;

    end
    else
    if pgcMaster.ActivePageIndex=1 then begin
        ttl:='Rekap_Parkir_detail_periode_'+dt;

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

end;

procedure TLapPerPeriodeFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapPerPeriodeFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TLapPerPeriodeFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLapPerPeriodeFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;   
end;

end.
