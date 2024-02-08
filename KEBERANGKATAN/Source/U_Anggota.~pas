unit U_Anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvReflectionImage, ExtCtrls, AdvPanel, ActnList, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridBandedTableView,
  cxClasses, cxStyles, cxGridTableView, AdvAppStyler, AdvGlowButton,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxPC, cxContainer, cxTextEdit,
  cxDBEdit, SCControl, SCStdControls, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, DBCtrls, RzDBEdit, Mask, RzEdit, RzLabel, RzDBLbl,
  RzPanel, wwDialog, wwidlg, frxClass, frxDBSet, kbmMemTable, Wwkeycb,
  cxLabel, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCheckBox, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, wwdbdatetimepicker;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TAnggotaFrm = class(TForm)
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    dsMaster: TDataSource;
    Master: TZQuery;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    pnlHeader: TAdvPanel;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    btnFirst: TDBAdvGlowButton;
    btnPrior: TDBAdvGlowButton;
    btnNext: TDBAdvGlowButton;
    btnLast: TDBAdvGlowButton;
    pgMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    tsDetail: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdMasterDBTableView2: TcxGridDBTableView;
    grdMasterDBTableView2Column1: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    pnlDetailSupplier: TRzPanel;
    lblDBNamaRekanan: TRzDBLabel;
    RzLabel2: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    EdtFirstName: TRzDBEdit;
    EdtAddress: TRzDBEdit;
    EdtCity: TRzDBEdit;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    MemInfoPerusahaan: TkbmMemTable;
    MemInfoPerusahaanlogo: TBlobField;
    MemInfoPerusahaannama_perusahaan: TStringField;
    MemInfoPerusahaanalamat_perusahaan: TStringField;
    MemInfoPerusahaantelp_perusahaan: TStringField;
    MemInfoPerusahaanfax_perusahaan: TStringField;
    MemInfoPerusahaankota_perusahaan: TStringField;
    frxDBInfoPerusahaan: TfrxDBDataset;
    MemInfoPerusahaandt_print: TStringField;
    MemInfoPerusahaanusr_print: TStringField;
    actPrint: TAction;
    btnPrint: TSCButton;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    frxRepList: TfrxReport;
    frxDBList: TfrxDBDataset;
    MemMasterList: TkbmMemTable;
    AdvReflectionImage1: TAdvReflectionImage;
    Masterno_kartu_char: TStringField;
    Masterno_kartu_hex: TStringField;
    Masterid_jns_anggota: TStringField;
    Masterid_jns_kendaraan: TStringField;
    Masternama_anggota: TStringField;
    Masteralamat: TStringField;
    Masterkota: TStringField;
    Masternopol: TStringField;
    Masterisactive: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterdt_mulai: TDateTimeField;
    Masterdt_akhir: TDateTimeField;
    grddbtvMasterno_kartu_char: TcxGridDBColumn;
    grddbtvMasterid_jns_anggota: TcxGridDBColumn;
    grddbtvMasterid_jns_kendaraan: TcxGridDBColumn;
    grddbtvMasternama_anggota: TcxGridDBColumn;
    grddbtvMasteralamat: TcxGridDBColumn;
    grddbtvMasterkota: TcxGridDBColumn;
    grddbtvMasternopol: TcxGridDBColumn;
    grddbtvMasterisactive: TcxGridDBColumn;
    grddbtvMasterdt_mulai: TcxGridDBColumn;
    grddbtvMasterdt_akhir: TcxGridDBColumn;
    Masterjenis_kendaraan: TStringField;
    Masterjenis_anggota: TStringField;
    cbStatus: TcxDBCheckBox;
    LblNoKartu: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    qryJenisAnggota: TZQuery;
    dsJenisAnggota: TDataSource;
    qryJenisAnggotaid_jns_anggota: TStringField;
    qryJenisAnggotajns_anggota: TStringField;
    qryJenisKendaraan: TZQuery;
    dsqryJenisKendaraan: TDataSource;
    qryJenisKendaraanid_jns_kendaraan: TStringField;
    qryJenisKendaraanjns_kendaraan: TStringField;
    MemMasterListno_kartu_char: TStringField;
    MemMasterListno_kartu_hex: TStringField;
    MemMasterListid_jns_anggota: TStringField;
    MemMasterListid_jns_kendaraan: TStringField;
    MemMasterListnama_anggota: TStringField;
    MemMasterListalamat: TStringField;
    MemMasterListkota: TStringField;
    MemMasterListnopol: TStringField;
    MemMasterListisactive: TStringField;
    MemMasterListusr_ins: TStringField;
    MemMasterListusr_upd: TStringField;
    MemMasterListdt_mulai: TDateTimeField;
    MemMasterListdt_akhir: TDateTimeField;
    MemMasterListjenis_kendaraan: TStringField;
    MemMasterListjenis_anggota: TStringField;
    Masternomor: TIntegerField;
    grddbtvMasternomor: TcxGridDBColumn;
    dtpStart: TwwDBDateTimePicker;
    RzLabel3: TRzLabel;
    RzLabel6: TRzLabel;
    edtNopol: TRzDBEdit;
    edtJnsAnggota: TcxDBLookupComboBox;
    Shape1: TShape;
    edtJnsKendaraan: TcxDBLookupComboBox;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    qBrowse: TZQuery;
    dsqBrowse: TDataSource;
    qBrowseno_kartu_char: TStringField;
    qBrowseno_kartu_hex: TStringField;
    qBrowseid_jns_anggota: TStringField;
    qBrowseid_jns_kendaraan: TStringField;
    qBrowsenama_anggota: TStringField;
    qBrowsealamat: TStringField;
    qBrowsekota: TStringField;
    qBrowsenopol: TStringField;
    qBrowseisactive: TStringField;
    qBrowseusr_ins: TStringField;
    qBrowseusr_upd: TStringField;
    qBrowsedt_mulai: TDateTimeField;
    qBrowsedt_akhir: TDateTimeField;
    qBrowsenomor: TIntegerField;
    qBrowsejenis_kendaraan: TStringField;
    qBrowsejenis_anggota: TStringField;
    pnlTop: TSCPanel;
    cxLabel3: TcxLabel;
    edtFilter: TcxTextEdit;
    btnOK: TSCButton;
    qCount: TZQuery;
    qCountnomor: TIntegerField;
    Masternik: TStringField;
    qBrowsenik: TStringField;
    RzLabel1: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    grddbtvMasterColumn1: TcxGridDBColumn;
    MemMasterListnik: TStringField;
    RzLabel10: TRzLabel;
    edtTypeKendaraan: TRzDBEdit;
    Mastertype_kendaraan: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure pgMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure grddbtvMasterDblClick(Sender: TObject);
    procedure EditKeyPress(Sender: TObject; var Key: Char);
    procedure actPrintExecute(Sender: TObject);
    procedure RzDBEdit4Enter(Sender: TObject);
    procedure RzDBEdit5Enter(Sender: TObject);
    procedure MasterBeforeOpen(DataSet: TDataSet);
    procedure tsDetailShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtFilterKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vTag : Integer;
    vID : String;
    DBMode: TDBMode;
    procedure UpdateView;
    procedure OpenDataSet;
    procedure OpenBrowse;
    function GetNomor:integer;
  public
    { Public declarations }

  end;

