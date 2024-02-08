unit U_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MQTT, MQTTReadThread, ExtCtrls, ShellAPI, DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, xmldom, XMLIntf, frxClass,
  kbmMemTable, frxBarcode, frxDBSet, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ScktComp, oxmldom, XMLDoc, AdvOfficeTabSet,
  AdvOfficeTabSetStylers, AdvToolBar, AdvToolBarStylers, AdvAppStyler,
  AdvMenus, AdvMenuStylers, Menus, ActnList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, PasLibVlcPlayerUnit, StdCtrls, SCControl,
  SCStdControls, cxTextEdit, RzSplit, RzPanel, cxDBEdit, cxGroupBox,
  RzBorder;

type
  TConnectReturn = integer;
  TMainFrm = class(TForm)
    StatusBar: TAdvOfficeStatusBar;
    StatusBarOfficeStyler: TAdvOfficeStatusBarOfficeStyler;
    aclMain: TActionList;
    actExit: TAction;
    MainMenu: TAdvMainMenu;
    MenuOfficeStyler: TAdvMenuOfficeStyler;
    afsMain: TAdvFormStyler;
    ToolBarOfficeStyler: TAdvToolBarOfficeStyler;
    TabSetOfficeStyler: TAdvOfficeTabSetOfficeStyler;
    Exit1: TMenuItem;
    actAppLog: TAction;
    ApplicationLogger1: TMenuItem;
    N13: TMenuItem;
    xml: TXMLDocument;
    qPrint1: TZQuery;
    frxDBPrint1: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    MemMaster1: TkbmMemTable;
    qPrint1no_karcis: TStringField;
    qPrint1jam_masuk: TDateTimeField;
    MemMaster1no_karcis: TStringField;
    MemMaster1jam_masuk: TStringField;
    qExec: TZQuery;
    T_PING: TTimer;
    MemMaster1jns_anggota: TStringField;
    qPrint1jns_anggota: TStringField;
    qCekAnggota: TZQuery;
    qPerusahaan: TZQuery;
    qPerusahaanid: TStringField;
    qPerusahaannama: TStringField;
    qPerusahaanalamat: TStringField;
    qPerusahaanisactive: TStringField;
    qPerusahaankota: TStringField;
    qPerusahaantelp: TStringField;
    qPerusahaanweb: TStringField;
    actSetting: TAction;
    MemMaster1no_gate: TStringField;
    qPrint1id_jns_kendaraan: TStringField;
    qPrint1jns_kendaraan: TStringField;
    MemMaster1jns_kendaraan: TStringField;
    T_ERROR: TTimer;
    RzPanel1: TRzPanel;
    SplitterMain: TRzSplitter;
    RzSplitter2: TRzSplitter;
    gb1: TGroupBox;
    edtCMD1: TcxTextEdit;
    btnCmd1: TSCButton;
    IPCAM_1: TPasLibVlcPlayer;
    RzSplitter1: TRzSplitter;
    gb2: TGroupBox;
    edtCMD2: TcxTextEdit;
    btnCmd2: TSCButton;
    IPCAM_2: TPasLibVlcPlayer;
    qryClient: TZQuery;
    pnlMaster: TSCPanel;
    Memo: TMemo;
    MemServer: TkbmMemTable;
    MemServersvr_host: TStringField;
    MemServersvr_port: TIntegerField;
    MemServersvr_user_name: TStringField;
    MemServersvr_passwd: TStringField;
    MemServersvr_keep_alive: TIntegerField;
    qryBroker: TZQuery;
    qryBrokerbrk_host: TStringField;
    qryBrokerbrk_port: TIntegerField;
    qryBrokerbrk_usr: TStringField;
    qryBrokerbrk_pass: TStringField;
    qryBrokerbrk_keep_alive: TIntegerField;
    qryBrokert_ping: TIntegerField;
    qryBrokert_rekonek: TIntegerField;
    MemServersvr_t_ping: TIntegerField;
    MemServersvr_t_rekonek: TIntegerField;
    qryBrokerpublish_head: TStringField;
    qryBrokersubscribe_head: TStringField;
    MemServerpublish_head: TStringField;
    MemServersubscribe_head: TStringField;
    cxGroupBox1: TcxGroupBox;
    Shape31: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxDBTextEdit20: TcxDBTextEdit;
    dsMemServer: TDataSource;
    btnRekonek: TSCButton;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    L_Status: TLabel;
    edtHost1: TcxTextEdit;
    edtPort1: TcxTextEdit;
    edtClient1: TcxTextEdit;
    edtPublish1: TcxTextEdit;
    edtSubscribe1: TcxTextEdit;
    Label6: TLabel;
    Shape11: TShape;
    Label7: TLabel;
    Shape12: TShape;
    Label8: TLabel;
    Shape13: TShape;
    Label9: TLabel;
    Shape14: TShape;
    Label10: TLabel;
    Shape15: TShape;
    edtSubscribe2: TcxTextEdit;
    Shape16: TShape;
    Shape17: TShape;
    edtPublish2: TcxTextEdit;
    edtClient2: TcxTextEdit;
    Shape18: TShape;
    Shape19: TShape;
    edtPort2: TcxTextEdit;
    edtHost2: TcxTextEdit;
    Shape20: TShape;
    MemPerusahaan: TkbmMemTable;
    MemPerusahaanid: TStringField;
    MemPerusahaannama: TStringField;
    MemPerusahaanalamat: TStringField;
    MemPerusahaanisactive: TStringField;
    MemPerusahaankota: TStringField;
    MemPerusahaantelp: TStringField;
    MemPerusahaanweb: TStringField;
    btnOpen11: TSCButton;
    btnOpen12: TSCButton;
    btnOpen21: TSCButton;
    btnOpen22: TSCButton;
    qryGate: TZQuery;
    qryGateid_gate: TStringField;
    qryGategt_isactive: TStringField;
    qryGategt_print: TStringField;
    qryGategt_loop_on: TStringField;
    qryGategt_loop_off: TStringField;
    qryGategt_green_btn: TStringField;
    qryGategt_red_btn: TStringField;
    qryGateketerangan: TStringField;
    qryGategt_cam: TStringField;
    qryGatet_open: TIntegerField;
    qryGategt_knd: TStringField;
    qryGategt_open_gate: TStringField;
    qryClientid_cnt: TLargeintField;
    qryClientcnt_id: TStringField;
    qryClientcnt_ip: TStringField;
    qryClientcnt_port: TIntegerField;
    qryClientcnt_isactive: TStringField;
    qryClientcnt_hdr: TStringField;
    qryClientcnt_ftr: TStringField;
    qryClientcnt_pict: TStringField;
    qryClienttopic_to_publish: TStringField;
    qryClienttopic_to_subscribe: TStringField;
    qryClientcnt_snd_1: TStringField;
    qryClientcnt_snd_2: TStringField;
    qryClientcnt_snd_3: TStringField;
    qryClientketerangan: TStringField;
    qryClientiskontroller: TStringField;
    qryGatecnt_id: TStringField;
    btn_rtsp2: TSCButton;
    btn_rtsp1: TSCButton;
    frxReport1: TfrxReport;
    frxDBPrint2: TfrxDBDataset;
    qPrint2: TZQuery;
    MemMaster2: TkbmMemTable;
    qPrint2no_karcis: TStringField;
    qPrint2jam_masuk: TDateTimeField;
    qPrint2jns_anggota: TStringField;
    qPrint2id_jns_kendaraan: TStringField;
    qPrint2jns_kendaraan: TStringField;
    frxDBDataset1: TfrxDBDataset;
    MemPerusahaanlogo: TBlobField;
    MemMaster2no_karcis: TStringField;
    MemMaster2jam_masuk: TStringField;
    MemMaster2jns_anggota: TStringField;
    MemMaster2no_gate: TStringField;
    MemMaster2jns_kendaraan: TStringField;
    gbLoopD_21: TcxGroupBox;
    LED21_Loop: TShape;
    gbBtnGreen_21: TcxGroupBox;
    LED21_Button: TShape;
    cxGroupBox3: TcxGroupBox;
    LED21_Gate: TShape;
    qryGategt_loop_gate: TStringField;
    qryGategt_info_ok: TStringField;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    LED11_Loop: TShape;
    LED11_Button: TShape;
    LED11_Gate: TShape;
    cxGroupBox6: TcxGroupBox;
    LED11_Print: TShape;
    cxGroupBox7: TcxGroupBox;
    LED21_Print: TShape;
    qryClientcnt_snd_4: TStringField;
    qCekAnggotavcount: TIntegerField;
    frxKarcis01: TfrxReport;
    frxKarcis02: TfrxReport;
    frxKarcis1: TfrxReport;
    frxKarcis2: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actExitExecute(Sender: TObject);
    procedure actAppLogExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCmd1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure OnConnAck(Sender: TObject; ReturnCode: TConnectReturn);
    procedure OnPingResp(Sender: TObject);
    procedure OnSubAck(Sender: TObject; MessageID: integer; GrantedQoS: integer);
    procedure OnUnSubAck(Sender: TObject);
    procedure OnPublish(Sender: TObject; topic, payload: string);
    procedure T_PINGTimer(Sender: TObject);
    procedure btnRekonekClick(Sender: TObject);
    procedure T_ERRORTimer(Sender: TObject);
    procedure btnOpen11Click(Sender: TObject);
    procedure frxKarcisPrintPage(Page: TfrxReportPage; CopyNo: Integer);
    procedure frxKarcis2PrintPage(Page: TfrxReportPage; CopyNo: Integer);

  private
    { Private declarations }
    c1port, c2port : integer;

    nokartu1, nokartu2 : String;

    c1host, cnt01, c1pict, csnd11, csnd12, csnd13, csnd14, ccardhead11, ccardhead12: string;
    c2host, cnt02, c2pict, csnd21, csnd22, csnd23, csnd24, ccardhead21, ccardhead22: string;

    _g11_ID, t_publish1, _g11_loopon,_g12_loopon, _g11_loopoff,_g12_loopoff, _g11_grbtn, _g11_redbtn, _g11_loop_release, _g11_info_ok,
    _g11_opengate, _g12_opengate, _g11_printer, _g12_printer, _g11_cam, _g12_cam, _g11_knd, _g12_knd : string;

    _g21_ID, t_publish2, _g21_loopon,_g22_loopon, _g21_loopoff,_g22_loopoff, _g21_grbtn, _g21_redbtn, _g21_loop_release, _g21_info_ok,
    _g21_opengate, _g22_opengate, _g21_printer, _g22_printer, _g21_cam, _g22_cam, _g21_knd, _g22_knd : string;

    c1Head, c1Foot, c2Head, c2Foot : char;
    c1_On, c2_On, _g11_On, _g21_On, _g12_On, _g22_On: Boolean;
    isPencet_11, isPencet_21, isKartu_11, isKartu_21 : Boolean;

    procedure MQTTClientActivated;
    procedure MQTTClientSubscribe;
    procedure MQTTClientPublish(cmd,cnt,pesan:String);
    procedure writeData(datas, cnt:String);

    procedure LoadServerConfig;
    procedure LoadGateConfig;
    procedure LoadMemPerusahaan;
    function InsertData(pkarcis,pcChar,pGt,pJKnd:String):Boolean;

    function HexToDec(Str: string): Integer;
    function CekAnggota(vID: string): Boolean;
    procedure SetDisplay(cntx,cmdx: string);

    procedure GetActionGate01(cmd, cnt:String);
    procedure GetActionGate02(cmd, cnt:String);

    procedure ProsesGate01(jenis,s1:String);
    procedure ProsesGate02(jenis,s1:String);

    procedure CaptureIPCamGate01(pnomor,isCetak1:String);
    procedure CaptureIPCamGate02(pnomor,isCetak2:String);

    function MultiStringReplace(const S : string; OldPattern, NewPattern : array of string;
              Flags : TReplaceFlags): string;

  public
    { Public declarations }
  end;
