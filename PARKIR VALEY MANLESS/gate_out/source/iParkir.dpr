program iParkir;

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
  U_MenuTemplate in 'U_MenuTemplate.pas' {MenuTemplateFrm},
  UDataObject in 'UDataObject.pas',
  OLEOffice in 'OLEOffice.pas',
  U_License in 'U_License.pas' {LicenseFrm},
  U_User in 'U_User.pas' {UserFrm},
  U_JenisKendaraan in 'U_JenisKendaraan.pas' {JenisKendaraanFrm},
  U_JenisAnggota in 'U_JenisAnggota.pas' {JenisAnggotaFrm},
  U_Anggota in 'U_Anggota.pas' {AnggotaFrm},
  U_Tarif in 'U_Tarif.pas' {TarifFrm},
  U_Parkir in 'U_Parkir.pas' {ParkirFrm},
  U_LookPromo in 'U_LookPromo.pas' {LookPromoFrm},
  U_LookPromo2 in 'U_LookPromo2.pas' {LookPromo2Frm},
  U_Setting in 'U_Setting.pas' {SettingFrm},
  U_LapPerPeriode in 'U_LapPerPeriode.pas' {LapPerPeriodeFrm},
  U_KarcisHilang in 'U_KarcisHilang.pas' {KarcisHilangFrm};

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
