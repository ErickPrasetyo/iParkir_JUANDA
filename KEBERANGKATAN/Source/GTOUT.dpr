program GTOUT;

uses
  Forms,
  MD5 in 'MD5.pas',
  U_Main in 'U_Main.pas' {MainFrm},
  U_ChangePassword in 'U_ChangePassword.pas' {ChangePasswordFrm},
  U_Login_User in 'U_Login_User.pas' {Login_UserFrm},
  U_Splash in 'U_Splash.pas' {SplashFrm},
  U_LoginDB in 'U_LoginDB.pas' {LoginDBfrm},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  UserMenu in 'UserMenu.pas' {UserMenuFrm},
  U_Status_Dialog in 'U_Status_Dialog.pas' {frmStatus_Dialog},
  UDataObject in 'UDataObject.pas',
  OLEOffice in 'OLEOffice.pas',
  U_JenisKendaraan in 'U_JenisKendaraan.pas' {JenisKendaraanFrm},
  U_JenisAnggota in 'U_JenisAnggota.pas' {JenisAnggotaFrm},
  U_Anggota in 'U_Anggota.pas' {AnggotaFrm},
  U_Tarif in 'U_Tarif.pas' {TarifFrm},
  U_Parkir in 'U_Parkir.pas' {ParkirFrm},
  U_LookPromo2 in 'U_LookPromo2.pas' {LookPromo2Frm},
  U_Setting in 'U_Setting.pas' {SettingFrm},
  U_LapKendaraanParkir in 'U_LapKendaraanParkir.pas' {LapKendaraanParkirFrm},
  U_LapKasirPerShift in 'U_LapKasirPerShift.pas' {LapKasirPerShiftFrm},
  U_LapPerPeriode in 'U_LapPerPeriode.pas' {LapPerPeriodeFrm},
  U_BayarNotaNew in 'U_BayarNotaNew.pas' {BayarNotaNewFrm},
  U_Data_Log in 'U_Data_Log.pas' {DataLogFrm},
  U_LookPromo in 'U_LookPromo.pas' {LookPromoFrm},
  MQTT in 'MQTT.pas',
  MQTTReadThread in 'MQTTReadThread.pas',
  U_LapPendParkir in 'U_LapPendParkir.pas' {LapPendParkirFrm},
  U_Helm in 'U_Helm.pas' {HelmFrm},
  U_LapSetoran in 'U_LapSetoran.pas' {LapSetoranFrm};

{$R *.res}

begin
  Application.Initialize;
  with TSplashFrm.Create(Application) do
    try
      ShowModal;
    finally
      Free;
    end;
  Application.Title:='iParkir';
  Application.CreateForm(TDM, DM);
  if DM.conn.Connected  then begin
     Application.CreateForm(TMainFrm, MainFrm);
  end;
  Application.Run;
end.