var
  AnggotaFrm: TAnggotaFrm;

  procedure ShowForm(pJudul:String; ptag:integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pJudul:String; ptag:integer);
begin
  AnggotaFrm:= TAnggotaFrm.Create(Application);
  with AnggotaFrm do begin
      DBMode:= dmNone;
      Caption:= pJudul;
      lblHeader1.Caption:= pJudul;
      OpenDataset;
      OpenBrowse;
      vtag:= ptag;
      ShowWindow(Handle, SW_Maximize);
      DBMode:= dmBrowse;
      UpdateView;
  end;
end;

procedure TAnggotaFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TAnggotaFrm.OpenDataSet;
begin
  try
    Master.close;
    Master.Open;
    DM.qJenisKendaraan.Close;
    DM.qJenisKendaraan.Open;
    DM.qJenisAnggota.Close;
    DM.qJenisAnggota.Open;

    qryJenisKendaraan.Close;
    qryJenisKendaraan.Open;
    qryJenisAnggota.Close;
    qryJenisAnggota.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TAnggotaFrm.OpenBrowse;
var s, dt0, dt1, dti, dtf : String;
begin

//     dt0:= QuotedStr(FormatDateTime('dd/mm/yyyy',dtpStart.Date));
//     dt1:= QuotedStr(FormatDateTime('dd/mm/yyyy',dtpEnd.Date));
//     dtf:= QuotedStr('dd/mm/yyyy');
//      lblHeader1.Caption:=vID;
      s:= 'SELECT * FROM master.manggota ';
      s:= s+' WHERE (UPPER(no_kartu_char) LIKE '+QuotedStr('%'+UpperCase(edtFilter.Text)+'%');
      s:= s+' OR UPPER(nama_anggota) LIKE '+QuotedStr('%'+UpperCase(edtFilter.Text)+'%')+')';
      s:= s+' ORDER BY nomor';

      try
        DM.PrepareQuery(qBrowse);
        DM.OpenQuery(qBrowse,s);
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;

