object LapKasirPerShiftFrm: TLapKasirPerShiftFrm
  Left = 182
  Top = 48
  Width = 1182
  Height = 612
  Caption = 'Laporan Kasir / Shift'
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
    Top = 523
    Width = 1166
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 0
    object btnClose: TSCButton
      Left = 11
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
    object btnAdd: TSCButton
      Left = 199
      Top = 8
      Width = 78
      Height = 34
      Caption = '&Cetak'
      Images = DM.ImageList1
      ImageIndex = 8
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnExport: TSCButton
      Left = 284
      Top = 8
      Width = 114
      Height = 34
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
    Width = 1166
    Height = 88
    Align = alTop
    Color = 16579055
    Gradient = scgLeftToRight
    GradientMid = 14731160
    GradientUsesMid = True
    ParentColor = False
    TabOrder = 1
    object Shape8: TShape
      Left = 9
      Top = 55
      Width = 65
      Height = 25
    end
    object Shape4: TShape
      Left = 9
      Top = 31
      Width = 65
      Height = 25
    end
    object Shape1: TShape
      Left = 9
      Top = 7
      Width = 65
      Height = 25
    end
    object Label2: TLabel
      Left = 13
      Top = 13
      Width = 39
      Height = 13
      Caption = 'Tanggal'
      Transparent = True
    end
    object Label3: TLabel
      Left = 13
      Top = 36
      Width = 21
      Height = 13
      Caption = 'Shift'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 13
      Top = 60
      Width = 39
      Height = 13
      Caption = 'Petugas'
      Transparent = True
    end
    object Shape7: TShape
      Left = 73
      Top = 55
      Width = 175
      Height = 25
    end
    object Shape3: TShape
      Left = 73
      Top = 31
      Width = 175
      Height = 25
    end
    object Shape2: TShape
      Left = 73
      Top = 7
      Width = 175
      Height = 25
    end
    object btnOK: TSCButton
      Left = 255
      Top = 39
      Width = 78
      Height = 42
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Images = DM.ImageList1
      ImageIndex = 18
      ParentFont = False
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsXP
      TabOrder = 0
      OnClick = btnOKClick
    end
    object edtShift: TcxComboBox
      Left = 78
      Top = 33
      Properties.Items.Strings = (
        '1'
        '2')
      Properties.MaxLength = 0
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 1
      Width = 165
    end
    object edtPetugas: TcxComboBox
      Left = 78
      Top = 56
      Enabled = False
      Properties.MaxLength = 0
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 2
      Width = 165
    end
    object dtpStart: TwwDBDateTimePicker
      Left = 79
      Top = 9
      Width = 164
      Height = 21
      AutoSize = False
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
      TabOrder = 3
      DisplayFormat = 'dd-mm-yyyy'
    end
  end
  object pgcMaster: TcxPageControl
    Left = 0
    Top = 88
    Width = 1166
    Height = 435
    ActivePage = tabRekap
    Align = alClient
    TabOrder = 4
    ClientRectBottom = 431
    ClientRectLeft = 4
    ClientRectRight = 1162
    ClientRectTop = 24
    object tabRekap: TcxTabSheet
      Caption = 'Rekap'
      ImageIndex = 0
      OnShow = tabRekapShow
      object grdRekap: TcxGrid
        Left = 0
        Top = 0
        Width = 1158
        Height = 407
        Align = alClient
        TabOrder = 0
        object grdDBTV_Rekap: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsqRekap
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0'
              Kind = skSum
              FieldName = 'jumlah'
              Column = grdDBTV_Rekapjumlah
            end
            item
              Kind = skCount
              FieldName = 'usr_upd'
              Column = grdDBTV_Rekapusr_upd
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
          Styles.ContentOdd = cxStyle5
          Styles.Selection = cxStyle2
          Styles.Header = cxStyle1
          Styles.Indicator = cxStyle4
          Bands = <
            item
            end
            item
              Caption = 'KENDARAAN'
            end
            item
              Width = 249
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
            Caption = 'Jenis'
            DataBinding.FieldName = 'id_jns_kendaraan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapjumlah: TcxGridDBBandedColumn
            Caption = 'Jumlah [Rp]'
            DataBinding.FieldName = 'jumlah'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 116
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
            Width = 67
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
            Caption = 'Jumlah'
            DataBinding.FieldName = 'jml_kendaraan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapusr_upd: TcxGridDBBandedColumn
            Caption = 'Operator'
            DataBinding.FieldName = 'usr_upd'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapstatus: TcxGridDBBandedColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'id_jns_anggota'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 133
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grdDBTV_Rekapketerangan: TcxGridDBBandedColumn
            Caption = 'Pos Keluar'
            DataBinding.FieldName = 'keterangan'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Width = 126
            Position.BandIndex = 0
            Position.ColIndex = 2
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
      OnShow = tabDetailShow
      object grdDetail: TcxGrid
        Left = 0
        Top = 0
        Width = 1158
        Height = 407
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
            Width = 113
          end
          object grdDBTV_Detailjns_kendaraan: TcxGridDBColumn
            Caption = 'Jenis Pelanggan'
            DataBinding.FieldName = 'id_jns_anggota'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 86
          end
          object grdDBTV_Detailjam_keluar: TcxGridDBColumn
            Caption = 'Nama Pelanggan'
            DataBinding.FieldName = 'nm_anggota'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 115
          end
          object grdDBTV_Detailpintu_keluar: TcxGridDBColumn
            Caption = 'No. Kartu Member'
            DataBinding.FieldName = 'no_kartu'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 126
          end
          object grdDBTV_Detailjam_masuk: TcxGridDBColumn
            Caption = 'No. Pol Kendaraan'
            DataBinding.FieldName = 'nopol'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 114
          end
          object grdDBTV_Detailstatus_palang: TcxGridDBColumn
            Caption = 'Type Kendaraan'
            DataBinding.FieldName = 'type_kendaraan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 125
          end
          object grdDBTV_Detailpintu_masuk: TcxGridDBColumn
            Caption = 'Jam Masuk'
            DataBinding.FieldName = 'jam_masuk'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 127
          end
          object grdDBTV_Detailjumlah: TcxGridDBColumn
            Caption = 'Jumlah'
            DataBinding.FieldName = 'tarif'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 133
          end
          object grdDBTV_Detailusr_ins: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'usr_upd'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 112
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
          DataController.DataSource = dsqRekap
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'no_karcis'
              Column = cxGridDBColumn1
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
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'No. Faktur'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 26
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'No. Pelanggan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 30
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Tanggal'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 31
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Akun Piutang'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 31
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'keterangan'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 66
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Nilai Tukar'
            DataBinding.FieldName = 'nilai_tukar'
            PropertiesClassName = 'TcxLabelProperties'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 70
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Nilai Pajak'
            DataBinding.FieldName = 'nilai_tukar'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 71
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Diskon'
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            Width = 31
          end
          object cxGridDBColumn9: TcxGridDBColumn
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
  object dsqRekap: TDataSource
    DataSet = qRekap
    Left = 263
    Top = 257
  end
  object qRekap: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.*, g.keterangan from public.fn_get_total_shift(:ptgl,:p' +
        's,:pgate) a'
      
        'left join master.mgate_ot g on CAST(to_number(g.id_gate,'#39'99'#39') AS' +
        ' integer)= a.no_gate_out'
      'order by a.usr_upd')
    Params = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '01/09/2019'
      end
      item
        DataType = ftString
        Name = 'ps'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftUnknown
        Name = 'pgate'
        ParamType = ptUnknown
      end>
    Left = 231
    Top = 258
    ParamData = <
      item
        DataType = ftString
        Name = 'ptgl'
        ParamType = ptUnknown
        Value = '01/09/2019'
      end
      item
        DataType = ftString
        Name = 'ps'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftUnknown
        Name = 'pgate'
        ParamType = ptUnknown
      end>
    object qRekapnomor: TIntegerField
      FieldName = 'nomor'
      ReadOnly = True
    end
    object qRekapid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      ReadOnly = True
      Size = 252
    end
    object qRekapid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 252
    end
    object qRekapjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qRekapshift: TIntegerField
      FieldName = 'shift'
      ReadOnly = True
    end
    object qRekapno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
      ReadOnly = True
    end
    object qRekapjml_kendaraan: TFloatField
      FieldName = 'jml_kendaraan'
      ReadOnly = True
    end
    object qRekapusr_upd: TStringField
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 252
    end
    object qRekapstatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 252
    end
    object qRekapketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
    object qRekapnilai_tukar: TFloatField
      FieldName = 'nilai_tukar'
      ReadOnly = True
      DisplayFormat = '0.0,0'
    end
    object qRekapsyarat: TStringField
      FieldName = 'syarat'
      ReadOnly = True
      Size = 252
    end
    object qRekaprancangan: TStringField
      FieldName = 'rancangan'
      ReadOnly = True
      Size = 252
    end
    object qRekapdepartemen: TStringField
      FieldName = 'departemen'
      ReadOnly = True
      Size = 252
    end
    object qRekapproyek: TStringField
      FieldName = 'proyek'
      ReadOnly = True
      Size = 252
    end
  end
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 392
    Top = 140
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
    Left = 491
    Top = 161
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
    Left = 466
    Top = 136
  end
  object SR: TcxStyleRepository
    Left = 426
    Top = 142
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
    object cxStyle5: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      'nomor=nomor'
      'id_jns_anggota=id_jns_anggota'
      'id_jns_kendaraan=id_jns_kendaraan'
      'jumlah=jumlah'
      'shift=shift'
      'no_gate_out=no_gate_out'
      'jml_kendaraan=jml_kendaraan'
      'usr_upd=usr_upd'
      'status=status'
      'keterangan=keterangan')
    DataSet = qRekap
    BCDToCurrency = False
    Left = 202
    Top = 261
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
    Left = 272
    Top = 328
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
      PaperHeight = 130.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 5.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 135.842610000000000000
        Top = 18.897650000000000000
        Width = 245.669450000000000000
        object frxDBPrintno_rfid: TfrxMemoView
          Left = 0.220470000000000000
          Top = 67.811070000000000000
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
          Width = 245.669450000000000000
          Height = 18.897637800000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'REKAP PENDAPATAN PER SHIFT')
          ParentFont = False
        end
        object frxDBMastertgl: TfrxMemoView
          Top = 71.590600000000000000
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
          Top = 90.488250000000000000
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
        object Memo8: TfrxMemoView
          Top = 109.385900000000000000
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
          Top = 71.590600000000000000
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
          Top = 90.488250000000000000
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
          Top = 109.385900000000000000
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
          Top = 71.590600000000000000
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
          Top = 90.488250000000000000
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
        object Memo18: TfrxMemoView
          Left = 71.811070000000000000
          Top = 109.385900000000000000
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
        object Memo3: TfrxMemoView
          Top = 15.897650000000000000
          Width = 245.669450000000000000
          Height = 18.897637800000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PREMIUM CAR SPACE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 45.354360000000000000
          Width = 245.669450000000000000
          Height = 18.897637800000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."alamat"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 30.236240000000000000
          Width = 245.669450000000000000
          Height = 18.897637800000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBMaster."nama"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 343.937230000000000000
        Width = 245.669450000000000000
        object Memo19: TfrxMemoView
          Width = 143.622140000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8 = (
            'TOTAL PENDAPATAN  :')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBMasteruser: TfrxMemoView
          Top = 34.015769999999970000
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
          Left = 143.622140000000000000
          Width = 102.047310000000000000
          Height = 22.677165350000000000
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
            'Rp.  [SUM(<frxDBPrint."jumlah">,MasterData1)]')
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
        Height = 18.897650000000000000
        ParentFont = False
        Top = 215.433210000000000000
        Width = 245.669450000000000000
        object Memo21: TfrxMemoView
          Width = 143.622140000000000000
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
        object Memo25: TfrxMemoView
          Left = 185.196970000000000000
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
        FillType = ftBrush
        Height = 26.456692910000000000
        Top = 257.008040000000000000
        Width = 245.669450000000000000
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
        RowCount = 0
        object frxDBPrintjns_kendaraan: TfrxMemoView
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBPrint."id_jns_kendaraan"] - [frxDBPrint."id_jns_anggota"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
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
          Highlight.FillType = ftBrush
          Memo.UTF8 = (
            '[frxDBPrint."jml_kendaraan"]')
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
          Highlight.FillType = ftBrush
          Memo.UTF8 = (
            '[frxDBPrint."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object MemMasterList: TkbmMemTable
    Active = True
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
      end
      item
        Name = 'user'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'logo'
        DataType = ftBlob
      end
      item
        Name = 'logo2'
        DataType = ftBlob
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'vnow'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nama'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'telp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'fax'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'kota'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'dt_from_shift'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'dt_end_shift'
        DataType = ftString
        Size = 200
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
    Left = 212
    Top = 297
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
    object MemMasterListnama: TStringField
      FieldName = 'nama'
      Size = 255
    end
    object MemMasterListtelp: TStringField
      FieldName = 'telp'
      Size = 100
    end
    object MemMasterListfax: TStringField
      FieldName = 'fax'
      Size = 100
    end
    object MemMasterListkota: TStringField
      FieldName = 'kota'
      Size = 200
    end
    object MemMasterListdt_from_shift: TStringField
      FieldName = 'dt_from_shift'
      Size = 200
    end
    object MemMasterListdt_end_shift: TStringField
      FieldName = 'dt_end_shift'
      Size = 200
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
      'vnow=vnow'
      'nama=nama'
      'telp=telp'
      'fax=fax'
      'kota=kota'
      'dt_from_shift=dt_from_shift'
      'dt_end_shift=dt_end_shift')
    DataSet = MemMasterList
    BCDToCurrency = False
    Left = 239
    Top = 290
  end
  object Detail: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.*,'
      
        '(case when a.id_jns_anggota='#39'UMUM'#39' then '#39'CASH'#39' else a.nama_anggo' +
        'ta end) as nm_anggota,'
      
        '(case when a.id_jns_anggota='#39'UMUM'#39' then a.no_karcis else a.no_ka' +
        'rtu_char end) as no_kartu'
      'from public.fn_get_detail_shift(:ptgl,:pshift,:pgate) a')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pgate'
        ParamType = ptUnknown
      end>
    Left = 412
    Top = 271
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pgate'
        ParamType = ptUnknown
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
    object Detailid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object Detailno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object Detailjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
      DisplayFormat = 'mm/dd/yyyy hh:mm:ss'
    end
    object Detailjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
      DisplayFormat = 'mm/dd/yyyy hh:mm:ss'
    end
    object Detailno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object Detailno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object Detailshift: TIntegerField
      FieldName = 'shift'
    end
    object Detailstatus: TStringField
      FieldName = 'status'
      Size = 4
    end
    object Detaildstatus: TStringField
      FieldName = 'dstatus'
      Size = 400
    end
    object Detailpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      Size = 1020
    end
    object Detailpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object Detailusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object Detailtarif: TFloatField
      FieldName = 'tarif'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Detaildenda: TFloatField
      FieldName = 'denda'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object Detailfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      ReadOnly = True
      Size = 252
    end
    object Detailfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      ReadOnly = True
      Size = 252
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
    object Detaildt_ins: TDateTimeField
      FieldName = 'dt_ins'
      ReadOnly = True
    end
    object Detaildt_upd: TDateTimeField
      FieldName = 'dt_upd'
      ReadOnly = True
    end
    object Detailiskeluar: TStringField
      FieldName = 'iskeluar'
      ReadOnly = True
      Size = 252
    end
    object Detailno_rfid: TStringField
      FieldName = 'no_rfid'
      ReadOnly = True
      Size = 252
    end
    object Detailjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      ReadOnly = True
      Size = 252
    end
    object Detailjns_anggota: TStringField
      FieldName = 'jns_anggota'
      ReadOnly = True
      Size = 252
    end
    object Detailjns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
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
    object Detailnm_anggota: TStringField
      FieldName = 'nm_anggota'
      ReadOnly = True
      Size = 252
    end
    object Detailno_kartu: TStringField
      FieldName = 'no_kartu'
      ReadOnly = True
      Size = 252
    end
  end
  object dsDetail: TDataSource
    DataSet = Detail
    Left = 411
    Top = 297
  end
  object frxDBDetail: TfrxDBDataset
    UserName = 'frxDBDetail'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_karcis=no_karcis'
      'id_jns_anggota=id_jns_anggota'
      'id_jns_kendaraan=id_jns_kendaraan'
      'no_kartu_char=no_kartu_char'
      'jam_masuk=jam_masuk'
      'jam_keluar=jam_keluar'
      'no_gate_in=no_gate_in'
      'no_gate_out=no_gate_out'
      'shift=shift'
      'status=status'
      'dstatus=dstatus'
      'pintu_masuk=pintu_masuk'
      'pintu_keluar=pintu_keluar'
      'usr_upd=usr_upd'
      'tarif=tarif'
      'denda=denda'
      'foto_bg_in=foto_bg_in'
      'foto_bg_ot=foto_bg_ot'
      'nopol=nopol'
      'usr_ins=usr_ins'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'iskeluar=iskeluar'
      'no_rfid=no_rfid'
      'jns_pembayaran=jns_pembayaran'
      'jns_anggota=jns_anggota'
      'jns_kendaraan=jns_kendaraan'
      'keterangan=keterangan'
      'type_kendaraan=type_kendaraan'
      'nama_anggota=nama_anggota'
      'nm_anggota=nm_anggota'
      'no_kartu=no_kartu')
    DataSet = Detail
    BCDToCurrency = False
    Left = 444
    Top = 280
  end
  object qryNota: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.*, g.keterangan from public.fn_get_total_shift(:ptgl,:p' +
        's) a'
      
        'left join master.mgate_ot g on CAST(to_number(g.id_gate,'#39'99'#39') AS' +
        ' integer)= a.no_gate_out'
      'order by a.usr_upd')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ps'
        ParamType = ptUnknown
      end>
    Left = 577
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ps'
        ParamType = ptUnknown
      end>
    object qryNotanomor: TIntegerField
      FieldName = 'nomor'
      ReadOnly = True
    end
    object qryNotaid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      ReadOnly = True
      Size = 252
    end
    object qryNotaid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      ReadOnly = True
      Size = 252
    end
    object qryNotajumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
    end
    object qryNotashift: TIntegerField
      FieldName = 'shift'
      ReadOnly = True
    end
    object qryNotano_gate_out: TIntegerField
      FieldName = 'no_gate_out'
      ReadOnly = True
    end
    object qryNotajml_kendaraan: TFloatField
      FieldName = 'jml_kendaraan'
      ReadOnly = True
    end
    object qryNotausr_upd: TStringField
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 252
    end
    object qryNotastatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 252
    end
    object qryNotaketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
  end
  object qUser: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select vuser, full_name'
      'from master.vuser'
      'order by vuser')
    Params = <>
    Left = 504
    Top = 51
    object qUservuser: TStringField
      FieldName = 'vuser'
      Required = True
      Size = 120
    end
    object qUserfull_name: TStringField
      FieldName = 'full_name'
      Size = 200
    end
  end
  object dsqUser: TDataSource
    DataSet = qUser
    Left = 522
    Top = 64
  end
  object frxRepRekap: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38721.620727534690000000
    ReportOptions.LastChange = 38721.620727534690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      '  '
      'begin  '
      '  '
      'end.')
    Left = 267
    Top = 297
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          Top = 30.236240000000000000
          Width = 755.906000000000000000
          Height = 49.133890000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN '
            'KASIR PER SHIFT')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 75.590600000000000000
          DataField = 'logo'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo4: TfrxMemoView
          Left = 102.826840000000000000
          Top = 3.779530000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBMaster."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 102.826840000000000000
          Top = 26.456710000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          DataField = 'alamat'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."alamat"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 102.826840000000000000
          Top = 37.795300000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Left = 102.826840000000000000
          Top = 56.692950000000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          DataField = 'fax'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            '[frxDBMaster."fax"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 366.614410000000000000
          Top = 93.063080000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'tgl'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."tgl"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 260.787570000000000000
          Top = 93.063080000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl Transaksi')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 359.055350000000000000
          Top = 93.063080000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 366.614410000000000000
          Top = 108.181200000000000000
          Width = 162.519790000000000000
          Height = 15.118120000000000000
          DataField = 'sift'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."sift"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 260.787570000000000000
          Top = 108.181200000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 359.055350000000000000
          Top = 108.181200000000000000
          Width = 7.559060000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 139.842610000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 143.622140000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897637800000000000
        Top = 355.275820000000000000
        Width = 755.906000000000000000
        DataSet = frxDBPrint
        DataSetName = 'frxDBPrint'
        RowCount = 0
        Stretched = True
        object Memo15: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 37.795300000000000000
          Width = 204.094510160000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'keterangan'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBPrint."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 453.543600000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPrint."jml_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 241.889920000000000000
          Width = 136.063080000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'id_jns_anggota'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBPrint."id_jns_anggota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267726300000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'status'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPrint."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385846300000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBPrint."jumlah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 377.953000000000000000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'id_jns_kendaraan'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBPrint."id_jns_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 589.606680000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object MemoLblPageOfTotalPages: TfrxMemoView
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 230.551330000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Page [Page#] of [TotalPages#]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 56.692950000000000000
          Top = 83.149660000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          DataField = 'tgl'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."tgl"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Top = 83.149660000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal :')
          ParentFont = False
        end
        object MemoApprovedName: TfrxMemoView
          Left = 548.031850000000000000
          Top = 56.692950000000000000
          Width = 207.874150000000000000
          Height = 15.118120000000000000
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '(                                                               ' +
              '             )')
          ParentFont = False
        end
        object MemoApprovedBy: TfrxMemoView
          Left = 548.031850000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.TopLine.Width = 2.000000000000000000
          Frame.RightLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DITERIMA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoPreparedName: TfrxMemoView
          Top = 56.692950000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."user"]')
          ParentFont = False
        end
        object MemoPreparedBy: TfrxMemoView
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.LeftLine.Width = 2.000000000000000000
          Frame.TopLine.Width = 2.000000000000000000
          Memo.UTF8 = (
            'DIBUAT OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 491.338900000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
        object Memo46: TfrxMemoView
          Left = 642.520100000000000000
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBPrint."jumlah">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Top = 7.559060000000000000
          Width = 642.520100000000000000
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Top = 71.811070000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Width = 1.500000000000000000
          Diagonal = True
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 34.015757800000000000
        Top = 298.582870000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBPrint."usr_upd"'
        KeepTogether = True
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 642.520100000000000000
          Height = 30.236227800000000000
          DataField = 'usr_upd'
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          Frame.TopLine.Width = 1.500000000000000000
          Memo.UTF8 = (
            '[frxDBPrint."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 3.779530000000000000
          Width = 113.385868270000000000
          Height = 30.236215590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'OPERATOR :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015752910000000000
        Top = 396.850650000000000000
        Width = 755.906000000000000000
        object Memo7: TfrxMemoView
          Width = 642.520100000000000000
          Height = 30.236222910000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Frame.RightLine.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'JUMLAH  [frxDBPrint."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385900000000000000
          Height = 30.236222910000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00)'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBPrint."jumlah">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        object Memo9: TfrxMemoView
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 37.795300000000000000
          Width = 204.094510160000000000
          Height = 37.795275590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'POS KELUAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 377.953000000000000000
          Width = 166.299258980000000000
          Height = 22.677155590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KENDARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 241.889920000000000000
          Width = 136.063080000000000000
          Height = 37.795275590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 642.520100000000000000
          Width = 113.385846300000000000
          Height = 37.795275590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 544.252320000000000000
          Width = 98.267726300000000000
          Height = 37.795275590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'KETERANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Top = 45.354360000000000000
          Width = 755.906000000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 377.953000000000000000
          Top = 22.677180000000000000
          Width = 75.590538980000000000
          Height = 15.118095590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JENIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 453.543600000000000000
          Top = 22.677180000000000000
          Width = 90.708658980000000000
          Height = 15.118095590000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.TopLine.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
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
    Left = 457
    Top = 316
    Datasets = <
      item
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
      end
      item
        DataSet = frxdbJumlah
        DataSetName = 'frxdbJumlah'
      end
      item
        DataSet = frxDBList
        DataSetName = 'frxDBMaster'
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
        Height = 147.401670000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBMasteruser: TfrxMemoView
          Top = 21.236240000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'REKAP DETAIL LAPORAN PENDAPATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Top = 0.897649999999998700
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."nama"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          Top = 49.133889999999990000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 75.590600000000000000
          Top = 49.133889999999990000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 94.488250000000000000
          Top = 49.133889999999990000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."tgl"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = -0.220470000000000000
          Top = 42.015770000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = -0.220470000000000000
          Top = 43.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Top = 68.031540000000010000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 75.590600000000000000
          Top = 68.031540000000010000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 94.488250000000000000
          Top = 68.031540000000010000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."sift"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 86.929190000000010000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jam')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 75.590600000000000000
          Top = 86.929190000000010000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 94.488250000000000000
          Top = 86.929190000000010000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."dt_from_shift"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 158.740260000000000000
          Top = 86.929190000000010000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            's/d.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 192.756030000000000000
          Top = 86.929190000000010000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."dt_end_shift"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Top = 105.826840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Operator')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 75.590600000000000000
          Top = 105.826840000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 94.488250000000000000
          Top = 105.826840000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMaster."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 124.724490000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Pintu Masuk Premium [frxDBMaster."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
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
          DataField = 'no_karcis'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."no_karcis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'usr_upd'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 393.071120000000000000
          Width = 109.606291890000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."type_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 502.677490000000000000
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."jam_masuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 226.771800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[frxDBDetail."nm_anggota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'tarif'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nopol'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."nopol"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 498.897960000000000000
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
        object frxDBMastertgl: TfrxMemoView
          Width = 529.134200000000000000
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
            'Dicetak Oleh : [frxDBMaster."user"] [frxDBMaster."vnow"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 102.047310000000000000
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Top = 71.811070000000090000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PENDAPATAN KASIR [frxDBMaster."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 623.622450000000000000
          Top = 71.811070000000090000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
            '[SUM(<frxDBDetail."tarif">,MasterData1)]')
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
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
          Top = 7.559059999999931000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PELANGGAN UMUM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 623.622450000000000000
          Top = 7.559059999999931000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
            '[frxdbJumlah."jml_umum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 593.386210000000000000
          Top = 7.559059999999931000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
          Top = 30.236240000000120000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL PELANGGAN MEMBER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 623.622450000000000000
          Top = 30.236240000000120000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
            '[frxdbJumlah."jml_member"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 593.386210000000000000
          Top = 30.236240000000120000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
          Top = 49.133890000000010000
          Width = 593.386210000000000000
          Height = 22.677155590000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL KESELURUHAN PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 623.622450000000000000
          Top = 49.133890000000010000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
            '[frxdbJumlah."jml_all"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 593.386210000000000000
          Top = 49.133890000000010000
          Width = 30.236240000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
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
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 45.354360000000000000
          Height = 45.354335590000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
          Top = 18.897650000000110000
          Width = 120.944881890000000000
          Height = 26.456697800000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl & Jam Masuk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 158.740260000000000000
          Width = 68.031540000000000000
          Height = 45.354335590000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
          Top = 18.897650000000110000
          Width = 98.267780000000000000
          Height = 26.456697800000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Member')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000110000
          Width = 94.488250000000000000
          Height = 26.456697800000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
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
  object qExec: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 636
    Top = 175
  end
  object qData: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'SELECT a.* '
      'from public.fn_get_detail_shift(:ptgl, :pshift) as a'
      'WHERE 1=1 and (a.tarif<>0 and a.tarif<= :pakhir)'
      'order by substr(a.no_karcis,3,15)'
      'limit :pawal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pakhir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pawal'
        ParamType = ptUnknown
      end>
    Left = 748
    Top = 31
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pakhir'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pawal'
        ParamType = ptUnknown
      end>
    object qDatano_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 252
    end
    object qDataid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 252
    end
    object qDataid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 252
    end
    object qDatano_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 252
    end
    object qDatajam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qDatajam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qDatatarif: TFloatField
      FieldName = 'tarif'
    end
    object qDatadenda: TFloatField
      FieldName = 'denda'
    end
    object qDatafoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 252
    end
    object qDatafoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 252
    end
    object qDatanopol: TStringField
      FieldName = 'nopol'
      Size = 252
    end
    object qDatausr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 252
    end
    object qDatausr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 252
    end
    object qDatadt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object qDatadt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object qDataiskeluar: TStringField
      FieldName = 'iskeluar'
      Size = 252
    end
    object qDatano_rfid: TStringField
      FieldName = 'no_rfid'
      Size = 252
    end
    object qDatano_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object qDatano_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object qDatashift: TIntegerField
      FieldName = 'shift'
    end
    object qDatastatus: TStringField
      FieldName = 'status'
      Size = 252
    end
    object qDataketerangan: TStringField
      FieldName = 'keterangan'
      Size = 252
    end
    object qDatajns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Size = 252
    end
    object qDatadstatus: TStringField
      FieldName = 'dstatus'
      Size = 252
    end
    object qDatajns_anggota: TStringField
      FieldName = 'jns_anggota'
      Size = 252
    end
    object qDatajns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
      Size = 252
    end
    object qDatapintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      Size = 252
    end
    object qDatapintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 252
    end
  end
  object qKasir: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select *'
      'from report.kasir')
    Params = <>
    Left = 780
    Top = 32
    object qKasirno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 120
    end
    object qKasirid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object qKasirid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object qKasirno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object qKasirjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qKasirjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qKasirtarif: TFloatField
      FieldName = 'tarif'
    end
    object qKasirdenda: TFloatField
      FieldName = 'denda'
    end
    object qKasirfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object qKasirfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object qKasirnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qKasirusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 120
    end
    object qKasirusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 120
    end
    object qKasirdt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object qKasirdt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object qKasiriskeluar: TStringField
      FieldName = 'iskeluar'
      Size = 4
    end
    object qKasirno_rfid: TStringField
      FieldName = 'no_rfid'
      Size = 200
    end
    object qKasirno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object qKasirno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object qKasirshift: TIntegerField
      FieldName = 'shift'
    end
    object qKasirstatus: TStringField
      FieldName = 'status'
      Size = 4
    end
    object qKasirjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Size = 4
    end
    object qKasirketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
  end
  object MemLogo: TkbmMemTable
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
    Left = 211
    Top = 329
    object MemLogologo: TBlobField
      FieldName = 'logo'
    end
  end
  object frxDBLogo: TfrxDBDataset
    UserName = 'frxDBLogo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'logo=logo')
    DataSet = MemLogo
    BCDToCurrency = False
    Left = 241
    Top = 330
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
    Left = 27
    Top = 161
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
      Size = 1
    end
    object qryGatebtn_mobil_visible: TStringField
      FieldName = 'btn_mobil_visible'
      Size = 1
    end
    object qryGatebtn_bus_visible: TStringField
      FieldName = 'btn_bus_visible'
      Size = 1
    end
    object qryGatebtn_truck_visible: TStringField
      FieldName = 'btn_truck_visible'
      Size = 1
    end
    object qryGatejns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Size = 4
    end
    object qryGatebtn_valet_visible: TStringField
      FieldName = 'btn_valet_visible'
      Size = 4
    end
    object qryGateis_buka_gate_khusus: TStringField
      FieldName = 'is_buka_gate_khusus'
      Size = 4
    end
  end
  object qTimeShift: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select shift, tawal, takhir'
      'from master.mshift'
      'where shift=:pshift')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end>
    Left = 180
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end>
    object qTimeShiftshift: TIntegerField
      FieldName = 'shift'
      Required = True
    end
    object qTimeShifttawal: TTimeField
      FieldName = 'tawal'
    end
    object qTimeShifttakhir: TTimeField
      FieldName = 'takhir'
    end
  end
  object qJmlPelanggan: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select '
      '(select count(a.jns_anggota)'
      'from public.fn_get_detail_shift(:ptgl,:pshift,:pgate_id) a'
      'where a.jns_anggota='#39'UMUM'#39
      'group by a.jns_anggota) as jml_umum,'
      '(select count(a.jns_anggota)'
      'from public.fn_get_detail_shift(:ptgl,:pshift,:pgate_id) a'
      'where a.jns_anggota='#39'MEMBER'#39
      'group by a.jns_anggota) as jml_member,'
      '(select count(a.jns_anggota)'
      
        'from public.fn_get_detail_shift(:ptgl,:pshift,:pgate_id) a) as j' +
        'ml_all')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pgate_id'
        ParamType = ptUnknown
      end>
    Left = 476
    Top = 263
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptgl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pshift'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pgate_id'
        ParamType = ptUnknown
      end>
    object qJmlPelangganjml_umum: TLargeintField
      FieldName = 'jml_umum'
      ReadOnly = True
    end
    object qJmlPelangganjml_member: TLargeintField
      FieldName = 'jml_member'
      ReadOnly = True
    end
    object qJmlPelangganjml_all: TLargeintField
      FieldName = 'jml_all'
      ReadOnly = True
    end
  end
  object frxdbJumlah: TfrxDBDataset
    UserName = 'frxdbJumlah'
    CloseDataSource = False
    FieldAliases.Strings = (
      'jml_umum=jml_umum'
      'jml_member=jml_member'
      'jml_all=jml_all')
    DataSet = qJmlPelanggan
    BCDToCurrency = False
    Left = 476
    Top = 296
  end
  object OpenDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = '.xls'
    Left = 720
    Top = 55
  end
  object frxRekapKarcis0: TfrxReport
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
    Left = 497
    Top = 332
    Datasets = <
      item
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
      end
      item
        DataSet = frxdbJumlah
        DataSetName = 'frxdbJumlah'
      end
      item
        DataSet = frxDBList
        DataSetName = 'frxDBMaster'
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
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxDBMasteruser: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN PENDAPATAN HARIAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal : [frxDBMaster."tgl"]  Shift : [frxDBMaster."sift"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDetail
        DataSetName = 'frxDBDetail'
        RowCount = 0
        Stretched = True
        object Line: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 45.354360000000000000
          Width = 170.078776770000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_karcis'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."no_karcis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 434.645950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'usr_upd'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."usr_upd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 502.677490000000000000
          Width = 132.283471890000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'jam_masuk'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."jam_masuk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 215.433210000000000000
          Width = 113.385821890000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."type_kendaraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'tarif'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDBDetail."tarif"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 328.819110000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nopol'
          DataSet = frxDBDetail
          DataSetName = 'frxDBDetail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDetail."nopol"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          Left = 532.913730000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Hal [Page#] Dari [TotalPages#]')
          ParentFont = False
          VAlign = vaBottom
        end
        object frxDBMastertgl: TfrxMemoView
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dicetak Oleh : [frxDBMaster."user"] [frxDBMaster."vnow"]')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Width = 604.724800000000000000
          Height = 22.677155590000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            'Grand Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 634.961040000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxDBDetail."tarif">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Top = 26.456685590000290000
          Width = 718.110700000000000000
          Height = 0.000024410000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 604.724800000000000000
          Width = 30.236240000000000000
          Height = 22.677155590000000000
          DataSet = frxDBPrint
          DataSetName = 'frxDBPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677167800000000000
        Top = 86.929190000000010000
        Width = 718.110700000000000000
        object Memo18: TfrxMemoView
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 18.897625590000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 45.354360000000000000
          Top = 3.779529999999994000
          Width = 170.078776770000000000
          Height = 18.897625590000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Code')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 502.677490000000000000
          Top = 3.779529999999994000
          Width = 132.283471890000000000
          Height = 18.897637800000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Masuk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 215.433210000000000000
          Top = 3.779529999999994000
          Width = 113.385821890000000000
          Height = 18.897637800000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Type Kendaraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 328.819110000000000000
          Top = 3.779529999999994000
          Width = 105.826840000000000000
          Height = 18.897625590000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Plat No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 634.961040000000000000
          Top = 3.779529999999994000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779529999999994000
          Width = 68.031540000000000000
          Height = 18.897625590000000000
          DataSet = frxDBList
          DataSetName = 'frxDBMaster'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'User')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
