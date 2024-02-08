unit U_DM;

interface

uses
  SysUtils, Classes, Forms, Controls, ZConnection, AdvAppStyler,
  TaskDialog, ZAbstractRODataset, ZDataset, ZSqlMonitor,
  ZAbstractDataset, DB, kbmMemTable, kbmMemBinaryStreamFormat, MyKonversi,
  XMLDoc, XMLIntf, XMLDOM, oxmldom, msxmldom, ImgList, ZSequence, ZAbstractConnection;

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
    kbmBinaryStreamFormat: TkbmBinaryStreamFormat;
    mtConfig: TkbmMemTable;
    vSysDate: TZReadOnlyQuery;
    vSysDatedt_server: TDateTimeField;
    L_User: TZReadOnlyQuery;
    qryCheckAccess: TZReadOnlyQuery;
    MyKonversi1: TMyKonversi;
    xml: TXMLDocument;
    qryUser: TZReadOnlyQuery;
    qAccessisbrowse: TStringField;
    qAccessisinsert: TStringField;
    qAccessisedit: TStringField;
    qAccessisdelete: TStringField;
    qAccessisprint: TStringField;
    L_Uservuser: TStringField;
    L_Userfull_name: TStringField;
    qryUservuser: TStringField;
    qryUserfull_name: TStringField;
    qryCheckAccessisbrowse: TStringField;
    qryCheckAccessisinsert: TStringField;
    qryCheckAccessisedit: TStringField;
    qryCheckAccessisdelete: TStringField;
    ImageList1: TImageList;
    IconList: TImageList;
    vAdminMenu: TZReadOnlyQuery;
    vAdminMenumodul_type: TStringField;
    vAdminMenuimenu: TIntegerField;
    vAdminMenumenu_name: TStringField;
    vAdminMenumenu_caption: TStringField;
    vAdminMenutag: TIntegerField;
    vAdminMenulvl: TIntegerField;
    vAdminMenuisactive: TStringField;
    qryCheckAccessispreparer: TStringField;
    qryCheckAccessisreviewer: TStringField;
    qryCheckAccessisapprover: TStringField;
    L_Perusahaan: TZReadOnlyQuery;
    qTrans: TZQuery;
    Perusahaan: TZReadOnlyQuery;
    L_Userno_hp: TStringField;
    qPasswd: TZQuery;
    qJenisKendaraan: TZReadOnlyQuery;
    qJenisKendaraanid_jns_kendaraan: TStringField;
    qJenisKendaraanjns_kendaraan: TStringField;
    qJenisAnggota: TZReadOnlyQuery;
    qJenisAnggotaid_jns_anggota: TStringField;
    qJenisAnggotajns_anggota: TStringField;
    Perusahaanid: TStringField;
    Perusahaannama: TStringField;
    Perusahaanalamat: TStringField;
    Perusahaanisactive: TStringField;
    Perusahaankota: TStringField;
    L_Perusahaanid: TStringField;
    L_Perusahaannama: TStringField;
    L_Perusahaanalamat: TStringField;
    L_Perusahaanisactive: TStringField;
    L_Perusahaankota: TStringField;
    L_Perusahaantelp: TStringField;
    L_Perusahaanweb: TStringField;
    Perusahaantelp: TStringField;
    Perusahaanweb: TStringField;
    qrySettingGate: TZReadOnlyQuery;
    qrySettingGateid_gate: TStringField;
    qrySettingGategt_isactive: TStringField;
    qrySettingGategt_print: TStringField;
    qrySettingGategt_pict_in: TStringField;
    qrySettingGategt_pict_ot: TStringField;
    qrySettingGategt_com_port: TStringField;
    qrySettingGategt_open_cmd: TStringField;
    qrySettingGateketerangan: TStringField;
    qrySettingGategt_cam: TStringField;
    qrySettingGateis_karcis_hilang: TStringField;
    qrySettingGateis_buka_gate: TStringField;
    qrySysDate: TZReadOnlyQuery;
    qrySysDatesvrdate: TStringField;
    qryGetShift: TZQuery;
    qryGetShiftnew_shift: TIntegerField;
    qrySettingGateid_jns_kendaraan: TStringField;
    qryConfig: TZReadOnlyQuery;
    qryConfigconfig_value: TStringField;
    conn2: TZConnection;
    qryUserkantor: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure SqlMonitorLogTrace(Sender: TObject; Event: TZLoggingEvent);
    procedure connAfterConnect(Sender: TObject);
  private
    { Private declarations }
    isSuperAdmin : Boolean;
    procedure SetApplicationVariables;

  public
    { Public declarations }
    isLogin, isSuperUser: Boolean;
    UserConnect, UserShift, pwdConnect, LogoFileName, gtOutPrint, gtInpPict, gtOutPict, gate_id, GateKnd, UsrPermission  : string;
    function MyMsg(MsgType: TMyMsgType; Msg, Desc: string): Integer;
    //procedure CreateXDBDataset;
    function Connect_Database_Server: Boolean;
    function Connect_Database_Server_from_Application: Boolean;
    procedure UpdateMenu;
    function CheckSuperUser(usr, pwd: string): Boolean;
    function Authenticate_User: Boolean;
    function ChangePassword: Boolean;
    procedure GetAccessRights(tag: integer;
                              var isbrowse, isinsert, isedit, isdelete, isprint: Boolean);
    procedure StartTransaction;
    procedure CommitTransaction;
    procedure RollbackTransaction;
    procedure SettingGate;


    function GetSkinInfoFromXML: string;
    function GetShift: integer;
    procedure SaveSkinInfotoXML(SkinInfo: string);
    function EncryptString(s: string): string;
    function DecryptString(s: string): string;
    procedure SetDelphiFormat;
    procedure PrepareQuery(qry: TZQuery);
    procedure OpenQuery(qry: TZQuery; sqlstr: string);
    function ExecQuery(qry: TZQuery; sqlstr: string): Integer;
    function RoundDec(pBil, pFrac: Double) : Double ;
    function vNoKarcis: string;
    function GetConfig(AConfigID: string): string;
  end;

