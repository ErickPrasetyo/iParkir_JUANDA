unit U_Login_User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,
  SCControl, SCStdControls, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, AdvGlowButton, AdvPanel,
  EllipsLabel, AdvAppStyler, AdvReflectionImage, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxMaskEdit, cxDropDownEdit, cxSpinEdit;

type
  TLogin_UserFrm = class(TForm)
    Label1: TLabel;
    edtUsername: TcxTextEdit;
    Label2: TLabel;
    edtPassword: TcxTextEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    pnlBottom: TSCPanel;
    lblHeaderComment: TLabel;
    pnlTop: TAdvPanel;
    EllipsLabel1: TEllipsLabel;
    AdvPanelStyler1: TAdvPanelStyler;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    AdvFormStyler1: TAdvFormStyler;
    lblComments: TLabel;
    AdvReflectionImage1: TAdvReflectionImage;
    lblDescription: TLabel;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    edtShift: TcxSpinEdit;
    procedure edtUsernameKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtShiftKeyPress(Sender: TObject; var Key: Char);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login_UserFrm: TLogin_UserFrm;

implementation

uses U_DM;

{$R *.dfm}

procedure TLogin_UserFrm.edtUsernameKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    SelectNext(ActiveControl,true,true)
end;

procedure TLogin_UserFrm.FormShow(Sender: TObject);
begin
  edtUsername.Text:='';
  edtPassword.Text:='';
  edtShift.Text:= IntToStr(DM.GetShift);
//  edtShift.Text:= '';

end;

procedure TLogin_UserFrm.btnOKClick(Sender: TObject);
begin
   if (Trim(edtShift.Text)='') then begin
      DM.MyMsg(mmInformation,'Shift Harus Diisi !!!','') ;
      exit
   end
    else
   if ((edtShift.Value)<=0) then begin
      DM.MyMsg(mmInformation,'Shift Harus Diisi !!!','') ;
      exit
   end
   else
   if ((edtShift.Value)>3) then begin
      DM.MyMsg(mmInformation,'Shift Salah !!!','') ;
      exit
   end;
   ModalResult:= mrOk
end;

procedure TLogin_UserFrm.edtShiftKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   btnOKClick(nil);
end;

procedure TLogin_UserFrm.edtPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    btnOKClick(nil);
end;

end.