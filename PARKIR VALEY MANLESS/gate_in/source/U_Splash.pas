unit U_Splash;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, SCControl, SCStdControls, jpeg, CnsJpgGr;

type
  TSplashFrm = class(TForm)
    scpProgress: TSCProgress;
    Timer1: TTimer;
    lblStatus: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    cnt: Integer;
  public
    { Public declarations }
  end;

var
  SplashFrm: TSplashFrm;

implementation

{$R *.dfm}

procedure TSplashFrm.FormCreate(Sender: TObject);
begin
  cnt:= 0;
  scpProgress.Position:= 0;
  Timer1.Interval:= 15;
  Timer1.Enabled:= True;
end;

procedure TSplashFrm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  if cnt<100 then
    cnt:= cnt+1
  else
    cnt:= 100;
  if cnt<25 then
    lblStatus.Caption:= 'Aplication Initialized...'
  else if (cnt>=25) and (cnt<50) then
    lblStatus.Caption:= 'Setting Database Parameter ...'
  else if (cnt>=50) and (cnt<75) then
    lblStatus.Caption:= 'Prepare Connection To PostgreSQL Database...'
  else if (cnt>=75) and (cnt<=100) then
    lblStatus.Caption:= 'Setting Aplication Menu ...';
  scpProgress.Percentage:= cnt;
  if cnt<100 then
    Timer1.Enabled:= True
  else if cnt=100 then begin
    Timer1.Enabled:= False;
    ModalResult:=mrOK;
  end;
end;

end.

