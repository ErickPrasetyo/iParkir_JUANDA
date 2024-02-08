unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, AdvToolBar, AdvToolBarStylers, AdvAppStyler,
  AdvMenus, AdvMenuStylers, ActnList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, RzGroupBar, AdvNavBar, jpeg, RzButton, RzPanel,
  LMDCustomComponent, LMDGlobalHotKey, DB, ZAbstractRODataset, ZDataset,
  wwDialog, wwidlg, StdCtrls, DBCtrls, RzSplit, RzLabel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxGridBandedTableView, cxClasses, AdvPanel,
  ZAbstractDataset, frxClass, frxDBSet, kbmMemTable;

type
  TMainFrm = class(TForm)
    StatusBar: TAdvOfficeStatusBar;
    StatusBarOfficeStyler: TAdvOfficeStatusBarOfficeStyler;
    aclMain: TActionList;
    actAppDatabaseConnection: TAction;
    actAdmDirectorySetting: TAction;
    actAppExit: TAction;
    actUsrLogin: TAction;
    actUsrChangePassword: TAction;
    actUsrUserMessages: TAction;
    actAdmGroups: TAction;
    actAdmUsers: TAction;
    MainMenu: TAdvMainMenu;
    MenuOfficeStyler: TAdvMenuOfficeStyler;
    afsMain: TAdvFormStyler;
    actWindowsXPSkin: TAction;
    Skin1: TMenuItem;
    WindowsXP1: TMenuItem;
    Whidbey1: TMenuItem;
    Office20031: TMenuItem;
    Office20071: TMenuItem;
    actWhidbeySkin: TAction;
    Blue1: TMenuItem;
    Olive1: TMenuItem;
    Classic1: TMenuItem;
    Silver1: TMenuItem;
    Luna1: TMenuItem;
    Obsidian1: TMenuItem;
    Silver2: TMenuItem;
    actOffice2003ClassicSkin: TAction;
    actOffice2003BlueSkin: TAction;
    actOffice2003OliveSkin: TAction;
    actOffice2003SilverSkin: TAction;
    actOffice2007LunaSkin: TAction;
    actOffice2007ObsidianSkin: TAction;
    actOffice2007SilverSkin: TAction;
    ToolBarOfficeStyler: TAdvToolBarOfficeStyler;
    TabSetOfficeStyler: TAdvOfficeTabSetOfficeStyler;
    Admin1: TMenuItem;
    Exit1: TMenuItem;
    ChangePassword1: TMenuItem;
    Master1: TMenuItem;
    actSetupModul: TAction;
    actSetupPerusahaan: TAction;
    actMJenisKendaraan: TAction;
    DivisionDepartment1: TMenuItem;
    actMJenisAnggota: TAction;
    actMAnggota: TAction;
    actMTarif: TAction;
    N3: TMenuItem;
    JenisAnggota1: TMenuItem;
    Anggota1: TMenuItem;
    N4: TMenuItem;
    arif1: TMenuItem;
    actParkirKeluar: TAction;
    actLaporanParkir: TAction;
    actLaporanParkir1: TMenuItem;
    MDITabset: TAdvOfficeMDITabSet;
    ATBOS: TAdvToolBarOfficeStyler;
    APS: TAdvPanelStyler;
    AFS: TAdvFormStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    Timer1: TTimer;
    qLastGateOut: TZQuery;
    dsqLastGateOut: TDataSource;
    qPrint: TZQuery;
    qPrintno_karcis: TStringField;
    qPrintid_jns_anggota: TStringField;
    qPrintid_jns_kendaraan: TStringField;
    qPrintno_kartu_char: TStringField;
    qPrintjam_masuk: TDateTimeField;
    qPrintjam_keluar: TDateTimeField;
    qPrinttarif: TFloatField;
    qPrintdenda: TFloatField;
    qPrintishilang: TStringField;
    qPrintfoto_bg_in: TStringField;
    qPrintfoto_bg_ot: TStringField;
    qPrintnopol: TStringField;
    qPrintusr_ins: TStringField;
    qPrintusr_upd: TStringField;
    qPrintdt_ins: TDateTimeField;
    qPrintdt_upd: TDateTimeField;
    qPrintiskeluar: TStringField;
    qPrintjns_anggota: TStringField;
    qPrintnama_anggota: TStringField;
    qPrintlama_jam: TStringField;
    qPrintlama_menit: TFloatField;
    qPrintjam: TStringField;
    qPrintmenit: TStringField;
    qPrintjns_kendaraan: TStringField;
    frxDBPrint: TfrxDBDataset;
    frxDBPerusahaan: TfrxDBDataset;
    qCekUser: TZReadOnlyQuery;
    qCekUserkantor: TStringField;
    actCekLaporanParkir: TAction;
    frxDBMaster: TfrxDBDataset;
    MemMaster: TkbmMemTable;
    MemMasterlogo: TBlobField;
    MemMasterlogo2: TBlobField;
    actAdminSettingGTIN: TAction;
    Parkir1: TMenuItem;
    Parkir2: TMenuItem;
    actLaporPerPeriode: TAction;
    qryGetShift: TZReadOnlyQuery;
    qryGetShiftpshift: TIntegerField;
    qLastGateOutno_karcis: TStringField;
    qLastGateOutno_karcis2: TStringField;
    qLastGateOutjns_kendaraan: TStringField;
    qLastGateOuttarif: TFloatField;
    qPrinthari: TStringField;
    frxKarcis: TfrxReport;
    actAdminSettingGTOT: TAction;
    actKasirShift: TAction;
    CekLaporanParkir1: TMenuItem;
    N6: TMenuItem;
    LaporanPendapatanPeriode1: TMenuItem;
    actLapPendapataPerHari: TAction;
    PendapataHari1: TMenuItem;
    actLapKndMasihParkir: TAction;
    N7: TMenuItem;
    KendaraanMasihParkir1: TMenuItem;
    actLaporPerPeriode20: TAction;
    actMA_ASN: TAction;
    actMA_Mitra: TAction;
    actMA_MitraLanud: TAction;
    LapKasirShift1: TMenuItem;
    Image1: TImage;
    Settlement1: TMenuItem;
    actDataLog: TAction;
    DataLogDataKonsolidasi1: TMenuItem;
    actLapPendParkir: TAction;
    N5: TMenuItem;
    N8: TMenuItem;
    LapPendapatanParkir1: TMenuItem;
    HelmFrm: TMenuItem;
    actTPenitipan: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actAppDatabaseConnectionExecute(Sender: TObject);
    procedure actAppExitExecute(Sender: TObject);
    procedure actUsrLoginExecute(Sender: TObject);
    procedure actUsrChangePasswordExecute(Sender: TObject);
    procedure actWindowsXPSkinExecute(Sender: TObject);
    procedure actWhidbeySkinExecute(Sender: TObject);
    procedure actOffice2003ClassicSkinExecute(Sender: TObject);
    procedure actOffice2003BlueSkinExecute(Sender: TObject);
    procedure actOffice2003OliveSkinExecute(Sender: TObject);
    procedure actOffice2003SilverSkinExecute(Sender: TObject);
    procedure actOffice2007LunaSkinExecute(Sender: TObject);
    procedure actOffice2007ObsidianSkinExecute(Sender: TObject);
    procedure actOffice2007SilverSkinExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actAppLogExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actAdmUsersExecute(Sender: TObject);
    procedure actAboutExecute(Sender: TObject);
    procedure actAdmGroupsExecute(Sender: TObject);
    procedure actMJenisKendaraanExecute(Sender: TObject);
    procedure actMJenisAnggotaExecute(Sender: TObject);
    procedure actMTarifExecute(Sender: TObject);
    procedure actParkirKeluarExecute(Sender: TObject);
    procedure actCekLaporanParkirExecute(Sender: TObject);
    procedure actAdminSettingGTINExecute(Sender: TObject);
    procedure actLapKndMasihParkirExecute(Sender: TObject);
    procedure actKasirShiftExecute(Sender: TObject);
    procedure actLaporPerPeriodeExecute(Sender: TObject);
    procedure actLapPendapataPerHariExecute(Sender: TObject);
    procedure actMAnggotaExecute(Sender: TObject);
    procedure actDataLogExecute(Sender: TObject);
    procedure actLapPendParkirExecute(Sender: TObject);
    procedure actTPenitipanExecute(Sender: TObject);

  private
    { Private declarations }
    function Logout(isConfirm: Boolean): Boolean;
  public
    { Public declarations }
    vjns_item, vjns_transaksi, vjns_gudang, vheader : string;
    vtag : integer;
  end;
  function isWindowsFound(ClassName: string): Boolean;
  function IsFormFound(Cap: string): Boolean;

