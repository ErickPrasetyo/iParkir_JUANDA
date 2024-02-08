unit U_Setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvReflectionImage, ExtCtrls, AdvPanel,
  cxGridBandedTableView, cxClasses, cxStyles, cxGridTableView,
  AdvAppStyler, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  SCControl, SCStdControls, RzPanel, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxDBEdit, RzLabel, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGridDBBandedTableView, AdvGlowButton, AdvToolBar,
  cxGroupBox, RzSplit;

type
  TSettingFrm = class(TForm)
    Master: TZQuery;
    dsMaster: TDataSource;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    pnlHeader: TAdvPanel;
    ariHeader: TAdvReflectionImage;
    lblHeader2: TLabel;
    lblHeader1: TLabel;
    pnlMaster: TSCPanel;
    cxGroupBox4: TcxGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    qryClient: TZQuery;
    dsqryClient: TDataSource;
    qryClientid_cnt: TLargeintField;
    qryClientcnt_id: TStringField;
    qryClientcnt_ip: TStringField;
    qryClientcnt_port: TIntegerField;
    qryClientcnt_isactive: TStringField;
    qryClientcnt_hdr: TStringField;
    qryClientcnt_ftr: TStringField;
    qryClientcnt_pict: TStringField;
    qryClienttopic_to_publish: TStringField;
    qryClienttopic_to_subscribe: TStringField;
    cxGroupBox1: TcxGroupBox;
    qryBroker: TZQuery;
    dsqryBroker: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Shape27: TShape;
    Label14: TLabel;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Label15: TLabel;
    Shape31: TShape;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    qryBrokerbrk_host: TStringField;
    qryBrokerbrk_port: TIntegerField;
    qryBrokerbrk_usr: TStringField;
    qryBrokerbrk_pass: TStringField;
    qryBrokerbrk_keep_alive: TIntegerField;
    Label16: TLabel;
    Masterid_parameter: TIntegerField;
    Masteris_playsnd_welcome: TStringField;
    Masteris_playsnd_coming: TStringField;
    Masteris_open_gate_in: TStringField;
    SCPanel1: TSCPanel;
    qryBrokert_ping: TIntegerField;
    qryBrokert_rekonek: TIntegerField;
    qryBrokerpublish_head: TStringField;
    qryBrokersubscribe_head: TStringField;
    qryBrokerisactive: TStringField;
    gridItemPR: TcxGrid;
    grdDBTVDetail: TcxGridDBBandedTableView;
    grdLVL_ItemPR: TcxGridLevel;
    qryClientcnt_snd_1: TStringField;
    qryClientcnt_snd_2: TStringField;
    qryClientcnt_snd_3: TStringField;
    qryClientketerangan: TStringField;
    qryClientiskontroller: TStringField;
    qryGate: TZQuery;
    dsqryGate: TDataSource;
    cxGroupBox3: TcxGroupBox;
    Shape38: TShape;
    Shape40: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Shape51: TShape;
    Shape54: TShape;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    cxDBTextEdit30: TcxDBTextEdit;
    cxDBTextEdit31: TcxDBTextEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBTextEdit33: TcxDBTextEdit;
    cxDBTextEdit34: TcxDBTextEdit;
    qryGateid_gate: TStringField;
    qryGategt_isactive: TStringField;
    qryGategt_print: TStringField;
    qryGategt_loop_on: TStringField;
    qryGategt_loop_off: TStringField;
    qryGategt_green_btn: TStringField;
    qryGategt_red_btn: TStringField;
    qryGateketerangan: TStringField;
    qryGategt_cam: TStringField;
    qryGatet_open: TIntegerField;
    qryGategt_knd: TStringField;
    qryGategt_open_gate: TStringField;
    grdDBTVDetailid_gate: TcxGridDBBandedColumn;
    grdDBTVDetailid_cnt: TcxGridDBBandedColumn;
    grdDBTVDetailgt_isactive: TcxGridDBBandedColumn;
    grdDBTVDetailgt_print: TcxGridDBBandedColumn;
    grdDBTVDetailgt_loop_on: TcxGridDBBandedColumn;
    grdDBTVDetailgt_loop_off: TcxGridDBBandedColumn;
    grdDBTVDetailgt_green_btn: TcxGridDBBandedColumn;
    grdDBTVDetailgt_red_btn: TcxGridDBBandedColumn;
    grdDBTVDetailketerangan: TcxGridDBBandedColumn;
    grdDBTVDetailgt_cam: TcxGridDBBandedColumn;
    grdDBTVDetailgt_knd: TcxGridDBBandedColumn;
    grdDBTVDetailgt_open_gate: TcxGridDBBandedColumn;
    qryGatecnt_id: TStringField;
    Masteris_loop_gate_in: TStringField;
    Masteris_playsnd_thanks: TStringField;
    RzPanel1: TSCPanel;
    btnBatalPasien: TSCButton;
    btnSimpanPasien: TSCButton;
    procedure FormShow(Sender: TObject);
    procedure btnSimpanPasienClick(Sender: TObject);
    procedure btnBatalPasienClick(Sender: TObject);
    procedure edtKodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingFrm: TSettingFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TSettingFrm.FormShow(Sender: TObject);
begin
    try
      Master.Close;
      Master.Open;
      qryClient.Close;
      qryClient.Open;
      qryBroker.Close;
      qryBroker.Open;
      qryGate.Close;
      qryGate.Open;

      Master.Edit;
      qryClient.Edit;
      qryBroker.Edit;
      qryGate.Edit;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end;
end;

procedure TSettingFrm.btnSimpanPasienClick(Sender: TObject);
begin
    try
      Master.CheckBrowseMode;
      qryClient.CheckBrowseMode;
      qryBroker.CheckBrowseMode;
      qryGate.CheckBrowseMode;
      ModalResult:= mrOk;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end;
end;

procedure TSettingFrm.btnBatalPasienClick(Sender: TObject);
begin
    try
      Master.Cancel;
      qryClient.Cancel;
      qryBroker.Cancel;
      qryGate.Cancel;
      ModalResult:= mrCancel;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end;
end;

procedure TSettingFrm.edtKodeKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

end.