var
  DM: TDM;

implementation

uses AdvStyleIF, MD5, U_LoginDB, U_ChangePassword, U_Login_User,
     U_Main, Menus, U_AppLog;

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

  //
  LogoFileName:= ExtractFilePath(Application.ExeName)+'\images\logo.jpg';
end;

function TDM.GetShift: integer;
begin
    Result:= 0;

    try
      qryGetShift.Close;
      qryGetShift.Open;
      if qryGetShiftnew_shift.AsInteger>0 then
         Result:= qryGetShiftnew_shift.AsInteger;
    except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
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

procedure TDM.PrepareQuery(qry: TZQuery);
begin
  qry.Close;
  qry.SQL.Clear;
  qry.Params.Clear;
end;

procedure TDM.OpenQuery(qry: TZQuery; sqlstr: string);
begin
  qry.SQL.Add(sqlstr);
  qry.Open;
end;

function TDM.ExecQuery(qry: TZQuery; sqlstr: string): Integer;
begin
  qry.SQL.Add(sqlstr);
  qry.ExecSQL;
  Result:= qry.RowsAffected
end;


procedure TDM.SettingGate;
begin
  try
    qrySettingGate.Close;
    qrySettingGate.Params.ParamByName('pid').AsString:= gate_id;
    qrySettingGate.Open;

    gtOutPrint:= qrySettingGategt_print.AsString;
    gtInpPict:= qrySettingGategt_pict_in.AsString;
    gtOutPict:= qrySettingGategt_pict_ot.AsString;
    GateKnd:= qrySettingGateid_jns_kendaraan.AsString;
  except
    on E: Exception do
      MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

