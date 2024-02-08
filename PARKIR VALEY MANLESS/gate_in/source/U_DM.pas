unit U_DM;

interface

uses
  SysUtils, Classes, Forms, Controls, ZConnection, AdvAppStyler,
  TaskDialog, ZAbstractRODataset, ZDataset, ZSqlMonitor,
  ZAbstractDataset, DB, kbmMemTable, kbmMemBinaryStreamFormat, MyKonversi,
  XMLDoc, XMLIntf, XMLDOM, oxmldom, msxmldom, ImgList, ZAbstractConnection;

const ConfigFileName: string = 'config.xml';
      sKey: string = '5216903874kimdbftqosxvzaechljguywnrp)_+(^&*{<>?"}|:%]\;[`-=,@#$!./~';
type
  TMyMsgType=(mmConfirmation,mmInformation,mmWarning,mmError);
  TDM = class(TDataModule)
    conn: TZConnection;
    apsMain: TAdvAppStyler;
    atdMain: TAdvTaskDialog;
    vUserMenu: TZReadOnlyQuery;
    vUserMenuvuser: TStringField;
    vUserMenumenu_name: TStringField;
    vUserMenumenu_caption: TStringField;
    vUserMenutag: TIntegerField;
    vUserMenuisbrowse: TStringField;
    vUserMenuisinsert: TStringField;
    vUserMenuisedit: TStringField;
    vUserMenuisdelete: TStringField;
    vAdmin: TZReadOnlyQuery;
    vUser: TZReadOnlyQuery;
    qAccess: TZReadOnlyQuery;
    SqlMonitor: TZSQLMonitor;
    qTrans: TZQuery;
    kbmBinaryStreamFormat: TkbmBinaryStreamFormat;
    mtConfig: TkbmMemTable;
    qryCheckAccess: TZReadOnlyQuery;
    qPasswd: TZQuery;
    MyKonversi1: TMyKonversi;
    xml: TXMLDocument;
    qAccessisbrowse: TStringField;
    qAccessisinsert: TStringField;
    qAccessisedit: TStringField;
    qAccessisdelete: TStringField;
    qAccessisprint: TStringField;
    qAccessisexport: TStringField;
    qryCheckAccessisbrowse: TStringField;
    qryCheckAccessisinsert: TStringField;
    qryCheckAccessisedit: TStringField;
    qryCheckAccessisdelete: TStringField;
    ImageList1: TImageList;
    qryAppSettings: TZQuery;
    qryAppSettingsmsettings_id: TIntegerField;
    qryAppSettingshttp_path: TStringField;
    qryAppSettingsftp_path: TStringField;
    qryAppSettingsftp_usr: TStringField;
    qryAppSettingsftp_passwd: TStringField;
    ImageList2: TImageList;
    qrySettingGate: TZQuery;
    qrySettingGateid_parameter: TIntegerField;
    qrySettingGateis_playsnd_welcome: TStringField;
    qrySettingGateis_playsnd_coming: TStringField;
    qrySettingGateis_open_gate_in: TStringField;
    qrySysDate: TZReadOnlyQuery;
    qrySysDatesvrdate: TStringField;
    qrySettingGateis_loop_gate_in: TStringField;
    qrySettingGateis_playsnd_thanks: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SqlMonitorLogTrace(Sender: TObject; Event: TZLoggingEvent);
  private
    { Private declarations }
    procedure SetApplicationVariables;
  public
    { Public declarations }
    isLogin, isSuperUser, isPlaySound1, isPlaySound2, isPlaySound3, isBukaPalang, isGateinLoop: Boolean;
    UserConnect, pwdConnect, siteOffice : string;
    inbox_num: Integer;
    function MyMsg(MsgType: TMyMsgType; Msg, Desc: string): Integer;
    //procedure CreateXDBDataset;
    function Connect_Database_Server: Boolean;
    function Connect_Database_Server_from_Application: Boolean;
    procedure SettingGate;
    function GetSkinInfoFromXML: string;


    function EncryptString(s: string): string;
    function DecryptString(s: string): string;
    function vSysDate: string;


  end;

var
  DM: TDM;

implementation

uses AdvStyleIF, MD5, U_Main, Menus, U_AppLog;