var
  MainFrm: TMainFrm;

implementation

uses AdvStyleIF, U_DM, U_AppLog, UserMenu,
  U_Splash, OLEOffice, U_JenisKendaraan,
  U_JenisAnggota, U_Anggota, U_Tarif, U_Parkir, U_LookPromo, U_LookPromo2,
  U_Setting, U_LapPerPeriode, U_LapKendaraanParkir, U_KarcisHilang, U_LapKasirPerShift,
  U_Data_Log, U_LapPendParkir, U_Helm;

{$R *.dfm}

procedure Delay(msec: DWORD);
var start: DWORD;
begin
  start:= GetTickCount;
  while (GetTickCount-start<msec) do
    Application.ProcessMessages
end;

function isWindowsFound(ClassName: string): Boolean;
var i: Integer;
begin
  Result:= False;
  for i:= 0 to Application.ComponentCount-1 do
    if Application.Components[i].ClassNameIs(ClassName) then begin
      TForm(Application.Components[i]).BringToFront;
      Result:= True;
      Break
    end
end;

function IsFormFound(Cap: string): Boolean;
var i: Integer;
    f: TForm;
begin
  Result:= False;
  for i:= 0 to Application.ComponentCount-1 do
    if Application.Components[i] is TForm then begin
      f:= Application.Components[i] as TForm;
      if f.Caption=Cap then begin
        TForm(Application.Components[i]).BringToFront;
        Result:= True;
        Break
      end;
    end
