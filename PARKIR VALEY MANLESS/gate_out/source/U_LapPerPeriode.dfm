object LapPerPeriodeFrm: TLapPerPeriodeFrm
  Left = 126
  Top = 51
  Width = 1210
  Height = 657
  Caption = 'Laporan Pendapatan/Periode'
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 568
    Width = 1194
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 0
    object btnClose: TSCButton
      Left = 15
      Top = 7
      Width = 72
      Height = 35
      Caption = 'Tutup'
      Images = DM.ImageList1
      ImageIndex = 6
      ModalResult = 7
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 0
      OnClick = btnCloseClick
    end
    object btnAdd: TSCButton
      Left = 217
      Top = 7
      Width = 78
      Height = 35
      Caption = '&Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      Visible = False
      OnClick = btnAddClick
    end
    object btnExport: TSCButton
      Left = 95
      Top = 7
      Width = 115
      Height = 35
      Caption = '&Export To Excel'
      Images = DM.ImageList1
      ImageIndex = 23
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 2
      OnClick = btnExportClick
    end
  end
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 1194
    Height = 54
    Align = alTop
    Color = 16579055
    Gradient = scgLeftToRight
    GradientMid = 14731160
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 1
    object dtpStart: TwwDBDateTimePicker
      Left = 9
      Top = 23
      Width = 121
      Height = 22
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.StartYear = 2000
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 0
      DisplayFormat = 'dd mmm yyyy'
      OnCloseUp = dtpStartCloseUp
    end
    object btnOK: TSCButton
      Left = 294
      Top = 21
      Width = 78
      Height = 26
      Caption = 'OK'
      Images = DM.ImageList1
      ImageIndex = 18
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      OnClick = btnOKClick
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 1
      Caption = 'Tanggal :'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 135
      Top = 23
      Caption = 's/d'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object dtpEnd: TwwDBDateTimePicker
      Left = 162
      Top = 23
      Width = 121
      Height = 22
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      CalendarAttributes.PopupYearOptions.StartYear = 2000
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 4
      DisplayFormat = 'dd mmm yyyy'
      OnCloseUp = dtpEndCloseUp
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 54
    Width = 1194
    Height = 514
    ActivePage = tabDetail
    Align = alClient
    TabOrder = 4
    ClientRectBottom = 514
    ClientRectRight = 1194
    ClientRectTop = 24
    object tabRekap: TcxTabSheet
      Caption = 'Rekap'
      ImageIndex = 0
      object grdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1194
        Height = 490
        Align = alClient
        TabOrder = 0
        object grdDBTV_Rekap: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsLPR_Item_Status
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'jumlah'
              Column = grdDBTV_Rekapjumlah
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grdDBTV_Rekapjns_anggota: TcxGridDBColumn
            Caption = 'Jenis Anggota'
            DataBinding.FieldName = 'jns_anggota'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_Rekapjns_kendaraan: TcxGridDBColumn
            Caption = 'Jenis Kendaraan'
            DataBinding.FieldName = 'jns_kendaraan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 140
          end
          object grdDBTV_Rekaptarif: TcxGridDBColumn
            Caption = 'Tarif'
            DataBinding.FieldName = 'tarif'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 75
          end
          object grdDBTV_Rekapjml_kendaraan: TcxGridDBColumn
            Caption = 'Jumlah Kendaraan'
            DataBinding.FieldName = 'jml_kendaraan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 125
          end
          object grdDBTV_Rekapjumlah: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'jumlah'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 130
          end
          object grdDBTV_Rekapstatus: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'status'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 125
          end
        end
        object grdLVLRekap: TcxGridLevel
          GridView = grdDBTV_Rekap
        end
      end
    end
    object tabDetail: TcxTabSheet
      Caption = 'Rincian'
      ImageIndex = 1
      object grdDetail: TcxGrid
        Left = 0
        Top = 0
        Width = 1194
        Height = 490
        Align = alClient
        TabOrder = 0
        object grdDBTV_Detail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'tarif'
              Column = grdDBTV_Detailjumlah
            end
            item
              Kind = skCount
              FieldName = 'no_karcis'
              Column = grdDBTV_Detailno_karcis
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object grdDBTV_Detailno_karcis: TcxGridDBColumn
            Caption = 'No. Karcis'
            DataBinding.FieldName = 'no_karcis'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 223
          end
          object grdDBTV_Detailjns_kendaraan: TcxGridDBColumn
            Caption = 'Jns. Kendaraan'
            DataBinding.FieldName = 'jns_kendaraan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 206
          end
          object grdDBTV_Detailjam_masuk: TcxGridDBColumn
            Caption = 'Jam Masuk'
            DataBinding.FieldName = 'jam_masuk'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 139
          end
          object grdDBTV_Detailjam_keluar: TcxGridDBColumn
            Caption = 'Jam Keluar'
            DataBinding.FieldName = 'jam_keluar'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 140
          end
          object grdDBTV_Detailstatus_palang: TcxGridDBColumn
            Caption = 'Status Gate'
            DataBinding.FieldName = 'status'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 204
          end
          object grdDBTV_Detailjumlah: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'tarif'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 148
          end
          object grdDBTV_Detailusr_ins: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 206
          end
          object grdDBTV_DetailShift: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
        end
        object grdLVL_Detail: TcxGridLevel
          GridView = grdDBTV_Detail
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = 'Export'
      ImageIndex = 2
      TabVisible = False
      object grdExport: TcxGrid
        Left = 0
        Top = 0
        Width = 1194
        Height = 490
        Align = alClient
        TabOrder = 0
        object grdDBTVExport: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsLPR_Item_Status
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'No. Faktur'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No. Pelanggan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 140
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 123
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Akun Piutang'
            DataBinding.FieldName = 'akun_piutang'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 92
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'status'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 151
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Nilai Tukar'
            DataBinding.FieldName = 'nilai_tukar'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object grdDBTVExportColumn1: TcxGridDBColumn
            Caption = 'Nilai Pajak'
            DataBinding.FieldName = 'nilai_tukar'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 74
          end
          object grdDBTVExportColumn2: TcxGridDBColumn
            Caption = 'Diskon'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 73
          end
          object grdDBTVExportColumn3: TcxGridDBColumn
            Caption = 'Prosentase Diskon'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 113
          end
          object grdDBTVExportColumn4: TcxGridDBColumn
            Caption = 'Pengguna'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 81
          end
          object grdDBTVExportColumn5: TcxGridDBColumn
            Caption = 'Syarat'
            DataBinding.FieldName = 'syarat'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 134
          end
          object grdDBTVExportColumn6: TcxGridDBColumn
            Caption = 'Kirim Ke'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 79
          end
          object grdDBTVExportColumn7: TcxGridDBColumn
            Caption = 'Kirim Melalui'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 102
          end
          object grdDBTVExportColumn34: TcxGridDBColumn
            Caption = 'Tgl. Kirim'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 100
          end
          object grdDBTVExportColumn8: TcxGridDBColumn
            Caption = 'Penjual'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 90
          end
          object grdDBTVExportColumn9: TcxGridDBColumn
            Caption = 'FOB'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 78
          end
          object grdDBTVExportColumn10: TcxGridDBColumn
            Caption = 'Rancangan'
            DataBinding.FieldName = 'rancangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 132
          end
          object grdDBTVExportColumn11: TcxGridDBColumn
            Caption = 'Seri Pajak 1'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 88
          end
          object grdDBTVExportColumn12: TcxGridDBColumn
            Caption = 'Seri Pajak 2'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 84
          end
          object grdDBTVExportColumn13: TcxGridDBColumn
            Caption = 'Tgl. Faktur Pajak'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 114
          end
          object grdDBTVExportColumn14: TcxGridDBColumn
            Caption = 'Termasuk Pajak'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 126
          end
          object grdDBTVExportColumn15: TcxGridDBColumn
            Caption = 'No. Barang'
            DataBinding.FieldName = 'jns_kendaraan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 85
          end
          object grdDBTVExportColumn16: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'nilai_tukar'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object grdDBTVExportColumn17: TcxGridDBColumn
            Caption = 'Harga Satuan'
            DataBinding.FieldName = 'jumlah'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 106
          end
          object grdDBTVExportColumn18: TcxGridDBColumn
            Caption = 'Kode Pajak'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 86
          end
          object grdDBTVExportColumn19: TcxGridDBColumn
            Caption = 'Diskon'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object grdDBTVExportColumn20: TcxGridDBColumn
            Caption = 'Satuan'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 76
          end
          object grdDBTVExportColumn21: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'departemen'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 105
          end
          object grdDBTVExportColumn22: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'proyek'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 137
          end
          object grdDBTVExportColumn23: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'departemen'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 128
          end
          object grdDBTVExportColumn24: TcxGridDBColumn
            Caption = 'Kolom Reserved 1'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 112
          end
          object grdDBTVExportColumn25: TcxGridDBColumn
            Caption = 'Kolom Reserved 2'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 118
          end
          object grdDBTVExportColumn26: TcxGridDBColumn
            Caption = 'Kolom Reserved 3'
            DataBinding.FieldName = 'jns_anggota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 121
          end
          object grdDBTVExportColumn27: TcxGridDBColumn
            Caption = 'Kolom Reserved 4'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 126
          end
          object grdDBTVExportColumn28: TcxGridDBColumn
            Caption = 'Kolom Reserved 5'
            DataBinding.FieldName = 'jml_kendaraan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 121
          end
          object grdDBTVExportColumn29: TcxGridDBColumn
            Caption = 'No. Pesanan'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object grdDBTVExportColumn30: TcxGridDBColumn
            Caption = 'No. Faktur DP'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object grdDBTVExportColumn31: TcxGridDBColumn
            Caption = 'Keterangan DP'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object grdDBTVExportColumn32: TcxGridDBColumn
            Caption = 'Total DP'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
          object grdDBTVExportColumn33: TcxGridDBColumn
            Caption = 'Pajak DP'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
          end
        end
        object grdLvlExport: TcxGridLevel
          GridView = grdDBTVExport
        end
      end
    end
  end
  object dsLPR_Item_Status: TDataSource
    DataSet = qRekap
    Left = 227
    Top = 106
  end
  object qRekap: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from  trans.fn_get_total_periode(:ptgl0,:ptgl1)'
      'where jumlah>0')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-03-2021'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '31-03-2021'
      end>
    Left = 195
    Top = 107
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-03-2021'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '31-03-2021'
      end>
    object qRekapid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      ReadOnly = True
      Size = 255
    end
    object qRekapid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      ReadOnly = True
      Size = 255
    end
    object qRekapjns_anggota: TStringField
      Alignment = taCenter
      FieldName = 'jns_anggota'
      ReadOnly = True
      Size = 255
    end
    object qRekapjns_kendaraan: TStringField
      Alignment = taCenter
      FieldName = 'jns_kendaraan'
      ReadOnly = True
      Size = 255
    end
    object qRekapjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRekapjml_kendaraan: TFloatField
      Alignment = taCenter
      FieldName = 'jml_kendaraan'
      ReadOnly = True
    end
    object qRekapnomor: TIntegerField
      FieldName = 'nomor'
      ReadOnly = True
    end
    object qRekapstatus: TStringField
      Alignment = taCenter
      FieldName = 'status'
      ReadOnly = True
      Size = 255
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 392
    Top = 116
  end
  object APS: TAdvPanelStyler
    Tag = 0
    Settings.AnchorHint = False
    Settings.AutoHideChildren = False
    Settings.BevelInner = bvNone
    Settings.BevelOuter = bvNone
    Settings.BevelWidth = 1
    Settings.BorderColor = 16765615
    Settings.BorderShadow = False
    Settings.BorderStyle = bsNone
    Settings.BorderWidth = 0
    Settings.CanMove = False
    Settings.CanSize = False
    Settings.Caption.Color = 12105910
    Settings.Caption.ColorTo = 10526878
    Settings.Caption.Font.Charset = DEFAULT_CHARSET
    Settings.Caption.Font.Color = clWhite
    Settings.Caption.Font.Height = -11
    Settings.Caption.Font.Name = 'MS Sans Serif'
    Settings.Caption.Font.Style = []
    Settings.Caption.GradientDirection = gdVertical
    Settings.Caption.Indent = 2
    Settings.Caption.ShadeLight = 255
    Settings.Collaps = False
    Settings.CollapsColor = clNone
    Settings.CollapsDelay = 0
    Settings.CollapsSteps = 0
    Settings.Color = 13616833
    Settings.ColorTo = 12958644
    Settings.ColorMirror = 12958644
    Settings.ColorMirrorTo = 15527141
    Settings.Cursor = crDefault
    Settings.Font.Charset = DEFAULT_CHARSET
    Settings.Font.Color = 7485192
    Settings.Font.Height = -11
    Settings.Font.Name = 'MS Sans Serif'
    Settings.Font.Style = []
    Settings.FixedTop = False
    Settings.FixedLeft = False
    Settings.FixedHeight = False
    Settings.FixedWidth = False
    Settings.Height = 120
    Settings.Hover = False
    Settings.HoverColor = clNone
    Settings.HoverFontColor = clNone
    Settings.Indent = 0
    Settings.ShadowColor = clBlack
    Settings.ShadowOffset = 0
    Settings.ShowHint = False
    Settings.ShowMoveCursor = False
    Settings.StatusBar.BorderStyle = bsSingle
    Settings.StatusBar.Font.Charset = DEFAULT_CHARSET
    Settings.StatusBar.Font.Color = clWhite
    Settings.StatusBar.Font.Height = -11
    Settings.StatusBar.Font.Name = 'Tahoma'
    Settings.StatusBar.Font.Style = []
    Settings.StatusBar.Color = 10592158
    Settings.StatusBar.ColorTo = 5459275
    Settings.StatusBar.GradientDirection = gdVertical
    Settings.TextVAlign = tvaTop
    Settings.TopIndent = 0
    Settings.URLColor = clBlue
    Settings.Width = 0
    Style = psOffice2007Obsidian
    Left = 366
    Top = 8
  end
  object ATBOS: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 13005312
    AppColor.AppButtonHoverColor = 16755772
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16246477
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 15187578
    AppColor.SelectedColor = 15187578
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 15187578
    Style = bsOffice2007Obsidian
    BorderColor = 11841710
    BorderColorHot = 11841710
    ButtonAppearance.Color = 13627626
    ButtonAppearance.ColorTo = 9224369
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = 3693887
    ButtonAppearance.BorderHotColor = 3693887
    ButtonAppearance.BorderCheckedColor = 3693887
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = 12105910
    CaptionAppearance.CaptionColorTo = 10526878
    CaptionAppearance.CaptionBorderColor = clWhite
    CaptionAppearance.CaptionColorHot = 11184809
    CaptionAppearance.CaptionColorHotTo = 7237229
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 12958644
    Color.ColorTo = 15527141
    Color.Direction = gdVertical
    Color.Mirror.Color = 14736343
    Color.Mirror.ColorTo = 13617090
    Color.Mirror.ColorMirror = 13024437
    Color.Mirror.ColorMirrorTo = 15000281
    ColorHot.Color = 15921390
    ColorHot.ColorTo = 16316662
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 15789804
    ColorHot.Mirror.ColorTo = 15592168
    ColorHot.Mirror.ColorMirror = 15131103
    ColorHot.Mirror.ColorMirrorTo = 16185075
    CompactGlowButtonAppearance.BorderColor = 12631218
    CompactGlowButtonAppearance.BorderColorHot = 10079963
    CompactGlowButtonAppearance.BorderColorDown = 4548219
    CompactGlowButtonAppearance.BorderColorChecked = 4548219
    CompactGlowButtonAppearance.Color = 14671574
    CompactGlowButtonAppearance.ColorTo = 15000283
    CompactGlowButtonAppearance.ColorChecked = 11918331
    CompactGlowButtonAppearance.ColorCheckedTo = 7915518
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 7778289
    CompactGlowButtonAppearance.ColorDownTo = 4296947
    CompactGlowButtonAppearance.ColorHot = 15465983
    CompactGlowButtonAppearance.ColorHotTo = 11332863
    CompactGlowButtonAppearance.ColorMirror = 14144974
    CompactGlowButtonAppearance.ColorMirrorTo = 15197664
    CompactGlowButtonAppearance.ColorMirrorHot = 5888767
    CompactGlowButtonAppearance.ColorMirrorHotTo = 10807807
    CompactGlowButtonAppearance.ColorMirrorDown = 946929
    CompactGlowButtonAppearance.ColorMirrorDownTo = 5021693
    CompactGlowButtonAppearance.ColorMirrorChecked = 10480637
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 13616833
    DockColor.ColorTo = 12958644
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    DragGripStyle = dsNone
    FloatingWindowBorderColor = 11841710
    FloatingWindowBorderWidth = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 12631218
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = 4548219
    GlowButtonAppearance.Color = 14671574
    GlowButtonAppearance.ColorTo = 15000283
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 14144974
    GlowButtonAppearance.ColorMirrorTo = 15197664
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 8878963
    GroupAppearance.Color = 4413279
    GroupAppearance.ColorTo = 3620416
    GroupAppearance.ColorMirror = 4413279
    GroupAppearance.ColorMirrorTo = 1617645
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Tahoma'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggRadial
    GroupAppearance.GradientMirror = ggRadial
    GroupAppearance.TextColor = clWhite
    GroupAppearance.CaptionAppearance.CaptionColor = 12105910
    GroupAppearance.CaptionAppearance.CaptionColorTo = 10526878
    GroupAppearance.CaptionAppearance.CaptionColorHot = 11184809
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 7237229
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 15530237
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = clBlack
    GroupAppearance.PageAppearance.HighLightColor = 15526887
    GroupAppearance.TabAppearance.BorderColor = 10534860
    GroupAppearance.TabAppearance.BorderColorHot = 9870494
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 5992568
    GroupAppearance.TabAppearance.ColorHotTo = 9803415
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 4413279
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 1617645
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Tahoma'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggRadial
    GroupAppearance.TabAppearance.GradientMirror = ggRadial
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clWhite
    GroupAppearance.TabAppearance.TextColorHot = clWhite
    GroupAppearance.TabAppearance.TextColorSelected = 9126421
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = clBlack
    GroupAppearance.TabAppearance.HighLightColor = 9803929
    GroupAppearance.TabAppearance.HighLightColorHot = 9803929
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 11841710
    PageAppearance.Color = 13616833
    PageAppearance.ColorTo = 12958644
    PageAppearance.ColorMirror = 12958644
    PageAppearance.ColorMirrorTo = 15527141
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 5263440
    PageAppearance.HighLightColor = 15526887
    PagerCaption.BorderColor = clBlack
    PagerCaption.Color = 5392195
    PagerCaption.ColorTo = 4866108
    PagerCaption.ColorMirror = 3158063
    PagerCaption.ColorMirrorTo = 4079166
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clBlue
    PagerCaption.TextColorExtended = clWhite
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -11
    PagerCaption.Font.Name = 'Tahoma'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 11708063
    QATAppearance.Color = 12958644
    QATAppearance.ColorTo = 15527141
    QATAppearance.FullSizeBorderColor = 13552843
    QATAppearance.FullSizeColor = 9407882
    QATAppearance.FullSizeColorTo = 9407882
    RightHandleColor = 13289414
    RightHandleColorTo = 11841710
    RightHandleColorHot = 13891839
    RightHandleColorHotTo = 7782911
    RightHandleColorDown = 557032
    RightHandleColorDownTo = 8182519
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = 9870494
    TabAppearance.BorderColorSelected = 14922381
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 15724269
    TabAppearance.ColorSelectedTo = 15724269
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 5992568
    TabAppearance.ColorHotTo = 9803415
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 4413279
    TabAppearance.ColorMirrorHotTo = 1617645
    TabAppearance.ColorMirrorSelected = 13816526
    TabAppearance.ColorMirrorSelectedTo = 13816526
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Tahoma'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggRadial
    TabAppearance.GradientMirrorHot = ggRadial
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clWhite
    TabAppearance.TextColorHot = clWhite
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = clBlack
    TabAppearance.HighLightColor = 9803929
    TabAppearance.HighLightColorHot = 9803929
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 5460819
    TabAppearance.BackGround.ColorTo = 3815994
    TabAppearance.BackGround.Direction = gdVertical
    Left = 458
    Top = 112
  end
  object SR: TcxStyleRepository
    Left = 426
    Top = 118
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7039851
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15400938
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15587527
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Header = cxStyle1
      Styles.Indicator = cxStyle4
      BuiltIn = True
    end
    object cxGridBandedTableViewStyleSheet1: TcxGridBandedTableViewStyleSheet
      Styles.ContentEven = cxStyle3
      Styles.Selection = cxStyle2
      Styles.Indicator = cxStyle4
      Styles.BandHeader = cxStyle1
      BuiltIn = True
    end
  end
  object frxDBPrint: TfrxDBDataset
    UserName = 'frxDBPrint'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_jns_anggota=id_jns_anggota'
      'id_jns_kendaraan=id_jns_kendaraan'
      'jns_anggota=jns_anggota'
      'jns_kendaraan=jns_kendaraan'
      'jumlah=jumlah'
      'jml_kendaraan=jml_kendaraan'
      'tarif=tarif')
    DataSet = qRekap
    Left = 295
    Top = 114
  end
  object frxKarcis: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'POS-X Thermal Printer'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42467.523055497700000000
    ReportOptions.LastChange = 42473.528297754600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 265
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
      end
      item
        DataSet = frxDBList
        DataSetName = 'frxDBMaster'
      end
      item
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 220.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 5.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object MasterData2: TfrxMasterData
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 245.669450000000000000
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
        RowCount = 0
        object Memo6: TfrxMemoView
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_karcis'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDetail."no_karcis"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."jumlah"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'status_palang'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDetail."status_palang"]')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 245.669450000000000000
        object Memo10: TfrxMemoView
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Karcis')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 196.535560000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 132.283550000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 245.669450000000000000
        object frxDBPrintno_rfid: TfrxMemoView
          Left = 0.220470000000000000
          Top = 68.031540000000000000
          Width = 245.669450000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 177.637910000000000000
          Height = 37.795287800000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'REKAP PENDAPATAN PARKIR/ SHIFT')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 18.897650000000000000
          Width = 30.236220470000000000
          Height = 37.795300000000000000
          Center = True
          DataField = 'logo'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          HightQuality = True
        end
        object Picture2: TfrxPictureView
          Left = 34.015770000000000000
          Top = 18.897650000000000000
          Width = 30.236220470000000000
          Height = 37.795300000000000000
          Center = True
          DataField = 'logo2'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          HightQuality = True
        end
        object frxDBMastertgl: TfrxMemoView
          Top = 83.149660000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 102.047310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 120.944960000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Lokasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 139.842610000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Petugas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 56.692950000000000000
          Top = 83.149660000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 56.692950000000000000
          Top = 102.047310000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 56.692950000000000000
          Top = 120.944960000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 56.692950000000000000
          Top = 139.842610000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 71.811070000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'tgl'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."tgl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 71.811070000000000000
          Top = 102.047310000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'sift'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."sift"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 71.811070000000000000
          Top = 120.944960000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 139.842610000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'user'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 56.692950000000000000
        Top = 476.220780000000000000
        Width = 245.669450000000000000
        object Memo19: TfrxMemoView
          Width = 162.519790000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            
              'Jumlah Kendaraan : [SUM(<frxDBPrint."jml_kendaraan">,MasterData1' +
              ')]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBMasteruser: TfrxMemoView
          Top = 34.015770000000000000
          Width = 264.566977950000000000
          Height = 22.677180000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal Print : [frxDBMaster."vnow"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 185.196970000000000000
          Width = 60.472480000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBPrint."jumlah">,MasterData1)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          Left = 162.519790000000000000
          Width = 22.677180000000000000
          Height = 22.677165354330700000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 336.378170000000000000
        Width = 245.669450000000000000
        object Memo21: TfrxMemoView
          Top = 11.338590000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 143.622140000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 102.047310000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 185.196970000000000000
          Top = 11.338590000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456692910000000000
        Top = 389.291590000000000000
        Width = 245.669450000000000000
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
        RowCount = 0
        object frxDBPrintjns_kendaraan: TfrxMemoView
          Width = 102.047310000000000000
          Height = 26.456692910000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPrint."jns_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 143.622140000000000000
          Width = 41.574830000000000000
          Height = 26.456692910000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBPrint."jml_kendaraan">=0'
          Memo.UTF8 = (
            '[frxDBPrint."jml_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 102.047310000000000000
          Width = 41.574830000000000000
          Height = 26.456692910000000000
          DataField = 'tarif'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPrint."tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 185.196970000000000000
          Width = 60.472440940000000000
          Height = 26.456692910000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBPrint."jumlah">=0'
          Memo.UTF8 = (
            '[frxDBPrint."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object MemMasterList: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'tgl'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sift'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.10.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 293
    Top = 148
    object MemMasterListtgl: TStringField
      FieldName = 'tgl'
      Size = 100
    end
    object MemMasterListsift: TStringField
      FieldName = 'sift'
    end
    object MemMasterListuser: TStringField
      FieldName = 'user'
      Size = 255
    end
    object MemMasterListlogo: TBlobField
      FieldName = 'logo'
    end
    object MemMasterListlogo2: TBlobField
      FieldName = 'logo2'
    end
    object MemMasterListalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object MemMasterListvnow: TStringField
      FieldName = 'vnow'
    end
  end
  object frxDBList: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tgl=tgl'
      'sift=sift'
      'user=user'
      'logo=logo'
      'logo2=logo2'
      'alamat=alamat'
      'vnow=vnow')
    DataSet = MemMasterList
    Left = 264
    Top = 141
  end
  object Detail: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.fn_get_total_periode_detail(:ptgl0,:ptgl1)')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-03-2021'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '31-03-2021'
      end>
    Left = 327
    Top = 121
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-03-2021'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '31-03-2021'
      end>
    object Detailno_karcis: TStringField
      FieldName = 'no_karcis'
      ReadOnly = True
      Size = 255
    end
    object Detailid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      ReadOnly = True
      Size = 255
    end
    object Detailid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      ReadOnly = True
      Size = 255
    end
    object Detailjns_anggota: TStringField
      FieldName = 'jns_anggota'
      ReadOnly = True
      Size = 255
    end
    object Detailjns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
      ReadOnly = True
      Size = 255
    end
    object Detailtarif: TFloatField
      FieldName = 'tarif'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Detailstatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 255
    end
    object Detailjam_masuk: TStringField
      FieldName = 'jam_masuk'
      ReadOnly = True
      Size = 255
    end
    object Detailjam_keluar: TStringField
      FieldName = 'jam_keluar'
      ReadOnly = True
      Size = 255
    end
    object Detailusr_upd: TStringField
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 255
    end
    object Detailshift: TIntegerField
      Alignment = taCenter
      FieldName = 'shift'
      ReadOnly = True
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 328
    Top = 146
  end
  object frxDBDetail: TfrxDBDataset
    UserName = 'frxDBDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_karcis=no_karcis'
      'status=status'
      'jumlah=jumlah'
      'jns_anggota=jns_anggota'
      'jns_kendaraan=jns_kendaraan'
      'status_palang=status_palang'
      'usr_ins=usr_ins')
    DataSet = Detail
    Left = 388
    Top = 152
  end
  object frxRekap: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'POS-X Thermal Printer'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42467.523055497700000000
    ReportOptions.LastChange = 42473.528297754600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 298
    Top = 190
    Datasets = <
      item
        DataSet = frxDBList
        DataSetName = 'frxDBMaster'
      end
      item
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 120.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 3.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 245.669450000000000000
        object frxDBPrintno_rfid: TfrxMemoView
          Left = 0.220470000000000000
          Top = 68.031540000000000000
          Width = 245.669450000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDouble
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897650000000000000
          Width = 177.637910000000000000
          Height = 37.795287800000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'LAPORAN PENDAPATAN PARKIR/ SHIFT')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Top = 18.897650000000000000
          Width = 30.236220470000000000
          Height = 37.795300000000000000
          Center = True
          DataField = 'logo'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          HightQuality = True
        end
        object Picture2: TfrxPictureView
          Left = 34.015770000000000000
          Top = 18.897650000000000000
          Width = 30.236220470000000000
          Height = 37.795300000000000000
          Center = True
          DataField = 'logo2'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          HightQuality = True
        end
        object frxDBMastertgl: TfrxMemoView
          Top = 83.149660000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Top = 102.047310000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Top = 120.944960000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Lokasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 139.842610000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Petugas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 56.692950000000000000
          Top = 83.149660000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 56.692950000000000000
          Top = 102.047310000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 56.692950000000000000
          Top = 120.944960000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 56.692950000000000000
          Top = 139.842610000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 71.811070000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'tgl'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."tgl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 71.811070000000000000
          Top = 102.047310000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'sift'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."sift"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 71.811070000000000000
          Top = 120.944960000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'alamat'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 71.811070000000000000
          Top = 139.842610000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'user'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456692910000000000
        Top = 291.023810000000000000
        Width = 245.669450000000000000
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
        RowCount = 0
        Stretched = True
        object frxDBPrintjns_kendaraan: TfrxMemoView
          Width = 102.047310000000000000
          Height = 26.456692913385830000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPrint."jns_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 143.622140000000000000
          Width = 41.574830000000000000
          Height = 26.456692913385830000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBPrint."jml_kendaraan">=0'
          Memo.UTF8 = (
            '[frxDBPrint."jml_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 102.047310000000000000
          Width = 41.574830000000000000
          Height = 26.456692913385830000
          DataField = 'tarif'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPrint."tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 185.196970000000000000
          Width = 60.472440940000000000
          Height = 26.456692910000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBPrint."jumlah">=0'
          Memo.UTF8 = (
            '[frxDBPrint."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 56.692950000000000000
        Top = 377.953000000000000000
        Width = 245.669450000000000000
        object Memo4: TfrxMemoView
          Width = 162.519790000000000000
          Height = 22.677165354330710000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            
              'Jumlah Kendaraan : [SUM(<frxDBPrint."jml_kendaraan">,MasterData1' +
              ')]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBMasteruser: TfrxMemoView
          Top = 34.015770000000000000
          Width = 264.566977950000000000
          Height = 22.677180000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal Print : [frxDBMaster."vnow"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 185.196970000000000000
          Width = 60.472480000000000000
          Height = 22.677165354330710000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBPrint."jumlah">,MasterData1)]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Left = 162.519790000000000000
          Width = 22.677180000000000000
          Height = 22.677165354330710000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object Header1: TfrxHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 245.669450000000000000
        object Memo9: TfrxMemoView
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end