//  function isWindowsFound(ClassName: string): Boolean;

var
  MainFrm: TMainFrm;
  MQTTClient: TMQTTClient;
  fRL: TBytes;


implementation

uses AdvStyleIF, U_DM, U_AppLog;

{$R *.dfm}

//procedure Delay(msec: DWORD);
//var start: DWORD;
//begin
//  start:= GetTickCount;
//  while (GetTickCount-start<msec) do
//    Application.ProcessMessages
//end;
//
//function isWindowsFound(ClassName: string): Boolean;
//var i: Integer;
//begin
//  Result:= False;
//  for i:= 0 to Application.ComponentCount-1 do
//    if Application.Components[i].ClassNameIs(ClassName) then begin
//      TForm(Application.Components[i]).BringToFront;
//      Result:= True;
//      Break
//    end
//end;


//---------------------------------------------------------------------------------------MQTT


procedure TMainFrm.OnSubAck(Sender: TObject; MessageID: integer; GrantedQoS: integer);
begin
  writeData('Sub Ack Received','');
end;

procedure TMainFrm.OnUnSubAck(Sender: TObject);
begin
  writeData('Unsubscribe Ack Received','');
end;

procedure TMainFrm.OnConnAck(Sender: TObject; ReturnCode: TConnectReturn);
begin
  writeData('Connection Acknowledged, Return Code: ' + IntToStr(Ord(ReturnCode)),'');
  L_Status.Caption:= 'CONNECTED';
  T_PING.Enabled:= True;
  MQTTClientSubscribe;