end;

function FindPanels(NavBar: TAdvNavBar; mi: TMenuItem): TAdvNavBarPanel;
var i: Integer;
begin
  Result:= nil;
  for i:= 0 to NavBar.PanelCount-1 do
    if NavBar.Panels[i].Tag=mi.Tag then begin
      Result:= NavBar.Panels[i];
      Break
    end;
end;

function FindGroupItem(Groups: TRzGroup; mi: TMenuItem): TRzGroupItem;
var i: Integer;
begin
  Result:= nil;
  for i:= 0 to Groups.Items.Count-1 do
    if Groups.Items[i].Tag=mi.Tag then begin
      Result:= Groups.Items[i];
      Break
    end;
end;



function TMainFrm.Logout(isConfirm: Boolean): Boolean;
var i: Integer;
    mi: TMenuItem;
begin
  Result:= False;
  DM.isLogin:= not Result;
  if isConfirm and (DM.MyMsg(mmConfirmation,'Anda ingin logout ?','')=101) then
    Exit;
  for i:=0 to ComponentCount-1 do
    if Components[i] is TMenuItem then begin
      mi:= Components[i] as TMenuItem;
      if ((mi.Tag>=1) and (mi.Tag<=3)) or
         ((mi.Tag>=100) and (mi.Tag<=103)) or
         (mi.Tag=200) or (mi.Tag=201) or
         ((mi.Tag>=1020) and (mi.Tag<=1023)) or
         ((mi.Tag>=10220) and (mi.Tag<=10223)) or
         ((mi.Tag>=10230) and (mi.Tag<=10232))
        then
        mi.Visible:= True
      else
        mi.Visible:= False;
    end;
//  UpdateLeftMenu;
  actUsrLogin.Caption:= 'Login';
  DM.isLogin:= False;
  Result:= not DM.isLogin;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
  Logout(DM.isLogin);
  Show;
  Update;
  if not DM.Authenticate_User then begin
    StatusBar.Panels[0].Text:= '';
    StatusBar.Panels[5].Text:= '';
    Logout(DM.isLogin);
  end else begin
    actUsrLogin.Caption:= 'Logout';
    ChangePassword1.Visible:= True;
    DM.Perusahaan.Close;
    DM.Perusahaan.Open;
    DM.SettingGate;
    StatusBar.Panels[0].Text:= 'User : ' + DM.UserConnect + '@' + DM.conn.HostName+' || Shift : '+DM.UserShift;
    StatusBar.Panels[1].Text:= 'Gate ID : ' + DM.gate_id + '@' + DM.GateKnd;
    StatusBar.Panels[6].Text:= UpperCase(DM.Perusahaannama.AsString+' | '+DM.Perusahaanalamat.AsString+' '+DM.Perusahaankota.AsString);
    Timer1.Enabled:= True;
  end;
end;

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= DM.MyMsg(mmConfirmation,'Anda ingin keluar dari aplikasi ?','')=100
end;

procedure TMainFrm.actAppDatabaseConnectionExecute(Sender: TObject);
var i: Integer;
    mi: TMenuItem;
