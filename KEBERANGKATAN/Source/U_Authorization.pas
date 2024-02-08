unit U_Authorization;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SCControl, SCStdControls, cxLabel, cxTextEdit, cxMemo,
  cxControls, cxContainer, cxEdit, cxGroupBox, cxRadioGroup;

type
  TAuthorizationFrm = class(TForm)
    RGauthor: TcxRadioGroup;
    cxMemoRemarks: TcxMemo;
    cxLabel1: TcxLabel;
    btnOK: TSCButton;
    btnCancel: TSCButton;
    SCPanel1: TSCPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }
    Mode, status_auth, vmode : string;

  end;

var
  AuthorizationFrm: TAuthorizationFrm;

implementation

{$R *.dfm}

procedure TAuthorizationFrm.FormShow(Sender: TObject);
begin
   if Mode='R' then begin
      Caption:= 'REVIEW';
      vmode:= 'REVIEW';
   end else
   if Mode='A' then begin
      Caption:= 'APPROVE';
      vmode:= 'APPROVAL';
    end else
    if Mode='I' then begin
       Caption:= 'INSPECTION';
       vmode:= 'QC';
    end else
    if Mode='S' then begin
      Caption:= 'ISSUED';
      vmode:= 'MC';
    end;

end;

procedure TAuthorizationFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   case RGauthor.ItemIndex of
   0 : status_auth:= vmode+'-'+RGauthor.Properties.Items.Items[0].Caption;
   1 : status_auth:= vmode+'-'+RGauthor.Properties.Items.Items[1].Caption;
  end;
end;

end.
