unit U_LapKasirPerShift;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, cxPC, cxGridBandedTableView, AdvToolBar,
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, wwdbdatetimepicker, cxSpinEdit, frxClass, frxDBSet,
  cxDropDownEdit, cxCalendar, cxGroupBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxRadioGroup, cxGridDBBandedTableView;

type
  TLapKasirPerShiftFrm = class(TForm)
    dsqRekap: TDataSource;
    qRekap: TZQuery;
    pnlBottom: TPanel;
    btnClose: TSCButton;
    btnAdd: TSCButton;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    pnlTop: TSCPanel;
    btnOK: TSCButton;
    frxDBPrint: TfrxDBDataset;
    frxKarcis: TfrxReport;
    MemMasterList: TkbmMemTable;
    frxDBList: TfrxDBDataset;
    MemMasterListtgl: TStringField;
    MemMasterListsift: TStringField;
    pgcMaster: TcxPageControl;
    tabRekap: TcxTabSheet;
    tabDetail: TcxTabSheet;
    grdRekap: TcxGrid;
    grdLVLRekap: TcxGridLevel;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdLVL_Detail: TcxGridLevel;
    Detail: TZQuery;
    dsDetail: TDataSource;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjumlah: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    frxDBDetail: TfrxDBDataset;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    grdDBTV_Detailusr_ins: TcxGridDBColumn;
    MemMasterListuser: TStringField;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_Detailjam_keluar: TcxGridDBColumn;
    MemMasterListlogo: TBlobField;
    MemMasterListlogo2: TBlobField;
    MemMasterListalamat: TStringField;
    MemMasterListvnow: TStringField;
    btnExport: TSCButton;
    qryNota: TZQuery;
    qryNotanomor: TIntegerField;
    qryNotaid_jns_anggota: TStringField;
    qryNotaid_jns_kendaraan: TStringField;
    qryNotajumlah: TFloatField;
    qryNotashift: TIntegerField;
    qryNotano_gate_out: TIntegerField;
    qryNotajml_kendaraan: TFloatField;
    qryNotausr_upd: TStringField;
    qryNotastatus: TStringField;
    qryNotaketerangan: TStringField;
    qUser: TZQuery;
    qUservuser: TStringField;
    qUserfull_name: TStringField;
    dsqUser: TDataSource;
    qRekapnomor: TIntegerField;
    qRekapid_jns_anggota: TStringField;
    qRekapid_jns_kendaraan: TStringField;
    qRekapjumlah: TFloatField;
    qRekapshift: TIntegerField;
    qRekapno_gate_out: TIntegerField;
    qRekapjml_kendaraan: TFloatField;
    qRekapusr_upd: TStringField;
    qRekapstatus: TStringField;
    qRekapketerangan: TStringField;
    Label2: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Label6: TLabel;
    Shape8: TShape;
    Shape7: TShape;
    Shape3: TShape;
    Shape2: TShape;
    edtShift: TcxComboBox;
    edtPetugas: TcxComboBox;
    grdDBTV_Rekap: TcxGridDBBandedTableView;
    grdDBTV_Rekapnomor: TcxGridDBBandedColumn;
    grdDBTV_Rekapid_jns_anggota: TcxGridDBBandedColumn;
    grdDBTV_Rekapid_jns_kendaraan: TcxGridDBBandedColumn;
    grdDBTV_Rekapjumlah: TcxGridDBBandedColumn;
    grdDBTV_Rekapshift: TcxGridDBBandedColumn;
    grdDBTV_Rekapno_gate_out: TcxGridDBBandedColumn;
    grdDBTV_Rekapjml_kendaraan: TcxGridDBBandedColumn;
    grdDBTV_Rekapusr_upd: TcxGridDBBandedColumn;
    grdDBTV_Rekapstatus: TcxGridDBBandedColumn;
    grdDBTV_Rekapketerangan: TcxGridDBBandedColumn;
    cxStyle5: TcxStyle;
    Detailno_karcis: TStringField;
    Detailid_jns_anggota: TStringField;
    Detailid_jns_kendaraan: TStringField;
    Detailno_kartu_char: TStringField;
    Detailjam_masuk: TDateTimeField;
    Detailjam_keluar: TDateTimeField;
    Detailno_gate_in: TIntegerField;
    Detailno_gate_out: TIntegerField;
    Detailshift: TIntegerField;
    Detailstatus: TStringField;
    Detaildstatus: TStringField;
    Detailpintu_masuk: TStringField;
    Detailpintu_keluar: TStringField;
    Detailusr_upd: TStringField;
    grdDBTV_Detailpintu_masuk: TcxGridDBColumn;
    grdDBTV_Detailpintu_keluar: TcxGridDBColumn;
    frxRepRekap: TfrxReport;
    MemMasterListnama: TStringField;
    MemMasterListtelp: TStringField;
    MemMasterListfax: TStringField;
    Detailtarif: TFloatField;
    Detaildenda: TFloatField;
    Detailfoto_bg_in: TStringField;
    Detailfoto_bg_ot: TStringField;
    Detailnopol: TStringField;
    Detailusr_ins: TStringField;
    Detaildt_ins: TDateTimeField;
    Detaildt_upd: TDateTimeField;
    Detailiskeluar: TStringField;
    Detailno_rfid: TStringField;
    Detailjns_pembayaran: TStringField;
    Detailjns_anggota: TStringField;
    Detailjns_kendaraan: TStringField;
    frxRekapKarcis: TfrxReport;
    dtpStart: TwwDBDateTimePicker;
    tabExport: TcxTabSheet;
    grdExport: TcxGrid;
    grdDBTVExport: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    grdlvlExport: TcxGridLevel;
    grdDBTVExportColumn1: TcxGridDBColumn;
    grdDBTVExportColumn2: TcxGridDBColumn;
    grdDBTVExportColumn3: TcxGridDBColumn;
    grdDBTVExportColumn4: TcxGridDBColumn;
    grdDBTVExportColumn5: TcxGridDBColumn;
    grdDBTVExportColumn6: TcxGridDBColumn;
    grdDBTVExportColumn7: TcxGridDBColumn;
    grdDBTVExportColumn8: TcxGridDBColumn;
    grdDBTVExportColumn9: TcxGridDBColumn;
    grdDBTVExportColumn10: TcxGridDBColumn;
    grdDBTVExportColumn11: TcxGridDBColumn;
    grdDBTVExportColumn12: TcxGridDBColumn;
    grdDBTVExportColumn13: TcxGridDBColumn;
    grdDBTVExportColumn14: TcxGridDBColumn;
    grdDBTVExportColumn15: TcxGridDBColumn;
    grdDBTVExportColumn16: TcxGridDBColumn;
    grdDBTVExportColumn17: TcxGridDBColumn;
    grdDBTVExportColumn18: TcxGridDBColumn;
    grdDBTVExportColumn19: TcxGridDBColumn;
    grdDBTVExportColumn20: TcxGridDBColumn;
    grdDBTVExportColumn21: TcxGridDBColumn;
    grdDBTVExportColumn22: TcxGridDBColumn;
    grdDBTVExportColumn23: TcxGridDBColumn;
    grdDBTVExportColumn24: TcxGridDBColumn;
    grdDBTVExportColumn25: TcxGridDBColumn;
    grdDBTVExportColumn26: TcxGridDBColumn;
    grdDBTVExportColumn27: TcxGridDBColumn;
    grdDBTVExportColumn28: TcxGridDBColumn;
    grdDBTVExportColumn29: TcxGridDBColumn;
    grdDBTVExportColumn30: TcxGridDBColumn;
    grdDBTVExportColumn31: TcxGridDBColumn;
    qRekapnilai_tukar: TFloatField;
    qRekapsyarat: TStringField;
    qRekaprancangan: TStringField;
    qRekapdepartemen: TStringField;
    qRekapproyek: TStringField;
    qExec: TZQuery;
    qData: TZQuery;
    qDatano_karcis: TStringField;
    qDataid_jns_anggota: TStringField;
    qDataid_jns_kendaraan: TStringField;
    qDatano_kartu_char: TStringField;
    qDatajam_masuk: TDateTimeField;
    qDatajam_keluar: TDateTimeField;
    qDatatarif: TFloatField;
    qDatadenda: TFloatField;
    qDatafoto_bg_in: TStringField;
    qDatafoto_bg_ot: TStringField;
    qDatanopol: TStringField;
    qDatausr_ins: TStringField;
    qDatausr_upd: TStringField;
    qDatadt_ins: TDateTimeField;
    qDatadt_upd: TDateTimeField;
    qDataiskeluar: TStringField;
    qDatano_rfid: TStringField;
    qDatano_gate_in: TIntegerField;
    qDatano_gate_out: TIntegerField;
    qDatashift: TIntegerField;
    qDatastatus: TStringField;
    qDataketerangan: TStringField;
    qDatajns_pembayaran: TStringField;
    qDatadstatus: TStringField;
    qDatajns_anggota: TStringField;
    qDatajns_kendaraan: TStringField;
    qDatapintu_masuk: TStringField;
    qDatapintu_keluar: TStringField;
    qKasir: TZQuery;
    qKasirno_karcis: TStringField;
    qKasirid_jns_anggota: TStringField;
    qKasirid_jns_kendaraan: TStringField;
    qKasirno_kartu_char: TStringField;
    qKasirjam_masuk: TDateTimeField;
    qKasirjam_keluar: TDateTimeField;
    qKasirtarif: TFloatField;
    qKasirdenda: TFloatField;
    qKasirfoto_bg_in: TStringField;
    qKasirfoto_bg_ot: TStringField;
    qKasirnopol: TStringField;
    qKasirusr_ins: TStringField;
    qKasirusr_upd: TStringField;
    qKasirdt_ins: TDateTimeField;
    qKasirdt_upd: TDateTimeField;
    qKasiriskeluar: TStringField;
    qKasirno_rfid: TStringField;
    qKasirno_gate_in: TIntegerField;
    qKasirno_gate_out: TIntegerField;
    qKasirshift: TIntegerField;
    qKasirstatus: TStringField;
    qKasirjns_pembayaran: TStringField;
    qKasirketerangan: TStringField;
    MemLogo: TkbmMemTable;
    MemLogologo: TBlobField;
    frxDBLogo: TfrxDBDataset;
    qryGate: TZQuery;
    qryGateid_gate: TStringField;
    qryGategt_isactive: TStringField;
    qryGategt_print: TStringField;
    qryGategt_pict_in: TStringField;
    qryGategt_pict_ot: TStringField;
    qryGategt_com_port: TStringField;
    qryGategt_open_cmd: TStringField;
    qryGateketerangan: TStringField;
    qryGategt_cam: TStringField;
    qryGateis_karcis_hilang: TStringField;
    qryGateis_buka_gate: TStringField;
    qryGatebtn_motor_visible: TStringField;
    qryGatebtn_mobil_visible: TStringField;
    qryGatebtn_bus_visible: TStringField;
    qryGatebtn_truck_visible: TStringField;
    qryGatejns_pembayaran: TStringField;
    qryGatebtn_valet_visible: TStringField;
    qryGateis_buka_gate_khusus: TStringField;
    grdDBTV_DetailColumn1: TcxGridDBColumn;
    OpenDialog1: TSaveDialog;
    procedure btnOKClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tabDetailShow(Sender: TObject);
    procedure tabRekapShow(Sender: TObject);
  private
    { Private declarations }
    _Printer_GtOt: String;
    procedure OpenUser;
    procedure OpenRekap;
    procedure OpenDetail;
    procedure InsertKasir;
    function HitungData:String;
  public
    vJenis : String;
    { Public declarations }
  end;

