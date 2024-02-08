unit U_Parkir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MQTT, MQTTReadThread, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  DBCtrls, RzDBNav, SCStdControls, StdCtrls, SCControl, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxControls, cxInplaceContainer, cxTLData,
  cxDBTL, cxMaskEdit, cxCheckBox, cxDBEdit, cxContainer, cxEdit, cxTextEdit,
  cxClasses, RzCommon, RzPanel, AdvPanel, AdvAppStyler,
  cxGridBandedTableView, cxGridTableView, AdvToolBar, AdvToolBarStylers,
  AdvReflectionImage, cxLookAndFeels, cxLookAndFeelPainters,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxDBData, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, RzButton, LMDCustomComponent, LMDGlobalHotKey, RzSplit, RzLabel,
  Mask, RzEdit, PasLibVlcPlayerUnit, RzDBLbl, CPort, frxClass, frxDBSet,
  Menus, AdvOfficeImage, AdvShapeButton, HotSpotImage, kbmMemTable, xmldom,
  XMLIntf, oxmldom, XMLDoc, cxPC, cxSpinEdit, cxDBLabel, cxDropDownEdit,
  Buttons, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ScktComp,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TConnectReturn = integer;
  TParkirFrm = class(TForm)
    ATBOS: TAdvToolBarOfficeStyler;
    SR: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet;
    AFS: TAdvFormStyler;
    APS: TAdvPanelStyler;
    F1: TLMDGlobalHotKey;
    F2: TLMDGlobalHotKey;
    F10: TLMDGlobalHotKey;
    qBroweGate: TZQuery;
    qBroweGateno_karcis: TStringField;
    qBroweGateid_jns_anggota: TStringField;
    qBroweGateid_jns_kendaraan: TStringField;
    qBroweGateno_kartu_char: TStringField;
    qBroweGatejam_masuk: TDateTimeField;
    qBroweGatejam_keluar: TDateTimeField;
    qBroweGatetarif: TFloatField;
    qBroweGatedenda: TFloatField;
    qBroweGatefoto_bg_in: TStringField;
    qBroweGatefoto_bg_ot: TStringField;
    qBroweGatenopol: TStringField;
    qBroweGateusr_ins: TStringField;
    qBroweGateusr_upd: TStringField;
    qBroweGateiskeluar: TStringField;
    qBroweGatejns_anggota: TStringField;
    qBroweGatelama_jam: TStringField;
    RzSplitterMain: TRzSplitter;
    RzSplitter2: TRzSplitter;
    LblGateMasuk: TRzLabel;
    lblCameraGateOut: TRzLabel;
    IpCamKeluar: TPasLibVlcPlayer;
    qBroweGatelama_menit: TFloatField;
    qBroweGatejam: TStringField;
    qBroweGatemenit: TStringField;
    qBroweGatenama_anggota: TStringField;
    ComPort: TComPort;
    F9: TLMDGlobalHotKey;
    F7: TLMDGlobalHotKey;
    frxDBPerusahaan: TfrxDBDataset;
    qTarif: TZQuery;
    qTariftarif: TFloatField;
    F3: TLMDGlobalHotKey;
    F4: TLMDGlobalHotKey;
    F8: TLMDGlobalHotKey;
    qBukaPalang: TZQuery;
    qBukaPalangno_karcis: TStringField;
    qBukaPalangid_jns_anggota: TStringField;
    qBukaPalangid_jns_kendaraan: TStringField;
    qBukaPalangno_kartu_char: TStringField;
    qBukaPalangjam_masuk: TDateTimeField;
    qBukaPalangjam_keluar: TDateTimeField;
    qBukaPalangtarif: TFloatField;
    qBukaPalangdenda: TFloatField;
    qBukaPalangfoto_bg_in: TStringField;
    qBukaPalangfoto_bg_ot: TStringField;
    qBukaPalangnopol: TStringField;
    qBukaPalangusr_ins: TStringField;
    qBukaPalangusr_upd: TStringField;
    qBukaPalangdt_ins: TDateTimeField;
    qBukaPalangdt_upd: TDateTimeField;
    qBukaPalangiskeluar: TStringField;
    ImageMasuk: TAdvOfficeImage;
    frxKarcis: TfrxReport;
    xml: TXMLDocument;
    qKarcisHilang: TZQuery;
    qExec: TZQuery;
    qSysDate: TZQuery;
    qSysDatesvrdate: TStringField;
    qBroweGatehari: TStringField;
    pnlLeft: TPanel;
    Timer1: TTimer;
    qLastGateOut: TZQuery;
    qLastGateOutno_karcis: TStringField;
    qLastGateOutno_karcis2: TStringField;
    qLastGateOutjns_kendaraan: TStringField;
    qLastGateOuttarif: TFloatField;
    dsqLastGateOut: TDataSource;
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
    qTarif2: TZQuery;
    qTarif2id_tarif: TStringField;
    qTarif2diskripsi: TStringField;
    qTarif2tarif: TFloatField;
    qBukaPalangno_rfid: TStringField;
    qBukaPalangno_gate_in: TIntegerField;
    qBukaPalangno_gate_out: TIntegerField;
    qBukaPalangshift: TIntegerField;
    qBukaPalangstatus: TStringField;
    MemBrowseGate: TkbmMemTable;
    MemBrowseGateno_karcis: TStringField;
    MemBrowseGateid_jns_anggota: TStringField;
    MemBrowseGateid_jns_kendaraan: TStringField;
    MemBrowseGateno_kartu_char: TStringField;
    MemBrowseGatejam_masuk: TDateTimeField;
    MemBrowseGatejam_keluar: TDateTimeField;
    MemBrowseGatetarif: TFloatField;
    MemBrowseGatedenda: TFloatField;
    MemBrowseGatefoto_bg_in: TStringField;
    MemBrowseGatefoto_bg_ot: TStringField;
    MemBrowseGatenopol: TStringField;
    MemBrowseGateusr_ins: TStringField;
    MemBrowseGateusr_upd: TStringField;
    MemBrowseGatedt_ins: TDateTimeField;
    MemBrowseGatedt_upd: TDateTimeField;
    MemBrowseGateiskeluar: TStringField;
    MemBrowseGatejns_anggota: TStringField;
    MemBrowseGatenama_anggota: TStringField;
    MemBrowseGatelama_jam: TStringField;
    MemBrowseGatelama_menit: TFloatField;
    MemBrowseGatehari: TStringField;
    MemBrowseGatejam: TStringField;
    MemBrowseGatemenit: TStringField;
    dsMemBrowseGate: TDataSource;
    frxDBMemBrowse: TfrxDBDataset;
    RzLabel2: TRzLabel;
    LblGateKeluar: TRzLabel;
    MemLogo: TkbmMemTable;
    MemLogologo: TBlobField;
    frxDBLogo: TfrxDBDataset;
    F6: TLMDGlobalHotKey;
    cbFotoGateIN: TcxCheckBox;
    F11: TLMDGlobalHotKey;
    qryGatejns_pembayaran: TStringField;
    MemTotal: TkbmMemTable;
    MemTotalgrand_total: TFloatField;
    MemTotalbayar: TFloatField;
    MemTotalkembali: TFloatField;
    MemTotalcara: TStringField;
    MemTotalno_kartu: TStringField;
    MemTotalbank: TStringField;
    MemTotalsubtotal: TFloatField;
    dsTotal: TDataSource;
    qCmd: TZQuery;
    qCmdid_reader_cmd: TLargeintField;
    qCmdpg_owner: TStringField;
    qCmdstx: TStringField;
    qCmdetx: TStringField;
    qCmdnew_debet: TStringField;
    qCmdecho_ping: TStringField;
    qCmdlast_trans: TStringField;
    qCmdcheck_balance: TStringField;
    qCmdjns_pembayaran: TStringField;
    qCmdreader_com_port: TStringField;
    qCmdreader_baudrate: TStringField;
    qCmdid_reader_cmd_1: TLargeintField;
    ComPort2: TComPort;
    Timer2: TTimer;
    RzPanel9: TRzPanel;
    RzPanel10: TRzPanel;
    RzPanel13: TRzPanel;
    RzPanel17: TRzPanel;
    RzPanel20: TRzPanel;
    btnMotor: TRzButton;
    RzPanel14: TRzPanel;
    btnMobil: TRzButton;
    RzPanel5: TRzPanel;
    btnBus: TRzButton;
    RzPanel22: TRzPanel;
    btnTruk: TRzButton;
    RzPanel23: TRzPanel;
    btnValet: TRzButton;
    RzPanel7: TRzPanel;
    btnPenjualanVoucher: TRzButton;
    RzPanel33: TRzPanel;
    RzPanel34: TRzPanel;
    RzPanel35: TRzPanel;
    RzPanel38: TRzPanel;
    btnCetakStruk: TRzButton;
    btnBukaSimpan: TRzButton;
    btnBayar: TRzButton;
    btnKeluar: TRzButton;
    edtTarif: TRzLabel;
    btnCetak: TRzButton;
    grdMaster: TcxGrid;
    grdDTBV_Master: TcxGridDBTableView;
    grdDTBV_Masterno_karcis: TcxGridDBColumn;
    grdDTBV_Masterjns_kendaraan: TcxGridDBColumn;
    grdDTBV_Mastertarif: TcxGridDBColumn;
    grdMasterLvl: TcxGridLevel;
    LblLastRefresh: TRzLabel;
    RzLabel11: TRzLabel;
    RzSplitter6: TRzSplitter;
    pgcBayar: TcxPageControl;
    tabBayar: TcxTabSheet;
    pnlBawah: TRzPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    LblNoKartu: TLabel;
    LblBank: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    edtNoKartu: TcxDBTextEdit;
    edtBank: TcxDBTextEdit;
    SCPanel1: TSCPanel;
    edtKembali: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    LblTotal: TcxLabel;
    LblPembayaran: TcxLabel;
    RzPanel8: TRzPanel;
    btnCancel: TSCButton;
    SCPanel2: TSCPanel;
    SCPanel5: TSCPanel;
    tabCekSaldo: TcxTabSheet;
    MemoEcho: TMemo;
    PanelTop: TRzPanel;
    SCPanel4: TSCPanel;
    cxDBLabel2: TcxDBLabel;
    btnEcho: TSCButton;
    btnCeckSaldo: TSCButton;
    btnLastTrans: TSCButton;
    edtBayar: TRzEdit;
    MemKarcisHilang: TkbmMemTable;
    dsKarcisHilang: TDataSource;
    MemKarcisHilangnopol: TStringField;
    MemKarcisHilangno_ktp: TStringField;
    MemKarcisHilangnama: TStringField;
    MemKarcisHilangalamat: TStringField;
    MemKarcisHilangno_hp: TStringField;
    qryTrfKarcisHilang: TZQuery;
    qryTrfKarcisHilangtarif: TFloatField;
    MemKarcisHilangtarif: TFloatField;
    SCPanel7: TSCPanel;
    LblStatusReader: TRzLabel;
    LblBank2: TLabel;
    LblNoKartu2: TLabel;
    MemBrowseGateno_pan: TStringField;
    MemBrowseGatebank: TStringField;
    MemBrowseGatesaldo_awal: TStringField;
    MemBrowseGatesaldo_akhir: TStringField;
    frxKarcisCashless: TfrxReport;
    btnInstansi: TRzButton;
    qCekAnggota: TZQuery;
    qCekAnggotavcount: TIntegerField;
    qAnggota: TZQuery;
    qAnggotano_kartu_char: TStringField;
    qAnggotano_kartu_hex: TStringField;
    qAnggotaid_jns_anggota: TStringField;
    qAnggotaid_jns_kendaraan: TStringField;
    qAnggotanama_anggota: TStringField;
    qAnggotaalamat: TStringField;
    qAnggotakota: TStringField;
    qAnggotanopol: TStringField;
    qAnggotaisactive: TStringField;
    qAnggotausr_ins: TStringField;
    qAnggotausr_upd: TStringField;
    qAnggotadt_ins: TDateTimeField;
    qAnggotadt_upd: TDateTimeField;
    qAnggotadt_mulai: TDateTimeField;
    qAnggotadt_akhir: TDateTimeField;
    qAnggotanomor: TIntegerField;
    F12: TLMDGlobalHotKey;
    qCekAnggotaAktif: TZQuery;
    qCekAnggotaAktifstatus: TIntegerField;
    qCekAnggotaAktiftgl_aktif: TStringField;
    qryGatebtn_valet_visible: TStringField;
    qryGateis_buka_gate_khusus: TStringField;
    qGateIN: TZQuery;
    qGateINid_gate: TStringField;
    qGateINcnt_id: TStringField;
    qGateINgt_isactive: TStringField;
    qGateINgt_print: TStringField;
    qGateINgt_loop_on: TStringField;
    qGateINgt_loop_off: TStringField;
    qGateINgt_green_btn: TStringField;
    qGateINgt_red_btn: TStringField;
    qGateINketerangan: TStringField;
    qGateINgt_cam: TStringField;
    qGateINt_open: TIntegerField;
    qGateINgt_knd: TStringField;
    qGateINgt_open_gate: TStringField;
    qGateINgt_loop_gate: TStringField;
    qGateINgt_info_ok: TStringField;
    frxKarcisVoucher: TfrxReport;
    qExec2: TZQuery;
    MemBrowseGateStruk: TkbmMemTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField3: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    dsBrowseGateStruk: TDataSource;
    qPrint: TZQuery;
    dsPrint: TDataSource;
    qPrintno_karcis: TStringField;
    qPrintjam_masuk: TDateTimeField;
    qPrintjam_keluar: TDateTimeField;
    qPrinttarif: TFloatField;
    qPrintusr_upd: TStringField;
    qPrinthari: TStringField;
    qPrintjns_kendaraan: TStringField;
    qPrintnopol: TStringField;
    qPrintjam: TStringField;
    qPrintmenit: TStringField;
    qPrintlama_jam: TStringField;
    qPrintlama_menit: TFloatField;
    btnKarcisHilang: TRzButton;
    pgcMain: TcxPageControl;
    tabMain: TcxTabSheet;
    Panel2: TPanel;
    SCButton3: TSCButton;
    SCButton4: TSCButton;
    RzLabel4: TcxLabel;
    cxLabel7: TcxLabel;
    edtNopol: TRzEdit;
    edtBarcode: TRzEdit;
    Panel3: TPanel;
    imagejenis: TImage;
    lblStatus: TRzLabel;
    SCButton1: TSCButton;
    Panel1: TPanel;
    btnExport: TSCButton;
    cxLabel1: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    tabKarcisHilang: TcxTabSheet;
    RzPanel3: TRzPanel;
    Label1: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    SCPanel3: TSCPanel;
    edtCicil: TcxDBTextEdit;
    edtKHNopol: TcxDBTextEdit;
    edtAnggota: TcxDBTextEdit;
    edtKHBayar: TcxTextEdit;
    SCPanel6: TSCPanel;
    pnlMiddle: TSCPanel;
    btnKHBatal: TSCButton;
    btnKHSimpan: TSCButton;
    btnRefresh: TSCButton;
    RzPanel4: TRzPanel;
    cxLabel8: TcxLabel;
    tabPenitipan: TcxTabSheet;
    RzPanel1: TRzPanel;
    Label19: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    edtPHNama_cust: TcxDBTextEdit;
    SCPanel8: TSCPanel;
    edtPHNo_karcis: TcxDBTextEdit;
    edtPHBayar: TcxTextEdit;
    SCPanel9: TSCPanel;
    SCPanel10: TSCPanel;
    SCButton2: TSCButton;
    SCButton5: TSCButton;
    SCButton6: TSCButton;
    RzPanel2: TRzPanel;
    cxLabel9: TcxLabel;
    dsTarifHelm: TDataSource;
    qTarifHelm: TZQuery;
    memTarifHelm: TkbmMemTable;
    memTarifHelmno_karcis: TStringField;
    memTarifHelmnama: TStringField;
    memTarifHelmtarif: TFloatField;
    qTarifHelmtarif: TFloatField;
    qPenitipanHelm: TZQuery;
    qPenitipanHelmid_penitipan: TLargeintField;
    qPenitipanHelmnopol: TStringField;
    qPenitipanHelmno_ktp: TStringField;
    qPenitipanHelmnama: TStringField;
    qPenitipanHelmalamat: TStringField;
    qPenitipanHelmno_hp: TStringField;
    qPenitipanHelmusr_ins: TStringField;
    qPenitipanHelmusr_upd: TStringField;
    TabPenjualan: TcxTabSheet;
    RzPanel6: TRzPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edtPVNamaPasien: TcxDBTextEdit;
    SCPanel11: TSCPanel;
    SCPanel12: TSCPanel;
    SCPanel13: TSCPanel;
    SCButton7: TSCButton;
    SCButton8: TSCButton;
    SCButton9: TSCButton;
    RzPanel11: TRzPanel;
    cxLabel10: TcxLabel;
    Label30: TLabel;
    Label31: TLabel;
    edtPVNoMRS: TcxDBTextEdit;
    Label32: TLabel;
    Label33: TLabel;
    edtPVNoKamar: TcxDBTextEdit;
    Label34: TLabel;
    Label35: TLabel;
    edtPVNoPol: TcxDBTextEdit;
    qJnsVoucher: TZQuery;
    qJnsVoucherdiskripsi: TStringField;
    qJnsVouchertarif: TFloatField;
    cbJnsVoucher: TcxDBLookupComboBox;
    dsJnsVoucher: TDataSource;
    btnPenitipanHelm: TRzButton;
    dsPenjualanVoucher: TDataSource;
    memPenjualanVoucher: TkbmMemTable;
    memPenjualanVoucherjns_voucher: TStringField;
    memPenjualanVouchernama_pasien: TStringField;
    memPenjualanVoucherTarif: TFloatField;
    memPenjualanVoucherno_mrs: TStringField;
    memPenjualanVoucherno_kamar: TStringField;
    memPenjualanVouchernopol: TStringField;
    qPenjualanVoucher: TZQuery;
    qPenjualanVoucherid_penjualan: TLargeintField;
    qPenjualanVouchernopol: TStringField;
    qPenjualanVoucherno_kamar: TStringField;
    qPenjualanVouchernama: TStringField;
    qPenjualanVoucherno_mrs: TStringField;
    qPenjualanVoucherno_hp: TStringField;
    qPenjualanVoucherusr_ins: TStringField;
    qPenjualanVoucherusr_upd: TStringField;
    qPenjualanVoucherdt_ins: TDateTimeField;
    qPenjualanVoucherdt_upd: TDateTimeField;
    qJnsVoucherid_voucher: TLargeintField;
    qPenjualanVoucherid_voucher: TStringField;
    edtPVTarifBayar: TcxDBTextEdit;
    memPenjualanVoucherid_voucher: TIntegerField;
    tabKarcisManual: TcxTabSheet;
    RzPanel12: TRzPanel;
    Label36: TLabel;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    SCPanel14: TSCPanel;
    edtKMNoKarcis: TcxDBTextEdit;
    SCPanel15: TSCPanel;
    SCPanel16: TSCPanel;
    SCButton10: TSCButton;
    SCButton11: TSCButton;
    SCButton12: TSCButton;
    RzPanel15: TRzPanel;
    cxLabel11: TcxLabel;
    memKarcisManual: TkbmMemTable;
    dsKarcisManual: TDataSource;
    qJnsKendaraan: TZQuery;
    edtKMJensKendaraan: TcxDBLookupComboBox;
    qJnsKendaraanjns_kendaraan: TStringField;
    qJnsKendaraanid_jns_kendaraan: TStringField;
    dsJnsKendaraan: TDataSource;
    btnKarcisManual: TRzButton;
    memKarcisManualjns_kendaraan: TStringField;
    memKarcisManualno_karcis: TStringField;
    memKarcisManualtarif: TFloatField;
    memKarcisManualid_jns_kendaraan: TStringField;
    qTarifManual: TZQuery;
    qTarifManualtarif: TFloatField;
    edtKMTarif: TcxTextEdit;
    qKarcisManual: TZQuery;
    qKarcisManualid_karcis_manual: TLargeintField;
    qKarcisManualnokarcis: TStringField;
    qKarcisManualjns_kendaraan: TStringField;
    qKarcisManualid_jns_kendaraan: TStringField;
    qKarcisManualusr_ins: TStringField;
    qKarcisManualusr_upd: TStringField;
    qKarcisManualdt_ins: TDateTimeField;
    qKarcisManualdt_upd: TDateTimeField;
    btnPendLain: TRzButton;
    tabLainLain: TcxTabSheet;
    RzPanel16: TRzPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    SCPanel17: TSCPanel;
    edtPLLditerima: TcxDBTextEdit;
    SCPanel18: TSCPanel;
    SCPanel19: TSCPanel;
    SCButton13: TSCButton;
    SCButton14: TSCButton;
    SCButton15: TSCButton;
    edtPLJumlah: TcxTextEdit;
    RzPanel18: TRzPanel;
    cxLabel12: TcxLabel;
    edtPLLdari: TcxDBTextEdit;
    memPLL: TkbmMemTable;
    dsPLL: TDataSource;
    memPLLdari: TStringField;
    memPLLditerima: TStringField;
    memPLLjumlah: TFloatField;
    qPLL: TZQuery;
    qPLLid_pendapatan_lain: TLargeintField;
    qPLLdari: TStringField;
    qPLLoleh: TStringField;
    qPLLjumlah: TFloatField;
    qPLLusr_ins: TStringField;
    qPLLusr_upd: TStringField;
    qPLLdt_ins: TDateTimeField;
    qPLLdt_upd: TDateTimeField;
    Label48: TLabel;
    Label49: TLabel;
    edtJumlah: TcxDBTextEdit;
    memPenjualanVoucherqty: TFloatField;
    T_PING: TTimer;
    btnOK2: TSCButton;
    btnOK: TSCButton;
    btnBuka: TRzButton;
    T_ERROR: TTimer;
    qFee: TZQuery;
    qFeeid_fee: TLargeintField;
    qFeenopol: TStringField;
    qFeeusr_ins: TStringField;
    qFeeusr_upd: TStringField;
    qFeedt_ins: TDateTimeField;
    qFeedt_upd: TDateTimeField;
    qFeetarif: TFloatField;
    qFeenokarcis: TStringField;
    qFeejam_masuk: TDateTimeField;
    qFeejam_keluar: TDateTimeField;
    qKarcisHilangid_hilang: TLargeintField;
    qKarcisHilangnopol: TStringField;
    qKarcisHilangno_ktp: TStringField;
    qKarcisHilangnama: TStringField;
    qKarcisHilangalamat: TStringField;
    qKarcisHilangno_hp: TStringField;
    qKarcisHilangusr_ins: TStringField;
    qKarcisHilangusr_upd: TStringField;
    qKarcisHilangdt_ins: TDateTimeField;
    qKarcisHilangdt_upd: TDateTimeField;
    qKarcisHilangtype_kendaraan: TStringField;
    qKarcisHilangtarif: TFloatField;
    CS1: TClientSocket;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure F1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnMotorClick(Sender: TObject);
    procedure btnMobilClick(Sender: TObject);
    procedure F2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnKeluarClick(Sender: TObject);
    procedure F10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBarcodeKeyPress(Sender: TObject; var Key: Char);
    procedure edtNopolKeyPress(Sender: TObject; var Key: Char);
    procedure btnBukaSimpanClick(Sender: TObject);
    procedure F9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBukaClick(Sender: TObject);
    procedure F7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBusClick(Sender: TObject);
    procedure btnTrukClick(Sender: TObject);
    procedure F3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure F4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblCameraGateOutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCetakStrukClick(Sender: TObject);
    procedure F8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPenjualanVoucherClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnValetClick(Sender: TObject);
    procedure F11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnBayarClick(Sender: TObject);
    procedure edtBayarKeyPress(Sender: TObject; var Key: Char);
    procedure edtBayarEnter(Sender: TObject);
    procedure edtBayarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MemTotalbayarChange(Sender: TField);
    procedure btnOKClick(Sender: TObject);
    procedure ComPort2RxChar(Sender: TObject; Count: Integer);
    procedure btnCeckSaldoClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnEchoClick(Sender: TObject);
    procedure btnLastTransClick(Sender: TObject);
    procedure F6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKHNopolKeyPress(Sender: TObject; var Key: Char);
    procedure btnKHBatalClick(Sender: TObject);
    procedure btnKHSimpanClick(Sender: TObject);
    procedure tabKarcisHilangShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btnInstansiClick(Sender: TObject);
    procedure F12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnKarcisHilangClick(Sender: TObject);
    procedure tabPenitipanShow(Sender: TObject);
    procedure SCButton5Click(Sender: TObject);
    procedure btnPenitipanHelmClick(Sender: TObject);
    procedure TabPenjualanShow(Sender: TObject);
    procedure SCButton8Click(Sender: TObject);
    procedure cbJnsVoucherPropertiesEditValueChanged(Sender: TObject);
    procedure btnKarcisManualClick(Sender: TObject);
    procedure tabKarcisManualShow(Sender: TObject);
    procedure edtKMJensKendaraanPropertiesEditValueChanged(
      Sender: TObject);
    procedure SCButton11Click(Sender: TObject);
    procedure btnPendLainClick(Sender: TObject);
    procedure tabLainLainShow(Sender: TObject);
    procedure SCButton14Click(Sender: TObject);
    procedure edtJumlahPropertiesEditValueChanged(Sender: TObject);

    procedure OnConnAck(Sender: TObject; ReturnCode: TConnectReturn);
    procedure T_PINGTimer(Sender: TObject);
    procedure T_ERRORTimer(Sender: TObject);

  private
    { Private declarations }
    vtag : integer;
    cb : byte;
    vjns_kendaraan, b,bx, cara_bayar, vDateLost :  String;
    tempstr, CMD_STR, ETX, STX, CMD, CSH, IDPOS, SHIFT, DLE, CPORT, BAUDPORT, cDebet, cEcho, cLast, cBalance : string;
    _IPCamLive, _ComPort, _ComBukaGtOT, _IPCamGtIN_Url, _IPCamGtOt_Dir, _Printer_GtOt, _cBayar : String;

    vtarif: Double;
    isGateClosed, isSCan, isHilang, isLost : Boolean;

    vvoucher, vmrs, vnama : String;
    vsisa : double;

    procedure MQTTClientActivated;
    
    procedure LoadCommand;
    procedure BukaGate;
    procedure Reset;
    procedure UpdateGate(cBayar:String);
    procedure Cetak(vNo:String);
    procedure GetTarif(JnsAnggota,JnsKendaraan,Barcode,Polno:String);
    function cekAngka: Boolean;
    procedure UpdateTarif;
    procedure SimpanTransaksi(res:String);

    function CekAnggota(vID: string): Boolean;
    function FormatBayar(sBayar:String):Real;
    function GetLrc(const s: string): string;
    function IsiString(str: string; tx:integer): string;
    function StringToHex(S: String): string;
    function HexToString(H: String): String;
    function HexToCommand(s: String): string;
    procedure SetCaraBayar(b:byte);

    procedure CommandToReader(s: String);
    procedure DecodeDatas(d:String);

    procedure BukaPalangAnggota(vjenis, vkendaraan, vnomor, vnopol:String);
    procedure Simpan_Update(vocer:String);
  public
    { Public declarations }
  end;