function TDM.Connect_Database_Server: Boolean;
var _app, _setting, _db, _skin, _node: IXMLNode;
    fn, dbhost, dbport, db, dbuser, dbpwd : string;
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
    _db.ChildNodes['gate_out_id'].Text:= '01';
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
  gate_id:= Trim(_db.ChildNodes['gate_out_id'].Text);

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
    // ask again if database connection failed
    if not conn.Connected then
      with TLoginDBFrm.Create(Application) do
        try
          Result:= False;
          edtDBHost.Text:= dbhost;
          edtDBPort.Text:= dbport;
          edtDBName.Text:= db;
          edtDBUser.Text:= dbuser;
          edtDBPasswd.Text:= dbpwd;
          edtGateOtID.Text:= gate_id;
          if ShowModal=mrOK then begin
            try
              conn.Disconnect;
              conn.HostName:= Trim(edtDBHost.Text);
              conn.Database:= Trim(edtDBName.Text);
              conn.User:= Trim(edtDBUser.Text);
              conn.Password:= Trim(edtDBPasswd.Text);
              try
                conn.Port:= StrToInt(Trim(edtDBPort.Text));
              except
                conn.Port:= 5432;
              end;
              conn.Connect;
              _db.ChildNodes['server_host'].Text:= conn.HostName;
              _db.ChildNodes['server_port'].Text:= IntToStr(conn.Port);
              _db.ChildNodes['db_name'].Text:= conn.Database;
              _db.ChildNodes['db_usr_name'].Text:= conn.User;
              _db.ChildNodes['db_usr_passwd'].Text:= EncryptString(conn.Password);
              _db.ChildNodes['gate_out_id'].Text:= Trim(edtGateOtID.Text);
              xml.SaveToFile(fn);
              Result:= True
            except
              on E: Exception do
                MyMsg(mmError,'Error has been encountered !',E.Message)
            end;
          end
        finally
          Free
        end;
  end else
  // if one of database connection setting is empty
  if (dbhost='') and (dbport='') and (db='') and (dbuser='') and (dbpwd='') then begin
    with TLoginDBFrm.Create(Application) do
      try
        edtDBHost.Text:= dbhost;
        edtDBPort.Text:= dbport;
        edtDBName.Text:= db;
        edtDBUser.Text:= dbuser;
        edtDBPasswd.Text:= dbpwd;
        edtGateOtID.Text:= gate_id;
        if ShowModal=mrOK then begin
          try
            conn.Disconnect;
            conn.HostName:= Trim(edtDBHost.Text);
            conn.Database:= Trim(edtDBName.Text);
            conn.User:= Trim(edtDBUser.Text);
            conn.Password:= Trim(edtDBPasswd.Text);
            try
              conn.Port:= StrToInt(Trim(edtDBPort.Text));
            except
              conn.Port:= 5432;
            end;
            conn.Connect;
            _db.ChildNodes['server_host'].Text:= conn.HostName;
            _db.ChildNodes['server_port'].Text:= IntToStr(conn.Port);
            _db.ChildNodes['db_name'].Text:= conn.Database;
            _db.ChildNodes['db_usr_name'].Text:= conn.User;
            _db.ChildNodes['db_usr_passwd'].Text:= EncryptString(conn.Password);
            _db.ChildNodes['gate_out_id'].Text:= Trim(edtGateOtID.Text);
            xml.SaveToFile(fn);
            Result:= True;
          except
            on E: Exception do
              MyMsg(mmError,'Error has been encountered !',E.Message)
          end;
        end
      finally
        Free
      end
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
  gate_id:= Trim(_db.ChildNodes['gate_out_id'].Text);

  conn.Disconnect;

  with TLoginDBFrm.Create(Application) do
    try
      Result:= False;
      edtDBHost.Text:= dbhost;
      edtDBPort.Text:= dbport;
      edtDBName.Text:= db;
      edtDBUser.Text:= dbuser;
      edtDBPasswd.Text:= dbpwd;
      edtGateOtID.Text:= gate_id;
      if ShowModal=mrOK then begin
        try
          conn.Disconnect;
          conn.HostName:= Trim(edtDBHost.Text);
          conn.Database:= Trim(edtDBName.Text);
          conn.User:= Trim(edtDBUser.Text);
          conn.Password:= Trim(edtDBPasswd.Text);
          try
            conn.Port:= StrToInt(Trim(edtDBPort.Text));
          except
            conn.Port:= 5432;
          end;
          conn.Connect;
          _db.ChildNodes[0].Text:= conn.HostName;
          _db.ChildNodes[1].Text:= IntToStr(conn.Port);
          _db.ChildNodes[2].Text:= conn.Database;
          _db.ChildNodes[3].Text:= conn.User;
          _db.ChildNodes[4].Text:= EncryptString(conn.Password);
          _db.ChildNodes[5].Text:= Trim(edtGateOtID.Text);
          xml.SaveToFile(fn);
          Result:= True
        except
          on E: Exception do
            MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
      end
    finally
      Free
    end;
