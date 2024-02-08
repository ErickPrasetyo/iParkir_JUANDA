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
    cxLabel3: TcxLabel;
    dtpEnd: TwwDBDateTimePicker;
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
    btnExport: TSCButton;
    pgcMaster: TcxPageControl;
    tabData: TcxTabSheet;
    TABkNDkELUAR: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    grdExport: TcxGrid;
    grdDBTVExport: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    grdDBTVExportColumn1: TcxGridDBColumn;
    grdDBTVExportColumn2: TcxGridDBColumn;
    grdDBTVExportColumn3: TcxGridDBColumn;
    grdDBTVExportColumn4: TcxGridDBColumn;
    grdDBTVExportColumn5: TcxGridDBColumn;
    grdDBTVExportColumn6: TcxGridDBColumn;
    grdDBTVExportColumn7: TcxGridDBColumn;
    grdDBTVExportColumn34: TcxGridDBColumn;
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
    grdDBTVExportColumn32: TcxGridDBColumn;
    grdDBTVExportColumn33: TcxGridDBColumn;
    grdLvlExport: TcxGridLevel;
    TABkNDbLMkELUAR: TcxTabSheet;
    RzSplitter2: TRzSplitter;
    RzSplitter3: TRzSplitter;
    ImageKeluar: TAdvOfficeImage;
    LblFoto_gateout: TcxLabel;
    qKendKeluar: TZQuery;
    dsqKendKeluar: TDataSource;
    qKendKeluarno_karcis: TStringField;
    qKendKeluarid_jns_anggota: TStringField;
    qKendKeluarjam_masuk: TDateTimeField;
    qKendKeluarjam_keluar: TDateTimeField;
    qKendKeluartarif: TFloatField;
    qKendKeluarfoto_bg_in: TStringField;
    qKendKeluarpintu_keluar: TStringField;
    qKendKeluarpintu_masuk: TStringField;
    qKendKeluarfoto_bg_ot: TStringField;
    qKendKeluarno_gate_in: TIntegerField;
    qKendKeluarno_gate_out: TIntegerField;
    qKendKeluarshift: TIntegerField;
    qKendKeluarstatus: TStringField;
    qKendKeluarnopol: TStringField;
    qKendKeluarno_kartu_char: TStringField;
    qKendKeluarid_jns_kendaraan: TStringField;
    qKendBlmKeluar: TZQuery;
    dsKendBlmKeluar: TDataSource;
    grdKendKeluar: TcxGrid;
    grddbtvKendKeluar: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    grdlvlKendKeluar: TcxGridLevel;
    grdKendBlmKeluar: TcxGrid;
    grddbtvKendBlmKeluar: TcxGridDBTableView;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    grdlvlKendBlmKeluar: TcxGridLevel;
    qKendBlmKeluarno_karcis: TStringField;
    qKendBlmKeluarid_jns_anggota: TStringField;
    qKendBlmKeluarjam_masuk: TDateTimeField;
    qKendBlmKeluarjam_keluar: TDateTimeField;
    qKendBlmKeluartarif: TFloatField;
    qKendBlmKeluarfoto_bg_in: TStringField;
    qKendBlmKeluarpintu_keluar: TStringField;
    qKendBlmKeluarpintu_masuk: TStringField;
    qKendBlmKeluarfoto_bg_ot: TStringField;
    qKendBlmKeluarno_gate_in: TIntegerField;
    qKendBlmKeluarno_gate_out: TIntegerField;
    qKendBlmKeluarshift: TIntegerField;
    qKendBlmKeluarstatus: TStringField;
    qKendBlmKeluarnopol: TStringField;
    qKendBlmKeluarno_kartu_char: TStringField;
    qKendBlmKeluarid_jns_kendaraan: TStringField;
    grdDetail: TcxGrid;
    grdDBTV_Detail: TcxGridDBTableView;
    grdDBTV_Detailno_karcis: TcxGridDBColumn;
    grdDBTV_Detailjns_anggota: TcxGridDBColumn;
    grdDBTV_Detailjns_kendaraan: TcxGridDBColumn;
    grdDBTV_Detailnopol: TcxGridDBColumn;
    grdDBTV_Detailjam_masuk: TcxGridDBColumn;
    grdDBTV_Detailjam_keluar: TcxGridDBColumn;
    grdDBTV_Detailstatus_palang: TcxGridDBColumn;
    grdDBTV_Detailshift: TcxGridDBColumn;
    grdDBTV_DetailColumn4: TcxGridDBColumn;
    grdLVL_Detail: TcxGridLevel;
    Detailno_karcis: TStringField;
    Detailid_jns_anggota: TStringField;
    Detailjam_masuk: TDateTimeField;
    Detailjam_keluar: TDateTimeField;
    Detailtarif: TFloatField;
    Detailfoto_bg_in: TStringField;
    Detailpintu_masuk: TStringField;
    Detailfoto_bg_ot: TStringField;
    Detailno_gate_in: TIntegerField;
    Detailno_gate_out: TIntegerField;
    Detailshift: TIntegerField;
    Detailstatus: TStringField;
    Detailnopol: TStringField;
    Detailid_jns_kendaraan: TStringField;
    Detailno_kartu_char: TStringField;
    Detailnama_member: TStringField;
    Detailtype_kendaraan: TStringField;
    Detailusr_upd: TStringField;
    RzLabel1: TRzLabel;
    procedure btnOKClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure grdDBTV_DetailCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure edtCariKeyPress(Sender: TObject; var Key: Char);
    procedure btnExportClick(Sender: TObject);
    procedure TABkNDkELUARShow(Sender: TObject);
    procedure qKendKeluarBeforeOpen(DataSet: TDataSet);
    procedure qKendBlmKeluarBeforeOpen(DataSet: TDataSet);
    procedure TABkNDbLMkELUARShow(Sender: TObject);
    procedure tabDataShow(Sender: TObject);
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
  LookPromo2Frm.pgcMaster.ActivePageIndex:= 0;
  LookPromo2Frm.pgcMaster.HideTabs:= True;
  LookPromo2Frm.dtpStart.Date:= Now;
  LookPromo2Frm.dtpEnd.Date:= Now;
  LookPromo2Frm.OpenDataSet;

