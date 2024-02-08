program GTINP_FB4;

uses
  Forms,
  U_Main in 'U_Main.pas' {MainFrm},
  U_Splash in 'U_Splash.pas' {SplashFrm},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  MQTT in 'MQTT.pas',
  MQTTReadThread in 'MQTTReadThread.pas';

{$R *.res}

begin
  Application.Initialize;
  with TSplashFrm.Create(Application) do
    try
      ShowModal;
    finally
      Free;
    end;
  Application.CreateForm(TDM, DM);
  if DM.conn.Connected  then begin
     Application.CreateForm(TMainFrm, MainFrm);
  end;
  Application.Run;
end.