end;



procedure TDM.DataModuleCreate(Sender: TObject);
var SkinInfo: string;
begin
  isLogin:= False;
  isSuperUser:= False;
  isSuperAdmin:= False;
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
  try

  except
    on E: Exception do
      MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
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

procedure TDM.UpdateMenu;
var i: Integer;
    mi: TMenuItem;
begin
  if not isSuperUser then // Ordinary User get it appropriately
    while not vUserMenu.eof do begin
      with MainFrm do
        for i:=0 to ComponentCount-1 do
          if Components[i] is TMenuItem then begin
            mi:= Components[i] as TMenuItem;
            if (mi.Name=vUserMenumenu_name.AsString) and (mi.Tag=vUserMenutag.AsInteger) then
            begin
              mi.Visible:= vUserMenuisbrowse.AsString='1';
              Break
            end;
          end;
      vUserMenu.next;
    end
  else begin // Super User get it all
    if isSuperAdmin then begin
        with MainFrm do
          for i:=0 to ComponentCount-1 do
            if Components[i] is TMenuItem then
              (Components[i] as TMenuItem).Visible:= True;
    end
    else begin
        try
          vAdminMenu.Close;
          vAdminMenu.Open;
          vAdminMenu.First;
          while not vAdminMenu.eof do begin
            with MainFrm do
              for i:=0 to ComponentCount-1 do
                if Components[i] is TMenuItem then begin
                  mi:= Components[i] as TMenuItem;
                  if (mi.Name=vAdminMenumenu_name.AsString) and (mi.Tag=vAdminMenutag.AsInteger) then
                  begin
                    mi.Visible:= vAdminMenuisactive.AsString='1';
                    Break
                  end;
                end;
            vAdminMenu.next;
          end;
        except
          on E: Exception do
            MyMsg(mmError,'Error has been encountered !',E.Message)
        end;
    end; // end of issuperuser
  end
end;

function TDM.CheckSuperUser(usr, pwd: string): Boolean;
begin
  Result:= False;
  isSuperUser:= False;
  UsrPermission:= '0';
  try
    vAdmin.Close;
    vAdmin.SQL.Clear;
    vAdmin.Params.Clear;
    vAdmin.SQL.Add('select vusr_admin from master.vadmin where vusr_admin=:usr and vpwd_admin=:pwd');
    vAdmin.Params.ParseSQL(vAdmin.SQL.Text, True);
    vAdmin.ParamByName('usr').Value:=usr;
    vAdmin.ParamByName('pwd').Value:=MD5Print(MD5String(pwd));
    vAdmin.Open;
    if vAdmin.RecordCount=1 then begin
        isSuperUser:= True;
        UsrPermission:= '1';
        if usr='sa' then
           isSuperAdmin:= True;
    end;
    Result:= True;
  except
    on E: Exception do
      MyMsg(mmError,'Error has been encountered !',E.Message)
  end
end;