var
  LapKasirPerShiftFrm: TLapKasirPerShiftFrm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LapKasirPerShiftFrm:= TLapKasirPerShiftFrm.Create(Application);
  LapKasirPerShiftFrm.Caption:= pNamaMenu;
  LapKasirPerShiftFrm.Show;
end;


function TLapKasirPerShiftFrm.HitungData:String;
var s, ptgl, pshift, where_str : String;
begin
   ptgl:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date)) ;
   pshift:= QuotedStr(edtShift.Text);

   Result:= '0';

   s:= 'select cast((count(a.*) * (select cast(id_galian as numeric(17,0)) from master.mgalian) / 100) as int) as vcount';
   s:= s+' from public.fn_get_detail_shift('+ptgl+','+pshift+') as a ';
   s:= s+' WHERE 1=1 and (a.tarif<>0 and a.tarif<= (select cast(diskripsi as numeric(17,0)) from master.mgalian))';

   try
     qExec.Close;
     qExec.SQL.Clear;
     qExec.Params.Clear;
     qExec.SQL.Add(s);
     qExec.Open;
     Result:=  FloatToStr(qExec.fieldByName('vcount').AsFloat);
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TLapKasirPerShiftFrm.OpenRekap;
var s, ptgl, pshift, where_str : String;
begin
   ptgl:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date)) ;
   pshift:= QuotedStr(edtShift.Text);

   where_str:= '';
   if Trim(edtPetugas.Text)<>'SEMUA' then
      where_str:= 'AND a.usr_upd='+QuotedStr(Trim(edtPetugas.Text));

