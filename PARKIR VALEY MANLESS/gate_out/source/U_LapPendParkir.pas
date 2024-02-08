unit U_LapPendParkir;

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
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxDropDownEdit, cxGridDBBandedTableView;

type
  TLapPendParkirFrm = class(TForm)
    pnlBottom: TPanel;
    btnClose: TSCButton;
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
    SCButton1: TSCButton;
    frxRekapKarcis: TfrxReport;
    memDetail: TkbmMemTable;
    frxMemDetail: TfrxDBDataset;
    memDetailnama_outlet: TStringField;
    memDetailkd_outlet: TStringField;
    memDetailno_karcis: TStringField;
    memDetailid_jns_anggota: TStringField;
    memDetailid_jns_kendaraan: TStringField;
    memDetailno_kartu_char: TStringField;
    memDetailjam_masuk: TDateTimeField;
    memDetailjam_keluar: TDateTimeField;
    memDetailtarif: TFloatField;
    memDetailnopol: TStringField;
    memDetailusr_ins: TStringField;
    memDetailusr_upd: TStringField;
    memDetaildt_ins: TDateTimeField;
    memDetaildt_upd: TDateTimeField;
    memDetailshift: TIntegerField;
    memDetailstatus: TStringField;
    memDetailjns_pembayaran: TStringField;
    memDetailketerangan: TStringField;
    memDetailtype_kendaraan: TStringField;
    memDetailnama_anggota: TStringField;
    memDetailissent: TStringField;
    memInfo: TkbmMemTable;
    frxInfo: TfrxDBDataset;
    memInfonama_perusahaan: TStringField;
    memInfoid_perusahaan: TStringField;
    memInfojudul: TStringField;
    memInfoperiode: TStringField;
    memInfoalamat: TStringField;
    Count: TZQuery;
    frxCount: TfrxDBDataset;
    Countnama_outlet: TStringField;
    Countumum: TLargeintField;
    Countanggota: TLargeintField;
    Countjumlah: TFloatField;
    Countjumlah_pelanggan: TLargeintField;
    cxLabel2: TcxLabel;
    edtShift: TcxComboBox;
    pgcMaster: TcxPageControl;
    tabRekap: TcxTabSheet;
    grdRekap: TcxGrid;
    grdDBTV_Rekap: TcxGridDBBandedTableView;
    grdDBTV_Rekapnomor: TcxGridDBBandedColumn;
    grdDBTV_Rekapid_jns_kendaraan: TcxGridDBBandedColumn;
    grdDBTV_Rekapjumlah: TcxGridDBBandedColumn;
    grdDBTV_Rekapshift: TcxGridDBBandedColumn;
    grdDBTV_Rekapno_gate_out: TcxGridDBBandedColumn;
    grdDBTV_Rekapjml_kendaraan: TcxGridDBBandedColumn;
    grdDBTV_Rekapusr_upd: TcxGridDBBandedColumn;
    grdDBTV_Rekapstatus: TcxGridDBBandedColumn;
    grdDBTV_Rekapketerangan: TcxGridDBBandedColumn;
    grdLVLRekap: TcxGridLevel;
    tabDetail: TcxTabSheet;
    tabExport: TcxTabSheet;
    grdExport: TcxGrid;
    grdDBTVExport: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
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
    grdlvlExport: TcxGridLevel;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailid_jns_anggota: TcxGridDBColumn;
    grdDBTV_Detailid_jns_kendaraan: TcxGridDBColumn;
    grdDBTV_Detailnopol: TcxGridDBColumn;
    grdDBTV_Detailtarif: TcxGridDBColumn;
    grdDBTV_Detailusr_upd: TcxGridDBColumn;
    grdDBTV_Detailshift: TcxGridDBColumn;
    grdDBTV_DetailColumn1: TcxGridDBColumn;
    grdLVL_Detail: TcxGridLevel;
    Master: TZQuery;
    dsMaster: TDataSource;
    qUpdate: TZQuery;
    grdDBTV_RekapColumn1: TcxGridDBBandedColumn;
    Mastertanggal: TStringField;
    Masternama_hari: TStringField;
    Mastershift: TIntegerField;
    Masterknd_umum: TIntegerField;
    Masterknd_member: TIntegerField;
    Mastertotal_knd: TIntegerField;
    Mastertotal_pendapatan: TFloatField;
    Detailnama_outlet: TStringField;
    Detailkd_outlet: TStringField;
    Detailno_karcis: TStringField;
    Detailid_jns_anggota: TStringField;
    Detailid_jns_kendaraan: TStringField;
    Detailno_kartu_char: TStringField;
    Detailjam_masuk: TDateTimeField;
    Detailjam_keluar: TDateTimeField;
    Detailtarif: TFloatField;
    Detailnopol: TStringField;
    Detailusr_ins: TStringField;
    Detailusr_upd: TStringField;
    Detaildt_ins: TDateTimeField;
    Detaildt_upd: TDateTimeField;
    Detailshift: TIntegerField;
    Detailstatus: TStringField;
    Detailjns_pembayaran: TStringField;
    Detailketerangan: TStringField;
    Detailtype_kendaraan: TStringField;
    Detailnama_anggota: TStringField;
    Detailissent: TStringField;
    Masterusr_upd: TStringField;
    frxMaster: TfrxReport;
    memMaster: TkbmMemTable;
    frxDBMaster: TfrxDBDataset;
    memMastertanggal: TStringField;
    memMasternama_hari: TStringField;
    memMastershift: TIntegerField;
    memMasterknd_umum: TIntegerField;
    memMasterknd_member: TIntegerField;
    memMastertotal_knd: TIntegerField;
    memMastertotal_pendapatan: TFloatField;
    memMasterusr_upd: TStringField;
    procedure btnOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SCButton1Click(Sender: TObject);
  private
    { Private declarations }
    _Printer_GtOt: String;
    procedure OpenDataSet;
  public
    vJenis : String;
    { Public declarations }
  end;