var
  ParkirFrm: TParkirFrm;
  MQTTClient: TMQTTClient;
  fRL: TBytes;

procedure ShowForm(pNamaMenu:String; ptag : integer);

implementation

uses U_DM, U_KarcisHilang, U_BayarNotaNew;

{$R *.dfm}

procedure TParkirFrm.MQTTClientActivated;
begin
  //MQTTClient := TMQTTClient.Create('192.168.1.100', 4000);
end;

procedure TParkirFrm.OnConnAck(Sender: TObject; ReturnCode: TConnectReturn);
begin
  //RzLabel2.Caption:= 'MQTT CONNECTED';
end;

procedure ShowForm(pNamaMenu:String; ptag : integer);
begin
  ParkirFrm:= TParkirFrm.Create(Application);
  try
    DM.Perusahaan.Close;
    DM.Perusahaan.Open;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
  ParkirFrm.vtag:= ptag;
  ParkirFrm.Show;
end;

procedure TParkirFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ComPort2.Connected then
     ComPort2.Close;
  if ComPort.Connected then
     ComPort.Close;

  Action:= caFree
end;

procedure TParkirFrm.FormShow(Sender: TObject);
begin
  pgcMain.ActivePageIndex:= 0;
  pgcBayar.ActivePageIndex:= 0;
  pgcMain.HideTabs:= True;

  isSCan:= False;
  isHilang:= False;
  isLost:= False;

  ShowWindow(Handle, SW_Maximize);
  ImageMasuk.Picture.LoadFromFile('Images\tidakadafoto.jpg');
  IpCamKeluar.Play('rtsp://'+_IPCamLive);
  LblStatusReader.Caption:= '';
  //edtNopol.SetFocus;
  edtBarcode.SetFocus;

  Reset;

  if btnMotor.Visible then btnMotorClick(nil)
  else
  if btnMobil.Visible then btnMobilClick(nil)
  else
  if btnBus.Visible then btnBusClick(nil)
  else
  if btnTruk.Visible then btnTrukClick(nil)
  else
  if btnValet.Visible then btnValetClick(nil);