//   if Trim(edtPetugas.Text)<>'SEMUA' then
//      where_str:= 'AND a.usr_upd='+QuotedStr(Trim(edtPetugas.Text));


    s:= 'select a.*, g.keterangan from public.fn_get_total_shift('+ptgl+','+pshift+') a ';
    s:= s+' left join master.mgate_ot g on CAST(to_number(g.id_gate,'+QuotedStr('99')+') AS integer)= a.no_gate_out ';
    s:= s+' WHERE 1=1 '+where_str;
    s:= s+' order by a.usr_upd ';

    try
      qRekap.Close;
      qRekap.SQL.Clear;
      qRekap.Params.Clear;
      qRekap.SQL.Add(S);
      qRekap.Open;
    except
    end;

end;

procedure TLapKasirPerShiftFrm.OpenDetail;
var s, ptgl, pshift, where_str : String;
begin
   ptgl:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date)) ;
   pshift:= QuotedStr(edtShift.Text);

   where_str:= '';
   if Trim(edtPetugas.Text)<>'SEMUA' then
      where_str:= 'AND a.usr_upd='+QuotedStr(Trim(edtPetugas.Text));

//   if Trim(edtPetugas.Text)<>'SEMUA' then
//      where_str:= 'AND a.usr_upd='+QuotedStr(Trim(edtPetugas.Text));


    s:= 'select a.* from  public.fn_get_detail_shift('+ptgl+','+pshift+') as a';
    s:= s+' WHERE 1=1 '+where_str;
    s:= s+' order by a.jam_keluar asc ';

    try
      Detail.Close;
      Detail.SQL.Clear;
      Detail.Params.Clear;
      Detail.SQL.Add(S);
      Detail.Open;
    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;