end;

procedure TMainFrm.OnPingResp(Sender: TObject);
begin
  writeData('PING! PONG!','');
end;


function TMainFrm.MultiStringReplace(const S : string; OldPattern, NewPattern : array of string;
  Flags : TReplaceFlags): string;
var
  i : Integer;
begin
  Assert(Length(OldPattern) = Length(NewPattern), 'Pattern array lengths differ');
  Result := S;
  for i := Low(OldPattern) to High(OldPattern) do
    Result := StringReplace(Result, OldPattern[i], NewPattern[i], Flags);
end;

procedure TMainFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= DM.MyMsg(mmConfirmation,'Anda ingin keluar dari aplikasi ?','')=100
end;

procedure TMainFrm.actExitExecute(Sender: TObject);
begin
  Close
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



function TMainFrm.HexToDec(Str: string): Integer;
var
  i, M: Integer;
begin
  Result:=0;
  M:=1;
  Str:=AnsiUpperCase(Str);
  for i:=Length(Str) downto 1 do
  begin
    case Str[i] of
      '1'..'9': Result:=Result+(Ord(Str[i])-Ord('0'))*M;
      'A'..'F': Result:=Result+(Ord(Str[i])-Ord('A')+10)*M;
    end;
    M:=M shl 4;
  end;
end;

procedure TMainFrm.FormCreate(Sender: TObject);
begin
    LoadServerConfig;
    LoadGateConfig;
    LoadMemPerusahaan;
    MQTTClientActivated;
    StatusBar.Panels[0].Text:= 'User : '+DM.conn.User + '@' + DM.conn.HostName;
    StatusBar.Panels[3].Text:= 'Controller 1 : '+c1host+' | '+'Controller 2 : '+c2host ;
    isPencet_11:= False;
    isPencet_21:= False;
    isKartu_11:= False;
    isKartu_21:= False;
end;



procedure TMainFrm.LoadServerConfig;
begin
   try
       try
         qryBroker.Close;
         qryBroker.Open;

         MemServer.Close;
         MemServer.Open;

         MemServer.Append;
         MemServersvr_host.AsString:= qryBrokerbrk_host.AsString;
         MemServersvr_port.AsInteger:= qryBrokerbrk_port.AsInteger;
         MemServersvr_user_name.AsString:= qryBrokerbrk_usr.AsString;
         MemServersvr_passwd.AsString:= qryBrokerbrk_pass.AsString;
         MemServersvr_keep_alive.AsInteger:= qryBrokerbrk_keep_alive.AsInteger;
         MemServersvr_t_ping.AsInteger:= qryBrokert_ping.AsInteger;
         MemServersvr_t_rekonek.AsInteger:=qryBrokert_rekonek.AsInteger;
         MemServerpublish_head.AsString:= qryBrokerpublish_head.AsString;
         MemServersubscribe_head.AsString:= qryBrokersubscribe_head.AsString;
         MemServer.Post;

         T_PING.Interval:= qryBrokert_ping.AsInteger;
         T_ERROR.Interval:= qryBrokert_rekonek.AsInteger;

       except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message) ;
            Exit;
          end;
       end;
   finally
     qryBroker.Close;
   end;
end;

procedure TMainFrm.LoadGateConfig;
var
  fn : String;
  _app, _setting, _clientid: IXMLNode;
begin

   fn:= ExtractFilePath(Application.ExeName)+ConfigFileName;

    xml.Active:= True;
    xml.LoadFromFile(fn);
    _app:= xml.DocumentElement;
    _setting:= _app.ChildNodes[0];
    _clientid:= _setting.ChildNodes[1];

    cnt01:= Trim(_clientid.ChildNodes['client01'].Text);
    cnt02:= Trim(_clientid.ChildNodes['client02'].Text);

    try
        try
            //cnt 1
            qryClient.Close;
            qryClient.Params.ParamByName('cid').AsString:= cnt01;
            qryClient.Open;

            c1_On:=  qryClientcnt_isactive.AsString='1';

            c1host:= qryClientcnt_ip.AsString;
            c1port:= qryClientcnt_port.AsInteger;
            c1pict:= qryClientcnt_pict.AsString;
            c1head:= Chr(StrToInt(qryClientcnt_hdr.AsString));
            c1Foot:= Chr(StrToInt(qryClientcnt_ftr.AsString));
            ccardhead11:= Trim('W1');
            ccardhead12:= Trim('W2');
            csnd11:= qryClientcnt_snd_1.AsString;
            csnd12:= qryClientcnt_snd_2.AsString;
            csnd13:= qryClientcnt_snd_3.AsString;
            csnd14:= qryClientcnt_snd_4.AsString;


            //gate 11
            qryGate.Close;
            qryGate.Params.ParamByName('cid').AsString:= cnt01;
            qryGate.Open;

            _g11_ID:= qryGateid_gate.AsString;
            _g11_printer:=  qryGategt_print.AsString;
            _g11_cam:= qryGategt_cam.AsString;
            _g11_knd:= qryGategt_knd.AsString;

            _g11_loopon:= qryGategt_loop_on.AsString;
            _g11_loopoff:= qryGategt_loop_off.AsString;
            _g11_grbtn:= qryGategt_green_btn.AsString;
            _g11_redbtn:= qryGategt_red_btn.AsString;
            _g11_opengate:= qryGategt_open_gate.AsString;
            _g11_loop_release:= qryGategt_loop_gate.AsString;
            _g11_info_ok:= qryGategt_info_ok.AsString;

            gb1.Caption:= qryGateketerangan.AsString;


