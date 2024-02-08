unit U_BayarNotaNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxEditRepositoryItems, cxEdit, cxDBEditRepository, ZDataset,
  cxGridBandedTableView, cxClasses, cxStyles, cxGridTableView, DB,
  ZAbstractRODataset, ZAbstractDataset, SCControl, SCStdControls, StdCtrls,
  ExtCtrls, RzPanel, cxControls, cxContainer, cxTextEdit, cxDBEdit,
  kbmMemTable, cxGraphics, cxDropDownEdit, cxLabel, cxDBLabel,
  cxButtonEdit, cxMaskEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, wwDialog, wwidlg,
  dxSkinscxPCPainter, cxPC, LMDCustomComponent, LMDGlobalHotKey, cxSpinEdit,
  RzLabel, Mask, RzEdit;

type
  TBayarNotaNewFrm = class(TForm)
    PanelTop: TRzPanel;
    cxDBLabel2: TcxDBLabel;
    btnCahsless: TSCButton;
    btnTunai: TSCButton;
    F8: TLMDGlobalHotKey;
    F9: TLMDGlobalHotKey;
    RzLabel11: TRzLabel;
    btnVoucher: TSCButton;
    pnlVoucher: TPanel;
    SCButton1: TSCButton;
    SCButton2: TSCButton;
    edtVoucher: TRzEdit;
    cxLabel1: TcxLabel;
    qJenis: TZQuery;
    qJenisjns_pembayaran: TStringField;
    qJenisketerangan: TStringField;
    qJenisaktif: TStringField;
    qVoucher: TZQuery;
    qVoucherNo_Voucher: TStringField;
    qVoucherAktif: TBooleanField;
    qVoucherLock: TBooleanField;
    qVoucherIdentitas: TStringField;
    qVoucherKeterangan: TStringField;
    qVoucherHarga: TFloatField;
    qVoucherIsi: TIntegerField;
    qVoucherOperator: TIntegerField;
    qVoucherTglInput: TDateTimeField;
    qVoucherEditor: TIntegerField;
    qVoucherUpdated: TDateTimeField;
    procedure btnTunaiClick(Sender: TObject);
    procedure btnCahslessClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtVoucherKeyPress(Sender: TObject; var Key: Char);
    procedure btnVoucherClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    x, vvoucher, vmrs, vnama : String;
    vsisa : double;
  end;

var
  BayarNotaNewFrm: TBayarNotaNewFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TBayarNotaNewFrm.btnTunaiClick(Sender: TObject);
begin
  x:= '2';
  edtVoucher.Text:= '';
  ModalResult:= mrOk;
end;

procedure TBayarNotaNewFrm.btnCahslessClick(Sender: TObject);
begin
  x:= '1';
  edtVoucher.Text:= '';
  ModalResult:= mrOk;
end;

procedure TBayarNotaNewFrm.FormShow(Sender: TObject);
begin
  pnlVoucher.Visible:= False;

  vvoucher:= '';
  vmrs:= '';
  vnama:= '';
  vsisa:= 0;

  qJenis.Close;
  qJenis.Open;
  // CASHLESS
  if ((qJenisjns_pembayaran.AsString='1') and (qJenisaktif.AsString='1')) then begin
     btnCahsless.Enabled:= True;
  end else
  if ((qJenisjns_pembayaran.AsString='1') and (qJenisaktif.AsString='0')) then begin
     btnCahsless.Enabled:= False;
  end;
  // TUNAI
  if ((qJenisjns_pembayaran.AsString='2') and (qJenisaktif.AsString='1')) then begin
     btnTunai.Enabled:= True;
  end else
  if ((qJenisjns_pembayaran.AsString='2') and (qJenisaktif.AsString='0')) then begin
     btnTunai.Enabled:= False;
  end;
  // VOUCHER
  if ((qJenisjns_pembayaran.AsString='3') and (qJenisaktif.AsString='1')) then begin
     btnVoucher.Enabled:= True;
  end else
  if ((qJenisjns_pembayaran.AsString='3') and (qJenisaktif.AsString='0')) then begin
     btnVoucher.Enabled:= False;
  end;
end;

procedure TBayarNotaNewFrm.edtVoucherKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then begin

     // Cek Status Voucher
     DM.conn2.Disconnect;
     DM.conn2.Connect;

     qVoucher.Close;
     qVoucher.Params.ParamByName('pvoucher').Value:= Trim(edtVoucher.Text);
     qVoucher.Open;

     if qVoucher.RecordCount=0 then begin
        edtVoucher.Clear;
        edtVoucher.SetFocus;
        Raise Exception.Create('NO. VOUCHER tidak ditemukan. Silakan menghubungi Petugas Parkir !!!');
     end else begin
         if qVoucherIsi.Value>0 then begin
            x:= '3';
            vvoucher:= qVoucherNo_Voucher.AsString;
            vmrs:= qVoucherIdentitas.AsString;
            vnama:= qVoucherKeterangan.AsString;
            vsisa:= qVoucherIsi.Value;
            ModalResult:= mrOk;
         end else begin
            edtVoucher.Clear;
            edtVoucher.SetFocus;
            Raise Exception.Create('Kuota Voucher Parkir sudah habis. Silakan menghubungi Petugas Parkir !!!');
         end;
     end;
  end;
end;

procedure TBayarNotaNewFrm.btnVoucherClick(Sender: TObject);
begin
  pnlVoucher.Visible:= True;
  edtVoucher.SetFocus;
end;

end.
