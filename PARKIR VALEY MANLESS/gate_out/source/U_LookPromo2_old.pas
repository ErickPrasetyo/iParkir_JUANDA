unit U_LookPromo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SCControl, SCStdControls, ExtCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, DB,
  ZAbstractRODataset, ZDataset, wwDialog, wwidlg, DBCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, dxmdaset,
  ZAbstractDataset, cxLabel, cxPC, cxGridBandedTableView, AdvToolBar,
  AdvToolBarStylers, AdvPanel, AdvAppStyler, kbmMemTable, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, wwdbdatetimepicker, cxSpinEdit, frxClass, frxDBSet,
  RzPanel, RzSplit, AdvOfficeImage, RzLabel, cxDBLabel;

type
  TLookPromo2Frm = class(TForm)
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
    dtpStart: TwwDBDateTimePicker;
    btnOK: TSCButton;
    cxLabel1: TcxLabel;
    frxDBPrint: TfrxDBDataset;
    frxKarcis: TfrxReport;
    MemMasterList: TkbmMemTable;
    frxDBList: TfrxDBDataset;
    MemMasterListtgl: TStringField;
    MemMasterListsift: TStringField;
    Detail: TZQuery;
    dsDetail: TDataSource;
    frxDBDetail: TfrxDBDataset;
    frxRekap: TfrxReport;
    MemMasterListuser: TStringField;
    RzSplitter1: TRzSplitter;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjns_anggota: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    grdDBTV_Detailnopol: TcxGridDBColumn;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_Detailjam_keluar: TcxGridDBColumn;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    grdDBTV_Detailjumlah: TcxGridDBColumn;
    grdDBTV_Detailusr_ins: TcxGridDBColumn;
    grdLVL_Detail: TcxGridLevel;
    RzSplitter2: TRzSplitter;
    RzLabel1: TRzLabel;
    ImageMasuk: TAdvOfficeImage;
    lblCameraGateOut: TRzLabel;
    ImageKeluar: TAdvOfficeImage;
    cxLabel3: TcxLabel;
    dtpEnd: TwwDBDateTimePicker;
    Detailno_karcis: TStringField;
    Detailid_jns_anggota: TStringField;
    Detailjam_masuk: TDateTimeField;
    Detailjam_keluar: TDateTimeField;
    Detailtarif: TFloatField;
    Detailfoto_bg_in: TStringField;
    Detailfoto_bg_ot: TStringField;
    Detailno_gate_in: TIntegerField;
    Detailno_gate_out: TIntegerField;
    Detailshift: TIntegerField;
    Detailstatus: TStringField;
    Detailnopol: TStringField;
    Detailno_kartu_char: TStringField;
    Detailpintu_keluar: TStringField;
    Detailpintu_masuk: TStringField;
    Detailid_jns_kendaraan: TStringField;
    grdDBTV_Detailshift: TcxGridDBColumn;
    grdDBTV_Detailpintu_keluar: TcxGridDBColumn;
    edtCari: TcxTextEdit;
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
    LblFoto_gateinp: TcxLabel;
    LblFoto_gateout: TcxLabel;
    btnExport: TSCButton;
    Detailno_ktp: TStringField;
    Detailnama: TStringField;
    Detailalamat: TStringField;
    Detailno_hp: TStringField;
    grdDBTV_DetailColumn1: TcxGridDBColumn;
    grdDBTV_DetailColumn2: TcxGridDBColumn;
    grdDBTV_DetailColumn3: TcxGridDBColumn;
    grdDBTV_DetailColumn4: TcxGridDBColumn;
    procedure btnOKClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure grdDBTV_DetailCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure edtCariKeyPress(Sender: TObject; var Key: Char);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
    _IPCamGtIn_Dir, _IPCamGtOt_Dir : String;
    procedure OpenDataSet;
    procedure LoadCommand;
  public
    vJenis : String;
    { Public declarations }
  end;

var
  LookPromo2Frm: TLookPromo2Frm;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, cxGridExportLink, ComObj, OleServer, ExcelXP;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  LookPromo2Frm:= TLookPromo2Frm.Create(Application);
//  LookPromo2Frm.lblHeader1.Caption:= pNamaMenu;
  LookPromo2Frm.Caption:= pNamaMenu;
  LookPromo2Frm.LoadCommand;
  LookPromo2Frm.Show;
end;