//            TS1.Interval:= qryGatet_open.AsInteger;

            _g11_On := qryGategt_isactive.AsString='1';
            btnOpen11.Enabled:=  qryGategt_isactive.AsString='1';

            //gate12

            //cnt 2
            qryClient.Close;
            qryClient.Params.ParamByName('cid').AsString:= cnt02;
            qryClient.Open;

            c2_On:=  qryClientcnt_isactive.AsString='1';

            if c2_On then begin
                c2host:= qryClientcnt_ip.AsString;
                c2port:= qryClientcnt_port.AsInteger;
                c2pict:= qryClientcnt_pict.AsString;
                c2head:=  Chr(StrToInt(qryClientcnt_hdr.AsString));
                c2Foot:= Chr(StrToInt(qryClientcnt_ftr.AsString));
                ccardhead21:= Trim('W1');
                ccardhead22:= Trim('W2');
                csnd21:= qryClientcnt_snd_1.AsString;
                csnd22:= qryClientcnt_snd_2.AsString;
                csnd23:= qryClientcnt_snd_3.AsString;
                csnd24:= qryClientcnt_snd_4.AsString;


                //gate 21
                qryGate.Close;
                qryGate.Params.ParamByName('cid').AsString:= cnt02;
                qryGate.Open;

                _g21_ID:= qryGateid_gate.AsString;

                _g21_printer:=  qryGategt_print.AsString;
                _g21_cam:= qryGategt_cam.AsString;
                _g21_knd:= qryGategt_knd.AsString;

                _g21_loopon:= qryGategt_loop_on.AsString;
                _g21_loopoff:= qryGategt_loop_off.AsString;
                _g21_grbtn:= qryGategt_green_btn.AsString;
                _g21_redbtn:= qryGategt_red_btn.AsString;
                _g21_opengate:= qryGategt_open_gate.AsString;
                _g21_loop_release:= qryGategt_loop_gate.AsString;
                _g21_info_ok:= qryGategt_info_ok.AsString;

                gb2.Caption:= qryGateketerangan.AsString;

                _g21_On := qryGategt_isactive.AsString='1';
                btnOpen21.Enabled:=  qryGategt_isactive.AsString='1';

            end;

        except
          on E: Exception do begin
            DM.MyMsg(mmError,'Error has been encountered !',E.Message) ;
            Exit;
          end;
        end;
    finally
      qryClient.Close;
      qryGate.Close;
    end;
end;



procedure TMainFrm.writeData(datas, cnt:String);
 var dt : String;
begin
    dt:= FormatDateTime('hh.nn.ss',Now);
    Memo.Lines.Add(dt+'-->'+cnt+'.'+MultiStringReplace(datas,[#13,#10],['',''],[rfReplaceAll, rfIgnoreCase]))
end;

procedure TMainFrm.T_PINGTimer(Sender: TObject);
begin
  MQTTClient.PingReq;
end;


procedure TMainFrm.MQTTClientActivated;
begin

  MQTTClient := TMQTTClient.Create(MemServersvr_host.AsString, MemServersvr_port.AsInteger);
  MQTTClient.OnConnAck := OnConnAck;
  MQTTClient.OnPingResp := OnPingResp;
  MQTTClient.OnPublish := OnPublish;
  MQTTClient.OnSubAck := OnSubAck;
  MQTTClient.OnSubAck := OnSubAck;
  MQTTClient.Connect;

end;

procedure TMainFrm.MQTTClientSubscribe;
begin

  if c1_On then  begin
      edtHost1.Text:= c1host;
      edtPort1.Text:= c1pict;
      edtClient1.Text:= cnt01;
      edtPublish1.Text:= 'cmd/'+cnt01;
      edtSubscribe1.Text:= 'replay/'+cnt01;
      MQTTClient.Subscribe(MemServerpublish_head.AsString+cnt01);
      MQTTClient.Subscribe(MemServersubscribe_head.AsString+cnt01);
      if _g11_On then begin
          btn_rtsp1.Caption:= 'rtsp://'+_g11_cam;
          IPCAM_1.Play('rtsp://'+_g11_cam);
      end;

  end
  else begin
      edtHost1.Text:= '';
      edtPort1.Text:= '';
      edtClient1.Text:= '';
      edtPublish1.Text:= '';
      edtSubscribe1.Text:= '';
  end;

  if c2_On then begin
      edtHost2.Text:= c2host;
      edtPort2.Text:= c2pict;
      edtClient2.Text:= cnt02;
      edtPublish2.Text:= 'cmd/'+cnt02;
      edtSubscribe2.Text:= 'replay/'+cnt02;
      MQTTClient.Subscribe(MemServerpublish_head.AsString+cnt02);
      MQTTClient.Subscribe(MemServersubscribe_head.AsString+cnt02);
      if _g21_On then begin
         btn_rtsp2.Caption:= 'rtsp://'+_g21_cam;
         IPCAM_2.Play('rtsp://'+_g21_cam);
      end;
  end
  else begin
    edtHost2.Text:= '';
    edtPort2.Text:= '';
    edtClient2.Text:= '';
    edtPublish2.Text:= '';
    edtSubscribe2.Text:= '';
  end;
end;




procedure TMainFrm.SetDisplay(cntx,cmdx: string);
begin
  if cntx=cnt01 then begin
      if (Trim(cmdx)= Trim(_g11_loopon)) then  LED11_Loop.Brush.Color:= clGreen;
      if (Trim(cmdx)= Trim(_g11_grbtn)) then  LED11_Button.Brush.Color:= clGreen;
      if (Trim(cmdx)= Trim(_g11_opengate)) then  LED11_Gate.Brush.Color:= clGreen;

      if (Trim(cmdx)= Trim('PREP_PRINT')) then  LED11_Print.Brush.Color:= clYellow;
      if (Trim(cmdx)= Trim('PRINT')) then  LED11_Print.Brush.Color:= clGreen;

      if (Trim(cmdx)= Trim(_g11_loopoff)) then  begin
         LED11_Loop.Brush.Color:= clRed;
         LED11_Button.Brush.Color:= clRed;
         LED11_Gate.Brush.Color:= clRed;
         LED11_Print.Brush.Color:= clRed;
      end;
  end
  else
  if cntx=cnt02 then begin
      if (Trim(cmdx)= Trim(_g21_loopon)) then  LED21_Loop.Brush.Color:= clGreen;
      if (Trim(cmdx)= Trim(_g21_grbtn)) then  LED21_Button.Brush.Color:= clGreen;
      if (Trim(cmdx)= Trim(_g21_opengate)) then  LED21_Gate.Brush.Color:= clGreen;

      if (Trim(cmdx)= Trim('PREP_PRINT')) then  LED21_Print.Brush.Color:= clYellow;
      if (Trim(cmdx)= Trim('PRINT')) then  LED21_Print.Brush.Color:= clGreen;

      if (Trim(cmdx)= Trim(_g21_loopoff)) then  begin
         LED21_Loop.Brush.Color:= clRed;
         LED21_Button.Brush.Color:= clRed;
         LED21_Gate.Brush.Color:= clRed;
         LED21_Print.Brush.Color:= clRed;
      end;
  end

end;


procedure TMainFrm.MQTTClientPublish(cmd,cnt,pesan:String);
begin
  if cmd='OPEN_GATE' then begin
       if cnt=(edtClient1.Text)then begin
          SetDisplay(cnt,_g11_opengate);
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+_g11_opengate+c1Foot));
          Sleep(1000);
       end
       else
       if cnt=(edtClient2.Text) then begin
           SetDisplay(cnt,_g21_opengate);
          MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+_g21_opengate+c2Foot));//Send the messages to the server
       end;
  end
  else
  if cmd='OPEN_GATE2' then begin
       if cnt=(edtClient1.Text)then begin
          SetDisplay(cnt,_g11_opengate);
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+'OPEN2'+c1Foot));
       end
       else
       if cnt=(edtClient2.Text) then begin
           SetDisplay(cnt,_g21_opengate);
          MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+'OPEN2'+c2Foot));//Send the messages to the server
       end;
  end
  else
  if cmd='SEND_CMD' then begin
       if cnt=(edtClient1.Text)then begin
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+pesan+c1Foot));
       end
       else
       if cnt=(edtClient2.Text) then begin
          MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+pesan+c2Foot));//Send the messages to the server
       end;
  end
  else
  if cmd='GET_INFO' then begin
       if cnt=(edtClient1.Text)then begin
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+'INFO'+c1Foot));
       end
       else
       if cnt=(edtClient2.Text) then begin
          MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+'INFO'+c2Foot));//Send the messages to the server
       end;
  end
  else
  if cmd='PLAY_SND' then begin

   if cnt=(edtClient1.Text) then begin
        if ((pesan='WELCOME') AND DM.isPlaySound1) then begin // loop ON
    //      ShowMessage('play sound selamat datang');
