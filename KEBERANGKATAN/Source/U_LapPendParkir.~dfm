object LapPendParkirFrm: TLapPendParkirFrm
  Left = 200
  Top = 22
  Width = 1094
  Height = 686
  Caption = 'Lap. Pendapatan Parkir'
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
    Top = 597
    Width = 1078
    Height = 50
    HelpContext = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 0
    object btnClose: TSCButton
      Left = 10
      Top = 8
      Width = 72
      Height = 34
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
    object btnExport: TSCButton
      Left = 89
      Top = 8
      Width = 115
      Height = 34
      Caption = '&Export To Excel'
      Images = DM.ImageList1
      ImageIndex = 23
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      OnClick = btnExportClick
    end
    object SCButton1: TSCButton
      Left = 217
      Top = 8
      Width = 115
      Height = 34
      Caption = 'Print'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 2
      OnClick = SCButton1Click
    end
  end
  object pnlTop: TSCPanel
    Left = 0
    Top = 0
    Width = 1078
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
      Left = 426
      Top = 22
      Width = 77
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
      Left = 163
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
    object cxLabel2: TcxLabel
      Left = 302
      Top = 25
      Caption = 'Shift'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object edtShift: TcxComboBox
      Left = 339
      Top = 25
      ParentFont = False
      Properties.Items.Strings = (
        'SEMUA'
        '1'
        '2')
      TabOrder = 6
      Width = 79
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 54
    Width = 1078
    Height = 543
    ActivePage = tabRekap
    Align = alClient
    TabOrder = 4
    ClientRectBottom = 539
    ClientRectLeft = 4
    ClientRectRight = 1074
    ClientRectTop = 24
    object tabRekap: TcxTabSheet
      Caption = 'Rekap'
      ImageIndex = 0
      object grdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1070
        Height = 515
        Align = alClient
        TabOrder = 0
        object grdDBTV_Rekap: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsMaster
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'total_pendapatan'
              Column = grdDBTV_Rekapjumlah
            end
            item
              Kind = skCount
              FieldName = 'usr_upd'
              Column = grdDBTV_Rekapusr_upd
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grdDBTV_Rekapid_jns_kendaraan
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grdDBTV_Rekapjml_kendaraan
            end
            item
              Format = ',0'
              Kind = skSum
              Column = grdDBTV_RekapColumn1
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellAutoHeight = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          Styles.ContentEven = cxStyle3
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          Bands = <
            item
              Width = 550
            end
            item
              Caption = 'KENDARAAN'
            end
            item
              Width = 289
            end>
          object grdDBTV_Rekapnomor: TcxGridDBBandedColumn
            DataBinding.FieldName = 'nomor'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapid_jns_kendaraan: TcxGridDBBandedColumn
            Caption = 'Umum'
            DataBinding.FieldName = 'knd_umum'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapjumlah: TcxGridDBBandedColumn
            Caption = 'Total Pendapatan [Rp]'
            DataBinding.FieldName = 'total_pendapatan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 162
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapshift: TcxGridDBBandedColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 54
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapno_gate_out: TcxGridDBBandedColumn
            DataBinding.FieldName = 'no_gate_out'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapjml_kendaraan: TcxGridDBBandedColumn
            Caption = 'Member'
            DataBinding.FieldName = 'knd_member'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapusr_upd: TcxGridDBBandedColumn
            Caption = 'Hari'
            DataBinding.FieldName = 'nama_hari'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 93
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapstatus: TcxGridDBBandedColumn
            Caption = 'Kasir'
            DataBinding.FieldName = 'usr_upd'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapketerangan: TcxGridDBBandedColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 124
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grdDBTV_RekapColumn1: TcxGridDBBandedColumn
            Caption = 'Total Kendaraan'
            DataBinding.FieldName = 'total_knd'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 127
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
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
        Width = 1070
        Height = 515
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object grdDBTV_Detail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetail
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'denda'
            end
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'tarif'
              Column = grdDBTV_Detailtarif
            end
            item
              Kind = skCount
              Column = grdDBTV_Detailno_karcis
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
          object grdDBTV_Detailno_karcis: TcxGridDBColumn
            Caption = 'NO. KARCIS'
            DataBinding.FieldName = 'no_karcis'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 150
          end
          object grdDBTV_Detailid_jns_anggota: TcxGridDBColumn
            Caption = 'JENIS'
            DataBinding.FieldName = 'id_jns_anggota'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 100
          end
          object grdDBTV_Detailid_jns_kendaraan: TcxGridDBColumn
            Caption = 'TYPE KENDARAAN'
            DataBinding.FieldName = 'type_kendaraan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 139
          end
          object grdDBTV_Detailnopol: TcxGridDBColumn
            Caption = 'NOPOL'
            DataBinding.FieldName = 'nopol'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 113
          end
          object grdDBTV_Detailtarif: TcxGridDBColumn
            Caption = 'TARIF'
            DataBinding.FieldName = 'tarif'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 119
          end
          object grdDBTV_Detailusr_upd: TcxGridDBColumn
            Caption = 'PETUGAS'
            DataBinding.FieldName = 'usr_upd'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 150
          end
          object grdDBTV_Detailshift: TcxGridDBColumn
            Caption = 'SHIFT'
            DataBinding.FieldName = 'shift'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 60
          end
          object grdDBTV_DetailColumn1: TcxGridDBColumn
            Caption = 'TERKIRIM'
            DataBinding.FieldName = 'issent'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 98
          end
        end
        object grdLVL_Detail: TcxGridLevel
          GridView = grdDBTV_Detail
        end
      end
    end
    object tabExport: TcxTabSheet
      Caption = 'Export'
      ImageIndex = 2
      TabVisible = False
      object grdExport: TcxGrid
        Left = 0
        Top = 0
        Width = 1065
        Height = 493
        Align = alClient
        TabOrder = 0
        object grdDBTVExport: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'no_karcis'
              Column = cxGridDBColumn2
            end
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'jumlah'
              Column = grdDBTVExportColumn15
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
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No. Faktur'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 26
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'No. Pelanggan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 30
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Tanggal'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 31
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Akun Piutang'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 31
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'keterangan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 66
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Nilai Tukar'
            DataBinding.FieldName = 'nilai_tukar'
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Nilai Pajak'
            DataBinding.FieldName = 'nilai_tukar'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 71
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Diskon'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 31
          end
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Prosentase Diskon'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 43
          end
          object grdDBTVExportColumn1: TcxGridDBColumn
            Caption = 'Pengguna'
            Width = 41
          end
          object grdDBTVExportColumn2: TcxGridDBColumn
            Caption = 'Syarat'
            DataBinding.FieldName = 'syarat'
            Width = 50
          end
          object grdDBTVExportColumn3: TcxGridDBColumn
            Caption = 'Kirim Ke'
            Width = 54
          end
          object grdDBTVExportColumn4: TcxGridDBColumn
            Caption = 'Kirim Melalui'
            Width = 32
          end
          object grdDBTVExportColumn5: TcxGridDBColumn
            Caption = 'Tgl. Kirim'
            Width = 29
          end
          object grdDBTVExportColumn6: TcxGridDBColumn
            Caption = 'Penjual'
            Width = 34
          end
          object grdDBTVExportColumn7: TcxGridDBColumn
            Caption = 'FOB'
            Width = 51
          end
          object grdDBTVExportColumn8: TcxGridDBColumn
            Caption = 'Rancangan'
            DataBinding.FieldName = 'rancangan'
            Width = 73
          end
          object grdDBTVExportColumn9: TcxGridDBColumn
            Caption = 'Seri Pajak 1'
            Width = 51
          end
          object grdDBTVExportColumn10: TcxGridDBColumn
            Caption = 'Seri Pajak 2'
            Width = 21
          end
          object grdDBTVExportColumn11: TcxGridDBColumn
            Caption = 'Tgl. Faktur Pajak'
            Width = 29
          end
          object grdDBTVExportColumn12: TcxGridDBColumn
            Caption = 'Termasuk Pajak'
            Width = 23
          end
          object grdDBTVExportColumn13: TcxGridDBColumn
            Caption = 'No. Barang'
            DataBinding.FieldName = 'id_jns_kendaraan'
            Width = 23
          end
          object grdDBTVExportColumn14: TcxGridDBColumn
            Caption = 'Qty'
            DataBinding.FieldName = 'nilai_tukar'
            PropertiesClassName = 'TcxLabelProperties'
            Width = 38
          end
          object grdDBTVExportColumn15: TcxGridDBColumn
            Caption = 'Harga Satuan'
            DataBinding.FieldName = 'jumlah'
            Width = 22
          end
          object grdDBTVExportColumn16: TcxGridDBColumn
            Caption = 'Kode Pajak'
            Width = 21
          end
          object grdDBTVExportColumn17: TcxGridDBColumn
            Caption = 'Diskon'
            Width = 24
          end
          object grdDBTVExportColumn18: TcxGridDBColumn
            Caption = 'Satuan'
            Width = 24
          end
          object grdDBTVExportColumn19: TcxGridDBColumn
            Caption = 'Departemen'
            DataBinding.FieldName = 'departemen'
            Width = 23
          end
          object grdDBTVExportColumn20: TcxGridDBColumn
            Caption = 'Proyek'
            DataBinding.FieldName = 'proyek'
            Width = 26
          end
          object grdDBTVExportColumn21: TcxGridDBColumn
            Caption = 'Gudang'
            DataBinding.FieldName = 'departemen'
            Width = 20
          end
          object grdDBTVExportColumn22: TcxGridDBColumn
            Caption = 'Kolom Reserved 1'
            DataBinding.FieldName = 'usr_upd'
            Width = 49
          end
          object grdDBTVExportColumn23: TcxGridDBColumn
            Caption = 'Kolom Reserved 2'
            DataBinding.FieldName = 'keterangan'
            Width = 35
          end
          object grdDBTVExportColumn24: TcxGridDBColumn
            Caption = 'Kolom Reserved 3'
            DataBinding.FieldName = 'id_jns_anggota'
            Width = 20
          end
          object grdDBTVExportColumn25: TcxGridDBColumn
            Caption = 'Kolom Reserved 4'
            DataBinding.FieldName = 'shift'
            Width = 20
          end
          object grdDBTVExportColumn26: TcxGridDBColumn
            Caption = 'Kolom Reserved 5'
            DataBinding.FieldName = 'jml_kendaraan'
            Width = 20
          end
          object grdDBTVExportColumn27: TcxGridDBColumn
            Caption = 'No. Pesanan'
            Width = 20
          end
          object grdDBTVExportColumn28: TcxGridDBColumn
            Caption = 'No Faktur DP'
            Width = 20
          end
          object grdDBTVExportColumn29: TcxGridDBColumn
            Caption = 'Keterangan DP'
            Width = 20
          end
          object grdDBTVExportColumn30: TcxGridDBColumn
            Caption = 'Total DP'
            Width = 20
          end
          object grdDBTVExportColumn31: TcxGridDBColumn
            Caption = 'Pajak DP'
            Width = 20
          end
        end
        object grdlvlExport: TcxGridLevel
          GridView = grdDBTVExport
        end
      end
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
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14680063
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15400938
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15587527
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
  object Detail: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from public.fn_get_detail_lap_ap(:ptgl0,:ptgl1,:pshift)')
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
        Value = '01-03-2021'
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end>
    Left = 333
    Top = 140
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
        Value = '01-03-2021'
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end>
    object Detailnama_outlet: TStringField
      FieldName = 'nama_outlet'
      ReadOnly = True
      Size = 252
    end
    object Detailkd_outlet: TStringField
      FieldName = 'kd_outlet'
      ReadOnly = True
      Size = 252
    end
    object Detailno_karcis: TStringField
      FieldName = 'no_karcis'
      ReadOnly = True
      Size = 252
    end
    object Detailid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      ReadOnly = True
      Size = 252
    end
    object Detailid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      ReadOnly = True
      Size = 252
    end
    object Detailno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      ReadOnly = True
      Size = 252
    end
    object Detailjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
      ReadOnly = True
    end
    object Detailjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
      ReadOnly = True
    end
    object Detailtarif: TFloatField
      FieldName = 'tarif'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Detailnopol: TStringField
      FieldName = 'nopol'
      ReadOnly = True
      Size = 252
    end
    object Detailusr_ins: TStringField
      FieldName = 'usr_ins'
      ReadOnly = True
      Size = 252
    end
    object Detailusr_upd: TStringField
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 252
    end
    object Detaildt_ins: TDateTimeField
      FieldName = 'dt_ins'
      ReadOnly = True
    end
    object Detaildt_upd: TDateTimeField
      FieldName = 'dt_upd'
      ReadOnly = True
    end
    object Detailshift: TIntegerField
      FieldName = 'shift'
      ReadOnly = True
    end
    object Detailstatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 252
    end
    object Detailjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      ReadOnly = True
      Size = 252
    end
    object Detailketerangan: TStringField
      FieldName = 'keterangan'
      ReadOnly = True
      Size = 252
    end
    object Detailtype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      ReadOnly = True
      Size = 252
    end
    object Detailnama_anggota: TStringField
      FieldName = 'nama_anggota'
      ReadOnly = True
      Size = 252
    end
    object Detailissent: TStringField
      FieldName = 'issent'
      ReadOnly = True
      Size = 252
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 334
    Top = 171
  end
  object frxRekapKarcis: TfrxReport
    Version = '5.2.3'
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
    Left = 486
    Top = 358
    Datasets = <
      item
        DataSet = frxCount
        DataSetName = 'frxCount'
      end
      item
        DataSet = frxInfo
        DataSetName = 'frxInfo'
      end
      item
        DataSet = frxMemDetail
        DataSetName = 'frxMemDetail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBMasteruser: TfrxMemoView
          Top = 21.236240000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxInfo."judul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 0.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxInfo."nama_perusahaan"] [frxInfo."alamat"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 66.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 67.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Top = 43.370130000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Periode [frxInfo."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxMemDetail
        DataSetName = 'frxMemDetail'
        RowCount = 0
        Stretched = True
        object Line: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 45.354360000000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxMemDetail."no_karcis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxMemDetail."usr_ins"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 393.071120000000000000
          Width = 109.606291890000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxMemDetail."type_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 502.677490000000000000
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxMemDetail."dt_ins"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 226.771800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxMemDetail."id_jns_anggota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxMemDetail."tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxMemDetail."nopol"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 532.913730000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] Dari [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Top = 71.811070000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PENDAPATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 623.622450000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCount."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 1.779530000000022000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          Left = 593.386210000000000000
          Top = 71.811070000000090000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Top = 7.559060000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL KENDARAAN UMUM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCount."umum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 593.386210000000000000
          Top = 7.559059999999931000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 30.236240000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL KENDARAAN MEMBER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 623.622450000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCount."anggota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 593.386210000000000000
          Top = 30.236240000000120000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Top = 49.133890000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL SELURUH KENDARAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 623.622450000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCount."jumlah_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 593.386210000000000000
          Top = 49.133890000000010000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354347800000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 45.354360000000000000
          Height = 45.354335590000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 45.354360000000000000
          Width = 113.385826770000000000
          Height = 45.354335590000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Karcis')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 393.071120000000000000
          Top = 18.897650000000110000
          Width = 109.606291890000000000
          Height = 26.456697800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 502.677490000000000000
          Top = 18.897650000000000000
          Width = 120.944881890000000000
          Height = 26.456697800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl & Jam')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 45.354335590000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Petugas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 98.267780000000000000
          Height = 26.456697800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000110000
          Width = 94.488250000000000000
          Height = 26.456697800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 226.771800000000000000
          Width = 491.338900000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Detail Parkir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 325.039580000000000000
          Top = 18.897650000000110000
          Width = 68.031540000000000000
          Height = 26.456685590000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'No Plat')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object memDetail: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'no_karcis'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'id_jns_anggota'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'id_jns_kendaraan'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_kartu_char'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'jam_masuk'
        DataType = ftDateTime
      end
      item
        Name = 'jam_keluar'
        DataType = ftDateTime
      end
      item
        Name = 'tarif'
        DataType = ftFloat
      end
      item
        Name = 'denda'
        DataType = ftFloat
      end
      item
        Name = 'foto_bg_in'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'foto_bg_ot'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'nopol'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'usr_ins'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'usr_upd'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'dt_ins'
        DataType = ftDateTime
      end
      item
        Name = 'dt_upd'
        DataType = ftDateTime
      end
      item
        Name = 'iskeluar'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'jns_anggota'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'nama_anggota'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'lama_jam'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'lama_menit'
        DataType = ftFloat
      end
      item
        Name = 'hari'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'jam'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'menit'
        DataType = ftString
        Size = 255
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
    Left = 422
    Top = 354
    object memDetailnama_outlet: TStringField
      FieldName = 'nama_outlet'
      Required = True
      Size = 400
    end
    object memDetailkd_outlet: TStringField
      FieldName = 'kd_outlet'
      Required = True
      Size = 400
    end
    object memDetailno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object memDetailid_jns_anggota: TStringField
      Alignment = taCenter
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object memDetailid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object memDetailno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object memDetailjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object memDetailjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object memDetailtarif: TFloatField
      FieldName = 'tarif'
      DisplayFormat = ',0'
    end
    object memDetailnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object memDetailusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object memDetailusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object memDetaildt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object memDetaildt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object memDetailshift: TIntegerField
      FieldName = 'shift'
    end
    object memDetailstatus: TStringField
      FieldName = 'status'
      Size = 4
    end
    object memDetailjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Size = 4
    end
    object memDetailketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
    object memDetailtype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 1020
    end
    object memDetailnama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
    object memDetailissent: TStringField
      FieldName = 'issent'
      Size = 4
    end
  end
  object frxMemDetail: TfrxDBDataset
    UserName = 'frxMemDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nama_outlet=nama_outlet'
      'kd_outlet=kd_outlet'
      'no_karcis=no_karcis'
      'id_jns_anggota=id_jns_anggota'
      'id_jns_kendaraan=id_jns_kendaraan'
      'no_kartu_char=no_kartu_char'
      'jam_masuk=jam_masuk'
      'jam_keluar=jam_keluar'
      'tarif=tarif'
      'nopol=nopol'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'shift=shift'
      'status=status'
      'jns_pembayaran=jns_pembayaran'
      'keterangan=keterangan'
      'type_kendaraan=type_kendaraan'
      'nama_anggota=nama_anggota'
      'issent=issent')
    DataSet = memDetail
    BCDToCurrency = False
    Left = 452
    Top = 355
  end
  object memInfo: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nama_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'id_perusahaan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'judul'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'periode'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 100
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
    Left = 425
    Top = 316
    object memInfonama_perusahaan: TStringField
      FieldName = 'nama_perusahaan'
      Size = 100
    end
    object memInfoid_perusahaan: TStringField
      FieldName = 'id_perusahaan'
      Size = 100
    end
    object memInfojudul: TStringField
      FieldName = 'judul'
      Size = 100
    end
    object memInfoperiode: TStringField
      FieldName = 'periode'
      Size = 100
    end
    object memInfoalamat: TStringField
      FieldName = 'alamat'
      Size = 100
    end
  end
  object frxInfo: TfrxDBDataset
    UserName = 'frxInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nama_perusahaan=nama_perusahaan'
      'id_perusahaan=id_perusahaan'
      'judul=judul'
      'periode=periode'
      'alamat=alamat')
    DataSet = memInfo
    BCDToCurrency = False
    Left = 455
    Top = 317
  end
  object Count: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.nama_outlet,'
      
        '(select(count(id_jns_anggota)) from report.gate where id_jns_ang' +
        'gota='#39'UMUM'#39') as umum,'
      
        '(select(count(id_jns_anggota)) from report.gate where id_jns_ang' +
        'gota='#39'MEMBER'#39') as anggota,'
      'count(id_jns_anggota) as jumlah_pelanggan,'
      'sum(a.tarif) as jumlah'
      'from report.gate a'
      
        'where a.dt_ins between to_timestamp(:ptgl0, '#39'dd-mm-yyyy'#39') and to' +
        '_timestamp(:ptgl1, '#39'dd-mm-yyyy'#39')'
      '+ interval '#39'23 hour 59 minute'#39
      'group by a.nama_outlet')
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
        Value = '01-03-2021'
      end>
    Left = 335
    Top = 310
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
        Value = '01-03-2021'
      end>
    object Countnama_outlet: TStringField
      FieldName = 'nama_outlet'
      Required = True
      Size = 400
    end
    object Countumum: TLargeintField
      FieldName = 'umum'
      ReadOnly = True
    end
    object Countanggota: TLargeintField
      FieldName = 'anggota'
      ReadOnly = True
    end
    object Countjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Countjumlah_pelanggan: TLargeintField
      FieldName = 'jumlah_pelanggan'
      ReadOnly = True
    end
  end
  object frxCount: TfrxDBDataset
    UserName = 'frxCount'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nama_outlet=nama_outlet'
      'umum=umum'
      'anggota=anggota'
      'jumlah=jumlah'
      'jumlah_pelanggan=jumlah_pelanggan')
    DataSet = Count
    BCDToCurrency = False
    Left = 363
    Top = 308
  end
  object Master: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from public.fn_get_total_lap_ap(:ptgl0,:ptgl1,:pshift)')
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
        Value = '01-03-2021'
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end>
    Left = 298
    Top = 140
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
        Value = '01-03-2021'
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end>
    object Mastertanggal: TStringField
      Alignment = taCenter
      FieldName = 'tanggal'
      ReadOnly = True
      Size = 252
    end
    object Masternama_hari: TStringField
      Alignment = taCenter
      FieldName = 'nama_hari'
      ReadOnly = True
      Size = 252
    end
    object Mastershift: TIntegerField
      Alignment = taCenter
      FieldName = 'shift'
      ReadOnly = True
    end
    object Masterknd_umum: TIntegerField
      Alignment = taCenter
      FieldName = 'knd_umum'
      ReadOnly = True
    end
    object Masterknd_member: TIntegerField
      Alignment = taCenter
      FieldName = 'knd_member'
      ReadOnly = True
    end
    object Mastertotal_knd: TIntegerField
      Alignment = taCenter
      FieldName = 'total_knd'
      ReadOnly = True
    end
    object Mastertotal_pendapatan: TFloatField
      FieldName = 'total_pendapatan'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Masterusr_upd: TStringField
      Alignment = taCenter
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 252
    end
  end
  object dsMaster: TDataSource
    DataSet = Master
    Left = 299
    Top = 171
  end
  object qUpdate: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 216
    Top = 162
  end
  object frxMaster: TfrxReport
    Version = '5.2.3'
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
    Left = 483
    Top = 390
    Datasets = <
      item
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
      end
      item
        DataSet = frxInfo
        DataSetName = 'frxInfo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBMasteruser: TfrxMemoView
          Top = 21.236240000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxInfo."judul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 0.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxInfo."nama_perusahaan"] [frxInfo."alamat"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 66.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 67.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Top = 43.370130000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Periode [frxInfo."periode"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMaster
        DataSetName = 'frxDBMaster'
        RowCount = 0
        Stretched = True
        object Line: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 30.354360000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."nama_hari"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 128.740260000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 356.071120000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."knd_umum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 430.866141730000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."knd_member"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 227.173470000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."shift"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBMaster."total_pendapatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 269.039580000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 506.457020000000000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."total_knd"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 532.913730000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] Dari [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Top = 71.811070000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PENDAPATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 623.622450000000000000
          Top = 71.811070000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total_pendapatan">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 1.779530000000020000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          Left = 593.386210000000000000
          Top = 71.811070000000100000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Top = 7.559060000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL KENDARAAN UMUM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."knd_umum">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 593.386210000000000000
          Top = 7.559059999999930000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Top = 30.236240000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL KENDARAAN MEMBER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 623.622450000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."knd_member">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 593.386210000000000000
          Top = 30.236240000000100000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Top = 49.133890000000000000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL SELURUH KENDARAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 623.622450000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBMaster."total_knd">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 593.386210000000000000
          Top = 49.133890000000000000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354347800000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 30.236240000000000000
          Height = 45.354330708661400000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 30.354360000000000000
          Width = 98.267716540000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Hari')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 356.071120000000000000
          Width = 75.590551180000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Kendaraan Umum')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 430.866420000000000000
          Width = 75.590551180000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Kendaraan Member')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 128.740260000000000000
          Width = 98.267716540000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 227.173470000000000000
          Width = 41.574830000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 612.283860000000000000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Pendapatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 269.039580000000000000
          Width = 86.929190000000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Operator')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 506.457020000000000000
          Width = 105.826771650000000000
          Height = 45.354330710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Seluruh Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object memMaster: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'tanggal'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 252
      end
      item
        Name = 'nama_hari'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 252
      end
      item
        Name = 'shift'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'knd_umum'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'knd_member'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'total_knd'
        Attributes = [faReadonly]
        DataType = ftInteger
      end
      item
        Name = 'total_pendapatan'
        Attributes = [faReadonly]
        DataType = ftFloat
      end
      item
        Name = 'usr_upd'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 252
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
    Left = 422
    Top = 388
    object memMastertanggal: TStringField
      FieldName = 'tanggal'
      ReadOnly = True
      Size = 252
    end
    object memMasternama_hari: TStringField
      FieldName = 'nama_hari'
      ReadOnly = True
      Size = 252
    end
    object memMastershift: TIntegerField
      FieldName = 'shift'
      ReadOnly = True
    end
    object memMasterknd_umum: TIntegerField
      FieldName = 'knd_umum'
      ReadOnly = True
    end
    object memMasterknd_member: TIntegerField
      FieldName = 'knd_member'
      ReadOnly = True
    end
    object memMastertotal_knd: TIntegerField
      FieldName = 'total_knd'
      ReadOnly = True
    end
    object memMastertotal_pendapatan: TFloatField
      FieldName = 'total_pendapatan'
      ReadOnly = True
    end
    object memMasterusr_upd: TStringField
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 252
    end
  end
  object frxDBMaster: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tanggal=tanggal'
      'nama_hari=nama_hari'
      'shift=shift'
      'knd_umum=knd_umum'
      'knd_member=knd_member'
      'total_knd=total_knd'
      'total_pendapatan=total_pendapatan'
      'usr_upd=usr_upd')
    DataSet = memMaster
    BCDToCurrency = False
    Left = 452
    Top = 389
  end
end