end;

procedure TLapKasirPerShiftFrm.InsertKasir;
var s, ptgl, pshift : String;
begin
    ptgl:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date)) ;
    pshift:= QuotedStr(edtShift.Text);

    s:= 'select a.* from public.fn_get_detail_shift('+ptgl+','+pshift+') a';
    s:= s+' WHERE 1=1 and (a.tarif<>0 and a.tarif<= (select cast(diskripsi as numeric(17,0)) from master.mgalian))';
    s:= s+' and a.status not in ('+QuotedStr('3')+','+QuotedStr('3')+')';
    s:= s+' order by substr(a.no_karcis,3,15)';
    s:= s+' limit '+HitungData;

    try
    qData.Close;
    qData.SQL.Clear;
    qData.Params.Clear;
    qData.SQL.Add(s);
    qData.Open;

    qKasir.Close;
    qKasir.Open;
    qData.First;
    while not qData.Eof do begin
      qKasir.Append;
        qKasirno_karcis.AsString:= qDatano_karcis.AsString;
        qKasirid_jns_anggota.AsString:= qDataid_jns_anggota.AsString;
        qKasirid_jns_kendaraan.AsString:= qDataid_jns_kendaraan.AsString;
        qKasirno_kartu_char.AsString:= qDatano_kartu_char.AsString;
        qKasirjam_masuk.AsDateTime:= qDatajam_masuk.AsDateTime;
        qKasirjam_keluar.AsDateTime:= qDatajam_keluar.AsDateTime;
        qKasirtarif.AsFloat:= qDatatarif.AsFloat;
        qKasirdenda.AsFloat:= qDatadenda.AsFloat;
        qKasirfoto_bg_in.AsString:= qDatafoto_bg_in.AsString;
        qKasirfoto_bg_ot.AsString:= qDatafoto_bg_ot.AsString;

        qKasirnopol.AsString:= qDatanopol.AsString;
        qKasirusr_ins.AsString:= qDatausr_ins.AsString;
        qKasirusr_upd.AsString:= qDatausr_upd.AsString;
        qKasirdt_ins.AsDateTime:= qDatadt_ins.AsDateTime;
        qKasirdt_upd.AsDateTime:= qDatadt_upd.AsDateTime;
        qKasiriskeluar.AsString:= qDataiskeluar.AsString;
        qKasirno_rfid.AsString:= qDatano_rfid.AsString;
        qKasirno_gate_in.Value:= qDatano_gate_in.Value;
        qKasirno_gate_out.Value:= qDatano_gate_out.Value;
        qKasirshift.Value:= qDatashift.Value;

        qKasirstatus.AsString:= qDatastatus.AsString;