//          ShowMessage(_c1Head+_snd11+_c1Foot);
//          writeData(csnd11,cnt);

          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+csnd11+c1Foot)); //Send the messages to the server
        end
        else
        if ((pesan='AMBILSTRUK') AND DM.isPlaySound2) then begin
          //play sound silahkan masuk
//          ShowMessage(_c1Head+_snd12+_c1Foot);
//          writeData(csnd12,cnt);
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+csnd12+c1Foot)); //Send the messages to the server
        end
        else
        if ((pesan='THANKS') AND DM.isPlaySound3) then begin
          //play sound TERIMA KASIH
//          ShowMessage(_c1Head+_snd13+_c1Foot);
//          writeData(csnd13,cnt);
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+csnd13+c1Foot)); //Send the messages to the server
        end
        else
        if (pesan='KARTUNONAKTIF') then begin
          //play sound TERIMA KASIH
//          ShowMessage(_c1Head+_snd13+_c1Foot);
//          writeData(csnd13,cnt);
          MQTTClient.Publish(edtPublish1.Text, Trim(c1Head+csnd14+c1Foot)); //Send the messages to the server
        end
   end
   else
   if cnt=(edtClient2.Text) then begin
        if ((pesan='WELCOME') AND DM.isPlaySound1) then begin // loop ON
//          ShowMessage(_c2Head+_snd21+_c2Foot);
//          writeData(csnd21,cnt);
           MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+csnd21+c2Foot)); //Send the messages to the server
        end
        else
        if ((pesan='AMBILSTRUK') AND DM.isPlaySound2) then begin
          //play sound silahkan masuk
//          ShowMessage(_c2Head+_snd22+_c2Foot);
//          writeData(csnd22,cnt);
          MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+csnd22+c2Foot)); //Send the messages to the server
        end
        else
        if ((pesan='THANKS') AND DM.isPlaySound3) then begin
          //play sound TERIMA KASIH
//          ShowMessage(_c2Head+_snd23+_c2Foot);
//          ShowMessage('play sound terima kasih');
//          writeData(csnd23,cnt);
          MQTTClient.Publish(edtPublish2.Text, Trim(c2Head+csnd23+c2Foot)); //Send the messages to the server
        end
        else
        if (pesan='KARTUNONAKTIF') then begin
          //play sound TERIMA KASIH
//          ShowMessage(_c1Head+_snd13+_c1Foot);
//          writeData(csnd13,cnt);
          MQTTClient.Publish(edtPublish1.Text, Trim(c2Head+csnd24+c2Foot)); //Send the messages to the server
        end
   end

  end;


end;


function TMainFrm.CekAnggota(vID: string): Boolean;
begin
  Result:= False;
  try
     qCekAnggota.Close;
     qCekAnggota.Params.ParamByName('pkartu').AsString:= trim(vID);
     qCekAnggota.Open;
//     writeData('id='+vID,cnt01);
//     writeData(IntToStr(qCekAnggotavcount.AsInteger),cnt01);
     if qCekAnggotavcount.AsInteger>0 then
        Result:= True;
  except
  end;
end;


procedure TMainFrm.OnPublish(Sender: TObject; topic, payload: string);       /////---------------------------------RECEIPT PACKET----------------------
begin

  if (topic=trim(edtPublish1.Text)) then begin
      writeData('Send01-> ' + payload,'');
  end
  else
  if (topic=trim(edtPublish2.Text)) then begin
      writeData('Send02-> ' + payload,'');
  end
  else
  if (topic=trim(edtSubscribe1.Text)) then begin
      writeData('Receipt01-> ' + payload,'');
      GetActionGate01(payload,cnt01);
  end;
  if (topic=trim(edtSubscribe2.Text)) then begin
      writeData('Receipt02-> ' + payload,'');
      GetActionGate02(payload,cnt02);
  end;
end;