end;

function TAnggotaFrm.GetNomor:integer;
begin
  Result:= 0;
  try
    qCount.Close;
//    qCount.Params.ParamByName('pid').AsString:= vID;
    qCount.Open;

    Result:= qCountnomor.AsInteger+1;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TAnggotaFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Masternama_anggota.AsString := '-';
//  Masterid_jns_anggota.AsString:= vID;
  Masteralamat.AsString:= '-';
  Masterkota.AsString:= 'MALANG';
  Masternopol.AsString := '-';
  Masterisactive.AsString:= '1';
  DM.vSysDate.Close;
  DM.vSysDate.Open;
  Masterdt_mulai.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
  Masterdt_akhir.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
  Masternomor.AsInteger:= GetNomor;
end;

procedure TAnggotaFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (Master.State=dsInactive) or (Master.State=dsBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TAnggotaFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_jns_anggota.IsNull or (Trim(Masterid_jns_anggota.AsString)='') then
     Masterid_jns_anggota.Clear;
  if Masterid_jns_kendaraan.IsNull or (Trim(Masterid_jns_kendaraan.AsString)='') then
     Masterid_jns_kendaraan.Clear;

     
  if Masterno_kartu_char.IsNull or (Trim(Masterno_kartu_char.AsString)='') then begin
    raise Exception.Create('Nomor Anggota harus Diisi !');
    RzDBEdit1.SetFocus;
  end
  else
  if Masternik.IsNull or (Trim(Masternik.AsString)='') then begin
    raise Exception.Create('Nomor Induk Karyawan harus Diisi !');
    RzDBEdit1.SetFocus;
  end
  else
  if Masternama_anggota.IsNull or (Trim(Masternama_anggota.AsString)='') then begin
    raise Exception.Create('Nama Anggota harus Diisi !');
    EdtFirstName.SetFocus;
  end;
//  else
//  if Masterid_jns_anggota.IsNull or (Trim(Masterid_jns_anggota.AsString)='') then begin
//    raise Exception.Create('Kode Jenis Anggota Harus Diisi !');
//    RzDBEdit4.SetFocus;
//  end
//  else
//  if Masterid_jns_kendaraan.IsNull or (Trim(Masterid_jns_kendaraan.AsString)='') then begin
//    raise Exception.Create('Kode Jenis Kendaraan Harus Diisi !');
//    RzDBEdit5.SetFocus;
//  end
//  else
//  if Masteralamat.IsNull or (Trim(Masteralamat.AsString)='') then begin
//    raise Exception.Create('Alamat Harus Diisi !');
//    EdtAddress.SetFocus;
//  end;
//  else
//  if Masternopol.IsNull or (Trim(Masternopol.AsString)='') then begin
//    raise Exception.Create('Nopol Harus Diisi !');
//    EdtPostalCode.SetFocus;
//  end;

  Masterno_kartu_hex.AsString:= Masterno_kartu_char.AsString;

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TAnggotaFrm.actCloseExecute(Sender: TObject);
begin
  close;
end;

procedure TAnggotaFrm.actAddExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Append;
    DBMode:= dmInsert;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView;
end;

procedure TAnggotaFrm.actEditExecute(Sender: TObject);
begin
  try
    pgMaster.ActivePageIndex:= 1;
    Master.Edit;
    DBMode:= dmEdit;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TAnggotaFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;

  try
    pgMaster.ActivePageIndex:=1;
    Master.Delete;
    qBrowse.Refresh;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TAnggotaFrm.actRefreshExecute(Sender: TObject);
begin
  DBMode:= dmNone;
  try
    qBrowse.Close;
    qBrowse.Open;
    DBMode:= dmBrowse;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TAnggotaFrm.actSaveExecute(Sender: TObject);
begin
//  if Master.RecordCount=0 then
//     Exit;
  try
    Master.Post;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TAnggotaFrm.actCancelExecute(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView;
  pgMaster.ActivePageIndex := 0;
end;

procedure TAnggotaFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint, accexport,
    accpreparer, accreviewer, accapprover: Boolean;
begin
  if DBMode=dmNone then begin
    grdMaster.Enabled:= False;
    //pnlDataBackground.Visible:= False;
    pgMaster.ActivePageIndex := 0;
    btnFirst.Enabled:= False;
    btnPrior.Enabled:= False;
    btnNext.Enabled:= False;
    btnLast.Enabled:= False;
    btnAdd.Visible:= True;
    btnAdd.Enabled:= False;
    btnEdit.Visible:= True;
    btnEdit.Enabled:= False;
    btnDelete.Visible:= True;
    btnDelete.Enabled:= False;
    btnRefresh.Visible:= True;
    btnRefresh.Enabled:= False;
    btnSave.Visible:= False;
    btnCancel.Visible:= False;
  end else begin
    isBrowse := DBMode=dmBrowse;
    isEmpty := qBrowse.RecordCount=0;

    if isBrowse then
      pgMaster.ActivePageIndex := 0
    else
      pgMaster.ActivePageIndex := 1;
    grdMaster.Enabled := isBrowse;
    //pnlDataBackground.Visible := not isBrowse;


    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    DM.GetAccessRights(vTag, accbrowse, accinsert, accedit, accdelete, accprint);

    btnClose.Enabled:= isBrowse;
    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := accinsert;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty and accedit;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty and accdelete;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;
    btnPrint.Visible := isBrowse;
    btnPrint.Enabled := not isEmpty and accprint;

    EdtFirstName.ReadOnly := isBrowse;
    EdtAddress.ReadOnly := isBrowse;
    EdtCity.ReadOnly := isBrowse;
    RzDBEdit1.ReadOnly:= isBrowse;
    edtJnsKendaraan.Properties.Buttons[0].Visible:= not isBrowse;
    edtJnsKendaraan.Properties.ReadOnly:= isBrowse;

    edtJnsAnggota.Properties.Buttons[0].Visible:= not isBrowse;
    edtJnsAnggota.Properties.ReadOnly:= isBrowse;

//    EdtPostalCode.ReadOnly := isBrowse;

    if not isBrowse then
       RzDBEdit2.SetFocus;

    if vID='ASN_BUMN' then begin
        LblNoKartu.Caption:= 'Nomor POLISI';
    end
    else begin
        LblNoKartu.Caption:= 'Nomor Kartu';
    end;

  end;
end;

procedure TAnggotaFrm.pgMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
   AllowChange:=(DBMode=dmBrowse) or (DBMode=dmNone);
end;

procedure TAnggotaFrm.grddbtvMasterDblClick(Sender: TObject);
begin
  pgMaster.ActivePageIndex := 1;
end;

procedure TAnggotaFrm.EditKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Master.State=dsBrowse then
      Exit;

    if Key=#13 then begin
      SelectNext(ActiveControl, True, True);
    //  Masterno_kartu_hex.AsString:= IntToHex(StrToInt(Masterno_kartu_char.AsString),5);
    end;
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TAnggotaFrm.actPrintExecute(Sender: TObject);
begin
   if Master.RecordCount=0 then
      Exit;
   try
       DM.L_Perusahaan.Close;
       DM.L_Perusahaan.Open;
       DM.vSysDate.Close;
       DM.vSysDate.Open;


       MemInfoPerusahaan.Close;
       MemInfoPerusahaan.Open;
       MemInfoPerusahaan.Append;
       MemInfoPerusahaannama_perusahaan.AsString:= DM.L_Perusahaannama.AsString;
       MemInfoPerusahaanalamat_perusahaan.AsString:= DM.L_Perusahaanalamat.AsString;
//       MemInfoPerusahaantelp_perusahaan.AsString:= 'Telp. : '+DM.L_Perusahaantelepon.AsString;
//       MemInfoPerusahaanfax_perusahaan.AsString:= 'Fax : '+DM.L_Perusahaanfax.AsString;
       MemInfoPerusahaankota_perusahaan.AsString:= DM.L_Perusahaankota.AsString;
       MemInfoPerusahaanlogo.LoadFromFile('IMAGES/LOGO_RS.JPG');
       MemInfoPerusahaandt_print.AsString:= FormatDateTime('dd-mmm-yyyy',dm.vSysDatedt_server.AsDateTime);
       MemInfoPerusahaanusr_print.AsString:= DM.UserConnect;
       MemInfoPerusahaan.Post;

       MemMasterList.Close;
       MemMasterList.Open;
       MemMasterList.EmptyTable;
       MemMasterList.LoadFromDataSet(Master, [mtcpoAppend]);

//       if Master.RecordCount<=38 then begin
//          Master.DisableControls;
//          Master.First;
//          while not Master.Eof do begin
//             MemMasterList.Append;
//             MemMasterListid_pasien.AsString:=' '+Masterid_pasien.AsString;
//             MemMasterListnama_pasien.AsString:=' '+Masternama_pasien.AsString;
//             MemMasterListtelepon.AsString:=' '+Mastertelepon.AsString;
//             MemMasterListkota.AsString:=' '+Masterkota.AsString;
//             MemMasterListalamat.AsString:=' '+Masteralamat.AsString;
//             MemMasterListno.Value:=Master.RecNo;
//             MemMasterList.Post;
//             Master.Next;
//          end;
//          for i := Master.RecordCount to 38 do begin
//             MemMasterList.Append;
//             MemMasterListid_pasien.AsString:=' ';
//             MemMasterListnama_pasien.AsString:=' ';
//             MemMasterListtelepon.AsString:=' ';
//             MemMasterListkota.AsString:=' ';
//             MemMasterListalamat.AsString:=' ';
//             MemMasterList.Post;
//          end;
//       end;
//       if Master.RecordCount>=38 then begin
//          Master.DisableControls;
//          Master.First;
//          while not Master.Eof do begin
//             MemMasterList.Append;
//             MemMasterListusr_print.AsString:=DM.UserConnect;
//             MemMasterListdt_print.AsString:=FormatDateTime('dd-mmmm-yyyy',Now);
//             MemMasterListid_pasien.AsString:=' '+Masterid_pasien.AsString;
//             MemMasterListnama_pasien.AsString:=' '+Masternama_pasien.AsString;
//             MemMasterListtelepon.AsString:=' '+Mastertelepon.AsString;
//             MemMasterListkota.AsString:=' '+Masterkota.AsString;
//             MemMasterListalamat.AsString:=' '+Masteralamat.AsString;
//             MemMasterListno.Value:=Master.RecNo;
//             MemMasterList.Post;
//             Master.Next;
//          end;
//       end;


       Master.EnableControls;
       frxRepList.ShowReport;
   except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;

procedure TAnggotaFrm.RzDBEdit4Enter(Sender: TObject);
begin
//  try
//    qryJenisAnggota.Close;
//    qryJenisAnggota.Open;
//  except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//  end;
end;

procedure TAnggotaFrm.RzDBEdit5Enter(Sender: TObject);
begin
//  try
//    qryJenisKendaraan.Close;
//    qryJenisKendaraan.Open;
//  except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//  end;
end;

procedure TAnggotaFrm.MasterBeforeOpen(DataSet: TDataSet);
begin
   Master.Params.ParamByName('pno').AsString:= qBrowseno_kartu_char.AsString;
end;

procedure TAnggotaFrm.tsDetailShow(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TAnggotaFrm.btnOKClick(Sender: TObject);
begin
  OpenBrowse();
end;

procedure TAnggotaFrm.edtFilterKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then
      btnOKClick(nil);
end;

end.