{$R *.dfm}

function ByteToHex(inp: Byte): string;
const hex: string = '0123456789abcdef';
begin
  Result:= hex[(inp and $f0) shr 4+1] + hex[inp and $0f+1];
end;

function HexToByte(inp: string): Byte;
var s: string;
    len: Integer;

  function h2b(dh: char): Byte;
  var val: Byte;
  begin
    val:= ord(dh);
    if (val-ord('a'))<0 then
      Result:= val-ord('0')
    else
      Result:= (val-ord('a')) + 10;
  end;

begin
  Result:= 0;
  s:= LowerCase(inp);
  len:= Length(s);
  if (len=0) or (len>2) then
    Exit;
  if len=1 then
    s:= '0'+s;
  Result:= h2b(s[1]) shl 4 + h2b(s[2]);
end;

function TDM.EncryptString(s: string): string;
var i: integer;
    inps, s1: string;
begin
  Result := '';
  inps:= Trim(s);
  s1:= '';
  for i := 1 to Length(inps) do
    s1 := s1 + ByteToHex((ord(inps[i])+ord(sKey[i mod length(sKey)])) mod 256);
  Result := s1;
end;

function TDM.DecryptString(s: string): string;
var i, i1: Integer;
    temp: Byte;
    inps, s1: string;
begin
  Result:= '';
  inps:= Trim(s);
  s1:= '';
  i:= 1;
  while i<=Length(inps) do begin
    temp:= HexToByte(inps[i]+inps[i+1]);
    i:= i+2;
    if ((i-1) mod 2) = 0 then begin
      i1 := temp - ord(sKey[((i-1) div 2) mod length(sKey)]);
      if i1 < 0 then
        i1:= i1+256;
      s1:= s1 + chr(i1)
    end;
  end;
  Result:= s1;
end;

procedure TDM.SetApplicationVariables;
begin
  CurrencyString:= 'Rp.';
  CurrencyFormat:= 2;
  ThousandSeparator:= ',';
  DecimalSeparator:= '.';
  CurrencyDecimals:= 2;
  DateSeparator:= '/';
  ShortDateFormat:= 'dd/mm/yyyy';
  LongDateFormat:= 'dd mmmm yyyy';

  ShortDayNames[1]:= 'Min';
  ShortDayNames[2]:= 'Sen';
  ShortDayNames[3]:= 'Sel';
  ShortDayNames[4]:= 'Rab';
  ShortDayNames[5]:= 'Kam';
  ShortDayNames[6]:= 'Jum';
  ShortDayNames[7]:= 'Sab';

  LongDayNames[1]:= 'Minggu';
  LongDayNames[2]:= 'Senin';
  LongDayNames[3]:= 'Selasa';
  LongDayNames[4]:= 'Rabu';
  LongDayNames[5]:= 'Kamis';
  LongDayNames[6]:= 'Jumat';
  LongDayNames[7]:= 'Sabtu';

  ShortMonthNames[1]:= 'Jan';
  ShortMonthNames[2]:= 'Feb';
  ShortMonthNames[3]:= 'Mar';
  ShortMonthNames[4]:= 'Apr';
  ShortMonthNames[5]:= 'Mei';
  ShortMonthNames[6]:= 'Jun';
  ShortMonthNames[7]:= 'Jul';
  ShortMonthNames[8]:= 'Agu';
  ShortMonthNames[9]:= 'Sep';
  ShortMonthNames[10]:= 'Okt';
  ShortMonthNames[11]:= 'Nov';
  ShortMonthNames[12]:= 'Des';

  LongMonthNames[1]:= 'Januari';
  LongMonthNames[2]:= 'Februari';
  LongMonthNames[3]:= 'Maret';
  LongMonthNames[4]:= 'April';
  LongMonthNames[5]:= 'Mei';
  LongMonthNames[6]:= 'Juni';
  LongMonthNames[7]:= 'Juli';
  LongMonthNames[8]:= 'Agustus';
  LongMonthNames[9]:= 'September';
  LongMonthNames[10]:= 'Oktober';
  LongMonthNames[11]:= 'November';
  LongMonthNames[12]:= 'Desember';
end;