end;

procedure TParkirFrm.LoadCommand;
begin
    try

      qryGate.Close;
      qryGate.Params.ParamByName('pid').Value:= DM.gate_id;
      qryGate.Open;

      if qryGate.RecordCount>0 then begin

          _IPCamLive:= Trim(qryGategt_cam.AsString);
          _ComPort:= Trim(qryGategt_com_port.AsString);
          _Printer_GtOt:= Trim(qryGategt_print.AsString);

          _ComBukaGtOT:= Trim(qryGategt_open_cmd.AsString);
          _IPCamGtIN_Url:= Trim(qryGategt_pict_in.AsString);
          _IPCamGtOt_Dir:= Trim(qryGategt_pict_ot.AsString);
          _cBayar:= Trim(qryGatejns_pembayaran.AsString);

         if (Trim(qryGatejns_pembayaran.AsString)<>'2') then  begin
            qCmd.Close;
            qCmd.Params.ParamByName('pid').AsString:= DM.gate_id;
            qCmd.Open;
            if qCmd.RecordCount>0 then begin
               STX:=  HexToCommand(Trim(qCmdstx.AsString));
               ETX:=  HexToCommand(Trim(qCmdetx.AsString));

               cDebet:= HexToCommand(Trim(qCmdnew_debet.AsString));
               cEcho:= HexToCommand(Trim(qCmdecho_ping.AsString));
               cLast:= HexToCommand(Trim(qCmdlast_trans.AsString));
               cBalance:= HexToCommand(Trim(qCmdcheck_balance.AsString));

               CPORT:= qCmdreader_com_port.AsString;
               BAUDPORT:=  qCmdreader_baudrate.AsString;
            end;
         end;

          SetCaraBayar(StrToInt(_cBayar));

          btnKarcisHilang.Visible:= Trim(qryGateis_karcis_hilang.AsString)='1';
          btnBuka.Visible:= Trim(qryGateis_buka_gate.AsString)='1';
          btnInstansi.Visible:= Trim(qryGateis_buka_gate_khusus.AsString)='1';

          btnMotor.Visible:= Trim(qryGatebtn_motor_visible.AsString)='1';
          btnMobil.Visible:= Trim(qryGatebtn_mobil_visible.AsString)='1';
          btnBus.Visible:= Trim(qryGatebtn_bus_visible.AsString)='1';
          btnTruk.Visible:= Trim(qryGatebtn_truck_visible.AsString)='1';
          btnValet.Visible:= Trim(qryGatebtn_valet_visible.AsString)='1';
      end;
    except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
    end;
end;

procedure TParkirFrm.F1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnMotorClick(nil);
end;

procedure TParkirFrm.UpdateTarif;
begin
   if isSCan then begin
      GetTarif(MemBrowseGateid_jns_anggota.AsString,vjns_kendaraan,MemBrowseGateno_karcis.AsString,Trim(edtNopol.Text));
      if MemBrowseGate.State=dsBrowse then
         MemBrowseGate.Edit;
      MemBrowseGatetarif.AsFloat:= qTariftarif.AsFloat;
      MemBrowseGate.Post;
   end;
end;

procedure TParkirFrm.btnMotorClick(Sender: TObject);
begin
   lblStatus.Caption:= 'MOTOR';
   if FileExists('Images\motor.png') then imagejenis.Picture.LoadFromFile('Images\motor.png')
   else imagejenis.Picture.LoadFromFile('Images\tidakadafoto.jpg');
   vjns_kendaraan:= 'R2';
   UpdateTarif;
end;

procedure TParkirFrm.btnMobilClick(Sender: TObject);
begin
   if btnMobil.Enabled= True then begin
     lblStatus.Caption:= 'MOBIL';
     if FileExists('Images\mobil.png') then imagejenis.Picture.LoadFromFile('Images\mobil.png')
     else imagejenis.Picture.LoadFromFile('Images\tidakadafoto.jpg');
     vjns_kendaraan:= 'R4';
     UpdateTarif;
   end;
end;

procedure TParkirFrm.btnBusClick(Sender: TObject);
begin
   if btnBus.Enabled= True then begin
       lblStatus.Caption:= 'BUS';
       if FileExists('Images\bus.png') then imagejenis.Picture.LoadFromFile('Images\bus.png')
       else imagejenis.Picture.LoadFromFile('Images\tidakadafoto.jpg');
       vjns_kendaraan:= 'RB';
       UpdateTarif;
   end;
end;

procedure TParkirFrm.btnTrukClick(Sender: TObject);
begin
   if btnTruk.Enabled= True then begin
       lblStatus.Caption:= 'TRUCK';
       if FileExists('Images\truck.png') then imagejenis.Picture.LoadFromFile('Images\truck.png')
       else imagejenis.Picture.LoadFromFile('Images\tidakadafoto.jpg');
       vjns_kendaraan:= 'RT';
       UpdateTarif;
   end;
end;

procedure TParkirFrm.btnValetClick(Sender: TObject);
begin
   if btnValet.Enabled= True then begin
       lblStatus.Caption:= 'PARKIR VALET';
       if FileExists('Images\valet.png') then imagejenis.Picture.LoadFromFile('Images\valet.png')
       else imagejenis.Picture.LoadFromFile('Images\tidakadafoto.jpg');
       vjns_kendaraan:= 'RV';
       UpdateTarif;
   end;
end;

procedure TParkirFrm.F2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  btnMobilClick(nil);
end;

procedure TParkirFrm.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TParkirFrm.F10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR vnoKarcis, s, dirname_out, dir_folder_ot : String;
begin

   if Trim(edtNopol.Text)='' then begin
      Raise Exception.Create('No Pol Kendaraan Harus di isi !');
   end;

          DM.StartTransaction;
          try
            vnoKarcis:= trim(DM.vNoKarcis);

            qKarcisHilang.Close;
            qKarcisHilang.Open;
            qKarcisHilang.Append;
            qKarcisHilangnopol.AsString:= edtNopol.Text;
            qKarcisHilangno_ktp.AsString:= '-';
            qKarcisHilangnama.AsString:= '-';
            qKarcisHilangalamat.AsString:= '-';
            qKarcisHilangno_hp.AsString:= '-';
            qKarcisHilangusr_ins.AsString:= DM.UserConnect;
            qKarcisHilangusr_upd.AsString:= DM.UserConnect;
            //qKarcisHilangno_karcis.AsString:= vnoKarcis;
            qKarcisHilang.Post;

            DM.vSysDate.Close;
            DM.vSysDate.Open;

            dir_folder_ot:= FormatDateTime('YYMMDD',DM.vSysDatedt_server.AsDateTime);
            dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');


           // Capture Ip Cam
           if not DirectoryExists(_IPCamGtOt_Dir+dir_folder_ot) then
              CreateDir(_IPCamGtOt_Dir+dir_folder_ot);

           IpCamKeluar.SnapShot(ChangeFileExt(Trim(dirname_out+vnoKarcis), '.jpeg'),476,278);
           LblGateKeluar.Caption:= Trim(dirname_out+vnoKarcis);


            // Capture Ip Cam
//            IpCamKeluar.SnapShot(ChangeFileExt(Trim(_IPCamGtOt_Dir+vnoKarcis) , '.jpeg'));

            s:= 'select trans.fn_proc_ins_kartu_hilang('+QuotedStr(vnoKarcis)+',';
            s:= s+QuotedStr(lblStatus.Caption)+','+QuotedStr(edtNopol.Text)+',';
            s:= s+QuotedStr(DM.UserConnect)+','+QuotedStr(DM.gate_id)+','+DM.UserShift+')';

            DM.PrepareQuery(qExec);
            DM.ExecQuery(qExec,s);

            qKarcisHilang.ApplyUpdates;
            qKarcisHilang.CommitUpdates;

            DM.CommitTransaction;

            Cetak(vnoKarcis);

            Reset;
            Application.ProcessMessages;

          except
            on E: Exception do begin
              DM.RollbackTransaction;
              DM.MyMsg(mmError,'Error has been encountered !',E.Message);
              Exit;
            end
          end;

          isHilang:= True;
          btnBayarClick(nil);

//          Sleep(1000);

          Sleep(1000);
          BukaGate;
          Application.ProcessMessages;

end;

procedure TParkirFrm.GetTarif(JnsAnggota,JnsKendaraan,Barcode,Polno:String);
begin
  try
   // Get Tarif
   qTarif.Close;
   qTarif.Params.ParamByName('pjns_anggota').Value:= JnsAnggota;
   qTarif.Params.ParamByName('pjns_kendaraan').Value:= JnsKendaraan;
   qTarif.Params.ParamByName('pnokarcis').Value:= Trim(trim(Barcode)+'|'+Trim(edtNopol.Text));
   qTarif.Open;
   edtTarif.Caption:= 'Rp. '+FormatFloat(',0', qTariftarif.AsFloat);
   vtarif:= qTariftarif.AsFloat;
  except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
  end;
end;

function TParkirFrm.cekAngka: Boolean;
var
  key:  string;
begin
  Result:= False;
  key:= Trim(Copy(edtNopol.Text,1,1));
  if ( (key >= '0') and (key <= '9') ) then begin
     Result := True;
//     ShowMessage('angka');
  end
end;

procedure TParkirFrm.Reset;
begin
  MemBrowseGate.Close;
  MemBrowseGate.Open;
  MemBrowseGate.EmptyTable;
  edtTarif.Caption:= 'Rp. 0';
  vtarif:= 0;
  ImageMasuk.Picture.LoadFromFile('Images\tidakadafoto.jpg');
  edtBarcode.Text:= '';
  edtNopol.Text:= '';
  edtTarif.Blinking:=False;
  cara_bayar:= _cBayar;
  LblPembayaran.Caption:= 'CARABAYAR';
  edtNopol.SetFocus;
end;

procedure TParkirFrm.UpdateGate(cBayar:String);
var s : string;
begin
//     ShowMessage(DM.gate_id);
//     ShowMessage(_ID_gate);
     // normal
     s:= 'UPDATE trans.gate ';
     s:= s+' SET id_jns_kendaraan= '+QuotedStr(vjns_kendaraan);
     s:= s+', jam_keluar= CAST(current_timestamp AS timestamp without time zone) ';
     s:= s+', foto_bg_ot='+QuotedStr(Trim(MemBrowseGateno_karcis.AsString+'.jpeg'));
     s:= s+', nopol='+QuotedStr(MemBrowseGatenopol.AsString);
     s:= s+', tarif='+FloatToStr(vtarif);
     s:= s+', usr_upd='+QuotedStr(DM.UserConnect);
     s:= s+', iskeluar='+QuotedStr('1');
     s:= s+', shift='+ IntToStr(DM.GetShift);
     s:= s+', no_gate_out= CAST(to_number('+QuotedStr(DM.gate_id)+','+QuotedStr('99')+') AS integer)';
     s:= s+', jns_pembayaran = '+QuotedStr(cBayar);
     s:= s+'  WHERE no_karcis='+QuotedStr(MemBrowseGateno_karcis.AsString);

     try
       DM.PrepareQuery(qExec);
       DM.ExecQuery(qExec,s);
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
     end;