var
  LapPendParkirFrm: TLapPendParkirFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LapPendParkirFrm:= TLapPendParkirFrm.Create(Application);
  LapPendParkirFrm.Caption:= pNamaMenu;
  LapPendParkirFrm.Show;
end;

procedure TLapPendParkirFrm.btnOKClick(Sender: TObject);
begin
  if edtShift.Text='' then
    raise Exception.Create('Pilih Shift Terlebih Dahulu!');
  OpenDataSet;
end;

procedure TLapPendParkirFrm.FormShow(Sender: TObject);
begin
   _Printer_GtOt:= DM.gtOutPrint;
   edtShift.Text:= 'SEMUA';
   pgcMaster.ActivePageIndex:=0;
end;

procedure TLapPendParkirFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl, dt :string;
begin

  if pgcMaster.ActivePageIndex=0 then begin

      appPath:= ExtractFilePath(Application.ExeName);
      dt:= FormatDateTime('ddmmyy',dtpStart.Date)+'_sd_'+FormatDateTime('ddmmyy',dtpEnd.Date);

      ttl:='Lap_Angkasapura_Rekap'+dt;

      if (Master.Active) and (Master.RecordCount>0) then begin
         ExportGridToExcel(appPath+ttl,grdRekap,true,true,true,'xls');
         try
          Excel:= CreateOleObject('Excel.Application');
          Excel.Visible:=True;
          Excel.Workbooks.Open(appPath+ttl);
         except
          ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
          'Instal Aplikasi Excel terlebih dulu');
         end;
      end;

  end else
  if pgcMaster.ActivePageIndex=1 then begin

      appPath:= ExtractFilePath(Application.ExeName);
      dt:= FormatDateTime('ddmmyy',dtpStart.Date)+'_sd_'+FormatDateTime('ddmmyy',dtpEnd.Date);

      ttl:='Lap_Angkasapura_detail'+dt;

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

procedure TLapPendParkirFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapPendParkirFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TLapPendParkirFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLapPendParkirFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;   
end;

procedure TLapPendParkirFrm.SCButton1Click(Sender: TObject);
var
dt1, dt2 : String;
begin
  DM.L_Perusahaan.Close;
  DM.L_Perusahaan.Open;

  dt1:= FormatDateTime('dd/mm/yyyy', dtpStart.DateTime);
  dt2:= FormatDateTime('dd/mm/yyyy', dtpEnd.DateTime);

  try
      memInfo.Close;
      memInfo.Open;
      memInfo.Append;
      memInfonama_perusahaan.AsString:= DM.L_Perusahaannama.AsString;
      memInfoalamat.AsString:= DM.L_Perusahaanalamat.AsString;
      memInfoid_perusahaan.AsString:= DM.L_Perusahaanid.AsString;
      memInfoperiode.AsString:= Trim(dt1+' sd. '+dt2);

      if pgcMaster.ActivePageIndex=0 then begin
          memInfojudul.AsString:= Trim('Rekap Pendapatan Parkir');
          memMaster.Close;
          memMaster.EmptyTable;
          memMaster.LoadFromDataSet(Master,[mtcpoAppend]);
          memMaster.Open;
          frxMaster.ShowReport;
      end else
      if pgcMaster.ActivePageIndex=1 then begin
          memInfojudul.AsString:= Trim('Detail Pendapatan Parkir');
          memDetail.Close;
          memDetail.EmptyTable;
          memDetail.LoadFromDataSet(Detail,[mtcpoAppend]);
          memDetail.Open;
          Count.Close;
          Count.Params.ParamByName('ptgl0').Value:= dt1;
          Count.Params.ParamByName('ptgl1').Value:= dt2;
          Count.Open;
          frxRekapKarcis.ShowReport;
      end;
      memInfo.Post;

  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;



procedure TLapPendParkirFrm.OpenDataSet;
var
s, dt0, dt1 : String;
begin
  dt0:= FormatDateTime('dd/mm/yyyy', dtpStart.Date);
  dt1:= FormatDateTime('dd/mm/yyyy', dtpEnd.Date);

  if pgcMaster.ActivePageIndex=0 then begin

    if edtShift.Text='SEMUA' then begin
       Master.Close;
       Master.Params.ParamByName('ptgl0').Value:= dt0;
       Master.Params.ParamByName('ptgl1').Value:= dt1;
       Master.Params.ParamByName('pshift').Value:= '0';
       Master.Open;

    end else begin
       Master.Close;
       Master.Params.ParamByName('ptgl0').Value:= dt0;
       Master.Params.ParamByName('ptgl1').Value:= dt1;
       Master.Params.ParamByName('pshift').Value:= edtShift.Text;
       Master.Open;

    end

  end else
  if pgcMaster.ActivePageIndex=1 then begin
    try
      if edtShift.Text='SEMUA' then begin
       Detail.Close;
       Detail.Params.ParamByName('ptgl0').Value:= dt0;
       Detail.Params.ParamByName('ptgl1').Value:= dt1;
       Detail.Params.ParamByName('pshift').Value:= '0';
       Detail.Open;

      end else begin
       Detail.Close;
       Detail.Params.ParamByName('ptgl0').Value:= dt0;
       Detail.Params.ParamByName('ptgl1').Value:= dt1;
       Detail.Params.ParamByName('pshift').Value:= edtShift.Text;
       Detail.Open;

      end

    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end

  end;
end;

end.
