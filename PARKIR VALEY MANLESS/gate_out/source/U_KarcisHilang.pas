unit U_KarcisHilang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxEditRepositoryItems, cxEdit, cxDBEditRepository, ZDataset,
  cxGridBandedTableView, cxClasses, cxStyles, cxGridTableView, DB,
  ZAbstractRODataset, ZAbstractDataset, SCControl, SCStdControls, StdCtrls,
  ExtCtrls, RzPanel, cxControls, cxContainer, cxTextEdit, cxDBEdit,
  kbmMemTable, cxGraphics, cxDropDownEdit, cxLabel, cxDBLabel,
  cxButtonEdit, cxMaskEdit, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, wwDialog, wwidlg;

type
  TKarcisHilangFrm = class(TForm)
    RzPanel1: TRzPanel;
    lblCap: TLabel;
    RzPanel2: TRzPanel;
    dsTotal: TDataSource;
    MemTotal: TkbmMemTable;
    Label11: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    edtNoKartu: TcxDBTextEdit;
    edtBank: TcxDBTextEdit;
    SCPanel1: TSCPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    edtCicil: TcxDBTextEdit;
    MemTotalnopol: TStringField;
    MemTotalno_ktp: TStringField;
    MemTotalnama: TStringField;
    MemTotalalamat: TStringField;
    MemTotalno_hp: TStringField;
    edtPembayaran: TcxDBTextEdit;
    edtAnggota: TcxDBTextEdit;
    Label3: TLabel;
    Label10: TLabel;
    MemTotaltarif: TFloatField;
    edtBayar: TcxTextEdit;
    SCPanel2: TSCPanel;
    qryTarif: TZQuery;
    qryTariftarif: TFloatField;
    pnlMiddle: TSCPanel;
    SCButton1: TSCButton;
    btnSave: TSCButton;
    btnRefresh: TSCButton;
    procedure FormShow(Sender: TObject);
    procedure edtPembayaranKeyPress(Sender: TObject; var Key: Char);
    procedure edtBayarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SCButton1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
    function FormatBayar(sBayar:String):Real;

  public
    { Public declarations }
    pjns_knd : String;

  end;

var
  KarcisHilangFrm: TKarcisHilangFrm;

implementation

uses U_DM;

{$R *.dfm}



procedure TKarcisHilangFrm.FormShow(Sender: TObject);
begin
    edtBayar.Properties.ReadOnly:= True;
    try
      qryTarif.Close;
      qryTarif.Params.ParamByName('p').AsString:= Trim('KH_'+pjns_knd);
      qryTarif.Open;
      MemTotal.Close;
      MemTotal.Open;
      MemTotal.Append;
      MemTotaltarif.AsFloat:= qryTariftarif.AsFloat;
      edtBayar.Text:= FormatCurr('#,###',qryTariftarif.AsFloat);
      lblCap.Caption:= 'Karcis Hilang ';
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
    edtPembayaran.SetFocus;
end;


procedure TKarcisHilangFrm.edtPembayaranKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;


function TKarcisHilangFrm.FormatBayar(sBayar:String):Real;
begin

  Result:= 0;

  sBayar := StringReplace(sBayar,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sBayar := StringReplace(sBayar,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR

  Result:= StrToFloat(sBayar);

end;


procedure TKarcisHilangFrm.edtBayarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sRupiah: string;
  iRupiah: Currency;
  fKembali: real;
//  vRupiah: Currency;
begin
  //ribuan --> currency ( menyesuaikan setting windows )
  sRupiah := edtBayar.Text;
  sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR
  iRupiah := StrToCurrDef(sRupiah,0) ; // convert srupiah ke currency

  //currency --> format ribuan
  edtBayar.Text := FormatCurr('#,###',iRupiah);
  edtBayar.SelStart := length(edtBayar.text);



end;

procedure TKarcisHilangFrm.SCButton1Click(Sender: TObject);
begin
    ModalResult:= mrCancel;
end;

procedure TKarcisHilangFrm.btnSaveClick(Sender: TObject);
begin


      if (MemTotalnopol.IsNull or (Trim(MemTotalnopol.AsString)='')) then   begin
          DM.MyMsg(mmInformation,'NOPOL Kendaraan Harus Diisi','');
          edtPembayaran.SetFocus;
          Exit;
      end
      else
      if (MemTotalno_ktp.IsNull or (Trim(MemTotalno_ktp.AsString)='')) then   begin
          DM.MyMsg(mmInformation,'NO. IDENTITAS Harus Diisi','');
          edtAnggota.SetFocus;
          Exit;
      end
      else
      if (MemTotalnama.IsNull or (Trim(MemTotalnama.AsString)='')) then   begin
          DM.MyMsg(mmInformation,'NAMA Harus Diisi','');
          edtAnggota.SetFocus;
          Exit;
      end;


  if (MemTotal.State<>dsBrowse)  then
        MemTotal.Post;

    ModalResult:= mrOk;
end;

end.