end;

procedure TParkirFrm.edtBarcodeKeyPress(Sender: TObject; var Key: Char);
var dirname_out, dirname_inp, dir_folder_ot, dir_folder_in : String;
begin
  if key=#13 then begin
       vtarif:= 0;
       isSCan:= True;

       if lblStatus.Caption='' then begin
          edtBarcode.Text:= '';
          edtBarcode.SetFocus;
          raise Exception.Create('Harap Pilih Jenis Kendaraan Terlebih Dahulu !');
       end;

      try
        DM.Perusahaan.Close;
        DM.Perusahaan.Open;

       qBroweGate.Close;
       qBroweGate.Params.ParamByName('no_karcis').Value:= edtBarcode.Text;
       qBroweGate.Params.ParamByName('pno_kartu').Value:= edtBarcode.Text;
       qBroweGate.Open;
      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
      end;

      // Jenis Kendaraan Otomatis Berdasarkan No Karcis (Gate IN)
      qGateIN.Close;
      qGateIN.Params.ParamByName('pid').Value:= copy(edtBarcode.Text,1,2);
      qGateIN.Open;
      if qGateINgt_knd.AsString='R2' then begin
        btnMotorClick(nil);
      end else
      if qGateINgt_knd.AsString='R4' then begin
        btnMobilClick(nil);
      end;

     if qBroweGate.RecordCount>0 then begin
