unit U_Tarif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxDBData, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  RzSplit, cxButtonEdit, AdvGlowButton, cxTimeEdit, cxCurrencyEdit,
  dxGDIPlusClasses, cxImage, cxDBEditRepository, cxEditRepositoryItems;

type
  TTarifFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    btnClose: TSCButton;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    lblHeader1: TLabel;
    Masterid_jns_anggota: TStringField;
    Masterid_jns_kendaraan: TStringField;
    Masterdiskripsi: TStringField;
    Masterisactive: TStringField;
    Mastertarif: TFloatField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    qryJenisAnggota: TZQuery;
    qryJenisAnggotaid_jns_anggota: TStringField;
    qryJenisAnggotajns_anggota: TStringField;
    dsJenisAnggota: TDataSource;
    qryJenisKendaraan: TZQuery;
    qryJenisKendaraanid_jns_kendaraan: TStringField;
    qryJenisKendaraanjns_kendaraan: TStringField;
    dsqryJenisKendaraan: TDataSource;
    RzSplitter1: TRzSplitter;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMasterid_jns_anggota: TcxGridDBColumn;
    grddbtvMasterid_jns_kendaraan: TcxGridDBColumn;
    grddbtvMasterdiskripsi: TcxGridDBColumn;
    grddbtvMastertarif: TcxGridDBColumn;
    grddbtvMasterisactive: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    grdDetail: TcxGrid;
    grdDetailDBTableView1: TcxGridDBTableView;
    grdDetailDBBTV: TcxGridDBTableView;
    grdlvlDetail: TcxGridLevel;
    adpDetailNavigator: TAdvDockPanel;
    atbDetailNavigator: TAdvToolBar;
    dbagbAddDetail: TDBAdvGlowButton;
    dbagbDeleteDetail: TDBAdvGlowButton;
    dbagbEditDetail: TDBAdvGlowButton;
    dbagbSaveDetail: TDBAdvGlowButton;
    dbagbCancelDetail: TDBAdvGlowButton;
    dbagbRefreshDetail: TDBAdvGlowButton;
    Detail: TZQuery;
    dsDetail: TDataSource;
    Detailid_tarif_detail: TLargeintField;
    Detailid_jns_anggota: TStringField;
    Detailid_jns_kendaraan: TStringField;
    Detailtarif: TFloatField;
    Detailmenit: TFloatField;
    Detailmenit_akhir: TFloatField;
    cxImage1: TcxImage;
    lblHeader2: TLabel;
    AdvDockPanel1: TAdvDockPanel;
    AdvToolBar1: TAdvToolBar;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    DBAdvGlowButton5: TDBAdvGlowButton;
    DBAdvGlowButton6: TDBAdvGlowButton;
    EDT_REPO: TcxEditRepository;
    EDT_REPOTextItem1: TcxEditRepositoryTextItem;
    EDT_REPOLookKendaraan: TcxEditRepositoryLookupComboBoxItem;
    EDT_REPOLookAnggota: TcxEditRepositoryLookupComboBoxItem;
    Masterperiode: TStringField;
    Masterawal_periode: TFloatField;
    grddbtvMasterperiode: TcxGridDBColumn;
    grddbtvMasterawal_periode: TcxGridDBColumn;
    EDT_REPO_CB_Periode: TcxEditRepositoryComboBoxItem;
    dsMaster2: TDataSource;
    Master2: TZQuery;
    Master2id_tarif: TStringField;
    Master2diskripsi: TStringField;
    Master2isactive: TStringField;
    Master2tarif: TFloatField;
    Master2usr_ins: TStringField;
    Master2usr_upd: TStringField;
    grdDetailDBBTVdiskripsi: TcxGridDBColumn;
    grdDetailDBBTVisactive: TcxGridDBColumn;
    grdDetailDBBTVtarif: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure edtKodeKeyPress(Sender: TObject; var Key: Char);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure grddbtvMasterSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure DetailNewRecord(DataSet: TDataSet);
    procedure grddbtvMasterid_jns_anggotaGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure EDT_REPOLookAnggotaPropertiesInitPopup(Sender: TObject);
    procedure grddbtvMasterid_jns_kendaraanGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure EDT_REPOLookKendaraanPropertiesInitPopup(Sender: TObject);
    procedure grddbtvMasterperiodeGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure Master2BeforePost(DataSet: TDataSet);
    procedure Master2NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    vtag : integer;
  public
    { Public declarations }
  end;

