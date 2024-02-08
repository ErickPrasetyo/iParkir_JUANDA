unit U_LookPromo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, cxPC, cxGridBandedTableView, AdvToolBar,
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, wwdbdatetimepicker, cxSpinEdit, frxClass, frxDBSet,
  RzLabel;

type
  TLookPromoFrm = class(TForm)
    dsMaster: TDataSource;
    Master: TZQuery;
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
    Masterid_jns_anggota: TStringField;
    Masterid_jns_kendaraan: TStringField;
    Masterjns_anggota: TStringField;
    Masterjns_kendaraan: TStringField;
    Masterjumlah: TFloatField;
    pnlTop: TSCPanel;
    dtpStart: TwwDBDateTimePicker;
    btnOK: TSCButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtShift: TcxSpinEdit;
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
    Detailno_karcis: TStringField;
    Detailstatus: TStringField;
    Detailjumlah: TFloatField;
    Detailjns_anggota: TStringField;
    Detailjns_kendaraan: TStringField;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjumlah: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    frxDBDetail: TfrxDBDataset;
    frxRekap: TfrxReport;
    Detailstatus_palang: TStringField;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    Detailusr_ins: TStringField;
    grdDBTV_Detailusr_ins: TcxGridDBColumn;
    MemMasterListuser: TStringField;
    Masterjml_kendaraan: TFloatField;
    grdDBTV_Rekapjml_kendaraan: TcxGridDBColumn;
    grdDBTV_Rekaptarif: TcxGridDBColumn;
    Detailjam_masuk: TStringField;
    Detailjam_keluar: TStringField;
    Detailfoto_bg_in: TStringField;
    Detailfoto_bg_ot: TStringField;
    Detailnopol: TStringField;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_Detailjam_keluar: TcxGridDBColumn;
    MemMasterListlogo: TBlobField;
    MemMasterListlogo2: TBlobField;
    MemMasterListalamat: TStringField;
    MemMasterListvnow: TStringField;
    Masternomor: TIntegerField;
    Mastershift: TIntegerField;
    Masterno_gate_out: TIntegerField;
    Masterusr_upd: TStringField;
    grdDBTV_Rekapid_jns_anggota: TcxGridDBColumn;
    grdDBTV_Rekapid_jns_kendaraan: TcxGridDBColumn;
    grdDBTV_Rekapnomor: TcxGridDBColumn;
    grdDBTV_Rekapshift: TcxGridDBColumn;
    grdDBTV_Rekapno_gate_out: TcxGridDBColumn;
    grdDBTV_Rekapusr_upd: TcxGridDBColumn;
    tabRekapUser: TcxTabSheet;
    grdUser: TcxGrid;
    grd_DBTV_User: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    grdLvlUser: TcxGridLevel;
    btnExport: TSCButton;
    cxLabel3: TcxLabel;
    LblUser: TRzLabel;
    Masterstatus: TStringField;
    grd_DBTV_Userstatus: TcxGridDBColumn;
    grdDBTV_Rekapstatus: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tabRekapUserShow(Sender: TObject);
    procedure tabRekapShow(Sender: TObject);
    procedure tabDetailShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
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
  LookPromoFrm: TLookPromoFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LookPromoFrm:= TLookPromoFrm.Create(Application);
//  LookPromo2Frm.lblHeader1.Caption:= pNamaMenu;
  LookPromoFrm.Caption:= pNamaMenu;
  LookPromoFrm.Show;
end;


procedure TLookPromoFrm.btnAddClick(Sender: TObject);
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
     MemMasterListsift.AsString:= IntToStr(edtShift.Value);
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

procedure TLookPromoFrm.FormShow(Sender: TObject);
begin
   pgcMaster.ActivePageIndex:= 0;
   _Printer_GtOt:= DM.gtOutPrint;
   LblUser.Caption:= 'USER : '+DM.UserConnect;
   LblUser.Blinking:= True;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   dtpStart.Date:= DM.vSysDatedt_server.AsDateTime;
end;

procedure TLookPromoFrm.tabRekapUserShow(Sender: TObject);
var s, dt, shift : String;
begin
   dt:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date));
   shift:=QuotedStr(edtShift.Text);
   try
     Master.Close;
     Master.SQL.Clear;
     Master.Params.Clear;
     s:= 'select * from trans.fn_get_total('+dt+','+shift+')';
     s:= s+' WHERE usr_upd='+QuotedStr(DM.UserConnect);
     Master.SQL.Add(s);
     Master.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TLookPromoFrm.tabRekapShow(Sender: TObject);
var s, dt, shift : String;
begin
   dt:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date));
   shift:=QuotedStr(edtShift.Text);
   try
     Master.Close;
     Master.SQL.Clear;
     Master.Params.Clear;
     s:= 'select * from trans.fn_get_total('+dt+','+shift+')';
     Master.SQL.Add(s);
     Master.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TLookPromoFrm.tabDetailShow(Sender: TObject);
begin
   try
     Detail.Close;
     Detail.Params.ParamByName('ptgl').AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     Detail.Params.ParamByName('ps').Value:= edtShift.Text;
     Detail.Open;
   except
   end;
end;

procedure TLookPromoFrm.btnOKClick(Sender: TObject);
begin
   if pgcMaster.ActivePageIndex=0 then
      tabRekapUserShow(nil)
   else
   if pgcMaster.ActivePageIndex=1 then
      tabRekapShow(nil)
   else
   if pgcMaster.ActivePageIndex=2 then
      tabDetailShow(nil);
end;

procedure TLookPromoFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl :string;
begin

     appPath:= ExtractFilePath(Application.ExeName);
     if pgcMaster.ActivePageIndex=0 then begin
         ttl:='Pendapatan_per_user_'+FormatDateTime('ddmmmyy',dtpStart.Date)+'_shift_'+edtShift.Text;

         if (Master.Active) and (Master.RecordCount>0) then
          begin
           ExportGridToExcel(appPath+ttl,grdUser,true,true,true,'xls');
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
         ttl:='Rekap_per_shift_'+FormatDateTime('ddmmmyy',dtpStart.Date)+'_shift_'+edtShift.Text;

         if (Master.Active) and (Master.RecordCount>0) then
          begin
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
     end
     else
     if pgcMaster.ActivePageIndex=2 then begin
         ttl:='Detail_per_shift_'+FormatDateTime('ddmmmyy',dtpStart.Date)+'_shift_'+edtShift.Text;

         if (Detail.Active) and (Detail.RecordCount>0) then
          begin
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
     end

end;

procedure TLookPromoFrm.btnCloseClick(Sender: TObject);
begin
   Close;
end;

procedure TLookPromoFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.
