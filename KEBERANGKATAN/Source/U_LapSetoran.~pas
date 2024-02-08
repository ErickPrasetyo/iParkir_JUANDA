unit U_LapSetoran;

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
  AdvOfficeImage, RzLabel, RzPanel, RzSplit;

type
  TLapSetoranFrm = class(TForm)
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
    grdDBTV_Rekapjumlah: TcxGridDBColumn;
    grdLVLRekap: TcxGridLevel;
    Detail: TZQuery;
    dsDetail: TDataSource;
    frxDBDetail: TfrxDBDataset;
    frxRekap: TfrxReport;
    MemMasterListuser: TStringField;
    grdDBTV_Rekapjml_kendaraan: TcxGridDBColumn;
    grdDBTV_Rekaptarif: TcxGridDBColumn;
    MemMasterListlogo: TBlobField;
    MemMasterListlogo2: TBlobField;
    MemMasterListalamat: TStringField;
    MemMasterListvnow: TStringField;
    btnExport: TSCButton;
    cxLabel3: TcxLabel;
    dtpEnd: TwwDBDateTimePicker;
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
    qRekapusr_ins: TStringField;
    qRekaptarif: TFloatField;
    qRekapjumlah_kendaraan: TLargeintField;
    qRekaptotal_pendapatan: TFloatField;
    RzSplitter2: TRzSplitter;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjns_anggota: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    grdDBTV_Detailnopol: TcxGridDBColumn;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_DetailColumn4: TcxGridDBColumn;
    grdLVL_Detail: TcxGridLevel;
    RzSplitter3: TRzSplitter;
    RzLabel1: TRzLabel;
    ImageKeluar: TAdvOfficeImage;
    LblFoto_gateout: TcxLabel;
    Detailnopol: TStringField;
    Detailtype_kendaraan: TStringField;
    Detailno_karcis: TStringField;
    Detailcapture_filename: TStringField;
    Detailjns_pelanggan: TStringField;
    Detailusr_ins: TStringField;
    Detailshift: TStringField;
    Detailtarif: TFloatField;
    Detaildt_ins: TDateTimeField;
    qryGate: TZQuery;
    qryGateid_gate: TStringField;
    qryGategt_isactive: TStringField;
    qryGategt_print: TStringField;
    qryGategt_pict_in: TStringField;
    qryGategt_pict_ot: TStringField;
    qryGategt_com_port: TStringField;
    qryGategt_open_cmd: TStringField;
    qryGateketerangan: TStringField;
    qryGategt_cam: TStringField;
    qryGateis_karcis_hilang: TStringField;
    qryGateis_buka_gate: TStringField;
    qryGatebtn_motor_visible: TStringField;
    qryGatebtn_mobil_visible: TStringField;
    qryGatebtn_bus_visible: TStringField;
    qryGatebtn_truck_visible: TStringField;
    RzLabel2: TRzLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure dtpStartCloseUp(Sender: TObject);
    procedure dtpEndCloseUp(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qRekapBeforeOpen(DataSet: TDataSet);
    procedure DetailBeforeOpen(DataSet: TDataSet);
    procedure grdDBTV_DetailCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    _Printer_GtOt, _IPCamGtOt_Dir, dtf, dt0, dt1 : String;
    procedure LoadCommand;
  public
    vJenis : String;
    { Public declarations }
  end;

var
  LapSetoranFrm: TLapSetoranFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure TLapSetoranFrm.LoadCommand;
begin
  try
    qryGate.Close;
    qryGate.Params.ParamByName('pid').Value:= DM.gate_id;
    qryGate.Open;
    if qryGate.RecordCount>0 then begin
      _IPCamGtOt_Dir:= Trim(qryGategt_pict_ot.AsString);
    end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LapSetoranFrm:= TLapSetoranFrm.Create(Application);
//  LookPromo2Frm.lblHeader1.Caption:= pNamaMenu;
  LapSetoranFrm.Caption:= pNamaMenu;
  LapSetoranFrm.Show;
  LapSetoranFrm.LoadCommand;
end;

procedure TLapSetoranFrm.btnOKClick(Sender: TObject);
begin
  if pgcMaster.ActivePageIndex=0 then begin
    try
      qRekap.Close;
      qRekap.Open;

    Except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end
  else
  if pgcMaster.ActivePageIndex=1 then begin
    try
      Detail.Close;
      Detail.Open;

    Except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;

end;

procedure TLapSetoranFrm.btnAddClick(Sender: TObject);
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

procedure TLapSetoranFrm.FormShow(Sender: TObject);
begin
   pgcMaster.ActivePageIndex:= 0;
   _Printer_GtOt:= DM.gtOutPrint;
end;

procedure TLapSetoranFrm.btnExportClick(Sender: TObject);
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

procedure TLapSetoranFrm.dtpStartCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  DecodeDate(dtpStart.Date,y,m,d);
  dt:= EncodeDate(y,m,1);
  dtpEnd.Date:=IncDay(IncMonth(dt, 1),-1);

end;

procedure TLapSetoranFrm.dtpEndCloseUp(Sender: TObject);
var dt: TDateTime;
    y,m,d: Word;
begin
  if dtpEnd.Date<dtpStart.Date then begin
    DecodeDate(dtpEnd.Date,y,m,d);
    dt:= EncodeDate(y,m,1);
    dtpStart.Date:=dt;
  end

end;

procedure TLapSetoranFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLapSetoranFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;   
end;

procedure TLapSetoranFrm.qRekapBeforeOpen(DataSet: TDataSet);
begin
  dt0:= FormatDateTime('dd-mm-yyyy', dtpStart.Date);
  dt1:= FormatDateTime('dd-mm-yyyy', dtpEnd.Date);
  qRekap.Params.ParamByName('ptgl0').Value:= dt0;
  qRekap.Params.ParamByName('ptgl1').Value:= dt1;
end;

procedure TLapSetoranFrm.DetailBeforeOpen(DataSet: TDataSet);
begin
  dt0:= FormatDateTime('dd-mm-yyyy', dtpStart.Date);
  dt1:= FormatDateTime('dd-mm-yyyy', dtpEnd.Date);
  Detail.Params.ParamByName('ptgl0').Value:= dt0;
  Detail.Params.ParamByName('ptgl1').Value:= dt1;
end;

procedure TLapSetoranFrm.grdDBTV_DetailCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var dirname_out, dirname_inp, dir_folder_ot, dir_folder_in : String;
begin

    dir_folder_ot:= FormatDateTime('YYMMDD',Detaildt_ins.AsDateTime);
    dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');

    LblFoto_gateout.Caption:= dirname_out+Detailcapture_filename.AsString;

  // Browse PIC Gate OT
  try
    if FileExists(dirname_out+Detailcapture_filename.AsString) then  begin
       ImageKeluar.Picture.LoadFromFile(dirname_out+Detailcapture_filename.AsString);
    end
    else ImageKeluar.Picture.LoadFromFile('Images\tidakadafoto.jpg');
  except
  end;
end;

end.
