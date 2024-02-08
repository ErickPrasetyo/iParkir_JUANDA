unit U_AuthorizationPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,
  AdvAppStyler, AdvGlowButton, AdvPanel, EllipsLabel,
  SCControl, SCStdControls, StdCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, AdvReflectionImage;

type
  TAuthorizationPasswordFrm = class(TForm)
    edtPassword: TcxTextEdit;
    Label1: TLabel;
    Shape1: TShape;
    Shape4: TShape;
    SCPanel1: TSCPanel;
    btnOK: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    pnlHeader: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvReflectionImage1: TAdvReflectionImage;
    EllipsLabel1: TEllipsLabel;
    lblHeaderComment: TLabel;
    lblDescription: TLabel;
    lblComments: TLabel;
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuthorizationPasswordFrm: TAuthorizationPasswordFrm;

implementation

uses U_Main;

{$R *.dfm}

procedure TAuthorizationPasswordFrm.edtPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    ModalResult:= mrOK
end;

end.
