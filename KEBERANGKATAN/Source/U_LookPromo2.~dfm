object LookPromo2Frm: TLookPromo2Frm
  Left = 192
  Top = 113
  Width = 1181
  Height = 617
  Caption = 'Cek Laporan Parkir'
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
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 535
    Width = 1165
    Height = 43
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 0
    DesignSize = (
      1165
      43)
    object btnClose: TSCButton
      Left = 11
      Top = 4
      Width = 72
      Height = 35
      Anchors = [akTop, akRight]
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
      Left = 207
      Top = 4
      Width = 78
      Height = 35
      Anchors = [akTop, akRight]
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
      Left = 90
      Top = 4
      Width = 111
      Height = 35
      Anchors = [akTop, akRight]
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
    Width = 1165
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
    end
    object btnOK: TSCButton
      Left = 509
      Top = 22
      Width = 78
      Height = 25
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
      Caption = 'Periode Tanggal Masuk :'
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
      Top = 22
      Width = 125
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
    end
    object edtCari: TcxTextEdit
      Left = 291
      Top = 22
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      OnKeyPress = edtCariKeyPress
      Width = 212
    end
  end
  object RzSplitter1: TRzSplitter
    Left = 0
    Top = 54
    Width = 1165
    Height = 481
    LockBar = True
    Position = 1162
    Percent = 100
    UsePercent = True
    SplitterStyle = ssGroupBar
    SplitterWidth = 3
    Align = alClient
    Locked = True
    TabOrder = 4
    BarSize = (
      1162
      0
      1165
      481)
    UpperLeftControls = (
      pgcMaster)
    LowerRightControls = ()
    object pgcMaster: TcxPageControl
      Left = 0
      Top = 0
      Width = 1162
      Height = 481
      ActivePage = tabData
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 481
      ClientRectRight = 1162
      ClientRectTop = 24
      object tabData: TcxTabSheet
        Caption = 'DATA PARKIR'
        ImageIndex = 0
        OnShow = tabDataShow
        object RzSplitter2: TRzSplitter
          Left = 0
          Top = 0
          Width = 1162
          Height = 457
          Position = 719
          Percent = 62
          UsePercent = True
          Align = alClient
          TabOrder = 0
          BarSize = (
            719
            0
            723
            457)
          UpperLeftControls = (
            grdDetail)
          LowerRightControls = (
            RzSplitter3)
          object grdDetail: TcxGrid
            Left = 0
            Top = 0
            Width = 719
            Height = 457
            Align = alClient
            TabOrder = 0
            object grdDBTV_Detail: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCellClick = grdDBTV_DetailCellClick
              DataController.DataSource = dsDetail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = ',0'
                  Kind = skSum
                  FieldName = 'jumlah'
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
                Width = 178
              end
              object grdDBTV_Detailjns_anggota: TcxGridDBColumn
                Caption = 'Jenis Pelanggan'
                DataBinding.FieldName = 'id_jns_anggota'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 128
              end
              object grdDBTV_Detailjns_kendaraan: TcxGridDBColumn
                Caption = 'No. Kartu Member'
                DataBinding.FieldName = 'no_kartu_char'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 140
              end
              object grdDBTV_Detailstatus_palang: TcxGridDBColumn
                Caption = 'Nama Member'
                DataBinding.FieldName = 'nama_member'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 232
              end
              object grdDBTV_Detailnopol: TcxGridDBColumn
                Caption = 'Nopol'
                DataBinding.FieldName = 'nopol'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 121
              end
              object grdDBTV_Detailjam_masuk: TcxGridDBColumn
                Caption = 'Type Kendaraan'
                DataBinding.FieldName = 'type_kendaraan'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 127
              end
              object grdDBTV_Detailjam_keluar: TcxGridDBColumn
                Caption = 'Jam Masuk'
                DataBinding.FieldName = 'jam_masuk'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 194
              end
              object grdDBTV_Detailshift: TcxGridDBColumn
                DataBinding.FieldName = 'shift'
                HeaderAlignmentHorz = taCenter
                Width = 63
              end
              object grdDBTV_DetailColumn4: TcxGridDBColumn
                Caption = 'Operator/Kasir'
                DataBinding.FieldName = 'usr_upd'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 116
              end
            end
            object grdLVL_Detail: TcxGridLevel
              GridView = grdDBTV_Detail
            end
          end
          object RzSplitter3: TRzSplitter
            Left = 0
            Top = 0
            Width = 439
            Height = 457
            LockBar = True
            Orientation = orVertical
            Position = 32
            Percent = 7
            UsePercent = True
            SplitterStyle = ssGroupBar
            SplitterWidth = 3
            Align = alClient
            TabOrder = 0
            BarSize = (
              0
              32
              439
              35)
            UpperLeftControls = (
              RzLabel1)
            LowerRightControls = (
              ImageKeluar
              LblFoto_gateout)
            object RzLabel1: TRzLabel
              Left = 0
              Top = 0
              Width = 439
              Height = 32
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Caption = 'FOTO PARKIR MASUK'
              Color = clHighlight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              BlinkIntervalOff = 600
              BlinkIntervalOn = 600
              BorderHighlight = clBlue
              BorderShadow = clBlue
              FlatColor = clBlue
              HighlightColor = clBlue
            end
            object ImageKeluar: TAdvOfficeImage
              Left = 0
              Top = 0
              Width = 439
              Height = 393
              Align = alClient
              Version = '1.1.1.0'
            end
            object LblFoto_gateout: TcxLabel
              Left = 0
              Top = 393
              Align = alBottom
              AutoSize = False
              ParentFont = False
              Transparent = True
              Height = 29
              Width = 439
            end
          end
        end
      end
      object TABkNDkELUAR: TcxTabSheet
        Caption = 'DATA KENDARAAN KELUAR'
        ImageIndex = 1
        OnShow = TABkNDkELUARShow
        object grdKendKeluar: TcxGrid
          Left = 0
          Top = 0
          Width = 1161
          Height = 450
          Align = alClient
          TabOrder = 0
          object grddbtvKendKeluar: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsqKendKeluar
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0'
                Kind = skSum
                FieldName = 'jumlah'
              end
              item
                Kind = skCount
                FieldName = 'no_karcis'
                Column = cxGridDBColumn1
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
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'No. Karcis'
              DataBinding.FieldName = 'no_karcis'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 137
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'id_jns_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'No. Kartu'
              DataBinding.FieldName = 'no_kartu_char'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 64
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Nopol'
              DataBinding.FieldName = 'nopol'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Jam Masuk'
              DataBinding.FieldName = 'jam_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Jam Keluar'
              DataBinding.FieldName = 'jam_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Status Gate'
              DataBinding.FieldName = 'status'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn15: TcxGridDBColumn
              Caption = 'Pintu Masuk'
              DataBinding.FieldName = 'pintu_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 175
            end
            object cxGridDBColumn16: TcxGridDBColumn
              Caption = 'Pintu Keluar'
              DataBinding.FieldName = 'pintu_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 175
            end
            object cxGridDBColumn17: TcxGridDBColumn
              DataBinding.FieldName = 'shift'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
          end
          object grdlvlKendKeluar: TcxGridLevel
            GridView = grddbtvKendKeluar
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
          Width = 1162
          Height = 450
          Align = alClient
          TabOrder = 0
          object grdDBTVExport: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
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
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'No. Faktur'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 100
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'No. Pelanggan'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 140
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Tanggal'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 123
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Akun Piutang'
              DataBinding.FieldName = 'akun_piutang'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 92
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'status'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 151
            end
            object cxGridDBColumn14: TcxGridDBColumn
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
      object TABkNDbLMkELUAR: TcxTabSheet
        Caption = 'DATA KENDARAAN MASIH PARKIR'
        ImageIndex = 2
        OnShow = TABkNDbLMkELUARShow
        object grdKendBlmKeluar: TcxGrid
          Left = 0
          Top = 0
          Width = 1162
          Height = 457
          Align = alClient
          TabOrder = 0
          object grddbtvKendBlmKeluar: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsKendBlmKeluar
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = ',0'
                Kind = skSum
                FieldName = 'jumlah'
              end
              item
                Kind = skCount
                FieldName = 'no_karcis'
                Column = cxGridDBColumn18
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
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'No. Karcis'
              DataBinding.FieldName = 'no_karcis'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 137
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'id_jns_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn20: TcxGridDBColumn
              Caption = 'No. Kartu'
              DataBinding.FieldName = 'no_kartu_char'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 64
            end
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = 'Nopol'
              DataBinding.FieldName = 'nopol'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'Jam Masuk'
              DataBinding.FieldName = 'jam_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = 'Jam Keluar'
              DataBinding.FieldName = 'jam_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = 'Status Gate'
              DataBinding.FieldName = 'status'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = 'Pintu Masuk'
              DataBinding.FieldName = 'pintu_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 175
            end
            object cxGridDBColumn27: TcxGridDBColumn
              Caption = 'Pintu Keluar'
              DataBinding.FieldName = 'pintu_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 175
            end
            object cxGridDBColumn28: TcxGridDBColumn
              DataBinding.FieldName = 'shift'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
          end
          object grdlvlKendBlmKeluar: TcxGridLevel
            GridView = grddbtvKendBlmKeluar
          end
        end
      end
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 850
    Top = 19
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
    Left = 816
    Top = 19
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
    Left = 916
    Top = 15
  end
  object SR: TcxStyleRepository
    Left = 884
    Top = 21
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
      'jumlah=jumlah')
    BCDToCurrency = False
    Left = 753
    Top = 17
  end
  object frxKarcis: TfrxReport
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
    Left = 723
    Top = 15
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
      PaperHeight = 120.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 5.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 245.669450000000000000
        object Memo2: TfrxMemoView
          Width = 264.567100000000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Pendapatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBPrintno_rfid: TfrxMemoView
          Left = 0.220470000000000000
          Top = 52.913420000000000000
          Width = 264.567100000000000000
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
        object Memo8: TfrxMemoView
          Top = 22.677180000000000000
          Width = 264.567100000000000000
          Height = 22.677165350000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl : [frxDBMaster."tgl"] - Shift : [frxDBMaster."sift"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 287.244280000000000000
        Width = 245.669450000000000000
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPrint."jns_anggota"]-[frxDBPrint."jns_kendaraan"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
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
            '[frxDBPrint."jumlah"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 366.614410000000000000
        Width = 245.669450000000000000
        object Memo4: TfrxMemoView
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBPrint."jumlah">,MasterData1)]')
          ParentFont = False
        end
        object frxDBMasteruser: TfrxMemoView
          Top = 30.236240000000000000
          Width = 264.566977950000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'User : [frxDBMaster."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 34.015770000000000000
        ParentFont = False
        Top = 230.551330000000000000
        Width = 245.669450000000000000
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Rekapitulasi :')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
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
    Left = 677
    Top = 25
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
  end
  object frxDBList: TfrxDBDataset
    UserName = 'frxDBMaster'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tgl=tgl'
      'sift=sift'
      'user=user')
    DataSet = MemMasterList
    BCDToCurrency = False
    Left = 648
    Top = 18
  end
  object Detail: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar,' +
        ' a.tarif, a.foto_bg_in, got.keterangan as pintu_masuk,'
      
        '       a.foto_bg_ot, a.no_gate_in, a.no_gate_out, a.shift, s.dis' +
        'kripsi as status, a.nopol, a.id_jns_kendaraan, a.type_kendaraan,' +
        ' a.usr_upd,'
      
        '(case when a.id_jns_anggota='#39'UMUM'#39' then a.no_karcis else a.no_ka' +
        'rtu_char end) as no_kartu_char,'
      
        '(case when a.id_jns_anggota='#39'UMUM'#39' then '#39'--CASH'#39' else a.nama_ang' +
        'gota end) as nama_member'
      'from trans.gate a'
      'left join master.mstatus s on s.id_status=a.status '
      
        'left join master.mgate_ot got on cast(to_number(got.id_gate,'#39'99'#39 +
        ') as integer)=a.no_gate_out'
      
        'left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in,' +
        ' a.keterangan as pintu_masuk'
      #9#9'from master.mgate_in a'
      
        #9#9'join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_n' +
        'umber(gin.id_gate,'#39'99'#39') as integer)=a.no_gate_in'
      
        'where a.jam_masuk between to_timestamp(:ptgl0,'#39'dd-mm-yyyy'#39') and ' +
        'to_timestamp(:ptgl1,'#39'dd-mm-yyyy'#39') +  interval '#39'23 hours 59 min'#39
      'order by a.jam_masuk')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-07-2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01-08-2019'
      end>
    Left = 746
    Top = 108
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-07-2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01-08-2019'
      end>
    object Detailno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object Detailid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object Detailjam_masuk: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'jam_masuk'
      DisplayFormat = 'dddd, dd-mm-yyyy hh:mm:ss'
    end
    object Detailjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object Detailtarif: TFloatField
      FieldName = 'tarif'
    end
    object Detailfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object Detailpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      Size = 1020
    end
    object Detailfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object Detailno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object Detailno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object Detailshift: TIntegerField
      Alignment = taCenter
      FieldName = 'shift'
    end
    object Detailstatus: TStringField
      FieldName = 'status'
      Size = 400
    end
    object Detailnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object Detailid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object Detailno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      ReadOnly = True
      Size = 252
    end
    object Detailnama_member: TStringField
      FieldName = 'nama_member'
      ReadOnly = True
      Size = 252
    end
    object Detailtype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 1020
    end
    object Detailusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 746
    Top = 137
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
    BCDToCurrency = False
    Left = 846
    Top = 55
  end
  object frxRekap: TfrxReport
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
    Left = 820
    Top = 53
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
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 245.669450000000000000
        object Memo2: TfrxMemoView
          Width = 264.567100000000000000
          Height = 22.677165350000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Laporan Pendapatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBPrintno_rfid: TfrxMemoView
          Left = 0.220470000000000000
          Top = 52.913420000000000000
          Width = 264.567100000000000000
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
        object Memo8: TfrxMemoView
          Top = 22.677180000000000000
          Width = 264.567100000000000000
          Height = 22.677165350000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl : [frxDBMaster."tgl"] - Shift : [frxDBMaster."sift"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 245.669450000000000000
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPrint."jns_anggota"]-[frxDBPrint."jns_kendaraan"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPrint."jumlah"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 275.905690000000000000
        Width = 245.669450000000000000
        object Memo4: TfrxMemoView
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'TOTAL')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBPrint."jumlah">,MasterData1)]')
          ParentFont = False
        end
        object frxDBMasteruser: TfrxMemoView
          Top = 30.236240000000000000
          Width = 264.566977950000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'User : [frxDBMaster."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 34.015770000000000000
        ParentFont = False
        Top = 139.842610000000000000
        Width = 245.669450000000000000
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Rekapitulasi :')
          ParentFont = False
        end
      end
    end
  end
  object qryGate: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mgate_ot'
      'where id_gate=:pid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    Left = 628
    Top = 163
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    object qryGateid_gate: TStringField
      FieldName = 'id_gate'
      Required = True
      Size = 5
    end
    object qryGategt_isactive: TStringField
      FieldName = 'gt_isactive'
      Size = 1
    end
    object qryGategt_print: TStringField
      FieldName = 'gt_print'
      Size = 100
    end
    object qryGategt_pict_in: TStringField
      FieldName = 'gt_pict_in'
      Size = 100
    end
    object qryGategt_pict_ot: TStringField
      FieldName = 'gt_pict_ot'
      Size = 100
    end
    object qryGategt_com_port: TStringField
      FieldName = 'gt_com_port'
      Size = 100
    end
    object qryGategt_open_cmd: TStringField
      FieldName = 'gt_open_cmd'
      Size = 10
    end
    object qryGateketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object qryGategt_cam: TStringField
      FieldName = 'gt_cam'
      Size = 255
    end
    object qryGateis_karcis_hilang: TStringField
      FieldName = 'is_karcis_hilang'
      Size = 1
    end
    object qryGateis_buka_gate: TStringField
      FieldName = 'is_buka_gate'
      Size = 1
    end
    object qryGatebtn_motor_visible: TStringField
      FieldName = 'btn_motor_visible'
      ReadOnly = True
      Size = 1
    end
    object qryGatebtn_mobil_visible: TStringField
      FieldName = 'btn_mobil_visible'
      ReadOnly = True
      Size = 1
    end
    object qryGatebtn_bus_visible: TStringField
      FieldName = 'btn_bus_visible'
      ReadOnly = True
      Size = 1
    end
    object qryGatebtn_truck_visible: TStringField
      FieldName = 'btn_truck_visible'
      ReadOnly = True
      Size = 1
    end
  end
  object qKendKeluar: TZQuery
    Connection = DM.conn
    BeforeOpen = qKendKeluarBeforeOpen
    SQL.Strings = (
      
        'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar,' +
        ' a.tarif, a.foto_bg_in, got.keterangan as pintu_keluar,'
      
        '          gin.pintu_masuk, a.foto_bg_ot, a.no_gate_in, a.no_gate' +
        '_out, a.shift, s.diskripsi as status, a.nopol, a.no_kartu_char, ' +
        'a.id_jns_kendaraan'
      'from trans.gate a'
      'left join master.mstatus s on s.id_status=a.status '
      
        'left join master.mgate_ot got on cast(to_number(got.id_gate,'#39'99'#39 +
        ') as integer)=a.no_gate_out'
      
        'left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in,' +
        ' a.keterangan as pintu_masuk'
      #9#9'from master.mgate_in a'
      
        #9#9'join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_n' +
        'umber(gin.id_gate,'#39'99'#39') as integer)=a.no_gate_in'
      
        'where a.jam_masuk between to_timestamp(:ptgl0,'#39'dd-mm-yyyy'#39') and ' +
        'to_timestamp(:ptgl1,'#39'dd-mm-yyyy'#39') +  interval '#39'23 hours 59 min'#39
      'and a.iskeluar='#39'1'#39
      'order by a.jam_masuk')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-07-2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01-08-2019'
      end>
    Left = 778
    Top = 108
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-07-2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01-08-2019'
      end>
    object qKendKeluarno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object qKendKeluarid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object qKendKeluarjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qKendKeluarjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qKendKeluartarif: TFloatField
      FieldName = 'tarif'
    end
    object qKendKeluarfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object qKendKeluarpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object qKendKeluarpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      ReadOnly = True
      Size = 1020
    end
    object qKendKeluarfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object qKendKeluarno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object qKendKeluarno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object qKendKeluarshift: TIntegerField
      FieldName = 'shift'
    end
    object qKendKeluarstatus: TStringField
      FieldName = 'status'
      Size = 400
    end
    object qKendKeluarnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qKendKeluarno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object qKendKeluarid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
  end
  object dsqKendKeluar: TDataSource
    DataSet = qKendKeluar
    Left = 778
    Top = 137
  end
  object qKendBlmKeluar: TZQuery
    Connection = DM.conn
    BeforeOpen = qKendBlmKeluarBeforeOpen
    SQL.Strings = (
      
        'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar,' +
        ' a.tarif, a.foto_bg_in, got.keterangan as pintu_keluar,'
      
        '          gin.pintu_masuk, a.foto_bg_ot, a.no_gate_in, a.no_gate' +
        '_out, a.shift, s.diskripsi as status, a.nopol, a.no_kartu_char, ' +
        'a.id_jns_kendaraan'
      'from trans.gate a'
      'left join master.mstatus s on s.id_status=a.status '
      
        'left join master.mgate_ot got on cast(to_number(got.id_gate,'#39'99'#39 +
        ') as integer)=a.no_gate_out'
      
        'left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in,' +
        ' a.keterangan as pintu_masuk'
      #9#9'from master.mgate_in a'
      
        #9#9'join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_n' +
        'umber(gin.id_gate,'#39'99'#39') as integer)=a.no_gate_in'
      
        'where a.jam_masuk between to_timestamp(:ptgl0,'#39'dd-mm-yyyy'#39') and ' +
        'to_timestamp(:ptgl1,'#39'dd-mm-yyyy'#39') +  interval '#39'23 hours 59 min'#39
      'and a.iskeluar='#39'0'#39
      'order by a.jam_masuk')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-07-2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01-08-2019'
      end>
    Left = 810
    Top = 108
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01-07-2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01-08-2019'
      end>
    object qKendBlmKeluarno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object qKendBlmKeluarid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object qKendBlmKeluarjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qKendBlmKeluarjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qKendBlmKeluartarif: TFloatField
      FieldName = 'tarif'
    end
    object qKendBlmKeluarfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object qKendBlmKeluarpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object qKendBlmKeluarpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      ReadOnly = True
      Size = 1020
    end
    object qKendBlmKeluarfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object qKendBlmKeluarno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object qKendBlmKeluarno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object qKendBlmKeluarshift: TIntegerField
      FieldName = 'shift'
    end
    object qKendBlmKeluarstatus: TStringField
      FieldName = 'status'
      Size = 400
    end
    object qKendBlmKeluarnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qKendBlmKeluarno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object qKendBlmKeluarid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
  end
  object dsKendBlmKeluar: TDataSource
    DataSet = qKendBlmKeluar
    Left = 810
    Top = 137
  end
end