function TDM.MyMsg(MsgType: TMyMsgType; Msg, Desc: string): Integer;
begin
  atdMain.Clear;
  atdMain.Instruction:= Msg;
  atdMain.Content:= Desc;
  atdMain.CustomButtons.Clear;
  atdMain.DefaultButton := 100;
  case MsgType of
    mmConfirmation: begin
         atdMain.Title := 'Konfirmasi';
         atdMain.Icon := tiQuestion;
         atdMain.CustomButtons.Add('Ya');
         atdMain.CustomButtons.Add('Tidak');
       end;
    mmInformation: begin
         atdMain.Title := 'Informasi';
         atdMain.Icon := tiInformation;
         atdMain.CustomButtons.Add('OK');
       end;
    mmWarning: begin
         atdMain.Title := 'Peringatan';
         atdMain.Icon := tiWarning;
         atdMain.CustomButtons.Add('OK');
       end;
    mmError: begin
         atdMain.Title := 'Error';
         atdMain.Icon := tiError;
         atdMain.CustomButtons.Add('OK');
       end;
  end;
  Result:= atdMain.Execute
end;



function TDM.Connect_Database_Server: Boolean;
var _app, _setting, _db, _skin, _node: IXMLNode;
    fn, dbhost, dbport, db, dbuser, dbpwd: string;
begin
  Result:= False;
  fn:= ExtractFilePath(Application.ExeName)+ConfigFileName;

  // Check 1st time run
  if not FileExists(fn) then begin
    xml.FileName:= '';
    xml.Active:= True;
    xml.StandAlone:= 'yes';
    xml.Version:= '1.0';
    xml.DocumentElement:= xml.CreateElement('application','');
    _app:= xml.DocumentElement;
    _setting:= _app.AddChild('setting');
    _db:= _setting.AddChild('database');
    _node:= _db.AddChild('server_host');
    _node:= _db.AddChild('server_port');
    _node:= _db.AddChild('db_name');
    _node:= _db.AddChild('db_usr_name');
    _node:= _db.AddChild('db_usr_passwd');
    _skin:= _setting.AddChild('skin');
    _node:= _skin.AddChild('style');

    _db.ChildNodes['server_host'].Text:= 'localhost';
    _db.ChildNodes['server_port'].Text:= '5432';
    _db.ChildNodes['db_name'].Text:= 'db_parkir';
    _db.ChildNodes['db_usr_name'].Text:= 'ideas';
    _db.ChildNodes['db_usr_passwd'].Text:= EncryptString('ideas');
    _skin.ChildNodes['style'].Text:= 'tsOffice2007Obsidian';
    xml.SaveToFile(fn);
  end else begin
//    mtConfig.LoadFromFile(fn);
    xml.Active:= True;
    xml.LoadFromFile(fn);
    _app:= xml.DocumentElement;
    _setting:= _app.ChildNodes[0];
    _db:= _setting.ChildNodes[0];
    _skin:= _setting.ChildNodes[1];
  end;

  dbhost:= Trim(_db.ChildNodes['server_host'].Text);
  dbport:= Trim(_db.ChildNodes['server_port'].Text);
  db:= Trim(_db.ChildNodes['db_name'].Text);
  dbuser:= Trim(_db.ChildNodes['db_usr_name'].Text);
  dbpwd:= DecryptString(Trim(_db.ChildNodes['db_usr_passwd'].Text));

  conn.Disconnect;
  conn.HostName:= dbhost;
  conn.Port:= StrToInt(dbport);
  conn.Database:= db;
  conn.User:= dbuser;
  conn.Password:= dbpwd;

  // try to connect if database connection setting had been set
  if (dbhost<>'') or (dbport<>'') or (db<>'') or (dbuser<>'') or (dbpwd<>'') then begin
    try
      conn.Connect;
      Result:= True;
    except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
    end;

  end else
  // if one of database connection setting is empty
  if (dbhost='') and (dbport='') and (db='') and (dbuser='') and (dbpwd='') then begin
      MyMsg(mmInformation, 'Koneksi DB belum di setting','');

  end
end;


function TDM.Connect_Database_Server_from_Application: Boolean;
var _app, _setting, _db, _skin: IXMLNode;
    fn, dbhost, dbport, db, dbuser, dbpwd: string;