function TDM.Authenticate_User: Boolean;
begin
  isLogin:= False;
  Result:= isLogin;
  isSuperUser:= False;
  isSuperAdmin:= False;
  userConnect:='';
  pwdConnect:='';
  UserShift:= '';
  UsrPermission:= '0';
  with TLogin_UserFrm.Create(Application) do
  try
    if ShowModal=mrOK then begin
      UserConnect:= Trim(edtUsername.Text);
      pwdConnect:= Trim(edtPassword.Text);
      UserShift:= Trim(edtShift.Text);
      try
        if conn.Connected then begin
          if CheckSuperUser(UserConnect, pwdConnect) then begin
            if not isSuperUser then begin
              vUserMenu.Close;
              vUser.Close;
              vuser.SQL.Clear;
              vuser.Params.Clear;
              vuser.SQL.Add('select vuser as user, full_name, passwd, kantor, cast(current_timestamp as timestamp without time zone) as sysdate, vuser||'+QuotedStr(', ')+'||to_char(cast(current_timestamp as timestamp without time zone),'+QuotedStr('dd Mon yyyy hh24:mi:ss')+') as user_str from master.vuser');
              vuser.SQL.Add('where vuser=:usr and passwd=:pwd');
              vuser.Params.ParseSQL(vUser.SQL.Text, True);
              vuser.ParamByName('usr').Value:=userConnect;
              vuser.ParamByName('pwd').Value:=MD5Print(MD5String(pwdConnect));
              vUser.Open;
              UsrPermission:= vuser.FieldByName('kantor').Value;
              if vUser.RecordCount=0 then
                raise Exception.Create('User tidak ditemukan/ password salah !');
              vUserMenu.Params.ParamByName('vuser1').Value:= vUser.FieldByName('user').AsString;
              vUserMenu.Open;
            end else begin
              if isSuperUser then
              else
                raise Exception.Create('User tidak ditemukan/ password salah !');
            end;
            UpdateMenu;
          end
        end;
        isLogin:= True;
        Result:= isLogin;
      except
        on E: Exception do
          MyMsg(mmError,'Error has been encountered !',E.Message)
      end
    end
  finally
    Free
  end
end;

function TDM.ChangePassword: Boolean;
var _oldpwd, _newpwd, _confirmpwd: string;
begin
  Result:= False;
  with TChangePasswordFrm.Create(Application) do
  try
    lblHeaderComment.Caption:= 'Ubah Password untuk User ' + UserConnect;
    if ShowModal=mrOK then begin
      _oldpwd:= Trim(edtOldPassword.Text);
      _newpwd:= Trim(edtNewPassword.Text);
      _confirmpwd:= Trim(edtConfirmPassword.Text);
      try
        if not isSuperUser then begin
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('select passwd from master.vuser where vuser=:user');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Open;
          if qPasswd.RecordCount=0 then
            raise Exception.Create('User tidak ditemukan !');
          if MD5Print(MD5String(_oldpwd))<>qPasswd.FieldByName('passwd').AsString then
            raise Exception.Create('password lama salah !');
          if _newpwd<>_confirmpwd then
            raise Exception.Create('Password baru tidak sama dengan password konfirmasi !');
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('update master.vuser set passwd=:pwd where vuser=:user');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Params.ParamByName('pwd').AsString:= MD5Print(MD5String(_newpwd));
          qPasswd.ExecSQL
        end else begin // change superuser password
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('select vpwd_admin from master.vadmin where vusr_admin=:user');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Open;
          if qPasswd.RecordCount=0 then
            raise Exception.Create('User tidak ditemukan !');
          if MD5Print(MD5String(_oldpwd))<>qPasswd.FieldByName('vpwd_admin').AsString then
            raise Exception.Create('password lama salah !');
          if _newpwd<>_confirmpwd then
            raise Exception.Create('Password baru tidak sama dengan password konfirmasi !');
          qPasswd.Close;
          qPasswd.SQL.Clear;
          qPasswd.Params.Clear;
          qPasswd.SQL.Add('update master.vadmin set vpwd_admin=:pwd where vusr_admin=:user');
          qPasswd.Params.ParseSQL(qPasswd.SQL.Text, True);
          qPasswd.Params.ParamByName('user').AsString:= UserConnect;
          qPasswd.Params.ParamByName('pwd').AsString:= MD5Print(MD5String(_newpwd));
          qPasswd.ExecSQL
        end;
        Result:= True;
        MyMsg(mmInformation,'Password telah berhasil diubah !','Password untuk user '+UserConnect+' sudah berubah sekarang.');
      except
        on E: Exception do
          MyMsg(mmError,'Error has been encountered !',E.Message)
      end;
    end
  finally
    Free
  end
