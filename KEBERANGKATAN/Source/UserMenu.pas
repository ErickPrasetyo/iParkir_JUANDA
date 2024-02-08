unit UserMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, wwDialog, wwidlg,
  cxMaskEdit, cxButtonEdit, cxDBEdit, cxContainer, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, ExtCtrls,
  cxGridLevel, cxControls, cxGridCustomView, cxGrid, cxPC, AdvPanel,
  ActnList, cxGridBandedTableView, cxClasses, AdvAppStyler,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvGlowButton, StdCtrls,
  AdvReflectionImage, cxCheckBox, SCControl, SCStdControls,
  SCGraphicButton, SCDbNavButton, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TDBMode=(dmNone,dmBrowse,dmInsert,dmEdit);
  TUserMenuFrm = class(TForm)
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    Master: TZQuery;
    Detail: TZQuery;
    Mastervuser: TStringField;
    Masterpasswd: TStringField;
    Masterfull_name: TStringField;
    Detailvuser: TStringField;
    Detailimenu: TIntegerField;
    Detailmenu_name: TStringField;
    Detailmenu_caption: TStringField;
    Detaillvl: TIntegerField;
    Detailtag: TIntegerField;
    Detailisbrowse: TStringField;
    Detailisinsert: TStringField;
    Detailisedit: TStringField;
    Detailisdelete: TStringField;
    Detailisprint: TStringField;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    aclFrm: TActionList;
    actClose: TAction;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actSave: TAction;
    actCancel: TAction;
    actCreateMenu: TAction;
    apsPanel: TAdvPanelStyler;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlNavigator: TAdvPanel;
    pgcMaster: TcxPageControl;
    tsBrowse: TcxTabSheet;
    grdMaster: TcxGrid;
    grddbtvMaster: TcxGridDBTableView;
    grdlvlMaster: TcxGridLevel;
    tsDetail: TcxTabSheet;
    grdDetail: TcxGrid;
    grddbtvDetail: TcxGridDBTableView;
    grdlvlDetail: TcxGridLevel;
    pnlDetailNav: TPanel;
    btnCreateMenu: TAdvGlowButton;
    grddbtvMastervuser: TcxGridDBColumn;
    grddbtvMasterfull_name: TcxGridDBColumn;
    pnlDetailData: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtUserName: TcxDBTextEdit;
    edtPasswd: TcxDBTextEdit;
    edtFullName: TcxDBTextEdit;
    grddbtvDetailmenu_caption: TcxGridDBColumn;
    grddbtvDetailisbrowse: TcxGridDBColumn;
    grddbtvDetailisinsert: TcxGridDBColumn;
    grddbtvDetailisedit: TcxGridDBColumn;
    grddbtvDetailisdelete: TcxGridDBColumn;
    grddbtvDetailisprint: TcxGridDBColumn;
    Detailcmenu_caption: TStringField;
    btnSave: TSCButton;
    btnCancel: TSCButton;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    btnEdit: TSCButton;
    btnDelete: TSCButton;
    btnRefresh: TSCButton;
    btnFirst: TSCNavButton;
    btnPrior: TSCNavButton;
    btnNext: TSCNavButton;
    btnLast: TSCNavButton;
    Masterpasswd_otorisasi: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pgcMasterChange(Sender: TObject);
    procedure pgcMasterPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actCloseExecute(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actCreateMenuExecute(Sender: TObject);
    procedure grddbtvMasterCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MasterNewRecord(DataSet: TDataSet);
    procedure MasterBeforePost(DataSet: TDataSet);
    procedure MasterpasswdSetText(Sender: TField; const Text: String);
    procedure DetailCalcFields(DataSet: TDataSet);
    procedure grddbtvDetailEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
  private
    { Private declarations }
    DBMode: TDBMode;
    procedure UpdateView;
    Procedure CreateMenu;
  public
    { Public declarations }
  end;

var
  UserMenuFrm: TUserMenuFrm;

implementation

uses Menus, U_DM, U_Main, MD5;

{$R *.dfm}

procedure TUserMenuFrm.CreateMenu;
var cnt, j: Integer;
    s: string;
    mi: TMenuItem;
begin
  cnt:= 0;
  try
    with MainFrm do
    for j:=0 to ComponentCount-1 do
      if Components[j] is TMenuItem then
      begin
        mi:= Components[j] as TMenuItem;
        if mi.Tag>=400 then begin
          //by pass skin menu
          if (mi.Tag=1020) or (mi.Tag=1021) or (mi.Tag=1022) or (mi.Tag=1023) or
             (mi.Tag=10220) or (mi.Tag=10221) or (mi.Tag=10222) or (mi.Tag=10223) or
             (mi.Tag=10230) or (mi.Tag=10231) or (mi.Tag=10232)
          then
          else begin
            Detail.Append;
            Detailvuser.AsString:= Mastervuser.AsString;
            cnt:= cnt+1;
            Detailimenu.Value:= cnt;
            Detailmenu_name.AsString:= mi.Name;
            s:= mi.Caption;
            Delete(s,Pos('&',s),1);
            Detailmenu_caption.AsString:= s;
            Detailtag.AsInteger:= mi.Tag;
            Detaillvl.AsInteger:= mi.GroupIndex;
            if Detaillvl.AsInteger=0 then begin
              Detailisbrowse.AsString:='1';
              Detailisinsert.AsString:='0';
              Detailisedit.AsString:='0';
              Detailisdelete.AsString:='0';
              Detailisprint.AsString:='0';
            end
            else begin
              Detailisbrowse.AsString:='1';
              Detailisinsert.AsString:='0';
              Detailisedit.AsString:='0';
              Detailisdelete.AsString:='0';
              Detailisprint.AsString:='1';
            end;
            Detail.Post;
          end
        end
      end
  except
    on E: Exception do begin
      DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
    end
  end
end;


procedure TUserMenuFrm.UpdateView;
var isBrowse, isEmpty: Boolean;
begin
  if DBMode=dmNone then begin
    //pgcMaster.ActivePageIndex := 0;
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

    edtUserName.Properties.ReadOnly:= True;
    edtPasswd.Properties.ReadOnly:= True;
    edtFullName.Properties.ReadOnly:= True;

    grddbtvDetail.OptionsData.Editing:= False;
    btnCreateMenu.Enabled:= False;
  end else begin
    isBrowse:= DBMode=dmBrowse;
    isEmpty:= Master.RecordCount=0;

    btnFirst.Enabled := isBrowse;
    btnPrior.Enabled := isBrowse;
    btnNext.Enabled := isBrowse;
    btnLast.Enabled := isBrowse;

    btnAdd.Visible := isBrowse;
    btnAdd.Enabled := True;
    btnEdit.Visible := isBrowse;
    btnEdit.Enabled := not isEmpty;
    btnDelete.Visible := isBrowse;
    btnDelete.Enabled := not isEmpty;
    btnRefresh.Visible := isBrowse;
    btnSave.Visible := not isBrowse;
    btnCancel.Visible := not isBrowse;

    edtUserName.Properties.ReadOnly:= isBrowse;
    edtPasswd.Properties.ReadOnly:= isBrowse;
    edtFullName.Properties.ReadOnly:= isBrowse;

    grddbtvDetail.OptionsData.Editing:= not isBrowse;
    btnCreateMenu.Enabled:= not isBrowse;
  end;
end;

procedure TUserMenuFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree
end;

procedure TUserMenuFrm.FormShow(Sender: TObject);
begin
  DBMode:= dmNone;
  pgcMaster.ActivePageIndex:= 0;
  ShowWindow(Handle, SW_Maximize);
  try
    Master.Close;
    Master.Open;
    Detail.Close;
    DBMode:= dmBrowse;
  except
    on E: Exception do begin
      DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
    end
  end;
  UpdateView
end;

procedure TUserMenuFrm.pgcMasterChange(Sender: TObject);
begin
  if (Master.State<>dsInactive) and (Master.RecordCount>0) and (pgcMaster.ActivePageIndex=1) then begin
    try
      Detail.Close;
      Detail.Params.ParamByName('vuser').Value:= Mastervuser.Value;
      Detail.Open;
    except
      on E: Exception do begin
        DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
      end
    end
  end;
end;

procedure TUserMenuFrm.pgcMasterPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  AllowChange:= (DBMode=dmNone) or (DBMode=dmBrowse)
end;

procedure TUserMenuFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= (DBMode=dmNone) or (DBMode=dmBrowse);
  if not CanClose then
    DM.MyMsg(mmWarning,'Data belum disimpan !','Tekan simpan/batal sebelum keluar.')
end;

procedure TUserMenuFrm.actCloseExecute(Sender: TObject);
begin
  Close
end;

procedure TUserMenuFrm.actAddExecute(Sender: TObject);
begin
  try
    pgcMaster.ActivePageIndex:= 1;
    Master.Append;
    Detail.Close;
    Detail.Params.ParamByName('vuser').Value:= '';
    Detail.Open;
    edtUserName.SetFocus;
    DBMode:= dmInsert;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TUserMenuFrm.actEditExecute(Sender: TObject);
begin
  try
    pgcMaster.ActivePageIndex:= 1;
    Master.Edit;
    edtUserName.SetFocus;
    DBMode:= dmEdit;
  except
    on E: Exception do begin
      DBMode:= dmBrowse;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TUserMenuFrm.actDeleteExecute(Sender: TObject);
begin
  if DM.MyMsg(mmConfirmation,'Do you want to delete this data ?','')=101 then
    Exit;
  DM.StartTransaction;
  try
    DM.conn.StartTransaction;
    Master.Delete;
    Master.ApplyUpdates;
    Master.CommitUpdates;
    DM.CommitTransaction;
    Master.Refresh;
    pgcMasterChange(nil);
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
  end;
  UpdateView
end;

procedure TUserMenuFrm.actRefreshExecute(Sender: TObject);
begin
  DBMode:= dmNone;
  try
    Master.Close;
    Master.Open;
    pgcMasterChange(nil);
    DBMode:= dmBrowse;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  UpdateView
end;

procedure TUserMenuFrm.actSaveExecute(Sender: TObject);
begin
  DM.StartTransaction;
  try
    if (Master.State=dsInsert) or (Master.State=dsEdit) then
      Master.Post;
    if (Detail.State=dsInsert) or (Detail.State=dsEdit) then
      Detail.Post;
    Master.ApplyUpdates;
    Detail.ApplyUpdates;
    Master.CommitUpdates;
    Detail.CommitUpdates;
    DM.CommitTransaction;
  except
    on E: Exception do begin
      DM.RollbackTransaction;
      DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      Exit;
    end
  end;
  DBMode:= dmBrowse;
  UpdateView
end;

procedure TUserMenuFrm.actCancelExecute(Sender: TObject);
begin
  try
    Detail.Cancel;
    Master.Cancel;
    Detail.CancelUpdates;
    Master.CancelUpdates;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
  DBMode:= dmBrowse;
  UpdateView;
  pgcMaster.ActivePageIndex := 0;
end;

procedure TUserMenuFrm.actCreateMenuExecute(Sender: TObject);
begin
  try
    if (Master.State=dsInsert) or (Master.State=dsEdit) then
      Master.Post;
  except
    on E: Exception do begin
      DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
    end;
  end;

  Detail.DisableControls;
  try
    try
      Detail.Close;
      Detail.Params.ParamByName('vuser').Value:= Mastervuser.Value;
      Detail.Open;
      if Detail.RecordCount=0 then
        CreateMenu
      else begin
        if DM.MyMsg(mmConfirmation, 'Hak akses untuk user ini sudah ada !'+#13#10+
                                    'Anda ingin menghapus dan membuatnya lagi ?',
                                    'Jika anda pilih Ya,  Hak akses yang lama untuk user ini akan dihapus. Yang baru akan dibuat lagi.')=100 then
        begin
          Detail.First;
          while not Detail.Eof do
            Detail.Delete;
          CreateMenu;
        end;
      end;
    except
      on E: Exception do begin
        DM.MyMsg(mmError, 'Error has been encountered !',E.Message)
      end
    end
  finally
    Detail.EnableControls
  end
end;

procedure TUserMenuFrm.grddbtvMasterCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  pgcMaster.ActivePageIndex:= 1
end;

procedure TUserMenuFrm.MasterNewRecord(DataSet: TDataSet);
begin
  Mastervuser.Clear;
  Masterpasswd.Clear;
  Masterfull_name.Clear;
end;

procedure TUserMenuFrm.MasterBeforePost(DataSet: TDataSet);
begin
  if Mastervuser.IsNull or (Trim(Mastervuser.AsString)='') then
    raise Exception.Create('NAMA USER harus diisi !');

  if Masterpasswd.IsNull or (Trim(Masterpasswd.AsString)='')then
    Masterpasswd.AsString:= MD5Print(MD5String(''));

  Masterpasswd_otorisasi.AsString:= Masterpasswd.AsString;
end;

procedure TUserMenuFrm.MasterpasswdSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= MD5Print(MD5String(Trim(Text)))
end;

procedure TUserMenuFrm.DetailCalcFields(DataSet: TDataSet);
var ctab: string;
    i: Integer;
begin
  ctab:='';
  if Detaillvl.AsInteger>0 then
    for i:= 1 to Detaillvl.AsInteger do
      ctab:= ctab+'     ';
  Detailcmenu_caption.AsString:= ctab+Detailmenu_caption.AsString;
end;

procedure TUserMenuFrm.grddbtvDetailEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var s: string;
    bm: TBookmark;
    old_lvl, curr_lvl: Integer;
    old_val: string;
begin
  s:= TcxGridDBColumn(AItem).Caption;

  if (Detail.State=dsInsert) or (Detail.State=dsEdit) then
    Detail.Post;
  old_lvl:= Detaillvl.AsInteger;
  if SameText(s,'Lihat') then
    old_val:= Detailisbrowse.Value
  else if SameText(s,'Tambah') then
    old_val:= Detailisinsert.Value
  else if SameText(s,'Koreksi') then
    old_val:= Detailisedit.Value
  else if SameText(s,'Hapus') then
    old_val:= Detailisdelete.Value
  else if SameText(s,'Cetak') then
    old_val:= Detailisprint.Value;

  Detail.DisableControls;
  bm:= Detail.GetBookmark;
  try
    Detail.Next;
    curr_lvl:= Detaillvl.AsInteger;
    while (not Detail.EOF) and (curr_lvl<>old_lvl) do begin
      if curr_lvl<old_lvl then
        Break;

      if Detail.State=dsBrowse then
        Detail.Edit;

      if SameText(s,'Lihat') then
        Detailisbrowse.Value:= old_val
      else if SameText(s,'Tambah') then
        Detailisinsert.Value:= old_val
      else if SameText(s,'Koreksi') then
        Detailisedit.Value:= old_val
      else if SameText(s,'Hapus') then
        Detailisdelete.Value:= old_val
      else if SameText(s,'Cetak') then
        Detailisprint.Value:= old_val;

      if Detail.State=dsEdit then
        Detail.Post;

      Detail.Next;
      curr_lvl:= Detaillvl.AsInteger;
    end;
    Detail.GotoBookmark(bm);
  finally
    Detail.FreeBookmark(bm);
    Detail.EnableControls;
  end
end;

end.