begin
  Result:= False;
  fn:= ExtractFilePath(Application.ExeName)+ConfigFileName;

//  mtConfig.LoadFromFile(fn);
  xml.Active:= True;
  xml.LoadFromFile(fn);
  _app:= xml.DocumentElement;
  _setting:= _app.ChildNodes[0];
  _db:= _setting.ChildNodes[0];
  _skin:= _setting.ChildNodes[1];

  dbhost:= Trim(_db.ChildNodes['server_host'].Text);
  dbport:= Trim(_db.ChildNodes['server_port'].Text);
  db:= Trim(_db.ChildNodes['db_name'].Text);
  dbuser:= Trim(_db.ChildNodes['db_usr_name'].Text);
  dbpwd:= DecryptString(Trim(_db.ChildNodes['db_usr_passwd'].Text));

  conn.Disconnect;

end;


procedure TDM.SettingGate;
begin
    isPlaySound1:= False;
    isPlaySound2:= False;
    isPlaySound3:= False;
    isBukaPalang:= False;
    isGateinLoop:= False;

  try
    qrySettingGate.Close;
    qrySettingGate.Open;
    isPlaySound1:= qrySettingGateis_playsnd_welcome.AsString='1';
    isPlaySound2:= qrySettingGateis_playsnd_coming.AsString='1';
    isBukaPalang:= qrySettingGateis_open_gate_in.AsString='1';
    isGateinLoop:= qrySettingGateis_loop_gate_in.AsString='1';
  except

  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var SkinInfo: string;
begin
  isLogin:= False;
  isSuperUser:= False;
  UserConnect:= '';
  pwdConnect:= '';
  AppLogFrm:= nil;
  AppLogFrm:= TAppLogFrm.Create(Application);
  AppLogFrm.Visible:= False;
  AppLogFrm.isClose:= False;
  SqlMonitor.Active:= True;

  SetApplicationVariables;
  if not Connect_Database_Server then
    Application.Terminate;

  SettingGate;

  SkinInfo:= GetSkinInfoFromXML;
  if SameText(SkinInfo,'tsWindowsXP') then
    apsMain.Style := TTMSStyle(tsWindowsXP)
  else if SameText(SkinInfo,'tsWhidbey') then
    apsMain.Style := TTMSStyle(tsWhidbey)
  else if SameText(SkinInfo,'tsOffice2003Classic') then
    apsMain.Style := TTMSStyle(tsOffice2003Classic)
  else if SameText(SkinInfo,'tsOffice2003Blue') then
    apsMain.Style := TTMSStyle(tsOffice2003Blue)
  else if SameText(SkinInfo,'tsOffice2003Olive') then
    apsMain.Style := TTMSStyle(tsOffice2003Olive)
  else if SameText(SkinInfo,'tsOffice2003Silver') then
    apsMain.Style := TTMSStyle(tsOffice2003Silver)
  else if SameText(SkinInfo,'tsOffice2007Luna') then
    apsMain.Style := TTMSStyle(tsOffice2007Luna)
  else if SameText(SkinInfo,'tsOffice2007Obsidian') then
    apsMain.Style := TTMSStyle(tsOffice2007Obsidian)
  else if SameText(SkinInfo,'tsOffice2007Silver') then
    apsMain.Style := TTMSStyle(tsOffice2007Silver)

end;


procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  conn.Disconnect
end;

procedure TDM.SqlMonitorLogTrace(Sender: TObject; Event: TZLoggingEvent);
begin
  if Assigned(AppLogFrm) then
    AppLogFrm.reLog.Lines.Add(Event.Message)
end;

function TDM.GetSkinInfoFromXML: string;
var root: IXMLNode;
begin
  DM.xml.Active:= False;
  DM.xml.LoadFromFile(ExtractFilePath(Application.ExeName)+ConfigFileName);
  root:= DM.xml.DocumentElement;
  Result:= root.ChildNodes['setting'].ChildNodes['skin'].ChildNodes['style'].Text
end;

function TDM.vSysDate: string;
begin
    result:= '';
    try
      qrySysDate.Close;
      qrySysDate.Open;
      Result:= qrySysDatesvrdate.AsString;
      except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
    // as
end;


end.