begin
  if Logout(DM.isLogin) then begin
    for i:=0 to ComponentCount-1 do
      if Components[i] is TMenuItem then begin
        mi:= Components[i] as TMenuItem;
        if mi.Tag=200 then begin
          mi.Visible:= False;
          Break
        end
      end;
    if DM.Connect_Database_Server_from_Application then begin
      for i:=0 to ComponentCount-1 do
        if Components[i] is TMenuItem then begin
          mi:= Components[i] as TMenuItem;
          if mi.Tag=200 then begin
            mi.Visible:= True;
            Break
          end
        end;
    end;
  end
end;

procedure TMainFrm.actAppExitExecute(Sender: TObject);
begin
  Close
end;

procedure TMainFrm.actUsrLoginExecute(Sender: TObject);
var i: Integer;
begin
  if Logout(DM.isLogin) then begin
    if MDIChildCount>0 then begin
      for i := 0 to MDIChildCount-1 do
        MDIChildren[i].Close;
      Delay(500);
    end;
    if MDIChildCount>0 then
      Exit;

    if not DM.Authenticate_User then begin
      actUsrLogin.Caption:= 'Login';
      StatusBar.Panels[0].Text:= '';
      StatusBar.Panels[5].Text:= '';
      Logout(DM.isLogin);
    end else begin
      actUsrLogin.Caption:= 'Logout';
      ChangePassword1.Visible:= True;
      StatusBar.Panels[0].Text:= 'User : ' + DM.UserConnect + '@' + DM.conn.HostName;
      DM.Perusahaan.Close;
      DM.Perusahaan.Open;
      StatusBar.Panels[5].Text:= UpperCase(DM.Perusahaannama.AsString+' | '+DM.Perusahaanalamat.AsString+' '+DM.Perusahaankota.AsString);
      Timer1.Enabled:= True;
    end;
  end;
end;

procedure TMainFrm.actUsrChangePasswordExecute(Sender: TObject);
begin
  DM.ChangePassword
end;

procedure TMainFrm.actWindowsXPSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style:= TTMSStyle(tsWindowsXP)
end;

procedure TMainFrm.actWhidbeySkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsWhidbey)
end;

procedure TMainFrm.actOffice2003ClassicSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Classic)
end;

procedure TMainFrm.actOffice2003BlueSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Blue)
end;

procedure TMainFrm.actOffice2003OliveSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Olive)
end;

procedure TMainFrm.actOffice2003SilverSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2003Silver)
end;

procedure TMainFrm.actOffice2007LunaSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2007Luna)
end;

procedure TMainFrm.actOffice2007ObsidianSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2007Obsidian)
end;

procedure TMainFrm.actOffice2007SilverSkinExecute(Sender: TObject);
begin
  DM.apsMain.Style := TTMSStyle(tsOffice2007Silver)
end;

procedure TMainFrm.FormShow(Sender: TObject);
begin
  try
    if FileExists('IMAGES/bg_main.JPG') then
       Image1.Picture.LoadFromFile('IMAGES/bg_main.JPG');
  except
  end;
  ShowWindow(Handle, SW_SHOWMAXIMIZED);
  DM.apsMain.Style := TTMSStyle(tsOffice2007Obsidian);
//  LblLastRefresh.Caption:= '-';
end;

procedure TMainFrm.actAppLogExecute(Sender: TObject);
begin
  AppLogFrm.Show
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
  AppLogFrm.isClose:= True;
  AppLogFrm.Free;
end;

procedure TMainFrm.actAdmGroupsExecute(Sender: TObject);
begin
//  if not isWindowsFound('TMenuTemplateFrm') then begin
//     MDITabset.AddTab(TMenuTemplateFrm.Create(Application));
//  end;
end;

procedure TMainFrm.actAdmUsersExecute(Sender: TObject);
begin
  if not isWindowsFound('TUserMenuFrm') then
    MDITabset.AddTab(TUserMenuFrm.Create(Application))
end;

procedure TMainFrm.actAboutExecute(Sender: TObject);
var f: TSplashFrm;
begin
   f:= TSplashFrm.Create(Application);
   try
     f.ShowModal;
   finally
      f.Free;
   end;
end;


procedure TMainFrm.actMJenisKendaraanExecute(Sender: TObject);
var f : TJenisKendaraanFrm;
begin
  if not isWindowsFound('TJenisKendaraanFrm') then begin
//    f:= TParameterFrm.Create(Application);
//    f.vtag:= 427;
//    f.isLookup:= False;
//    f.Show;
    U_JenisKendaraan.ShowForm('Jenis Kendaraan', 401);
  end;

