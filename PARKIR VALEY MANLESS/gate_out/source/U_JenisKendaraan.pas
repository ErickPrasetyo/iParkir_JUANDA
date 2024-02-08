unit U_JenisKendaraan;

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
  cxGrid;

type
  TJenisKendaraanFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    pnlMiddle: TSCPanel;
    btnCancel: TSCButton;
    btnEdit: TSCButton;
    btnSave: TSCButton;
    dbnWBS: TRzDBNavigator;
    btnAdd: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    pnlBottom: TRzPanel;
    pnlData: TSCPanel;
    Label1: TLabel;
    Label3: TLabel;
    edtKode: TcxDBTextEdit;
    edtDeskripsi: TcxDBTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape5: TShape;
    Shape6: TShape;
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
    Masterid_jns_kendaraan: TStringField;
    Masterjns_kendaraan: TStringField;
    Masterusr_ins: TStringField;
    Masterusr_upd: TStringField;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grddbtvMastervuser: TcxGridDBColumn;
    grddbtvMasterfull_name: TcxGridDBColumn;
    grdlvlMaster: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure pnlBottomPaint(Sender: TObject);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure btnCloseClick(Sender: TObject);
    procedure edtKodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    vtag : integer;
    procedure UpdateView;
  public
    { Public declarations }
  end;

var
  JenisKendaraanFrm: TJenisKendaraanFrm;

  procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  JenisKendaraanFrm:= TJenisKendaraanFrm.Create(Application);
  with JenisKendaraanFrm do begin
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
      UpdateView;
      pnlBottom.Visible:= False;
      Show;
  end;
end;


procedure TJenisKendaraanFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TJenisKendaraanFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
    accbrowse, accinsert, accedit, accdelete, accprint: Boolean;
begin
  if Master.State=dsInactive then begin
    dbnWBS.Enabled:= False;
    btnAdd.Enabled:= False;
    btnEdit.Enabled:= False;
    btnDelete.Enabled:= False;
    btnRefresh.Enabled:= True;
    btnSave.Enabled:= False;
    btnCancel.Enabled:= False;
    btnClose.Enabled:= True;
  end else begin
    isBrowse := Master.State=dsBrowse;
    isEmpty := Master.RecordCount=0;

    DM.GetAccessRights(vtag, accbrowse, accinsert, accedit, accdelete, accprint);

    dbnWBS.Enabled:= isBrowse;
    btnAdd.Visible:= isBrowse;
    btnEdit.Visible:= isBrowse;
    btnDelete.Visible:= isBrowse;

    btnRefresh.Visible:= isBrowse;
    btnSave.Visible:= not isBrowse;
    btnCancel.Visible:= not isBrowse;
    btnClose.Enabled:= isBrowse;

    grdMaster.Enabled:= isBrowse;
    pnlBottom.Visible:= not isBrowse;
    if not isBrowse then
       edtKode.SetFocus;
  end;
end;

procedure TJenisKendaraanFrm.btnAddClick(Sender: TObject);
begin
  try
    Master.Append;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TJenisKendaraanFrm.btnEditClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
  exit;
  try
    Master.Edit;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TJenisKendaraanFrm.btnDeleteClick(Sender: TObject);
begin
  if Master.RecordCount=0 then
  exit;
  if DM.MyMsg(mmConfirmation,'Anda yakin menghapus data ini ?','')=101 then
    Exit;
  try
    Master.Delete;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
end;

procedure TJenisKendaraanFrm.btnRefreshClick(Sender: TObject);
begin
  try
    Master.Close;
    Master.Open
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
end;

procedure TJenisKendaraanFrm.btnSaveClick(Sender: TObject);
begin
  try
    Master.Post;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TJenisKendaraanFrm.btnCancelClick(Sender: TObject);
begin
  try
    Master.Cancel;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end
  end;
  UpdateView;
end;

procedure TJenisKendaraanFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= Master.State=dsBrowse;
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/ batal sebelum keluar .')
end;

procedure TJenisKendaraanFrm.pnlBottomPaint(Sender: TObject);
begin
  DrawDropShadow(pnlBottom.Canvas, pnlData.BoundsRect, 6);
end;

procedure TJenisKendaraanFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Masterid_jns_kendaraan.IsNull or (Trim(Masterid_jns_kendaraan.AsString)='') then
    raise Exception.Create('Kode Jenis Kendaraan harus diisi !')
  else
  if Masterjns_kendaraan.IsNull or (Trim(Masterjns_kendaraan.AsString)='') then
    raise Exception.Create('Nama Jenis Kendaraan harus diisi !');
  if Master.State=dsInsert then begin
    Masterusr_ins.AsString:= DM.UserConnect;
    Masterusr_upd.AsString:= DM.UserConnect;
  end else if Master.State=dsEdit then
    Masterusr_upd.AsString:= DM.UserConnect;
end;

procedure TJenisKendaraanFrm.btnCloseClick(Sender: TObject);
begin
  Close
end;

procedure TJenisKendaraanFrm.edtKodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true);
end;

end.