procedure TMainFrm.GetActionGate01(cmd, cnt:String);
var s1, cardHead1, cardHead2 : String;
begin


    s1:= MultiStringReplace(cmd,[c1Head,c1Foot],['',''],[rfReplaceAll, rfIgnoreCase]);
    SetDisplay(cnt,s1);

      if DM.isGateinLoop then begin // gate in with loop
          if ((TRIM(s1)=_g11_loopon)) then begin
             MQTTClientPublish('PLAY_SND',cnt01,'WELCOME'); // selamat datang
             Application.ProcessMessages;
          end
          else
          if (TRIM(s1)=_g11_loopoff) then begin
//             if isPencet_11 then
//                isPencet_11:= False;
//             if isKartu_11 then
//                isKartu_11:= False;
          end
          else
          if  (TRIM(s1)=_g11_grbtn) then begin
             isKartu_11:= False;
             if isPencet_11 then Exit;
                 isPencet_11:= True;
             MQTTClientPublish('GET_INFO',cnt01,''); // sending command cek gate
          end
          else
          if  ((TRIM(copy(s1,1,2))= ccardhead11) or (TRIM(copy(s1,1,2))= ccardhead12)) then begin
               isPencet_11:= False;
               if isKartu_11 then Exit;
               isKartu_11:= True;
               nokartu1:= s1;
               MQTTClientPublish('GET_INFO',cnt01,''); // sending command cek gate
          end
          else
          if (TRIM(s1)=_g11_loop_release) then begin

             if isPencet_11 then
                isPencet_11:= False;
             if isKartu_11 then
                isKartu_11:= False;
          end
          else
          if (copy(TRIM(s1),1,5)=_g11_info_ok) then begin

             if isPencet_11 then ProsesGate01('UMUM','');   //// CETAK KARCIS
             if isKartu_11 then ProsesGate01('ANGGOTA',nokartu1);   //// CEK ANGGOTA
          end
          else
          if (copy(TRIM(s1),1,6)='IN1OFF') then begin

             if isPencet_11 then
                isPencet_11:= False;
             if isKartu_11 then
                isKartu_11:= False;

          end
          else
          if (TRIM(s1)=_g11_redbtn) then begin  // red button
             if isPencet_11 then
                isPencet_11:= False;
             if isKartu_11 then
                isKartu_11:= False;
          end

      end
      else begin  /// gate in without loop --> Loop11_ON always true

          if  (TRIM(s1)=_g11_grbtn) then begin
             if isPencet_11 then Exit;
             isPencet_11:= True;
             ProsesGate01('UMUM','');   //// CETAK KARCIS

          end
          else
          if  (TRIM(copy(s1,1,2))= ccardhead11) then begin
              isKartu_11:= True;
              ProsesGate01('ANGGOTA',s1);   //// CEK ANGGOTA
          end
          else
          if  (TRIM(copy(s1,1,2))= ccardhead12) then begin
              isKartu_21:= True;
              ProsesGate01('ANGGOTA',s1);   //// CEK ANGGOTA
          end
          else
//          if  ((TRIM(copy(s1,1,2))= ccardhead11) or (TRIM(copy(s1,1,2))= ccardhead12)) then begin
//              isKartu_11:= True;
//              ProsesGate01('ANGGOTA',s1);   //// CEK ANGGOTA
//          end
//          else
          if (TRIM(s1)=_g11_redbtn) then begin  // red button
             if isPencet_11 then
                isPencet_11:= False;
             if isKartu_11 then
                isKartu_11:= False;
          end
      end;
end;


procedure TMainFrm.GetActionGate02(cmd, cnt:String);
var s1, cardHead1, cardHead2 : String;
begin

    s1:= Trim(MultiStringReplace(cmd,[c2Head,c2Foot],['',''],[rfReplaceAll, rfIgnoreCase]));
    SetDisplay(cnt,s1);

      if DM.isGateinLoop then begin               //------------------------------------------GATE dengan loop in

            if  (TRIM(s1)=_g21_loopon) then begin
               MQTTClientPublish('PLAY_SND',cnt02,'WELCOME');
               Application.ProcessMessages;
            end
            else
            if (TRIM(s1)=_g21_loopoff) then begin

//               if isPencet_21 then
//                  isPencet_21:= False;
//               if isKartu_21 then
//                  isKartu_21:= False;
            end
            else
            if  (TRIM(s1)=_g21_grbtn) then begin
               isKartu_21:= False;
               if isPencet_21 then Exit;
                 isPencet_21:= True;

               MQTTClientPublish('GET_INFO',cnt02,''); // sending command cek gate
            end
            else
            if  ((TRIM(copy(s1,1,2))= ccardhead21) or (TRIM(copy(s1,1,2))= ccardhead22)) then begin
                isPencet_21:= False;
                if isKartu_21 then Exit;
                   isKartu_21:= True;
                nokartu2:= s1;
                MQTTClientPublish('GET_INFO',cnt02,''); // sending command cek gate
            end
            else
            if (TRIM(s1)=_g21_loop_release) then begin
                  isPencet_21:= False;
                  isKartu_21:= False;
            end
            else
            if (copy(TRIM(s1),1,5)=_g21_info_ok) then begin

               if isPencet_21 then ProsesGate02('UMUM','');   //// CETAK KARCIS
               if isKartu_21 then ProsesGate02('ANGGOTA',nokartu2);   //// CEK ANGGOTA

            end
            else
            if (copy(TRIM(s1),1,6)='IN1OFF') then begin

               if isPencet_21 then
                  isPencet_21:= False;
               if isKartu_21 then
                  isKartu_21:= False;

            end
            else
            if (TRIM(s1)=_g21_redbtn) then begin  // red button

               if isPencet_21 then
                  isPencet_21:= False;
               if isKartu_21 then
                  isKartu_21:= False;
            end
      end
      else begin  /// gate in without loop --> Loop11_ON always true

          if  (TRIM(s1)=_g21_grbtn) then begin
             if isPencet_21 then Exit;
             isPencet_21:= True;
             ProsesGate02('UMUM','');   //// CETAK KARCIS

          end
          else
          if  ((TRIM(copy(s1,1,2))= ccardhead21) or (TRIM(copy(s1,1,2))= ccardhead22)) then begin
              isKartu_21:= True;
              ProsesGate02('ANGGOTA',s1);   //// CEK ANGGOTA
          end
          else
          if (TRIM(s1)=_g21_redbtn) then begin  // red button
             if isPencet_21 then
                isPencet_21:= False;
             if isKartu_21 then
                isKartu_21:= False;
          end;

      end

