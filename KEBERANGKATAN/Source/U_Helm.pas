unit U_Helm;

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
  THelmFrm = class(TForm)
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
    RzSplitter1: TRzSplitter;
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
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMasterid_jns_anggota: TcxGridDBColumn;
    grddbtvMasterid_jns_kendaraan: TcxGridDBColumn;
    grddbtvMastertarif: TcxGridDBColumn;
    grddbtvMasterisactive: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    Masterid_penitipan: TLargeintField;
    Masterdiskripsi: TStringField;
    Masterisactive: TStringField;
    Mastertarif: TFloatField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    Masterjns_trans: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure edtKodeKeyPress(Sender: TObject; var Key: Char);
    procedure MasterNewRecord(DataSet: TDataSet);

  private
    { Private declarations }
    vtag : integer;
  public
    { Public declarations }
  end;

var
  HelmFrm: THelmFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, Math;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  HelmFrm:= THelmFrm.Create(Application);
  with HelmFrm do begin
      try
        Master.Close;
        Master.Open;
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


procedure THelmFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure THelmFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/ batal sebelum keluar .')
end;

procedure THelmFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterdiskripsi.IsNull or (Trim(Masterdiskripsi.AsString)='') then
    raise Exception.Create('Diskripsi Harus di Isi !');

  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure THelmFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure THelmFrm.edtKodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true);
end;

procedure THelmFrm.MasterNewRecord(DataSet: TDataSet);
begin
   Mastertarif.AsFloat:= 0;
   Masterisactive.AsString:= '1';
   Masterjns_trans.AsString:= 'Penitipan Helm';
   
   if Master.RecNo=0 then
      Masterid_penitipan.AsInteger:= 1
   else
      Masterid_penitipan.AsInteger:= Master.RecNo;
end;

end.