procedure TLookPromo2Frm.OpenDataSet;
var s, dt0, dt1, dtf, dti, where_str : String;
begin

   dt0:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date));
   dt1:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpEnd.Date));
   dtf:= QuotedStr('dd-mm-yyyy');
   dti:= QuotedStr('23 hours 59 min') ;

   s:= 'SELECT z.* FROM (';
   s:= s+'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar, a.tarif, ';
   s:= s+' a.foto_bg_in, got.keterangan as pintu_keluar,';
   s:= s+' gin.pintu_masuk, a.foto_bg_ot, ';
   s:= s+' a.no_gate_in, a.no_gate_out, a.shift, s.diskripsi as status, a.nopol, c.no_ktp, c.nama, c.alamat, c.no_hp, a.no_kartu_char, a.id_jns_kendaraan ';
   s:= s+' from trans.gate a ';
   s:= s+' left join master.mstatus s on s.id_status=a.status ';
   s:= s+' left join master.mgate_ot got on cast(to_number(got.id_gate,'+QuotedStr('99')+') as integer)=a.no_gate_out ';
   s:= s+' left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in, a.keterangan as pintu_masuk ';
   s:= s+' from master.mgate_in a ';
   s:= s+' join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_number(gin.id_gate,'+QuotedStr('99')+') as integer)=a.no_gate_in ';
   s:= s+' left join trans.karcis_hilang c on c.no_karcis=a.no_karcis ';
   s:= s+' where a.jam_masuk between to_timestamp('+dt0+','+dtf+') and to_timestamp('+dt1+','+dtf+') +  interval  '+dti;
   s:= s+' ) AS z ';
   s:= s+' WHERE 1=1 AND (z.no_karcis LIKE '+QuotedStr(edtCari.Text+'%')+' OR z.no_kartu_char LIKE '+QuotedStr(edtCari.Text+'%')+')';
   s:= s+' ORDER BY z.jam_masuk ';

   try
     Detail.Close;
     Detail.SQL.Clear;
     Detail.Params.Clear;
     Detail.SQL.Add(s);
     Detail.Open;
   except
    on E: Exception do
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
   end;

end;

procedure TLookPromo2Frm.LoadCommand;
begin
    try

      qryGate.Close;
      qryGate.Params.ParamByName('pid').Value:= DM.gate_id;
      qryGate.Open;

      if qryGate.RecordCount>0 then begin

        _IPCamGtIn_Dir:= Trim(qryGategt_pict_in.AsString);
        _IPCamGtOt_Dir:= Trim(qryGategt_pict_ot.AsString);

      end;
    except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
    end;
end;


procedure TLookPromo2Frm.btnOKClick(Sender: TObject);
begin
   OpenDataSet;
end;

procedure TLookPromo2Frm.btnAddClick(Sender: TObject);
begin
//   try
//     MemMasterList.Close;
//     MemMasterList.Open;
//     MemMasterList.Append;
//     MemMasterListtgl.AsString:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
//     MemMasterListsift.AsString:= IntToStr(edtShift.Value);
//     MemMasterListuser.AsString:= DM.UserConnect;
//     MemMasterList.Post;
//
//     if cbRincian.Checked then begin
////        frxKarcis.ShowReport;
//
//        frxKarcis.PrepareReport;
//        frxKarcis.PrintOptions.ShowDialog := False;
//        frxKarcis.Print;
//     end
//     else begin
////        frxRekap.ShowReport;
//
//        frxRekap.PrepareReport;
//        frxRekap.PrintOptions.ShowDialog := False;
//        frxRekap.Print;
//     end;
//   except
//    on E: Exception do
//      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//   end;
end;

procedure TLookPromo2Frm.grdDBTV_DetailCellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var dirname_out, dirname_inp, dir_folder_ot, dir_folder_in : String;
begin

    dir_folder_ot:= FormatDateTime('YYMMDD',Detailjam_keluar.AsDateTime);
    dir_folder_in:= FormatDateTime('YYMMDD',Detailjam_masuk.AsDateTime);
    dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');
    dirname_inp:= Trim(_IPCamGtIn_Dir+dir_folder_in+'\');


    LblFoto_gateinp.Caption:= dirname_inp+Detailfoto_bg_in.AsString;
    LblFoto_gateout.Caption:= dirname_out+Detailfoto_bg_ot.AsString;

  // Browse PIC Gate IN
  try
    if FileExists(dirname_inp+Detailfoto_bg_in.AsString) then  begin
       ImageMasuk.Picture.LoadFromFile(dirname_inp+Detailfoto_bg_in.AsString);

    end
    else ImageMasuk.Picture.LoadFromFile('Images\tidakadafoto.jpg');
  except
  end;

  // Browse PIC Gate OT
  try
    if FileExists(dirname_out+Detailfoto_bg_ot.AsString) then  begin
       ImageKeluar.Picture.LoadFromFile(dirname_out+Detailfoto_bg_ot.AsString);
    end
    else ImageKeluar.Picture.LoadFromFile('Images\tidakadafoto.jpg');
  except
  end;
end;

procedure TLookPromo2Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TLookPromo2Frm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TLookPromo2Frm.edtCariKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
      OpenDataSet;
end;

procedure TLookPromo2Frm.btnExportClick(Sender: TObject);
var excel : variant;
    appPath, ttl :string;
begin

     appPath:= ExtractFilePath(Application.ExeName);
         ttl:='Data_Parkir_'+FormatDateTime('ddmmmyy',dtpStart.Date)+'_S_D_'+FormatDateTime('ddmmmyy',dtpEnd.Date);

         if (Detail.Active) and (Detail.RecordCount>0) then
          begin
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

end.