end;

procedure TMainFrm.ProsesGate01(jenis,s1:String);
var s2, k1, cardHead1 : String;
begin
   if jenis='UMUM' then begin
         k1:= trim(DM.vSysDate);
         if InsertData(k1,'UMUM',_g11_ID,_g11_knd) then begin
             CaptureIPCamGate01(k1,'1');
//             Application.ProcessMessages;
             Sleep(1000);
             MQTTClientPublish('PLAY_SND',cnt01,'AMBILSTRUK');  ////-----------------------------TERIMA KASIH
//             Application.ProcessMessages;
             Sleep(1000);
             MQTTClientPublish('OPEN_GATE',cnt01,'');
//             Application.ProcessMessages;
         end;
   end
   else begin
           if ((TRIM(copy(s1,1,2))='W2'))  then cardHead1:= 'W2';
           if ((TRIM(copy(s1,1,2))='W1'))  then cardHead1:= 'W1';

           s2:= trim(StringReplace(s1,cardHead1,'',[rfReplaceAll, rfIgnoreCase]));
           writeData(s2,cnt01);
           if CekAnggota(s2) then begin
              k1:= TRIM(DM.vSysDate);
              if cardHead1='W2' then begin

                  if InsertData(k1,s2,_g11_ID,_g11_knd) then begin
                     //CaptureIPCamGate01(k1,'0');
      //                 Application.ProcessMessages;
      //                 Sleep(1000);
      //                 MQTTClientPublish('PLAY_SND',cnt01,'AMBILSTRUK');   ////-----------------------------TERIMA KASIH
      //                 Application.ProcessMessages;
                     Sleep(1000);
                     MQTTClientPublish('OPEN_GATE2',cnt01,'');//--------OPEN GATE
      //                 Application.ProcessMessages;
                  end;
              end else
              if cardHead1='W1' then begin
                  if InsertData(k1,s2,_g11_ID,_g11_knd) then begin
                     CaptureIPCamGate01(k1,'0');
      //                 Application.ProcessMessages;
      //                 Sleep(1000);
      //                 MQTTClientPublish('PLAY_SND',cnt01,'AMBILSTRUK');   ////-----------------------------TERIMA KASIH
      //                 Application.ProcessMessages;
                     Sleep(1000);
                     MQTTClientPublish('OPEN_GATE',cnt01,'');//--------OPEN GATE
      //                 Application.ProcessMessages;
                  end;
              end;

           end
           else begin
             MQTTClientPublish('PLAY_SND',cnt01,'KARTUNONAKTIF');//--------KARTU TIDAK AKTIF SOUND
             writeData(s2+'-> KARTU TIDAK AKTIF',cnt01);
             if isPencet_11 then
                isPencet_11:= False;
             if isKartu_11 then
                isKartu_11:= False;
           end;
   end;

end;




procedure TMainFrm.ProsesGate02(jenis,s1:String);
var s2, k2, cardHead2 : String;
begin

   try

      if jenis='UMUM' then begin
         k2:= TRIM(DM.vSysDate);
         if InsertData(k2,'UMUM',_g21_ID,_g21_knd) then begin
             CaptureIPCamGate02(k2,'1');
//             Application.ProcessMessages;
             Sleep(1000);
             MQTTClientPublish('PLAY_SND',cnt02,'AMBILSTRUK');   ////-----------------------------TERIMA KASIH
//             Application.ProcessMessages;
             Sleep(1000);
             MQTTClientPublish('OPEN_GATE',cnt02,'');
             Application.ProcessMessages;
         end;
      end
      else begin   //
//           if Length(ccardhead21)>0 then  cardHead2:= _cardhead21
//           else cardHead2:= _cardhead22;
           writeData(s1,cnt02);
           if ((TRIM(copy(s1,1,2))='W2'))  then cardHead2:= 'W2';
           if ((TRIM(copy(s1,1,2))='W1'))  then cardHead2:= 'W1';
           s2:= trim(StringReplace(s1,cardHead2,'',[rfReplaceAll, rfIgnoreCase]));
           writeData(s2,cnt02);
           if CekAnggota(s2) then begin
              k2:= tRIM(DM.vSysDate);
              if InsertData(k2,s2,_g21_ID,_g21_knd) then begin
                 CaptureIPCamGate02(k2,'0');
                 writeData('InsertData',cnt02);
//                 Application.ProcessMessages;
                 Sleep(1000);
//                 MQTTClientPublish('PLAY_SND',cnt02,'AMBILSTRUK');    ////-----------------------------TERIMA KASIH
//                 Application.ProcessMessages;
//                 Sleep(1000);
                 MQTTClientPublish('OPEN_GATE',cnt02,'');
                 Application.ProcessMessages;
             end;
           end
           else begin
             MQTTClientPublish('PLAY_SND',cnt02,'KARTUNONAKTIF');//--------KARTU TIDAK AKTIF SOUND
             writeData(s2+'-> KARTU TIDAK AKTIF',cnt02);
             if isPencet_21 then
                isPencet_21:= False;
             if isKartu_21 then
                isKartu_21:= False;
           end;
      end;

  except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message) ;
      end;
  end

end;


function TMainFrm.InsertData(pkarcis,pcChar,pGt,pJKnd:String):Boolean;
begin

   Result:= False;

   try
     qExec.Close;
     qExec.Params.ParamByName('pNoKarcis').AsString:= Trim(pGt+pkarcis);
     qExec.Params.ParamByName('pcardchar').AsString:= pcChar;
     if pcChar='UMUM' then
        qExec.Params.ParamByName('pcardhex').Value:= IntToHex(StrToInt('000'),8)
     else
     qExec.Params.ParamByName('pcardhex').Value:= IntToHex(StrToInt('000'),8);
     qExec.Params.ParamByName('pgate').AsString:= pGt;
     qExec.Params.ParamByName('pknd').AsString:= pJKnd;
     qExec.ExecSQL;
   except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message) ;
        Exit;
      end;
   end;

   Result:= True;

end;