end;

procedure TLookPromo2Frm.OpenDataSet;
var s, dt0, dt1, dtf, dti, where_str : String;
begin
  dt0:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpStart.Date));
  dt1:= QuotedStr(FormatDateTime('dd-mm-yyyy',dtpEnd.Date));
  dtf:= QuotedStr('dd-mm-yyyy');
  dti:= QuotedStr('23 hours 59 min') ;

  if pgcMaster.ActivePageIndex=0 then begin

       s:= 'SELECT z.* FROM (';
       s:= s+'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar, a.tarif, a.foto_bg_in, got.keterangan as pintu_masuk, ';
       s:= s+' a.foto_bg_ot, a.no_gate_in, a.no_gate_out, a.shift, s.diskripsi as status, a.nopol, a.id_jns_kendaraan, a.type_kendaraan, a.usr_upd,';
       s:= s+' (case when a.id_jns_anggota='+QuotedStr('UMUM')+' then a.no_karcis else a.no_kartu_char end) as no_kartu_char,';
       s:= s+' (case when a.id_jns_anggota='+QuotedStr('UMUM')+' then '+QuotedStr('--CASH')+' else a.nama_anggota end) as nama_member';
       s:= s+' from trans.gate a ';
       s:= s+' left join master.mstatus s on s.id_status=a.status ';
       s:= s+' left join master.mgate_ot got on cast(to_number(got.id_gate,'+QuotedStr('99')+') as integer)=a.no_gate_out ';
       s:= s+' left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in, a.keterangan as pintu_masuk ';
       s:= s+' from master.mgate_in a ';
       s:= s+' join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_number(gin.id_gate,'+QuotedStr('99')+') as integer)=a.no_gate_in ';
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
  end
  else
  if pgcMaster.ActivePageIndex=1 then begin
      try
        qKendKeluar.Close;
        qKendKeluar.Open;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;

  end
  else
  if pgcMaster.ActivePageIndex=2 then begin
      try
        qKendBlmKeluar.Close;
        qKendBlmKeluar.Open;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;
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
    dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');

    LblFoto_gateout.Caption:= dirname_out+Detailfoto_bg_ot.AsString;

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
  if pgcMaster.ActivePageIndex=0 then begin

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

  end
  else
  if pgcMaster.ActivePageIndex=1 then begin

     appPath:= ExtractFilePath(Application.ExeName);
     ttl:='Data_Parkir_Kendaraan_Sudah_keluar_'+FormatDateTime('ddmmmyy',dtpStart.Date)+'_S_D_'+FormatDateTime('ddmmmyy',dtpEnd.Date);

     if (qKendKeluar.Active) and (qKendKeluar.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdKendKeluar,true,true,true,'xls');
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
  if pgcMaster.ActivePageIndex=2 then begin

     appPath:= ExtractFilePath(Application.ExeName);
     ttl:='Data_Parkir_Kendaraan_Belum_keluar_'+FormatDateTime('ddmmmyy',dtpStart.Date)+'_S_D_'+FormatDateTime('ddmmmyy',dtpEnd.Date);

     if (qKendBlmKeluar.Active) and (qKendBlmKeluar.RecordCount>0) then
      begin
       ExportGridToExcel(appPath+ttl,grdKendBlmKeluar,true,true,true,'xls');
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

end;


procedure TLookPromo2Frm.TABkNDkELUARShow(Sender: TObject);
begin
  OpenDataSet;
end;

procedure TLookPromo2Frm.qKendKeluarBeforeOpen(DataSet: TDataSet);
var
  dt0, dt1 : String;
begin
  dt0:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
  dt1:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);

  qKendKeluar.Params.ParamByName('ptgl0').Value:= dt0;
  qKendKeluar.Params.ParamByName('ptgl1').Value:= dt1;

end;

procedure TLookPromo2Frm.qKendBlmKeluarBeforeOpen(DataSet: TDataSet);
var
  dt0, dt1 : String;
begin
  dt0:= FormatDateTime('dd-mm-yyyy',dtpStart.Date);
  dt1:= FormatDateTime('dd-mm-yyyy',dtpEnd.Date);

  qKendBlmKeluar.Params.ParamByName('ptgl0').Value:= dt0;
  qKendBlmKeluar.Params.ParamByName('ptgl1').Value:= dt1;

end;

procedure TLookPromo2Frm.TABkNDbLMkELUARShow(Sender: TObject);
begin
  OpenDataSet;
end;

procedure TLookPromo2Frm.tabDataShow(Sender: TObject);
begin
  OpenDataSet;
end;

end.