//        qKasirjns_pembayaran.AsString:= qDatajns_pembayaran.AsString;
        qKasirketerangan.AsString:= qDataketerangan.AsString;
      qKasir.Post;
      qData.Next;
    end;

    except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end;

end;

procedure TLapKasirPerShiftFrm.btnOKClick(Sender: TObject);
var
shiftLap, shiftNow : Integer;
dtLap, dtNow : Double;
begin

   if Trim(dtpStart.Text)='' then begin
      Raise Exception.Create('Tanggal harus diisi !');
   end else
   if Trim(edtShift.Text)='' then begin
      Raise Exception.Create('Shift harus diisi !');
   end else
   if Trim(edtPetugas.Text)='' then begin
      Raise Exception.Create('Petugas harus diisi !');
   end;

   DM.vSysDate.Close;
   DM.vSysDate.Open;

   shiftLap:= StrToInt(edtShift.Text);
   shiftNow:= DM.GetShift;

   dtLap:= StrtoDate(DateToStr(dtpStart.Date));
   dtNow:= StrtoDate(DateToStr(dm.vSysDatedt_server.AsDateTime));

   if DM.isSuperUser then begin
          OpenRekap;
          OpenDetail;
   end else begin
       if (dtNow>dtLap) then begin
          if (dtNow-dtLap=1) then begin
            OpenRekap;
            OpenDetail;
          end else begin
            DM.MyMsg(mmInformation,'Laporan Sudah Kadaluarsa..!', '');
            Exit;
          end;

       end else
       if (dtNow=dtLap) and (DM.GetShift=shiftLap) then begin
          DM.MyMsg(mmInformation,'Belum Waktunya Membuat Laporan Kasir..!', '');
          Exit;
       end else
       begin
          OpenRekap;
          OpenDetail;

       end;

   end;

//      OpenRekap;
//      OpenDetail;
   //nsert Laporan Kasir
   //InsertKasir;
end;

procedure TLapKasirPerShiftFrm.btnAddClick(Sender: TObject);
var
Printer: string;
begin
   try
     DM.Perusahaan.Close;
     DM.Perusahaan.Open;
     MemMasterList.Close;
     MemMasterList.Open;
     MemMasterList.Append;
     MemLogo.Close;
     MemLogo.Open;
     MemLogo.Append;
     MemMasterListnama.AsString:= DM.Perusahaannama.AsString;
     if FileExists('Images/logo.jpg') then
        MemMasterListlogo.LoadFromFile('Images/logo.jpg')
     else MemMasterListlogo.Clear;
//     MemMasterListlogo2.LoadFromFile('Images/logo2.jpg');
//     MemMasterListlogo2.LoadFromFile('Images/logo2.jpg');
     MemLogologo.LoadFromFile('Images/logo.jpg');
     MemMasterListalamat.AsString:= DM.Perusahaanalamat.AsString;
     MemMasterListtgl.AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
     MemMasterListvnow.AsString:= FormatDateTime('dd-mm-yyyy hh:mm:ss',now);
     MemMasterListsift.AsString:= edtShift.Text;
     MemMasterListuser.AsString:= DM.UserConnect;
     MemMasterListtelp.AsString:= 'Telp : '+DM.Perusahaantelp.AsString;
     MemMasterListfax.AsString:= DM.Perusahaankota.AsString;
     MemLogo.Post;
     MemMasterList.Post;

     if pgcMaster.ActivePageIndex=0 then begin
        qryGate.Close;
        qryGate.Params.ParamByName('pid').Value:= DM.gate_id;
        qryGate.Open;

        Printer:= Trim(qryGategt_print.AsString);
        frxKarcis.PrintOptions.Printer:= Printer;
        frxKarcis.PrepareReport;
        frxKarcis.PrintOptions.ShowDialog := False;
        frxKarcis.Print;
        //frxRepRekap.ShowReport;
     end
     else begin
        frxRekapKarcis.ShowReport;
     end;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;