end;

procedure TDM.GetAccessRights(tag: integer;
                              var isbrowse, isinsert, isedit, isdelete, isprint: Boolean);
begin
  isbrowse:= False;
  isinsert:= False;
  isedit:= False;
  isdelete:= False;
  isprint:= False;
  try
    qAccess.Close;
    qAccess.Params.ParamByName('usr').AsString:= DM.UserConnect;
    qAccess.Params.ParamByName('tag').AsInteger:= tag;
    qAccess.Open;
    isbrowse:= isSuperUser or (qAccessisbrowse.AsString='1');
    isinsert:= isSuperUser or (qAccessisinsert.AsString='1');
    isedit:= isSuperUser or (qAccessisedit.AsString='1');
    isdelete:= isSuperUser or (qAccessisdelete.AsString='1');
    isprint:= isSuperUser or (qAccessisprint.AsString='1');
  except
  end;
end;

procedure TDM.StartTransaction;
begin
  qTrans.SQL.Clear;
  qTrans.SQL.Add('BEGIN');
  qTrans.ExecSQL
end;

procedure TDM.CommitTransaction;
begin
  qTrans.SQL.Clear;
  qTrans.SQL.Add('COMMIT');
  qTrans.ExecSQL
end;

procedure TDM.RollbackTransaction;
begin
  qTrans.SQL.Clear;
  qTrans.SQL.Add('ROLLBACK');
  qTrans.ExecSQL
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

procedure TDM.SaveSkinInfotoXML(SkinInfo: string);
var root: IXMLNode;
begin
  DM.xml.Active:= False;
  DM.xml.LoadFromFile(ExtractFilePath(Application.ExeName)+ConfigFileName);
  root:= DM.xml.DocumentElement;
  root.ChildNodes['setting'].ChildNodes['skin'].ChildNodes['style'].Text:= SkinInfo;
  DM.xml.SaveToFile(ExtractFilePath(Application.ExeName)+ConfigFileName);
end;

procedure TDM.SetDelphiFormat;
begin
  // Set Regional Setting
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  LongDateFormat := 'dd/mm/yyyy hh:nn:ss';
  ShortDateFormat := 'dd/mm/yyyy';
//  cxFormatController.UseDelphiDateTimeFormats := True;
end;

function TDM.RoundDec(pBil, pFrac: Double) : Double ;
var vBil, vFrac : Double;
begin
    Result:=0;
    vBil:= pBil;
    vFrac:= Frac(vBil);

    if (vFrac>0) and (vFrac<=pFrac) then
      vBil:= vBil + (pFrac-vFrac)
    else if (vFrac>pFrac) then
      vBil:= vBil + (1-vFrac);

    Result:= vBil;
end;


function TDM.vNoKarcis: string;
begin
    result:= '';
    try
      qrySysDate.Close;
      qrySysDate.Open;
      Result:= Trim(gate_id+qrySysDatesvrdate.AsString);
      except
      on E: Exception do
        MyMsg(mmError,'Error has been encountered !',E.Message)
    end;
    // as
end;

function TDM.GetConfig(AConfigID: string): string;
begin
  qryConfig.Close;
  qryConfig.ParamByName('config_id').AsString := AConfigID;
  qryConfig.Open;
  if not qryConfig.Eof then
    result := qryConfigconfig_value.AsString
  else
    result := '';
  qryConfig.Close;
end;

procedure TDM.connAfterConnect(Sender: TObject);
var
  HostName, User, Pass, DBName: string;
begin
//  HostName := GetConfig('sql_server_host');
//  User := GetConfig('sql_server_user');
//  Pass := GetConfig('sql_server_pass');
//  DBName := GetConfig('sql_server_db');
//  try
//    conn2.Disconnect;
//    conn2.HostName := HostName;
//    conn2.User := User;
//    conn2.Password := Pass;
//    conn2.Database := DBName;
//    conn2.Connect;
//  except
//    on E: Exception do
//      DM.MyMsg(mmError, 'Error has been encountered !', E.Message)
//  end;
end;

end.