end;

procedure TMainFrm.actMJenisAnggotaExecute(Sender: TObject);
var f : TJenisAnggotaFrm;
begin
  if not isWindowsFound('TJenisAnggotaFrm') then begin
//    f:= TParameterFrm.Create(Application);
//    f.vtag:= 427;
//    f.isLookup:= False;
//    f.Show;
    U_JenisAnggota.ShowForm('Jenis Anggota', 402);
  end;

end;



procedure TMainFrm.actMTarifExecute(Sender: TObject);
var f : TTarifFrm;
begin
  if not isWindowsFound('TTarifFrm') then begin
//    f:= TParameterFrm.Create(Application);
//    f.vtag:= 427;
//    f.isLookup:= False;
//    f.Show;
    U_Tarif.ShowForm('Management Tarif', 404);
  end;

//  if not isWindowsFound('TTarifFrm') then begin
//    U_Tarif.ShowForm('Tarif', 404);
//    MDITabset.AddTab(TarifFrm);
//  end;
end;


procedure TMainFrm.actParkirKeluarExecute(Sender: TObject);
begin
  if not isWindowsFound('TParkirFrm') then begin
    U_Parkir.ShowForm('Parkir Keluar', 501);
    MDITabset.AddTab(ParkirFrm);
  end;
end;

procedure TMainFrm.actCekLaporanParkirExecute(Sender: TObject);
begin
  if not isWindowsFound('TLookPromo2Frm') then begin
    U_LookPromo2.ShowForm('Data Parkir', 605);
    MDITabset.AddTab(LookPromo2Frm);
  end;
end;

procedure TMainFrm.actAdminSettingGTINExecute(Sender: TObject);
var f: TSettingFrm;
begin
   f:= TSettingFrm.Create(Application);
   try
     f.ShowModal;
   finally
      f.Free;
   end;

end;

procedure TMainFrm.actLapKndMasihParkirExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapKendaraanParkirFrm') then begin
    U_LapKendaraanParkir.ShowForm('Kendaraan Masih Parkir', 620);
    MDITabset.AddTab(LapKendaraanParkirFrm);
  end;
end;

procedure TMainFrm.actKasirShiftExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapKasirPerShiftFrm') then begin
    U_LapKasirPerShift.ShowForm('Lap. Kasir/Shift', 601);
    MDITabset.AddTab(LapKasirPerShiftFrm);
  end;
end;

procedure TMainFrm.actLaporPerPeriodeExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapPerPeriodeFrm') then begin
    U_LapPerPeriode.ShowForm('Pendapatan/Periode', 610);
    MDITabset.AddTab(LapPerPeriodeFrm);
  end;

end;

procedure TMainFrm.actLapPendapataPerHariExecute(Sender: TObject);
begin
   if not isWindowsFound('TLookPromoFrm') then begin
    U_LookPromo.ShowForm('Pendapatan/Hari', 611);
    MDITabset.AddTab(LookPromoFrm);
  end;
end;

procedure TMainFrm.actMAnggotaExecute(Sender: TObject);
begin
   if not isWindowsFound('TAnggotaFrm') then begin
    U_Anggota.ShowForm('Daftar Anggota [Member]', 403);
    MDITabset.AddTab(AnggotaFrm);
  end;
end;

procedure TMainFrm.actDataLogExecute(Sender: TObject);
begin
  if not isWindowsFound('TDataLogFrm') then begin
    U_Data_Log.ShowForm('Data Log [Data Konsolidasi]', 701);
    MDITabset.AddTab(DataLogFrm);
  end;
end;

procedure TMainFrm.actLapPendParkirExecute(Sender: TObject);
begin
  if not isWindowsFound('TLapPendParkirFrm') then begin
    U_LapPendParkir.ShowForm('Lap. Pendapatan Parkir', 650);
    MDITabset.AddTab(LapPendParkirFrm);
  end;
end;

procedure TMainFrm.actTPenitipanExecute(Sender: TObject);
var f : THelmFrm;
begin
  if not isWindowsFound('THelmFrm') then begin
//    f:= TParameterFrm.Create(Application);
//    f.vtag:= 427;
//    f.isLookup:= False;
//    f.Show;
    U_Helm.ShowForm('Tarif Penitipan', 405);
  end;

//  if not isWindowsFound('TTarifFrm') then begin
//    U_Tarif.ShowForm('Tarif', 404);
//    MDITabset.AddTab(TarifFrm);
//  end;
end;
end.