procedure TMainFrm.LoadMemPerusahaan;
begin
    try
      qPerusahaan.Close;
      qPerusahaan.Open;
      MemPerusahaan.Close;
      MemPerusahaan.Open;
      MemPerusahaan.LoadFromDataSet(qPerusahaan, [mtcpoAppend]);
      MemPerusahaan.Edit;
      if FileExists('images\logo1.jpg') then
         MemPerusahaanlogo.LoadFromFile('images\logo1.jpg')
      else MemPerusahaanlogo.Clear;
      MemPerusahaan.Post;
    except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message) ;
        Exit;
      end;
    end;
end;




procedure TMainFrm.CaptureIPCamGate01(pnomor,isCetak1:String);
var print_addr, dir_folder, dirname : String;
begin

  // gate 1
    dir_folder:= copy(DM.vSysDate,1,6);
    dirname:= Trim(c1pict+dir_folder+'\');

    qPrint1.Close;
    qPrint1.Params.ParamByName('pnomor').Value:= trim(_g11_ID+pnomor);
    qPrint1.Open;

    if (isCetak1='1') then begin
      MemMaster1.Close;
      MemMaster1.Open;
      MemMaster1.Append;
      MemMaster1no_karcis.AsString:= qPrint1no_karcis.AsString;
      MemMaster1jam_masuk.AsString:= FormatDateTime('dd-mm-yyyy hh:nn:ss ',qPrint1jam_masuk.AsDateTime);
      MemMaster1jns_anggota.AsString:= qPrint1jns_anggota.AsString;
      if (qPrint1jns_kendaraan.IsNull) OR (Trim(qPrint1jns_anggota.AsString)='') then MemMaster1jns_kendaraan.AsString:= '-'
      else MemMaster1jns_kendaraan.AsString:= qPrint1jns_kendaraan.AsString;
      MemMaster1no_gate.AsString:= 'No Gate : '+_g11_ID;
      MemMaster1.Post;

      // send to printer
      SetDisplay(cnt01,'PREP_PRINT');
      writeData('Printing.....',cnt01);
      frxKarcis1.PrepareReport;
      frxKarcis1.PrintOptions.Printer:= _g11_printer;
      frxKarcis1.Print;
    end;

     // capture image
     if not DirectoryExists(c1pict+dir_folder) then begin
        CreateDir(c1pict+dir_folder);
     end;

    IPCAM_1.SnapShot(ChangeFileExt(dirname+qPrint1no_karcis.AsString, '.jpeg'),476,278);
    SetDisplay(cnt01,'PRINT');

end;


procedure TMainFrm.CaptureIPCamGate02(pnomor,isCetak2:String);
var print_addr, dir_folder, dirname : String;
begin

      // gate 2
        dir_folder:= copy(DM.vSysDate,1,6);
        dirname:= Trim(c2pict+dir_folder+'\');

        qPrint2.Close;
        qPrint2.Params.ParamByName('pnomor').Value:= trim(_g21_ID+pnomor);
        qPrint2.Open;
        writeData('Prepare Print.....',cnt02);


        if (isCetak2='1') then begin
            MemMaster2.Close;
            MemMaster2.Open;
            MemMaster2.Append;
            MemMaster2no_karcis.AsString:= qPrint2no_karcis.AsString;
            MemMaster2jam_masuk.AsString:= FormatDateTime('dd-mm-yyyy hh:nn:ss ',qPrint2jam_masuk.AsDateTime);
            MemMaster2jns_anggota.AsString:= qPrint2jns_anggota.AsString;
            if (qPrint2jns_kendaraan.IsNull) OR (Trim(qPrint2jns_anggota.AsString)='') then MemMaster2jns_kendaraan.AsString:= '-'
            else MemMaster2jns_kendaraan.AsString:= qPrint2jns_kendaraan.AsString;
            MemMaster2no_gate.AsString:= 'No Gate : '+_g21_ID;
            MemMaster2.Post;

            // send to printer
            SetDisplay(cnt02,'PREP_PRINT');
            writeData('Printing.....',cnt02);
            frxKarcis2.PrepareReport;
            frxKarcis2.PrintOptions.Printer:= _g21_printer;
            frxKarcis2.Print;
        end;

       // capture image
       if not DirectoryExists(c2pict+dir_folder) then
          CreateDir(c2pict+dir_folder);

       IPCAM_2.Snapshot(ChangeFileExt(dirname+qPrint2no_karcis.AsString, '.jpeg'),476,278);
       SetDisplay(cnt02,'PRINT');

end;



procedure TMainFrm.btnCmd1Click(Sender: TObject);
var str : String;
begin
   try
     if Sender=btnCmd1 then begin
      Str:= edtCMD1.Text;
      edtCMD1.Text:='';//Clears the edit box
      MQTTClientPublish('SEND_CMD',cnt01,str);
     end
     else
     if Sender=btnCmd2 then begin
      Str:= edtCMD2.Text;
      edtCMD2.Text:='';//Clears the edit box
      MQTTClientPublish('SEND_CMD',cnt02,str);//Send the messages to the server
     end
   except
   end;
end;


procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MQTTClient.isConnected
   then MQTTClient.Disconnect;
end;

procedure TMainFrm.btnRekonekClick(Sender: TObject);
begin
   T_PING.Enabled:= False;
   MQTTClient.Disconnect;
   writeData('Server Disconnected','');
   L_Status.Caption:= 'DISCONNECTED';
   MQTTClientActivated;
end;

procedure TMainFrm.T_ERRORTimer(Sender: TObject);
begin
  btnRekonekClick(nil);
end;

procedure TMainFrm.btnOpen11Click(Sender: TObject);
begin
   try
     if Sender=btnOpen11 then MQTTClientPublish('SEND_CMD',cnt01,_g11_opengate);
     if Sender=btnOpen12 then MQTTClientPublish('SEND_CMD',cnt01,_g12_opengate);
     if Sender=btnOpen21 then MQTTClientPublish('SEND_CMD',cnt02,_g21_opengate);//Send the messages to the server
     if Sender=btnOpen22 then MQTTClientPublish('SEND_CMD',cnt02,_g22_opengate);//Send the messages to the server
   except
   end;
end;

procedure TMainFrm.frxKarcis2PrintPage(Page: TfrxReportPage;
  CopyNo: Integer);
begin
//  SetDisplay(cnt01,'PRINT');
//  writeData('Print01',cnt01);
end;

procedure TMainFrm.frxKarcisPrintPage(Page: TfrxReportPage;
  CopyNo: Integer);
begin
//  SetDisplay(cnt02,'PRINT');
//  writeData('Print02',cnt02);
end;



End.