end;

procedure TLapKasirPerShiftFrm.FormShow(Sender: TObject);
begin
   pgcMaster.ActivePageIndex:= 0;
   _Printer_GtOt:= DM.gtOutPrint;
   OpenUser;
   DM.vSysDate.Close;
   DM.vSysDate.Open;
   dtpStart.Date:= DM.vSysDatedt_server.AsDateTime;
   edtPetugas.Text:= 'SEMUA';
   edtShift.Text:= IntToStr(DM.GetShift);
end;


procedure TLapKasirPerShiftFrm.OpenUser;
begin
  try
    qUser.Close;
    qUser.Open;
    edtPetugas.Properties.Items.Clear;
    qUser.First;
    edtPetugas.Properties.Items.Add('SEMUA');
    while not qUser.Eof do begin
      edtPetugas.Properties.Items.Add(qUservuser.AsString);
      qUser.Next;
    end;
  except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
  end;
end;

procedure TLapKasirPerShiftFrm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl, dt :string;
begin

   appPath:= ExtractFilePath(Application.ExeName);
   dt:= FormatDateTime('ddmmyy',dtpStart.Date);

    if pgcMaster.ActivePageIndex=0 then begin
        ttl:='Rekap_Parkir_'+dt;

         if (qRekap.Active) and (qRekap.RecordCount>0) then begin
             ExportGridToExcel(appPath+ttl,grdExport,true,true,true,'xls');
             try
              Excel:= CreateOleObject('Excel.Application');
              Excel.Visible:=True;
              Excel.Workbooks.Open(appPath+ttl);
             except
              ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
              'Instal Aplikasi Excel terlebih dulu');
             end;
         end;

    end
    else
    if pgcMaster.ActivePageIndex=1 then begin
        ttl:='Lap_Parkir_'+dt;

         if (Detail.Active) and (Detail.RecordCount>0) then begin
             ExportGridToExcel(appPath+ttl,grdDetail,true,true,true,'xls');
             try
              Excel:= CreateOleObject('Excel.Application');
              Excel.Visible:=True;
              Excel.Workbooks.Open(appPath+ttl);
             except
              ShowMessage('Tidak ada Aplikasi Excel !'+#13#10+
              'Instal Aplikasi Excel terlebih dulu');
             end;
         end;
    end;



//   appPath:= ExtractFilePath(Application.ExeName);
//   dt:= FormatDateTime('ddmmyy',dtpStart.Date);
//
//    if pgcMaster.ActivePageIndex=0 then begin
//       ttl:= Trim('Lap_Parkir_Shift_'+edtShift.Text+'_Tgl_'+dt);
//
//      if qRekap.RecordCount=0 then
//         Exit;
//
//      if OpenDialog1.Execute then begin
//         appPath:= ExtractFilePath(OpenDialog1.InitialDir);
//
//         if (qRekap.Active) and (qRekap.RecordCount>0) then begin
//           ExportGridToExcel(appPath+ttl,grdRekap,true,true,true,'xls');
//         end;
//
//      end;
//
//    end
//    else
//    if pgcMaster.ActivePageIndex=1 then begin
//       ttl:= Trim('Lap_Parkir_Shift_'+edtShift.Text+'_Tgl_'+dt);
//
//      if Detail.RecordCount=0 then
//         Exit;
//
//      if OpenDialog1.Execute then begin
//         appPath:= ExtractFilePath(OpenDialog1.InitialDir);
//
//
//         if (Detail.Active) and (Detail.RecordCount>0) then begin
//           ExportGridToExcel(appPath+ttl,grdDetail,true,true,true,'xls');
//         end;
//
//      end;
//
//    end;
end;

procedure TLapKasirPerShiftFrm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLapKasirPerShiftFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TLapKasirPerShiftFrm.tabDetailShow(Sender: TObject);
begin
  btnExport.Visible:= True;
end;

procedure TLapKasirPerShiftFrm.tabRekapShow(Sender: TObject);
begin
  btnExport.Visible:= False;
end;

end.