//         ShowMessage('record ketemu');

         try
           MemBrowseGate.DisableControls;
           try
             MemBrowseGate.Close;
             MemBrowseGate.Open;
             MemBrowseGate.EmptyTable;
             MemBrowseGate.LoadFromDataSet(qBroweGate, [mtcpoAppend]);

             DM.vSysDate.Close;
             DM.vSysDate.Open;

             // Get Tarif
             GetTarif(qBroweGateid_jns_anggota.AsString,vjns_kendaraan,qBroweGateno_karcis.AsString,Trim(edtNopol.Text));
             if Length(qBroweGateno_kartu_char.AsString)>0 then begin
                  if (qBroweGatenopol.IsNull) or (Trim(qBroweGatenopol.AsString)='') then
                  else edtNopol.Text:= qBroweGatenopol.AsString;
             end;

             MemBrowseGate.Edit;
             MemBrowseGatejam_keluar.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
             MemBrowseGatetarif.AsFloat:= vtarif;
             if cekAngka then MemBrowseGatenopol.AsString:= Trim('W'+edtNopol.Text)
             else  MemBrowseGatenopol.AsString:= Trim(edtNopol.Text);
             MemBrowseGatejam.AsString:= qBroweGatehari.AsString+' Hari '+qBroweGatejam.AsString+' Jam '+qBroweGatemenit.AsString+' Menit';
             MemBrowseGate.Post;
           except
              on E: Exception do begin
                DM.MyMsg(mmError,'Error has been encountered !',E.Message)
              end
           end;
         finally
           MemBrowseGate.EnableControls;
           edtTarif.Blinking:= True;
         end;

        if cbFotoGateIN.Checked then begin

            DM.vSysDate.Close;
            DM.vSysDate.Open;

            dir_folder_ot:= FormatDateTime('YYMMDD',DM.vSysDatedt_server.AsDateTime);
            dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');

            dir_folder_in:= FormatDateTime('YYMMDD',MemBrowseGatejam_masuk.AsDateTime);
            dirname_inp:= Trim(_IPCamGtIN_Url+dir_folder_in+'\');

           // Capture Ip Cam
           if not DirectoryExists(_IPCamGtOt_Dir+dir_folder_ot) then
              CreateDir(_IPCamGtOt_Dir+dir_folder_ot);

           IpCamKeluar.SnapShot(ChangeFileExt(Trim(dirname_out+MemBrowseGateno_karcis.AsString), '.jpeg'),476,278);
           LblGateKeluar.Caption:= Trim(dirname_out+MemBrowseGateno_karcis.AsString);

           try
            LblGateMasuk.Caption:= dirname_inp+qBroweGatefoto_bg_in.AsString;
            if FileExists(dirname_inp+MemBrowseGatefoto_bg_in.AsString) then
                ImageMasuk.Picture.LoadFromFile(dirname_inp+qBroweGatefoto_bg_in.AsString)
             else ImageMasuk.Picture.LoadFromFile('Images\tidakadafoto.jpg');
           except

           end;
        end;

//      btnCetakStruk.SetFocus;
      btnBayarClick(nil);
     end else begin
        ShowMessage('Mohon Maaf, BARCODE '+edtBarcode.Text+' tidak dikenali !');
        edtBarcode.Text:= '';
        edtBarcode.SetFocus;
        isSCan:= False;
     end;
  end;
end;

function TParkirFrm.CekAnggota(vID: string): Boolean;
begin
  Result:= False;
  try
     qCekAnggota.Close;
     qCekAnggota.Params.ParamByName('pkartu').AsString:= trim(vID);
     qCekAnggota.Open;
     if qCekAnggotavcount.AsInteger>0 then
        Result:= True;
  except
  end;
end;

procedure TParkirFrm.BukaPalangAnggota(vjenis, vkendaraan, vnomor, vnopol: String);
var vnoKarcis, dirname_out, dir_folder_ot : String;
begin
    vnoKarcis:= trim(DM.vNoKarcis);

    qBukaPalang.Close;
    qBukaPalang.Open;
    qBukaPalang.Append;
    qBukaPalangno_karcis.AsString:= vnoKarcis;
    qBukaPalangid_jns_anggota.AsString:= vjenis;
    qBukaPalangid_jns_kendaraan.AsString:= vkendaraan;
    qBukaPalangno_kartu_char.AsString:= vnomor;
    qBukaPalangnopol.AsString:= vnopol;
    qBukaPalangjam_masuk.AsDateTime:= Now;
    qBukaPalangjam_keluar.AsDateTime:= Now;
    qBukaPalangtarif.AsFloat:= 0;
    qBukaPalangfoto_bg_ot.AsString:= Trim(vnoKarcis+'.jpeg');
    qBukaPalangdenda.AsFloat:= 1;
    qBukaPalangusr_ins.AsString:= DM.UserConnect;
    qBukaPalangusr_upd.AsString:= DM.UserConnect;
    qBukaPalangiskeluar.AsString:= '1';
    qBukaPalangno_rfid.Clear;
    qBukaPalangno_gate_in.AsInteger:= 0;
    qBukaPalangno_gate_out.AsInteger:= StrToInt(DM.gate_id);
    qBukaPalangshift.AsInteger:= StrToInt(DM.UserShift);
    qBukaPalangstatus.AsString:= '0';

    qBukaPalang.Post;

    DM.vSysDate.Close;
    DM.vSysDate.Open;

    dir_folder_ot:= FormatDateTime('YYMMDD',DM.vSysDatedt_server.AsDateTime);
    dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');

   // Capture Ip Cam
   if not DirectoryExists(_IPCamGtOt_Dir+dir_folder_ot) then
      CreateDir(_IPCamGtOt_Dir+dir_folder_ot);

   IpCamKeluar.SnapShot(ChangeFileExt(Trim(dirname_out+vnoKarcis), '.jpeg'),476,278);
   LblGateKeluar.Caption:= Trim(dirname_out+vnoKarcis);

    // Reset Semua Status
    Reset;
    Application.ProcessMessages;

    Sleep(1000);
    BukaGate;
    Application.ProcessMessages;
end;

procedure TParkirFrm.edtNopolKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then begin
     qCekAnggotaAktif.Close;
     qCekAnggotaAktif.Params.ParamByName('pkartu').Value:= edtNopol.Text;
     qCekAnggotaAktif.Open;
     if qCekAnggotaAktifstatus.Value=1 then begin

         if CekAnggota(edtNopol.Text) then begin
            qAnggota.Close;
            qAnggota.Params.ParamByName('pno').Value:= edtNopol.Text;
            qAnggota.Open;

            //BukaPalangAnggota(qAnggotaid_jns_anggota.AsString, qAnggotaid_jns_kendaraan.AsString, qAnggotano_kartu_char.AsString, qAnggotanopol.AsString);
         end
         else begin
//            edtBarcode.SetFocus;
//         end;
//
//     end else begin
//        ShowMessage('Mohon Maaf, KARTU MEMBER sudah EXPIRED Per Tgl. '+qCekAnggotaAktiftgl_aktif.AsString+'! Harap menghubungi Operator !');
//        edtNopol.Text:= '';
//        edtNopol.SetFocus;
         end;
     end else begin
        edtBarcode.SetFocus;
     end;
     edtBarcode.SetFocus;
  end;
end;
//  if key=#13 then begin
////     qCekAnggotaAktif.Close;
////     qCekAnggotaAktif.Params.ParamByName('pkartu').Value:= edtNopol.Text;
////     qCekAnggotaAktif.Open;
////     if qCekAnggotaAktifstatus.Value=1 then begin
////
////         if CekAnggota(edtNopol.Text) then begin
////            qAnggota.Close;
////            qAnggota.Params.ParamByName('pno').Value:= edtNopol.Text;
////            qAnggota.Open;
////
////            BukaPalangAnggota(qAnggotaid_jns_anggota.AsString, qAnggotaid_jns_kendaraan.AsString, qAnggotano_kartu_char.AsString, qAnggotanopol.AsString);
////         end
////         else begin
//            edtBarcode.SetFocus;
////         end;
////
////     end else begin
////        ShowMessage('Mohon Maaf, KARTU MEMBER sudah EXPIRED Per Tgl. '+qCekAnggotaAktiftgl_aktif.AsString+'! Harap menghubungi Operator !');
////        edtNopol.Text:= '';
////        edtNopol.SetFocus;
////     end;
//  end
//end;

procedure TParkirFrm.Cetak(vNo:String);
begin
//  ShowMessage('CETAK BROW');
  try
        DM.Perusahaan.Close;
        DM.Perusahaan.Open;

        DM.L_Perusahaan.Close;
        DM.L_Perusahaan.Open;
        MemLogo.Close;
        MemLogo.Open;
        MemLogo.Append;
        if FileExists('images\LOGO.jpg') then
           MemLogologo.LoadFromFile('images\LOGO.jpg')
        else MemLogologo.Clear;
        MemLogo.Post;

        qPrint.Close;
        qPrint.Params.ParamByName('no_karcis').Value:= vNo;
        qPrint.Open;
        if MemBrowseGate.State=dsBrowse then
           MemBrowseGate.Edit;
        MemBrowseGateid_jns_kendaraan.AsString:= trim(lblStatus.Caption);
        MemBrowseGateusr_upd.AsString:= DM.UserConnect;

        MemBrowseGateno_karcis.AsString:= qPrintno_karcis.AsString;
        MemBrowseGatenopol.AsString:= qPrintnopol.AsString;
        MemBrowseGatejam_masuk.AsDateTime:= qPrintjam_masuk.AsDateTime;
        MemBrowseGatejam_keluar.AsDateTime:= qPrintjam_keluar.AsDateTime;
        MemBrowseGatehari.AsString:= qPrinthari.AsString;
        MemBrowseGatetarif.AsFloat:= qPrinttarif.AsFloat;
        MemBrowseGatejam.AsString:= qPrinthari.AsString+' Hari '+qPrintjam.AsString+' Jam '+qPrintmenit.AsString+' Menit';

        MemBrowseGate.Post;

        if cb=1 then begin
          frxKarcisCashless.PrintOptions.Printer:= _Printer_GtOt;
          frxKarcisCashless.PrepareReport;
          frxKarcisCashless.PrintOptions.ShowDialog := False;
          frxKarcisCashless.Print;
        end
        else
        if cb=2 then begin
          frxKarcis.PrintOptions.Printer:= _Printer_GtOt;
          frxKarcis.PrepareReport;
          frxKarcis.PrintOptions.ShowDialog := False;
          frxKarcis.Print;
        end
        else
        if cb=3 then begin
          frxKarcisVoucher.PrintOptions.Printer:= _Printer_GtOt;
          frxKarcisVoucher.PrepareReport;
          frxKarcisVoucher.PrintOptions.ShowDialog := False;
          frxKarcisVoucher.Print;
        end;
  except
    on E: Exception do begin
      DM.MyMsg(mmError,'Error has been encountered !',E.Message)
    end
  end;
end;

procedure TParkirFrm.SimpanTransaksi(res:String);
var s, idPos, shift, noTrans, nomi, dataTrans, tgl, pan, saldo1, saldo2, bank :
String;
 LRes : integer;
begin
    LRes:= length(res)-184; // (panjang respon dikurangi Data Rincian & CHECKSUM + DLE ETX

    idPos:= Trim(copy(res,9,10));
    shift:= Trim(copy(res,19,2));

    noTrans:= Trim(copy(res,25,40));
    nomi:= Trim(copy(res,65,16));

    tgl:= Trim(copy(res,81,28));
    pan := Trim(copy(res,109,32));
    saldo1:= Trim(copy(res,141,16));
    saldo2:= Trim(copy(res,157,16));
    bank:= Trim(copy(res,173,6));
    dataTrans:= Trim(copy(res,179,LRes));

//    // CEK DATA
//    Memo1.Lines.Add('ALL DATA --------------------');
//    Memo1.Lines.Add(res);
//    Memo1.Lines.Add('--------------------');
//    Memo1.Lines.Add('DATA TRANS --------------------');
//    Memo1.Lines.Add(dataTrans);

    s:='INSERT INTO trans.reader_log (';
    s:= s+' no_trans, ';
    s:= s+' id_pos,' ;
    s:= s+' shift, ';
    s:= s+' nominal, ';
    s:= s+' dt_trans, ';
    s:= s+' pan, ';
    s:= s+' saldo_awal, ';
    s:= s+' saldo_akhir, ';
    s:= s+' bank, ';
    s:= s+' data_trans )';

    s:= s+' VALUES (';

    s:= s+QuotedStr(noTrans )+', ';
    s:= s+QuotedStr(idPos)+', ';
    s:= s+QuotedStr(shift)+', ';
    s:= s+QuotedStr(nomi)+', ';
    s:= s+QuotedStr(tgl)+', ';
    s:= s+QuotedStr(pan)+', ';
    s:= s+QuotedStr(saldo1)+', ';
    s:= s+QuotedStr(saldo2)+', ';
    s:= s+QuotedStr(bank)+', ';
    s:= s+QuotedStr(dataTrans)+');';

    try
     DM.PrepareQuery(qExec);
     DM.ExecQuery(qExec,s);
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
end;

procedure TParkirFrm.F9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  btnOKClick(btnOK);
end;

procedure TParkirFrm.btnBukaClick(Sender: TObject);
var vnoKarcis, dirname_out, dir_folder_ot : String;
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;

  if (edtNopol.Text='') or (edtBarcode.Text='') then begin
    Sleep(1000);
    BukaGate;
    Application.ProcessMessages;
  end
  else begin

    // Update Tarif Buka Palang Manual
    qTarif2.Close;
    qTarif2.Params.ParamByName('pid_tarif').Value:= '1';
    qTarif2.Open;

    vnoKarcis:= trim(edtBarcode.Text);

    qBukaPalang.Close;
    qBukaPalang.Params.ParamByName('pno_karcis').Value:= vnoKarcis;
    qBukaPalang.Open;

    qBukaPalang.Edit;
    qBukaPalangnopol.AsString:= edtNopol.Text;
    qBukaPalangid_jns_anggota.AsString:= 'MEMBER';
    qBukaPalangid_jns_kendaraan.AsString:= DM.GateKnd;
    //qBukaPalangjam_masuk.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
    qBukaPalangjam_keluar.AsDateTime:= DM.vSysDatedt_server.AsDateTime;
    qBukaPalangtarif.AsFloat:= qTarif2tarif.AsFloat;
    qBukaPalangfoto_bg_ot.AsString:= Trim(vnoKarcis+'.jpeg');
    qBukaPalangdenda.AsFloat:= 1;
    qBukaPalangusr_ins.AsString:= DM.UserConnect;
    qBukaPalangusr_upd.AsString:= DM.UserConnect;
    qBukaPalangiskeluar.AsString:= '1';
    qBukaPalangno_rfid.Clear;
    //qBukaPalangno_gate_in.AsInteger:= 0;
    qBukaPalangno_gate_out.AsInteger:= StrToInt(DM.gate_id);
    qBukaPalangshift.AsInteger:= StrToInt(DM.UserShift);
    qBukaPalangstatus.AsString:= '2';
    qBukaPalang.Post;



    dir_folder_ot:= FormatDateTime('YYMMDD',DM.vSysDatedt_server.AsDateTime);
    dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');

   // Capture Ip Cam
   if not DirectoryExists(_IPCamGtOt_Dir+dir_folder_ot) then
      CreateDir(_IPCamGtOt_Dir+dir_folder_ot);

   IpCamKeluar.SnapShot(ChangeFileExt(Trim(dirname_out+vnoKarcis), '.jpeg'),476,278);
   LblGateKeluar.Caption:= Trim(dirname_out+vnoKarcis);

  // Capture Ip Cam
//    IpCamKeluar.SnapShot(ChangeFileExt(_IPCamGtOt_Dir +vnoKarcis, '.jpeg'));

    Cetak(vnoKarcis);

    // Reset Semua Status
    Reset;
    Application.ProcessMessages;

    Sleep(1000);
    BukaGate;
    Application.ProcessMessages;
  end;

end;

procedure TParkirFrm.BukaGate;
begin
//  MQTTClientActivated;
//  MQTTClient.Connect;
//  try
//    MQTTClient.Publish('cmd/client01', Trim(':OPEN2;'));
//  except
//      on E: Exception do begin
//        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
//      end
//  end;
//  Sleep(1000);
//  MQTTClient.Disconnect;

  try
    ComPort.Close;
    ComPort.Port:= _ComPort;
    ComPort.Open;
    ComPort.WriteStr(':T1;'#13);
    ComPort.Close;
    // Reply
    ComPort.Port:= _ComPort;
    ComPort.Open;
    ComPort.WriteStr(':T1;'#13);
    ComPort.Close;
  except
      on E: Exception do begin
        DM.MyMsg(mmError,'Error has been encountered !',E.Message)
      end
  end;
end;

procedure TParkirFrm.F7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnBukaClick(nil);
end;

procedure TParkirFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose:= DM.MyMsg(mmConfirmation,'Anda ingin keluar dari Form Pencatatan Parkir ?','')=100;
end;

procedure TParkirFrm.F3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnBusClick(nil);
end;

procedure TParkirFrm.F4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnTrukClick(nil);
end;

procedure TParkirFrm.F6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  btnValetClick(nil);
end;

procedure TParkirFrm.lblCameraGateOutClick(Sender: TObject);
begin
   try
    IpCamKeluar.Play('rtsp://'+_IPCamLive);
   except
   end;
end;

procedure TParkirFrm.FormCreate(Sender: TObject);
begin
  LoadCommand;
end;

procedure TParkirFrm.F8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnOKClick(btnOK2);
end;

procedure TParkirFrm.btnPenjualanVoucherClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex:= 3;
end;

procedure TParkirFrm.Timer1Timer(Sender: TObject);
begin
  DM.vSysDate.Close;
  DM.vSysDate.Open;
//    qryGetShift.Close;
//  qryGetShift.Open;
  try
  qLastGateOut.DisableControls;
  qLastGateOut.Close;
  // HVA
//  qLastGateOut.Params.ParamByName('puser').Value:= DM.UserConnect;
//  qLastGateOut.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',Now);
//  qLastGateOut.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',Now);

  //SAFELOCK
  qLastGateOut.Params.ParamByName('pusr').Value:= DM.UserConnect;
  qLastGateOut.Params.ParamByName('ptgl0').Value:= FormatDateTime('dd/mm/yyyy',DM.vSysDatedt_server.AsDateTime);
  qLastGateOut.Params.ParamByName('ptgl1').Value:= FormatDateTime('dd/mm/yyyy',DM.vSysDatedt_server.AsDateTime);
  qLastGateOut.Params.ParamByName('pshift').Value:= DM.GetShift;

//  ShowMessage( DM.UserConnect+#13#10+
//              FormatDateTime('dd/mm/yyyy',DM.vSysDatedt_server.AsDateTime)+#13#10+
//              FormatDateTime('dd/mm/yyyy',DM.vSysDatedt_server.AsDateTime)+#13#10+
//               DM.UserShift);

  //test
//  qLastGateOut.Params.ParamByName('pusr').Value:= DM.UserConnect;
//  qLastGateOut.Params.ParamByName('ptgl0').Value:= '01/09/2019';
//  qLastGateOut.Params.ParamByName('ptgl1').Value:= '01/09/2019';
//  qLastGateOut.Params.ParamByName('pshift').Value:= '1';

  qLastGateOut.Open;
  LblLastRefresh.Caption:= 'Last Refresh '+FormatDateTime('HH:MM:SS',Now);
  finally
    qLastGateOut.EnableControls;
  end;
//  Timer1.Enabled:= False;
//  Timer1.Enabled:= True;
end;

procedure TParkirFrm.btnCetakClick(Sender: TObject);
begin
   Cetak(qLastGateOutno_karcis.AsString);
end;

procedure TParkirFrm.F11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var vnoKarcis: String;
begin
//   btnBukaSimpanClick(nil);
      vnoKarcis:= trim(DM.vNoKarcis);
      GetTarif('UMUM','R4',vnoKarcis,'');

      try

//        MemBrowseGate.Close;
//        MemBrowseGate.Open;
//        MemBrowseGate.Append;
//        MemBrowseGateno_karcis.AsString:= vnoKarcis;
//        MemBrowseGatenopol.AsString:= edtNopol.Text;
//        MemBrowseGatetarif.AsFloat:= qTariftarif.AsFloat;
//        MemBrowseGatejam_masuk.AsDateTime:= qPrintjam_masuk.AsDateTime;
//        MemBrowseGatejam_keluar.AsDateTime:= Now;
//        MemBrowseGate.Post;

        MemBrowseGate.Edit;
        MemBrowseGatejam_keluar.AsDateTime:= Now;
        MemBrowseGateusr_upd.AsString:= DM.UserConnect;
        MemBrowseGate.Post;

        qFee.Close;
        qFee.Open;
        qFee.Append;
        qFeenokarcis.AsString:= vnoKarcis;
        qFeenopol.AsString:= MemBrowseGateno_karcis.AsString;
        qFeejam_masuk.AsDateTime:= MemBrowseGatejam_masuk.AsDateTime;
        qFeejam_keluar.AsDateTime:= MemBrowseGatejam_keluar.AsDateTime;
        qFeetarif.AsFloat:= MemBrowseGatetarif.AsFloat;
        qFeeusr_ins.AsString:= DM.UserConnect;
        qFeeusr_upd.AsString:= DM.UserConnect;
        qFee.Post;

      except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
          Exit;
        end
      end;

      frxKarcis.PrintOptions.Printer:= _Printer_GtOt;
      frxKarcis.PrepareReport;
      frxKarcis.PrintOptions.ShowDialog := False;
      frxKarcis.Print;

      Sleep(1000);
      BukaGate;
      Application.ProcessMessages;


      Reset;

end;

procedure TParkirFrm.btnBayarClick(Sender: TObject);
var f : TBayarNotaNewFrm;
begin
  // Kartu hilang
//   if isHilang then begin
//      pgcMain.ActivePageIndex:=0;
//   end
//   else
   if ((Trim(edtBarcode.Text)='') AND (MemBrowseGate.RecordCount=0)) then begin
      edtBarcode.Text:= '';
      edtBarcode.SetFocus;
      ShowMessage('Mohon Maaf, BARCODE '+edtBarcode.Text+' Tidak Dikenali !');
      Exit;

   end;

   if pgcBayar.ActivePageIndex<>0 then begin
      pgcBayar.ActivePageIndex:= 0;
   end;

   if cara_bayar='0' then begin
       f:= TBayarNotaNewFrm.Create(Application);
       try
         if f.ShowModal=mrOK then begin
            cb:= StrToInt(f.x);
            vvoucher:= f.vvoucher;
            vmrs:= f.vmrs;
            vnama:= f.vnama;
            vsisa:= f.vsisa;
         end;
       finally
          f.Free;
       end;
   end
   else cb:= StrToInt(cara_bayar);

      try
        MemTotal.Close;
        MemTotal.Open;
        MemTotal.Append;
        MemTotalsubtotal.Value:= vtarif;
        MemTotalbank.Clear;
        MemTotalno_kartu.Clear;
        MemTotalbayar.Value:=0;
        LblTotal.Caption:= FormatCurr('#,###',vtarif);
        edtBayar.Text:= FloatToStr(vtarif);
        MemTotal.Post;

        case cb of
          1 : begin//cashless
             SetCaraBayar(cb);
             LblStatusReader.Caption:= 'Silahkan Tempel Kartu Anda';
             CommandToReader('DEBET');
          end;
          2 : begin //tunai
             SetCaraBayar(cb);
             //edtBayar.SetFocus;
          end;
          3 : begin //voucher
             SetCaraBayar(cb);
             edtBayar.SetFocus;
          end;
        end;

      except
        on E: Exception do
          DM.MyMsg(mmError,'Error has been encountered !',E.Message);
      end;
end;

procedure TParkirFrm.btnBukaSimpanClick(Sender: TObject);
begin

//   if ((Trim(edtBarcode.Text)='') AND (MemBrowseGate.RecordCount=0)) then begin
//      edtBarcode.Text:= '';
//      edtBarcode.SetFocus;
//      ShowMessage('Mohon Maaf, BARCODE '+edtBarcode.Text+' tidak dikenali !');
//
//   end else begin
      //update record
//      UpdateGate(');
//      Sleep(1000);

      // Reset Semua Status
      Reset;
      Application.ProcessMessages;
      Sleep(1000);

      // Buka Gate
      BukaGate;
      Application.ProcessMessages;

      isSCan:= False;
//   end;
end;

procedure TParkirFrm.btnCetakStrukClick(Sender: TObject);
begin
//   if ((Trim(edtBarcode.Text)='') AND (MemBrowseGate.RecordCount=0)) then begin
//      edtBarcode.Text:= '';
//      edtNopol.SetFocus;
//      ShowMessage('Mohon Maaf, BARCODE '+edtBarcode.Text+' tidak dikenali !');
//   end else begin

          // Update NOPOL
//          UpdateGate;
//          Application.ProcessMessages;
//          Sleep(1000);

          Cetak(MemBrowseGateno_karcis.AsString);
          Application.ProcessMessages;
          Sleep(1000);

          // Reset Semua Status
          Reset;
          Application.ProcessMessages;
          Sleep(1000);

         // Buka Gate
          BukaGate;
          Application.ProcessMessages;

          isSCan:= False;
//   end;
end;

///-------------------------------------------------------------------------------------------------pembayaran--------------------------------------------------------

function TParkirFrm.GetLrc(const s: string): string;
var i, LCR : byte;
    x,xx : String;
begin
     result:= '';
     LCR := $00;
     for i := 1 to length(s) do begin
         if (i mod 2 <> 0) then begin
           x:='';
           x:= s[i];
         end
         else begin      // jika habis dibagi 2
           xx:= x+s[i] ; // holding 2 char
           LCR:= LCR xor StrToInt('$'+xx);
         end;
     end;
   result := IntToHex(LCR,2);
end;

function TParkirFrm.HexToCommand(s: String): string;
var i : integer;
    x,xx, rx: String;
begin
     result:= '';
     rx:= '';
     xx:= '';

     for i := 1 to length(s) do begin
         if (i mod 2 <> 0) then begin
           x:='';
           x:= s[i];
         end
         else begin      // jika habis dibagi 2
           xx:= x+s[i] ; // holding 2 char
           rx:= rx+ chr(StrToInt('$'+xx));
         end;
     end;
   result := rx;
end;

function TParkirFrm.IsiString(str: string; tx:integer): string;
var
 i,x : integer;
 rx : String;
begin
  result := '';
  x:= (tx-length(str));
  for  i:=1 to x do
     rx:= trim(rx)+'0';

  result:=  rx+str;
end;

function TParkirFrm.StringToHex(S: String): string;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (S) do
    Result:= Result+IntToHex(ord(S[i]),2);
end;

function TParkirFrm.HexToString(H: String): String;
var I: Integer;
begin
  Result:= '';
  for I := 1 to length (H) div 2 do
    Result:= Result+Char(StrToInt('$'+Copy(H,(I-1)*2+1,2)));
end;

function TParkirFrm.FormatBayar(sBayar:String):Real;
begin
  Result:= 0;

  sBayar := StringReplace(sBayar,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sBayar := StringReplace(sBayar,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR

  Result:= StrToFloat(sBayar);
end;

procedure TParkirFrm.edtBayarKeyPress(Sender: TObject; var Key: Char);
begin
 //selain angka (0..9)& backspace( #8 ), input dimatikan
  if not(key in['0'..'9',#8,#13,#27]) then
    key:=#0;

  if Key=#13 then btnOK2.SetFocus;

//      SelectNext(ActiveControl, True, True);
  if Key=#27 then
    SelectNext(ActiveControl, False, True);
end;

procedure TParkirFrm.edtBayarEnter(Sender: TObject);
begin
    if (MemTotal.State<>dsBrowse)  then
        MemTotal.Edit;
end;

procedure TParkirFrm.edtBayarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sRupiah: string;
  iRupiah: Currency;
  fKembali: real;
//  vRupiah: Currency;
begin
  //ribuan --> currency ( menyesuaikan setting windows )
  sRupiah := edtBayar.Text;
  sRupiah := StringReplace(sRupiah,',','',[rfReplaceAll,rfIgnoreCase]); // hilangkan char koma , pemisah //ribuan selain IDR
  sRupiah := StringReplace(sRupiah,'.','',[rfReplaceAll,rfIgnoreCase]); //remove char titik .    pemisah //ribuan IDR
  iRupiah := StrToCurrDef(sRupiah,0) ; // convert srupiah ke currency

  //currency --> format ribuan
  edtBayar.Text := FormatCurr('#,###',iRupiah);
  edtBayar.SelStart := length(edtBayar.text);

  if length(edtBayar.text)>0 then
     edtKembali.Caption:= FormatCurr('#,###;(#,###)',vtarif-iRupiah);
end;

procedure TParkirFrm.MemTotalbayarChange(Sender: TField);
begin
    MemTotalkembali.AsFloat:= MemTotalgrand_total.AsFloat-MemTotalbayar.AsFloat;
end;

procedure TParkirFrm.btnOKClick(Sender: TObject);
var
  vBayar : String;
begin
  if edtBayar.Text='' then
     vBayar:= '0'
  else vBayar:= edtBayar.Text;

   if MemTotalgrand_total.AsFloat>FormatBayar(vBayar) then begin
      DM.MyMsg(mmInformation,'Total Pembayaran < Total Tarif','');
      edtBayar.SetFocus;
      Exit;
   end;

   if FormatBayar(vBayar)>=1000000 then begin
      if DM.MyMsg(mmConfirmation,'JUMLAH PEMBAYARAN LEBIH DARI SATU JUTA APAKAH BENAR ?','')=101 then begin
         edtBayar.SetFocus;
        Exit;
      End;
   end;

  if (MemTotal.State=dsBrowse)  then
      MemTotal.Edit;

  if vtarif=0 then begin
     MemTotalgrand_total.AsFloat:= 0;
     MemTotalbayar.AsFloat:= 0;
  end else begin
     MemTotalgrand_total.AsFloat:= FormatBayar(LblTotal.Caption);
     MemTotalbayar.AsFloat:= FormatBayar(edtBayar.Text);
  end;
  MemTotalcara.AsString:= IntToStr(cb);

  if (MemTotal.State<>dsBrowse)  then
        MemTotal.Post;

   UpdateGate(MemTotalcara.AsString);
   Application.ProcessMessages;
   Sleep(1000);

   MemTotal.Close;
   LblTotal.Caption:= '';
   edtBayar.Text:= '';
   edtKembali.Caption:= '';
   LblStatusReader.Caption:='';

   if Sender=btnOK then btnCetakStrukClick(nil);
   if Sender=btnOK2 then btnBukaSimpanClick(nil);
end;

procedure TParkirFrm.CommandToReader(s: String);
var STR_CSH, DATAS, NOKARCIS, NOMINAL, DATE_TIME : STRING;
begin
  IDPOS:= HexToCommand(StringToHex(IsiString(DM.gate_id,5)));
  SHIFT:= HexToCommand(StringToHex(DM.UserShift));

//  MemoEcho.Lines.Clear;
  if s='LOST' then begin
       ComPort2.WriteStr(tempstr);
  end
  else begin
        if s='DEBET' then begin
           try
              CMD:= cDebet;
              DLE:= '002A';

              NOKARCIS:= StringToHex(IsiString(MemBrowseGateno_karcis.AsString,20));
              NOMINAL:= StringToHex(FormatFloat('00000000',MemBrowseGatetarif.AsFloat));

              if isLost then begin
                  DATE_TIME:= vDateLost;
              end
              else begin
                  DM.vSysDate.Close;
                  DM.vSysDate.Open;
                  DATE_TIME:= StringToHex(FormatDateTime('ddmmyyyyhhnnss',DM.vSysDatedt_server.AsDateTime));
              end;
                  vDateLost:= DATE_TIME;

              DATAS:= Trim(NOKARCIS+NOMINAL+DATE_TIME);

              MemoEcho.Lines.Add('CMD : '+DATAS) ;

              STR_CSH:= StringToHex(IsiString(DM.gate_id,5))+StringToHex(DM.UserShift)+DLE+NOKARCIS+NOMINAL+DATE_TIME;
              CSH:= HexToCommand(GetLrc(STR_CSH));

              tempstr:= STX+
                        CMD+
                        IDPOS+   // id pos
                        SHIFT+                                       //
                        HexToCommand(DLE)+
                        HexToCommand(DATAS)+
                        CSH+
                        ETX;
           except
              on E: Exception do
                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
           end

        end
        else
        if s='ECHO' then begin
              CMD:= cEcho;
              STR_CSH:= StringToHex(IsiString(DM.gate_id,5))+StringToHex(DM.UserShift)+'0000';
              CSH:= HexToCommand(GetLrc(STR_CSH));

              tempstr:= STX+
                        CMD+
                        IDPOS+
                        SHIFT+
                        chr($00)+chr($00)+
                        CSH+
                        ETX;

        end
        else
        if s='LAST_TRANS' then begin
              CMD:= cLast;
              STR_CSH:= StringToHex(IsiString(DM.gate_id,5))+StringToHex(DM.UserShift)+'0000';
              CSH:= HexToCommand(GetLrc(STR_CSH));

              tempstr:= STX+
                        CMD+
                        IDPOS+
                        SHIFT+
                        chr($00)+chr($00)+
                        CSH+
                        ETX;

        end
        else
        if s='CEK_SALDO' then begin
              CMD:= cBalance;
              STR_CSH:= StringToHex(IsiString(DM.gate_id,5))+StringToHex(DM.UserShift)+'0000';
              CSH:= HexToCommand(GetLrc(STR_CSH));

              tempstr:= STX+
                        CMD+
                        IDPOS+
                        SHIFT+
                        chr($00)+chr($00)+
                        CSH+
                        ETX;
        end ;

//        MemoEcho.Lines.Add('Command :----------------------------------');
//        MemoEcho.Lines.Add(tempstr);
//        MemoEcho.Lines.Add('end Command :----------------------------------');

        try
          ComPort2.Close;
          ComPort2.Port:= CPORT;
          ComPort2.Open;
          ComPort2.WriteStr(tempstr);
        except
          on E: Exception do
            DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        end;
  end;
//  ComPort2.Close;
end;

procedure TParkirFrm.ComPort2RxChar(Sender: TObject; Count: Integer);
var a, STX, x,xhex : String;
    i : integer;
begin
//  ETX:= chr($10)+chr($20);

    ComPort2.ReadStr(a,i);
    x:= StringReplace(a,'LF','',[rfReplaceAll, rfIgnoreCase]);
    xhex:= StringToHex(x);
//    b := b+xhex;
    Application.ProcessMessages;

    MemoEcho.Lines.Add('Response : -----------------');
    MemoEcho.Lines.Add(xhex);
    MemoEcho.Lines.Add('End Response : -----------------');
    Application.ProcessMessages;

    DecodeDatas(xhex);
    Application.ProcessMessages;
end;

procedure TParkirFrm.DecodeDatas(d:String);
VAR s, sx, nok, sAwalStr,  sAkhirStr, nomStr, tgl, bank, pan :  string;
    nomNum, sAwalNum, sAkhirNum : single;
    c: byte;
begin
//  for  c:=0  to MemoEcho.Lines.Count  do
//     sx:= sx+MemoEcho.Lines.Text;
   sx:=d;
   MemoEcho.Lines.Add('Decode Data....!!!, Please Wait !!!');

   if copy(sx,5,2)='01' then begin   //debet
      if copy(sx,7,2)='00' then begin
         nok:= HexToString(copy(sx,25,40));
         tgl:= HexToString(copy(sx,81,28));
         pan := HexToString(copy(sx,109,32));

         nomStr:= HexToString(copy(sx,65,16));
         nomNum:= StrToFloat(HexToString(copy(sx,65,16)));

         sAwalStr:= HexToString(copy(sx,141,16));
         sAwalNum:= StrToFloat(HexToString(copy(sx,141,16)));

         sAkhirStr:= HexToString(copy(sx,157,16));
         sAkhirNum:= StrToFloat(HexToString(copy(sx,157,16)));


         if HexToString(copy(sx,173,6))='MDR' then bank:= 'MANDIRI'
         else bank := HexToString(copy(sx,173,6));

         MemoEcho.Lines.Add('-------------------------------');
         MemoEcho.Lines.Add('TRANSAKSI DEBET');
         MemoEcho.Lines.Add('NO Karcis : '+nok);
         MemoEcho.Lines.Add('Tgl : '+tgl);
         MemoEcho.Lines.Add('NO KARTU : '+pan);
         MemoEcho.Lines.Add('Bank : '+bank);
         MemoEcho.Lines.Add('Saldo Awal : '+ FormatFloat(',0', sAwalNum));
         MemoEcho.Lines.Add('Saldo Nominal : '+ FormatFloat(',0',nomNum));
         MemoEcho.Lines.Add('Saldo Akhir : '+ FormatFloat(',0', sAkhirNum));
         MemoEcho.Lines.Add('-------------------------------');
         LblStatusReader.Caption:= 'Transaksi Sukses...!!!';

         try
           try
             // update mMemBrowseGate--> untuk cetak data
            if MemBrowseGate.State=dsBrowse then
               MemBrowseGate.Edit;
            MemBrowseGateno_pan.AsString:= pan;
            MemBrowseGatebank.AsString:= bank;
            MemBrowseGatesaldo_awal.AsString:= FormatFloat(',0', sAwalNum);
            MemBrowseGatesaldo_akhir.AsString:= FormatFloat(',0', sAkhirNum);
            MemBrowseGate.Post;

             //simpan transaksi
            SimpanTransaksi(sx);
            
           except
              on E: Exception do
                DM.MyMsg(mmError,'Error has been encountered !',E.Message);
           end;

         finally
           edtNoKartu.Text:= pan;
           edtBank.Text:= bank;
           edtBayar.Text:= FormatFloat(',0',nomNum);
           edtKembali.Caption:= '0';
           if isLost then isLost:= False;
           btnOK2.SetFocus;
         end;
      end
      else
      if copy(sx,7,2)='02' then begin
           LblStatusReader.Caption:= 'Silahkan Tempel Kartu kemnbali..!!!';
           Application.ProcessMessages;
           isLost:= True;
           Application.ProcessMessages;
//           Timer2.Enabled:= True;
           CommandToReader('LOST');
           Application.ProcessMessages;
      end
      else
      if copy(sx,7,2)='04' then begin
         LblStatusReader.Caption:= 'Response Time Out...!!!';

          if DM.MyMsg(mmConfirmation,'Apakah Anda Akan Mengulangi Transaksi ?','Response Time Out')=100 then begin
             LblStatusReader.Caption:= '';
             Application.ProcessMessages;
             Timer2.Enabled:= true;
          end
          else begin
             edtBayar.Text:= '';
             edtKembali.Caption:= '0';
             LblStatusReader.Caption:= '';
             Exit;
          end;

      end
      else
      if copy(sx,7,2)='03' then begin
         LblStatusReader.Caption:= 'Saldo Tidak Cukup...!!!';
         Application.ProcessMessages;

         MemoEcho.Lines.Add('-------------------------------');
         MemoEcho.Lines.Add('Saldo Tidak Cukup');
         MemoEcho.Lines.Add('-------------------------------');

         edtBayar.Text:= '';
         edtKembali.Caption:= '';

      end
      else
//      if ((copy(sx,7,2)='08') and isMandiriSukses) then begin
      if (copy(sx,7,2)='08') then begin
         LblStatusReader.Caption:= 'Mandiri kurang dari 10 detik...!!!';
         Application.ProcessMessages;

         MemoEcho.Lines.Add('-------------------------------');
         MemoEcho.Lines.Add('Mandiri kurang dari 10 detik');
         MemoEcho.Lines.Add('-------------------------------');
         Application.ProcessMessages;

         edtBayar.Text:= '';
         edtKembali.Caption:= '';
      end
      else
      if copy(sx,7,2)='09' then begin
         LblStatusReader.Caption:= 'BNI expired...!!!';
         Application.ProcessMessages;

         MemoEcho.Lines.Add('-------------------------------');
         MemoEcho.Lines.Add('BNI expired');
         MemoEcho.Lines.Add('-------------------------------');
         Application.ProcessMessages;

         edtBayar.Text:= '';
         edtKembali.Caption:= '';

      end
//       ShowMessage('No. Karcis : '+nok+#13#10+'Tanggal : '+tgl+#13#10+'PAN : '+pan+#13#10+
//       'Saldo Awal : '+sawal+#13#10+'Nominal : '+nom+#13#10+'Saldo Akhir : '+sakhir+#13#10+'Bank :' +bank );
   end
   else
   if copy(sx,5,2)='02' then begin     //echo
       pan := HexToString(copy(sx,25,4));
       bank := HexToString(copy(sx,29,6));

       MemoEcho.Lines.Add('-------------------------------');
       MemoEcho.Lines.Add('ECHO');
       MemoEcho.Lines.Add('Version : '+pan);
       MemoEcho.Lines.Add('SVN-Version : '+bank);
       MemoEcho.Lines.Add('-------------------------------');

   end
   else
   if copy(sx,5,2)='03' then begin      //last trans
       pan := HexToString(copy(sx,25,4));
       bank := HexToString(copy(sx,29,6));

       MemoEcho.Lines.Add('-------------------------------');
       MemoEcho.Lines.Add('TRANSAKSI TERAKHIR');
       MemoEcho.Lines.Add('Version : '+pan);
       MemoEcho.Lines.Add('SVN-Version : '+bank);
       MemoEcho.Lines.Add('-------------------------------');

   end
   else
   if copy(sx,5,2)='04' then begin      //cek saldo
       pan := HexToString(copy(sx,25,32));
       sAkhirStr:= FormatFloat(',0',StrToFloat(HexToString(copy(sx,63,16))));
       bank := HexToString(copy(sx,57,6));

       MemoEcho.Lines.Add('-------------------------------');
       MemoEcho.Lines.Add('CEK SALDO');
       MemoEcho.Lines.Add('NO KARTU : '+pan);
       MemoEcho.Lines.Add('Bank : '+bank);
       MemoEcho.Lines.Add('Saldo : '+sAkhirStr);
       MemoEcho.Lines.Add('-------------------------------');
   end;
//   LblStatusReader.Caption:= '';
end;

procedure TParkirFrm.Timer2Timer(Sender: TObject);
begin
  btnBayarClick(nil);
  Timer2.Enabled:= False;
end;

procedure TParkirFrm.btnCeckSaldoClick(Sender: TObject);
begin
  CommandToReader('CEK_SALDO');
  MemoEcho.Lines.Add('Silahkan Tempelkan Kartu Anda');
end;

procedure TParkirFrm.btnEchoClick(Sender: TObject);
begin
  CommandToReader('ECHO');
  MemoEcho.Lines.Add('Cek Koneksi / Echo');
end;

procedure TParkirFrm.btnLastTransClick(Sender: TObject);
begin
  CommandToReader('LAST_TRANS');
  MemoEcho.Lines.Add('Cek Transaksi Terakhir');
end;

procedure TParkirFrm.SetCaraBayar(b:byte);
begin
     case b of
       1 : begin // cashless
             LblPembayaran.Caption:= 'CASHLESS';
             edtBank.Visible:= True;
             edtNoKartu.Visible:= True;
             LblBank.Visible:= True;
             LblNoKartu.Visible:= True;
             LblBank2.Visible:= True;
             LblNoKartu2.Visible:= True;
             cara_bayar:= '1';
           end;

       2 : begin  // tunai
             LblPembayaran.Caption:= 'TUNAI';
             edtBank.Visible:= False;
             edtNoKartu.Visible:= False;
             LblBank.Visible:= False;
             LblNoKartu.Visible:= False;
             LblBank2.Visible:= False;
             LblNoKartu2.Visible:= False;
             cara_bayar:= '2';
           end;

       3 : begin// voucher
             LblPembayaran.Caption:= 'VOUCHER';
             edtBank.Enabled:= True;
             edtNoKartu.Enabled:= True;
             LblBank.Visible:= True;
             LblNoKartu.Visible:= True;
             LblBank2.Visible:= True;
             LblNoKartu2.Visible:= True;
             cara_bayar:= '3';

             Simpan_Update(vvoucher);
           end;
     end ;
end;

procedure TParkirFrm.Simpan_Update(vocer:String);
var s,s1 : string;
begin
     edtBank.Text:= vnama;
     edtNoKartu.Text:= vocer;
     LblTotal.Caption:= '';
     edtBayar.Text:= FloatToStr(0);
     edtTarif.Caption:= 'Rp. 0';
     vtarif:= 0;

     // update mMemBrowseGate--> untuk cetak data
     if MemBrowseGate.State=dsBrowse then
        MemBrowseGate.Edit;
     MemBrowseGatetarif.AsFloat:= 0;
     MemBrowseGateno_pan.AsString:= vvoucher;
     MemBrowseGatebank.AsString:= vnama;
     MemBrowseGatesaldo_akhir.AsString:= FormatFloat(',0', vsisa-1);
     MemBrowseGate.Post;

     DM.vSysDate.Close;
     DM.vSysDate.Open;

     // Update Isi Slot Voucher Parkir
     s:= 'UPDATE Voucher ';
     s:= s+' SET Isi= '+QuotedStr(MemBrowseGatesaldo_akhir.AsString);
     s:= s+'  WHERE No_Voucher='+QuotedStr(vocer);

     // Tambah Transaksi Voucher Parkir
     s1:='INSERT INTO trVoucher (';
     s1:= s1+' No_Voucher, ';
     s1:= s1+' TglInput )';
     s1:= s1+' VALUES (';
     s1:= s1+QuotedStr(vocer )+', ';
     s1:= s1+QuotedStr(FormatDateTime('YYYY-MM-DD HH:MM:SS', DM.vSysDatedt_server.AsDateTime))+');';

     try
       DM.PrepareQuery(qExec2);
       DM.ExecQuery(qExec2,s);
       DM.PrepareQuery(qExec2);
       DM.ExecQuery(qExec2,s1);
     except
        on E: Exception do begin
          DM.MyMsg(mmError,'Error has been encountered !',E.Message)
        end
     end;
end;


procedure TParkirFrm.btnCancelClick(Sender: TObject);
begin
   MemTotal.Close;
   LblTotal.Caption:= '';
   edtBayar.Text:= '';
   edtKembali.Caption:= '';
   cara_bayar:= '0';
   LblPembayaran.Caption:= '';
   edtNopol.SetFocus;
end;

procedure TParkirFrm.edtKHNopolKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
      SelectNext(ActiveControl, True, True);
    if Key=#27 then
      SelectNext(ActiveControl, False, True);
end;

procedure TParkirFrm.btnKHBatalClick(Sender: TObject);
begin
   if isHilang then isHilang:= False;
   pgcMain.ActivePageIndex:=0;
end;

procedure TParkirFrm.btnKHSimpanClick(Sender: TObject);
VAR vnoKarcis, s, dirname_out, dir_folder_ot : String;
begin
          DM.StartTransaction;
          try
            vnoKarcis:= trim(DM.vNoKarcis);

            qKarcisHilang.Close;
            qKarcisHilang.Open;
            qKarcisHilang.Append;
            qKarcisHilangnopol.AsString:= MemKarcisHilangnopol.AsString;
            qKarcisHilangno_ktp.AsString:= MemKarcisHilangno_ktp.AsString;
            qKarcisHilangnama.AsString:= MemKarcisHilangnama.AsString;
            qKarcisHilangalamat.AsString:= MemKarcisHilangalamat.AsString;
            qKarcisHilangno_hp.AsString:= MemKarcisHilangno_hp.AsString;
            qKarcisHilangusr_ins.AsString:= DM.UserConnect;
            qKarcisHilangusr_upd.AsString:= DM.UserConnect;
            //qKarcisHilangno_karcis.AsString:= vnoKarcis;
            qKarcisHilang.Post;

            DM.vSysDate.Close;
            DM.vSysDate.Open;

            dir_folder_ot:= FormatDateTime('YYMMDD',DM.vSysDatedt_server.AsDateTime);
            dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');


           // Capture Ip Cam
           if not DirectoryExists(_IPCamGtOt_Dir+dir_folder_ot) then
              CreateDir(_IPCamGtOt_Dir+dir_folder_ot);

           IpCamKeluar.SnapShot(ChangeFileExt(Trim(dirname_out+vnoKarcis), '.jpeg'),476,278);
           LblGateKeluar.Caption:= Trim(dirname_out+vnoKarcis);


            // Capture Ip Cam
//            IpCamKeluar.SnapShot(ChangeFileExt(Trim(_IPCamGtOt_Dir+vnoKarcis) , '.jpeg'));

            s:= 'select trans.fn_proc_ins_kartu_hilang('+QuotedStr(vnoKarcis)+',';
            s:= s+QuotedStr(lblStatus.Caption)+','+QuotedStr(MemKarcisHilangnopol.AsString)+',';
            s:= s+QuotedStr(DM.UserConnect)+','+QuotedStr(DM.gate_id)+','+DM.UserShift+')';

            DM.PrepareQuery(qExec);
            DM.ExecQuery(qExec,s);

            qKarcisHilang.ApplyUpdates;
            qKarcisHilang.CommitUpdates;

            DM.CommitTransaction;

          except
            on E: Exception do begin
              DM.RollbackTransaction;
              DM.MyMsg(mmError,'Error has been encountered !',E.Message);
              Exit;
            end
          end;

          isHilang:= True;
          btnBayarClick(nil);

//          Sleep(1000);
          BukaGate;
end;

procedure TParkirFrm.tabKarcisHilangShow(Sender: TObject);
begin
    edtKHBayar.Properties.ReadOnly:= True;
    try
      qryTrfKarcisHilang.Close;
      qryTrfKarcisHilang.Params.ParamByName('p').AsString:= Trim('2');
      qryTrfKarcisHilang.Open;
      MemKarcisHilang.Close;
      MemKarcisHilang.Open;
      MemKarcisHilang.Append;
      MemKarcisHilangtarif.AsFloat:= qryTrfKarcisHilangtarif.AsFloat;
      edtKHBayar.Text:= FormatCurr('#,###',qryTrfKarcisHilangtarif.AsFloat);
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
    edtKHNopol.SetFocus;
end;

procedure TParkirFrm.btnInstansiClick(Sender: TObject);
var vnoKarcis, dirname_out, dir_folder_ot : String;
begin
    // Update Tarif Buka Palang Manual
    qTarif2.Close;
    qTarif2.Params.ParamByName('pid_tarif').Value:= '5';
    qTarif2.Open;

    vnoKarcis:= trim(DM.vNoKarcis);

    qBukaPalang.Close;
    qBukaPalang.Open;
    qBukaPalang.Append;
    qBukaPalangno_karcis.AsString:= vnoKarcis;
    qBukaPalangid_jns_anggota.AsString:= 'TNI_POLRI';
    qBukaPalangid_jns_kendaraan.AsString:= DM.GateKnd;
    qBukaPalangjam_masuk.AsDateTime:= Now;
    qBukaPalangjam_keluar.AsDateTime:= Now;
    qBukaPalangtarif.AsFloat:= qTarif2tarif.AsFloat;
    qBukaPalangfoto_bg_ot.AsString:= Trim(vnoKarcis+'.jpeg');
    qBukaPalangdenda.AsFloat:= 1;
    qBukaPalangusr_ins.AsString:= DM.UserConnect;
    qBukaPalangusr_upd.AsString:= DM.UserConnect;
    qBukaPalangiskeluar.AsString:= '1';
    qBukaPalangno_rfid.Clear;
    qBukaPalangno_gate_in.AsInteger:= 0;
    qBukaPalangno_gate_out.AsInteger:= StrToInt(DM.gate_id);
    qBukaPalangshift.AsInteger:= StrToInt(DM.UserShift);
    qBukaPalangstatus.AsString:= '2';

    qBukaPalang.Post;

    DM.vSysDate.Close;
    DM.vSysDate.Open;

    dir_folder_ot:= FormatDateTime('YYMMDD',DM.vSysDatedt_server.AsDateTime);
    dirname_out:= Trim(_IPCamGtOt_Dir+dir_folder_ot+'\');

   // Capture Ip Cam
   if not DirectoryExists(_IPCamGtOt_Dir+dir_folder_ot) then
      CreateDir(_IPCamGtOt_Dir+dir_folder_ot);

   IpCamKeluar.SnapShot(ChangeFileExt(Trim(dirname_out+vnoKarcis), '.jpeg'),476,278);
   LblGateKeluar.Caption:= Trim(dirname_out+vnoKarcis);

  // Capture Ip Cam
//    IpCamKeluar.SnapShot(ChangeFileExt(_IPCamGtOt_Dir +vnoKarcis, '.jpeg'));

    // Reset Semua Status
    Reset;
    Application.ProcessMessages;

    Sleep(1000);
    BukaGate;
    Application.ProcessMessages;
end;

procedure TParkirFrm.F12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   btnInstansiClick(nil);
end;

procedure TParkirFrm.btnKarcisHilangClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex:= 1;
end;

procedure TParkirFrm.tabPenitipanShow(Sender: TObject);
begin
    edtPHBayar.Properties.ReadOnly:= True;
    try
      qTarifHelm.Close;
      qTarifHelm.Open;
      memTarifHelm.Close;
      memTarifHelm.Open;
      memTarifHelm.Append;
      memTarifHelmtarif.AsFloat:= qTarifHelmtarif.AsFloat;
      edtPHBayar.Text:= FormatCurr('#,###',qTarifHelmtarif.AsFloat);
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
    edtPHNo_karcis.SetFocus;
end;

procedure TParkirFrm.SCButton5Click(Sender: TObject);
VAR vnoKarcis, s, dirname_out, dir_folder_ot : String;
begin
          DM.StartTransaction;
          try
            qPenitipanHelm.Close;
            qPenitipanHelm.Open;
            qPenitipanHelm.Append;

            qPenitipanHelmnama.AsString:= memTarifHelmnama.AsString;
            qPenitipanHelmnopol.AsString:= memTarifHelmno_karcis.AsString;
            qPenitipanHelmusr_ins.AsString:= DM.UserConnect;
            qPenitipanHelmusr_upd.AsString:= DM.UserConnect;
            qPenitipanHelm.Post;

            vnoKarcis:= trim(memTarifHelmno_karcis.AsString);

            DM.vSysDate.Close;
            DM.vSysDate.Open;

            s:= 'select trans.fn_proc_ins_penitipan_helm('+QuotedStr(vnoKarcis)+',';
            s:= s+QuotedStr('Penitipan Helm')+','+QuotedStr(memTarifHelmno_karcis.AsString)+',';
            s:= s+QuotedStr(DM.UserConnect)+','+QuotedStr(DM.gate_id)+','+DM.UserShift+')';

            DM.PrepareQuery(qExec);
            DM.ExecQuery(qExec,s);

            qPenitipanHelm.ApplyUpdates;
            qPenitipanHelm.CommitUpdates;

            DM.CommitTransaction;

          except
            on E: Exception do begin
              DM.RollbackTransaction;
              DM.MyMsg(mmError,'Error has been encountered !',E.Message);
              Exit;
            end
          end;

          isHilang:= True;
          btnBayarClick(nil);

end;

procedure TParkirFrm.btnPenitipanHelmClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex:= 2;
end;

procedure TParkirFrm.TabPenjualanShow(Sender: TObject);
begin
    //edtPVTarifBayar.Properties.ReadOnly:= True;
    try
      qJnsVoucher.Close;
      qJnsVoucher.Open;
      memPenjualanVoucher.Close;
      memPenjualanVoucher.Open;
      memPenjualanVoucher.Append;
      memPenjualanVoucherjns_voucher.AsString:= '';
      memPenjualanVoucherTarif.AsFloat:= 0;
      memPenjualanVoucherqty.AsFloat:= 1;
      edtPVTarifBayar.Text:= FormatCurr('#,###',0);
      Label48.Visible:= False;
      edtJumlah.Visible:= False;

    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
end;

procedure TParkirFrm.SCButton8Click(Sender: TObject);
VAR s, vnoKarcis, vNmVoucher, dirname_out, dir_folder_ot : String;
begin
    DM.StartTransaction;
    try
      qPenjualanVoucher.Close;
      qPenjualanVoucher.Open;
      qPenjualanVoucher.Append;

      qPenjualanVoucherid_voucher.AsString:= IntToStr(memPenjualanVoucherid_voucher.AsInteger);
      qPenjualanVouchernama.AsString:= memPenjualanVouchernama_pasien.AsString;
      qPenjualanVoucherno_mrs.AsString:= memPenjualanVoucherno_mrs.AsString;
      qPenjualanVouchernopol.AsString:= memPenjualanVouchernopol.AsString;
      qPenjualanVoucherno_kamar.AsString:= memPenjualanVoucherno_kamar.AsString;
      qPenjualanVoucherusr_ins.AsString:= DM.UserConnect;
      qPenjualanVoucherusr_upd.AsString:= DM.UserConnect;
      qPenjualanVoucher.Post;

      vnoKarcis:= Trim(IntToStr(qPenjualanVoucherid_penjualan.AsLargeInt));
      vNmVoucher:= Trim(cbJnsVoucher.Text);

      DM.vSysDate.Close;
      DM.vSysDate.Open;

      s:= 'select trans.fn_proc_ins_trans_voucher('+FloatToStr(memPenjualanVoucherqty.AsFloat)+','+QuotedStr(vnoKarcis)+',';
      s:= s+QuotedStr(vNmVoucher)+',';
      s:= s+QuotedStr('Penjualan Voucher')+','+QuotedStr(memPenjualanVouchernopol.AsString)+',';
      s:= s+QuotedStr(DM.UserConnect)+','+QuotedStr(DM.gate_id)+','+DM.UserShift+')';

      DM.PrepareQuery(qExec);
      DM.ExecQuery(qExec,s);

      qPenjualanVoucher.ApplyUpdates;
      qPenjualanVoucher.CommitUpdates;

      DM.CommitTransaction;

    except
      on E: Exception do begin
        DM.RollbackTransaction;
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end
    end;

    isHilang:= True;
    btnBayarClick(nil);

end;
procedure TParkirFrm.cbJnsVoucherPropertiesEditValueChanged(
  Sender: TObject);
begin
      if cbJnsVoucher.Text= 'VOUCHER BPJS' then begin
         Label48.Visible:= False;
         Label49.Visible:= False;
         edtJumlah.Visible:= False;
         edtPVTarifBayar.Text:= FormatCurr('#,###',10000);
         memPenjualanVoucher.Edit;
         memPenjualanVoucherTarif.AsFloat:= 10000;
         memPenjualanVoucherid_voucher.AsInteger:= 1;
      end else
      if cbJnsVoucher.Text= 'VOUCHER TPP' then begin
         Label48.Visible:= True;
         Label49.Visible:= True;
         edtJumlah.Visible:= True;
         edtPVTarifBayar.Text:= FormatCurr('#,###',10000);
//         memPenjualanVoucher.Edit;
//         memPenjualanVoucherTarif.AsFloat:= 10000;
         memPenjualanVoucherid_voucher.AsInteger:= 1;
      end else begin
         Label48.Visible:= False;
         Label49.Visible:= False;
         edtJumlah.Visible:= False;
         edtPVTarifBayar.Text:= FormatCurr('#,###',15000);
         memPenjualanVoucher.Edit;
         memPenjualanVoucherTarif.AsFloat:= 15000;
         memPenjualanVoucherid_voucher.AsInteger:= 2;
      end;

end;

procedure TParkirFrm.btnKarcisManualClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex:= 4;
end;

procedure TParkirFrm.tabKarcisManualShow(Sender: TObject);
begin
    try
      qJnsKendaraan.Close;
      qJnsKendaraan.Open;
      memKarcisManual.Close;
      memKarcisManual.Open;
      memKarcisManual.Append;
      memKarcisManualjns_kendaraan.AsString:= '';
      memKarcisManualid_jns_kendaraan.AsString:= '';
      memKarcisManualno_karcis.AsString:= '';
      memKarcisManualtarif.AsFloat:= 0;
      edtKMTarif.Text:= FormatCurr('#,###',0);
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
    edtKMTarif.Properties.ReadOnly:= True;
end;

procedure TParkirFrm.edtKMJensKendaraanPropertiesEditValueChanged(
  Sender: TObject);
begin
      if edtKMJensKendaraan.Text= 'MOBIL' then begin
         edtKMTarif.Text:= FormatCurr('#,###',5000);
         memKarcisManual.Edit;
         memKarcisManualtarif.AsFloat:= 5000;
         memKarcisManualid_jns_kendaraan.AsString:= 'R4';
      end else begin
         edtKMTarif.Text:= FormatCurr('#,###',2000);
         memKarcisManual.Edit;
         memKarcisManualtarif.AsFloat:= 2000;
         memKarcisManualid_jns_kendaraan.AsString:= 'R2';
      end;
end;

procedure TParkirFrm.SCButton11Click(Sender: TObject);
VAR s, vnoKarcis, vIDTrans, vJenisKendaraan : String;
begin
    DM.StartTransaction;
    try
      qKarcisManual.Close;
      qKarcisManual.Open;
      qKarcisManual.Append;

      qKarcisManualnokarcis.AsString:= memKarcisManualno_karcis.AsString;
      qKarcisManualjns_kendaraan.AsString:= memKarcisManualjns_kendaraan.AsString;
      qKarcisManualid_jns_kendaraan.AsString:= memKarcisManualid_jns_kendaraan.AsString;
      qKarcisManualusr_ins.AsString:= DM.UserConnect;
      qKarcisManualusr_upd.AsString:= DM.UserConnect;
      qKarcisManual.Post;

      vJenisKendaraan:= Trim(memKarcisManualid_jns_kendaraan.AsString);
      vnoKarcis:= Trim(memKarcisManualno_karcis.AsString);
      vIDTrans:= Trim('5');

      DM.vSysDate.Close;
      DM.vSysDate.Open;

      s:= 'select trans.fn_proc_ins_karcis_manual('+QuotedStr(vIDTrans)+',';
      s:= s+QuotedStr(vnoKarcis)+',';
      s:= s+QuotedStr(vJenisKendaraan)+','+QuotedStr(DM.gate_id)+',';
      s:= s+QuotedStr(DM.UserConnect)+')';

      DM.PrepareQuery(qExec);
      DM.ExecQuery(qExec,s);

      qKarcisManual.ApplyUpdates;
      qKarcisManual.CommitUpdates;

      DM.CommitTransaction;

    except
      on E: Exception do begin
        DM.RollbackTransaction;
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end
    end;

    tabKarcisManualShow(nil);

//    isHilang:= True;
//    btnBayarClick(nil);

end;

procedure TParkirFrm.btnPendLainClick(Sender: TObject);
begin
  pgcMain.ActivePageIndex:= 5;
end;

procedure TParkirFrm.tabLainLainShow(Sender: TObject);
begin
    try
      qPLL.Close;
      qPLL.Open;
      memPLL.Close;
      memPLL.Open;
      memPLL.Append;
      memPLLdari.AsString:= '';
      memPLLditerima.AsString:= DM.UserConnect;
      memPLLjumlah.AsFloat:= 0;
      edtPLJumlah.Text:= FormatCurr('#,###',0);
    except
      on E: Exception do
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
    end;
end;

procedure TParkirFrm.SCButton14Click(Sender: TObject);
VAR s, vnoKarcis, vIDTrans, vJenisKendaraan : String;
begin
    DM.StartTransaction;
    try
      qPLL.Close;
      qPLL.Open;
      qPLL.Append;

      qPLLdari.AsString:= memPLLdari.AsString;
      qPLLoleh.AsString:= memPLLditerima.AsString;
      qPLLjumlah.AsFloat:= StrToFloat(edtPLJumlah.Text);
      qPLLusr_ins.AsString:= DM.UserConnect;
      qPLLusr_upd.AsString:= DM.UserConnect;
      qPLL.Post;

      vJenisKendaraan:= Trim(DM.gate_id);
      vIDTrans:= Trim('6');

      DM.vSysDate.Close;
      DM.vSysDate.Open;
      vnoKarcis:= DM.vNoKarcis;

      s:= 'select trans.fn_proc_ins_pendapatan_lain('+QuotedStr(vnoKarcis)+',';
      s:= s+QuotedStr(vJenisKendaraan)+',';
      s:= s+QuotedStr(DM.UserConnect)+','+QuotedStr(edtPLJumlah.Text)+')';

      DM.PrepareQuery(qExec);
      DM.ExecQuery(qExec,s);

      qPLL.ApplyUpdates;
      qPLL.CommitUpdates;

      DM.CommitTransaction;

    except
      on E: Exception do begin
        DM.RollbackTransaction;
        DM.MyMsg(mmError,'Error has been encountered !',E.Message);
        Exit;
      end
    end;

    tabLainLainShow(nil);

//    isHilang:= True;
//    btnBayarClick(nil);

end;


procedure TParkirFrm.edtJumlahPropertiesEditValueChanged(Sender: TObject);
begin
   edtPVTarifBayar.Text:= FormatCurr('#,###',10000*memPenjualanVoucherqty.AsFloat);
end;

procedure TParkirFrm.T_PINGTimer(Sender: TObject);
begin
//  MQTTClient.PingReq;
end;

procedure TParkirFrm.T_ERRORTimer(Sender: TObject);
begin
//   T_PING.Enabled:= False;
//   MQTTClient.Disconnect;
//   MQTTClientActivated;
end;

end.