var
  TarifFrm: TTarifFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  TarifFrm:= TTarifFrm.Create(Application);
  with TarifFrm do begin
      try
        Master.Close;
        Master.Open;
        Master2.Close;
        Master2.Open;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;
      lblHeader1.Caption:= pNamaMenu;
      vtag:= ptag;
      Show;
  end;
end;


procedure TTarifFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TTarifFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/ batal sebelum keluar .')
end;

procedure TTarifFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_jns_anggota.IsNull or (Trim(Masterid_jns_anggota.AsString)='') then
    raise Exception.Create('Kode Jenis Anggota harus diisi !')
  else
  if Masterid_jns_kendaraan.IsNull or (Trim(Masterid_jns_kendaraan.AsString)='') then
    raise Exception.Create('Kode Jenis Kendaraan harus diisi !')
  else
  if Mastertarif.IsNull or (Trim(Mastertarif.AsString)='') then
    raise Exception.Create('Tarif harus diisi !');

//  Masterdiskripsi.AsString:= Masterjenis_anggota.AsString+ ' - ' +Masterjenis_kendaraan.AsString;

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TTarifFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TTarifFrm.edtKodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true);
end;

procedure TTarifFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Mastertarif.AsFloat:= 0;
   Masterisactive.AsString:= '1';
end;

procedure TTarifFrm.grddbtvMasterSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
    if Master.State<>dsBrowse then
      Exit;
      
    try
      Detail.Close;
      Detail.Params.ParamByName('id_jns_anggota').Value:= Masterid_jns_anggota.Value;
      Detail.Params.ParamByName('id_jns_kendaraan').Value:= Masterid_jns_kendaraan.Value;
      Detail.Open;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
end;

procedure TTarifFrm.DetailNewRecord(DataSet: TDataSet);
begin
   Detailid_jns_anggota.AsString:= Masterid_jns_anggota.AsString;
   Detailid_jns_kendaraan.AsString:= Masterid_jns_kendaraan.AsString;
   Detailtarif.AsFloat:= 0;
end;

procedure TTarifFrm.grddbtvMasterid_jns_anggotaGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Master.State in [dsInsert,dsedit] then begin
     AProperties := EDT_REPOLookAnggota.Properties;
  end
  else
     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TTarifFrm.EDT_REPOLookAnggotaPropertiesInitPopup(
  Sender: TObject);
begin
  try
    qryJenisAnggota.Close;
    qryJenisAnggota.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TTarifFrm.grddbtvMasterid_jns_kendaraanGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  if Master.State in [dsInsert,dsedit] then begin
     AProperties := EDT_REPOLookKendaraan.Properties;
  end
  else
     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TTarifFrm.EDT_REPOLookKendaraanPropertiesInitPopup(
  Sender: TObject);
begin
  try
    qryJenisKendaraan.Close;
    qryJenisKendaraan.Open;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TTarifFrm.grddbtvMasterperiodeGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
//  if Master.State in [dsInsert,dsedit] then begin
//     AProperties := EDT_REPO_CB_Periode.Properties;
//  end
//  else
//     AProperties := EDT_REPOTextItem1.Properties;
end;

procedure TTarifFrm.Master2BeforePost(DataSet: TDataSet);
begin
  if Master2tarif.IsNull or (Trim(Master2tarif.AsString)='') then
    raise Exception.Create('Tarif harus diisi !')
  else
  if Master2tarif.AsFloat=0 then
    raise Exception.Create('Tarif harus diisi !');
//  Masterdiskripsi.AsString:= Masterjenis_anggota.AsString+ ' - ' +Masterjenis_kendaraan.AsString;

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TTarifFrm.Master2NewRecord(DataSet: TDataSet);
begin
  Master2isactive.AsString:= '1';
  Master2tarif.AsFloat:= 0;

end;

end.
