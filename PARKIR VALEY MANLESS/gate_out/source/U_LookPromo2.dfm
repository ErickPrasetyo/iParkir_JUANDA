object LookPromo2Frm: TLookPromo2Frm
  Left = 490
  Top = 148
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
    Top = 528
    Width = 1165
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 0
    DesignSize = (
      1165
      50)
    object btnClose: TSCButton
      Left = 11
      Top = 7
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
      Top = 7
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
      Top = 7
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
    Height = 474
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
      474)
    UpperLeftControls = (
      pgcMaster)
    LowerRightControls = ()
    object pgcMaster: TcxPageControl
      Left = 0
      Top = 0
      Width = 1162
      Height = 474
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 474
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
          Height = 450
          Position = 870
          Percent = 75
          UsePercent = True
          Align = alClient
          TabOrder = 0
          BarSize = (
            870
            0
            874
            450)
          UpperLeftControls = (
            grdDetail)
          LowerRightControls = (
            RzSplitter3)
          object grdDetail: TcxGrid
            Left = 0
            Top = 0
            Width = 870
            Height = 450
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
                Width = 137
              end
              object grdDBTV_Detailjns_anggota: TcxGridDBColumn
                Caption = 'Jenis'
                DataBinding.FieldName = 'id_jns_anggota'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 62
              end
              object grdDBTV_Detailjns_kendaraan: TcxGridDBColumn
                Caption = 'No. Kartu'
                DataBinding.FieldName = 'no_kartu_char'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 64
              end
              object grdDBTV_Detailnopol: TcxGridDBColumn
                Caption = 'Nopol'
                DataBinding.FieldName = 'nopol'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 62
              end
              object grdDBTV_Detailjam_masuk: TcxGridDBColumn
                Caption = 'Jam Masuk'
                DataBinding.FieldName = 'jam_masuk'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 127
              end
              object grdDBTV_Detailjam_keluar: TcxGridDBColumn
                Caption = 'Jam Keluar'
                DataBinding.FieldName = 'jam_keluar'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 127
              end
              object grdDBTV_Detailstatus_palang: TcxGridDBColumn
                Caption = 'Status Gate'
                DataBinding.FieldName = 'status'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 83
              end
              object grdDBTV_Detailjumlah: TcxGridDBColumn
                Caption = 'Kendaraan'
                DataBinding.FieldName = 'id_jns_kendaraan'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 72
              end
              object grdDBTV_Detailusr_ins: TcxGridDBColumn
                Caption = 'Pintu Masuk'
                DataBinding.FieldName = 'pintu_masuk'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Options.Editing = False
                Width = 175
              end
              object grdDBTV_Detailpintu_keluar: TcxGridDBColumn
                Caption = 'Pintu Keluar'
                DataBinding.FieldName = 'pintu_keluar'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 175
              end
              object grdDBTV_Detailshift: TcxGridDBColumn
                DataBinding.FieldName = 'shift'
                HeaderAlignmentHorz = taCenter
                Width = 48
              end
              object grdDBTV_DetailColumn1: TcxGridDBColumn
                Caption = 'No Ktp'
                DataBinding.FieldName = 'no_ktp'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 132
              end
              object grdDBTV_DetailColumn2: TcxGridDBColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'nama'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 179
              end
              object grdDBTV_DetailColumn3: TcxGridDBColumn
                Caption = 'Alamat'
                DataBinding.FieldName = 'alamat'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 200
              end
              object grdDBTV_DetailColumn4: TcxGridDBColumn
                Caption = 'No. HP'
                DataBinding.FieldName = 'no_hp'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Width = 100
              end
            end
            object grdLVL_Detail: TcxGridLevel
              GridView = grdDBTV_Detail
            end
          end
          object RzSplitter3: TRzSplitter
            Left = 0
            Top = 0
            Width = 288
            Height = 450
            LockBar = True
            Orientation = orVertical
            Position = 238
            Percent = 53
            UsePercent = True
            SplitterStyle = ssGroupBar
            SplitterWidth = 3
            Align = alClient
            TabOrder = 0
            BarSize = (
              0
              238
              288
              241)
            UpperLeftControls = (
              RzLabel1
              ImageMasuk
              LblFoto_gateinp)
            LowerRightControls = (
              lblCameraGateOut
              ImageKeluar
              LblFoto_gateout)
            object RzLabel1: TRzLabel
              Left = 0
              Top = 0
              Width = 288
              Height = 24
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'FOTO PARKIR MASUK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              BlinkIntervalOff = 750
              BlinkIntervalOn = 750
            end
            object ImageMasuk: TAdvOfficeImage
              Left = 0
              Top = 24
              Width = 288
              Height = 192
              Align = alClient
              Version = '1.1.1.0'
            end
            object LblFoto_gateinp: TcxLabel
              Left = 0
              Top = 216
              Align = alBottom
              AutoSize = False
              ParentFont = False
              Transparent = True
              Height = 22
              Width = 288
            end
            object lblCameraGateOut: TRzLabel
              Left = 0
              Top = 0
              Width = 288
              Height = 24
              Cursor = crHandPoint
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              Caption = 'FOTO PARKIR KELUAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              BlinkIntervalOff = 750
              BlinkIntervalOn = 750
            end
            object ImageKeluar: TAdvOfficeImage
              Left = 0
              Top = 24
              Width = 288
              Height = 168
              Align = alClient
              Version = '1.1.1.0'
            end
            object LblFoto_gateout: TcxLabel
              Left = 0
              Top = 192
              Align = alBottom
              AutoSize = False
              ParentFont = False
              Transparent = True
              Height = 17
              Width = 288
            end
          end
        end
      end
      object TABkNDkELUAR: TcxTabSheet
        Caption = 'DATA KENDARAAN KELUAR (UMUM)'
        ImageIndex = 1
        object grdKendKeluar: TcxGrid
          Left = 0
          Top = 0
          Width = 1162
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
      object tabMshParkir: TcxTabSheet
        Caption = 'KENDARAAN MASIH PARKIR (UMUM)'
        ImageIndex = 2
        object grdMshParkir: TcxGrid
          Left = 0
          Top = 0
          Width = 1162
          Height = 450
          Align = alClient
          TabOrder = 0
          object grdDbTvMshParkir: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsBlmKeluar
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
                Column = cxGridDBColumn8
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
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'No. Karcis'
              DataBinding.FieldName = 'no_karcis'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 137
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'id_jns_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'No. Kartu'
              DataBinding.FieldName = 'no_kartu_char'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 64
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Nopol'
              DataBinding.FieldName = 'nopol'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Jam Masuk'
              DataBinding.FieldName = 'jam_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn13: TcxGridDBColumn
              Caption = 'Jam Keluar'
              DataBinding.FieldName = 'jam_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn14: TcxGridDBColumn
              Caption = 'Status Gate'
              DataBinding.FieldName = 'status'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn18: TcxGridDBColumn
              Caption = 'Pintu Masuk'
              DataBinding.FieldName = 'pintu_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 175
            end
            object cxGridDBColumn19: TcxGridDBColumn
              Caption = 'Pintu Keluar'
              DataBinding.FieldName = 'pintu_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 175
            end
            object cxGridDBColumn20: TcxGridDBColumn
              DataBinding.FieldName = 'shift'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
          end
          object grdLvlMshParkir: TcxGridLevel
            GridView = grdDbTvMshParkir
          end
        end
      end
      object tabAnggotaKeluar: TcxTabSheet
        Caption = 'DATA KENDARAAN KELUAR (ANGGOTA)'
        ImageIndex = 3
        object grdAnggotaKeluar: TcxGrid
          Left = 0
          Top = 0
          Width = 1162
          Height = 450
          Align = alClient
          TabOrder = 0
          object grdDbTvAnggotaKeluar: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAnggotaKeluar
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
                Column = cxGridDBColumn21
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
            object cxGridDBColumn21: TcxGridDBColumn
              Caption = 'No. Karcis'
              DataBinding.FieldName = 'no_karcis'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 137
            end
            object cxGridDBColumn22: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'id_jns_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn23: TcxGridDBColumn
              Caption = 'Nama Anggota'
              DataBinding.FieldName = 'nama_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 143
            end
            object grdDbTvAnggotaKeluarColumn1: TcxGridDBColumn
              Caption = 'No. Kartu'
              DataBinding.FieldName = 'no_kartu_char'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 127
            end
            object cxGridDBColumn24: TcxGridDBColumn
              Caption = 'Nopol'
              DataBinding.FieldName = 'nopol'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn25: TcxGridDBColumn
              Caption = 'Jam Masuk'
              DataBinding.FieldName = 'jam_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn26: TcxGridDBColumn
              Caption = 'Jam Keluar'
              DataBinding.FieldName = 'jam_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn27: TcxGridDBColumn
              Caption = 'Status Gate'
              DataBinding.FieldName = 'status'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn28: TcxGridDBColumn
              Caption = 'Pintu Masuk'
              DataBinding.FieldName = 'pintu_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 175
            end
            object cxGridDBColumn29: TcxGridDBColumn
              Caption = 'Pintu Keluar'
              DataBinding.FieldName = 'pintu_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 175
            end
            object cxGridDBColumn30: TcxGridDBColumn
              DataBinding.FieldName = 'shift'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
          end
          object grdLvlAnggotaKeluar: TcxGridLevel
            GridView = grdDbTvAnggotaKeluar
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'DATA KENDARAAN MASIH PARKIR (ANGGOTA)'
        ImageIndex = 4
        object grdAnggotaMshParkir: TcxGrid
          Left = 0
          Top = 0
          Width = 1162
          Height = 450
          Align = alClient
          TabOrder = 0
          object grdDbTvAnggotaMshParkir: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAnggotaMshParkir
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
                Column = cxGridDBColumn31
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
            object cxGridDBColumn31: TcxGridDBColumn
              Caption = 'No. Karcis'
              DataBinding.FieldName = 'no_karcis'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 137
            end
            object cxGridDBColumn32: TcxGridDBColumn
              Caption = 'Jenis'
              DataBinding.FieldName = 'id_jns_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn33: TcxGridDBColumn
              Caption = 'Nama Anggota'
              DataBinding.FieldName = 'nama_anggota'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 221
            end
            object grdDbTvAnggotaMshParkirColumn1: TcxGridDBColumn
              Caption = 'No. Kartu'
              DataBinding.FieldName = 'no_kartu_char'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 127
            end
            object cxGridDBColumn34: TcxGridDBColumn
              Caption = 'Nopol'
              DataBinding.FieldName = 'nopol'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn35: TcxGridDBColumn
              Caption = 'Jam Masuk'
              DataBinding.FieldName = 'jam_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn36: TcxGridDBColumn
              Caption = 'Jam Keluar'
              DataBinding.FieldName = 'jam_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 127
            end
            object cxGridDBColumn37: TcxGridDBColumn
              Caption = 'Status Gate'
              DataBinding.FieldName = 'status'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn38: TcxGridDBColumn
              Caption = 'Pintu Masuk'
              DataBinding.FieldName = 'pintu_masuk'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Editing = False
              Width = 175
            end
            object cxGridDBColumn39: TcxGridDBColumn
              Caption = 'Pintu Keluar'
              DataBinding.FieldName = 'pintu_keluar'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 175
            end
            object cxGridDBColumn40: TcxGridDBColumn
              DataBinding.FieldName = 'shift'
              HeaderAlignmentHorz = taCenter
              Width = 57
            end
          end
          object grdLvlAnggotaMshParkir: TcxGridLevel
            GridView = grdDbTvAnggotaMshParkir
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
        ' a.tarif, a.foto_bg_in, got.keterangan as pintu_keluar,'
      
        '          gin.pintu_masuk, a.foto_bg_ot, a.no_gate_in, a.no_gate' +
        '_out, a.shift, s.diskripsi as status, a.nopol, c.no_ktp, c.nama,' +
        ' c.alamat, c.no_hp,'
      #9#9'  a.no_kartu_char, a.id_jns_kendaraan'
      'from trans.gate a'
      'left join master.mstatus s on s.id_status=a.status '
      
        'left join master.mgate_ot got on cast(to_number(got.id_gate,'#39'99'#39 +
        ') as integer)=a.no_gate_out'
      
        'left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in,' +
        ' a.keterangan as pintu_masuk'
      #9#9'from master.mgate_in a'
      
        #9#9'join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_n' +
        'umber(gin.id_gate,'#39'99'#39') as integer)=a.no_gate_in'
      'left join trans.karcis_hilang c on c.no_karcis=a.no_karcis'
      
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
      FieldName = 'jam_masuk'
      DisplayFormat = 'dd-mm-yyyy hh:nn:ss'
    end
    object Detailjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
      DisplayFormat = 'dd-mm-yyyy hh:nn:ss'
    end
    object Detailtarif: TFloatField
      FieldName = 'tarif'
    end
    object Detailfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      ReadOnly = True
      Size = 1020
    end
    object Detailfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      ReadOnly = True
      Size = 1020
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
      Size = 400
    end
    object Detailnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object Detailno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object Detailpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object Detailpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      ReadOnly = True
      Size = 1020
    end
    object Detailid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object Detailno_ktp: TStringField
      FieldName = 'no_ktp'
      Size = 1020
    end
    object Detailnama: TStringField
      FieldName = 'nama'
      Size = 1020
    end
    object Detailalamat: TStringField
      FieldName = 'alamat'
      Size = 1020
    end
    object Detailno_hp: TStringField
      FieldName = 'no_hp'
      Size = 1020
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
          Top = 30.236240000000010000
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
          Top = 11.338590000000010000
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
      'and a.iskeluar='#39'1'#39' and a.no_kartu_char is null'
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
  object blmKeluar: TZQuery
    Connection = DM.conn
    BeforeOpen = blmKeluarBeforeOpen
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
      'and a.iskeluar='#39'0'#39' and a.no_kartu_char is null'
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
    object blmKeluarno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object blmKeluarid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object blmKeluarjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object blmKeluarjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object blmKeluartarif: TFloatField
      FieldName = 'tarif'
    end
    object blmKeluarfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object blmKeluarpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object blmKeluarpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      ReadOnly = True
      Size = 1020
    end
    object blmKeluarfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object blmKeluarno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object blmKeluarno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object blmKeluarshift: TIntegerField
      FieldName = 'shift'
    end
    object blmKeluarstatus: TStringField
      FieldName = 'status'
      Size = 400
    end
    object blmKeluarnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object blmKeluarno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object blmKeluarid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
  end
  object dsBlmKeluar: TDataSource
    DataSet = blmKeluar
    Left = 810
    Top = 137
  end
  object AnggotaKeluar: TZQuery
    Connection = DM.conn
    BeforeOpen = AnggotaKeluarBeforeOpen
    SQL.Strings = (
      
        'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar,' +
        ' a.tarif, a.foto_bg_in, got.keterangan as pintu_keluar,'
      
        '          gin.pintu_masuk, a.foto_bg_ot, a.no_gate_in, a.no_gate' +
        '_out, a.shift, s.diskripsi as status, a.nopol, a.no_kartu_char, ' +
        'g.nama_anggota, a.id_jns_kendaraan'
      'from trans.gate a'
      'left join master.mstatus s on s.id_status=a.status '
      
        'left join master.mgate_ot got on cast(to_number(got.id_gate,'#39'99'#39 +
        ') as integer)=a.no_gate_out'
      
        'left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in,' +
        ' a.keterangan as pintu_masuk'
      #9#9'from master.mgate_in a'
      
        #9#9'join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_n' +
        'umber(gin.id_gate,'#39'99'#39') as integer)=a.no_gate_in'
      'left join master.manggota g on g.no_kartu_char=a.no_kartu_char'
      
        'where a.jam_masuk between to_timestamp(:ptgl0,'#39'dd-mm-yyyy'#39') and ' +
        'to_timestamp(:ptgl1,'#39'dd-mm-yyyy'#39') +  interval '#39'23 hours 59 min'#39
      
        'and a.iskeluar='#39'1'#39' and a.id_jns_anggota='#39'-'#39' and g.id_jns_anggota' +
        '='#39'KARYAWAN'#39
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
    Left = 842
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
    object AnggotaKeluarno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object AnggotaKeluarid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object AnggotaKeluarjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object AnggotaKeluarjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object AnggotaKeluartarif: TFloatField
      FieldName = 'tarif'
    end
    object AnggotaKeluarfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object AnggotaKeluarpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object AnggotaKeluarpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      ReadOnly = True
      Size = 1020
    end
    object AnggotaKeluarfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object AnggotaKeluarno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object AnggotaKeluarno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object AnggotaKeluarshift: TIntegerField
      FieldName = 'shift'
    end
    object AnggotaKeluarstatus: TStringField
      FieldName = 'status'
      Size = 400
    end
    object AnggotaKeluarnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object AnggotaKeluarno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object AnggotaKeluarid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object AnggotaKeluarnama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
  end
  object dsAnggotaKeluar: TDataSource
    DataSet = AnggotaKeluar
    Left = 842
    Top = 137
  end
  object AnggotaMshParkir: TZQuery
    Connection = DM.conn
    BeforeOpen = AnggotaMshParkirBeforeOpen
    SQL.Strings = (
      
        'select a.no_karcis, a.id_jns_anggota, a.jam_masuk, a.jam_keluar,' +
        ' a.tarif, a.foto_bg_in, got.keterangan as pintu_keluar,'
      
        '          gin.pintu_masuk, a.foto_bg_ot, a.no_gate_in, a.no_gate' +
        '_out, a.shift, s.diskripsi as status, a.nopol, a.no_kartu_char, ' +
        'g.nama_anggota, a.id_jns_kendaraan'
      'from trans.gate a'
      'left join master.mstatus s on s.id_status=a.status '
      
        'left join master.mgate_ot got on cast(to_number(got.id_gate,'#39'99'#39 +
        ') as integer)=a.no_gate_out'
      
        'left join (select a.id_gate, b.cnt_id, b.cnt_pict as gt_pict_in,' +
        ' a.keterangan as pintu_masuk'
      #9#9'from master.mgate_in a'
      
        #9#9'join master.mclient b on b.cnt_id=a.cnt_id)as gin on cast(to_n' +
        'umber(gin.id_gate,'#39'99'#39') as integer)=a.no_gate_in'
      'left join master.manggota g on g.no_kartu_char=a.no_kartu_char'
      
        'where a.jam_masuk between to_timestamp(:ptgl0,'#39'dd-mm-yyyy'#39') and ' +
        'to_timestamp(:ptgl1,'#39'dd-mm-yyyy'#39') +  interval '#39'23 hours 59 min'#39
      
        'and a.iskeluar='#39'0'#39' and a.id_jns_anggota='#39'-'#39' and g.id_jns_anggota' +
        '='#39'KARYAWAN'#39
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
    Left = 874
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
    object AnggotaMshParkirno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 120
    end
    object AnggotaMshParkirid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object AnggotaMshParkirjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object AnggotaMshParkirjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object AnggotaMshParkirtarif: TFloatField
      FieldName = 'tarif'
    end
    object AnggotaMshParkirfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object AnggotaMshParkirpintu_keluar: TStringField
      FieldName = 'pintu_keluar'
      Size = 1020
    end
    object AnggotaMshParkirpintu_masuk: TStringField
      FieldName = 'pintu_masuk'
      ReadOnly = True
      Size = 1020
    end
    object AnggotaMshParkirfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object AnggotaMshParkirno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object AnggotaMshParkirno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object AnggotaMshParkirshift: TIntegerField
      FieldName = 'shift'
    end
    object AnggotaMshParkirstatus: TStringField
      FieldName = 'status'
      Size = 400
    end
    object AnggotaMshParkirnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object AnggotaMshParkirno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object AnggotaMshParkirid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object AnggotaMshParkirnama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
  end
  object dsAnggotaMshParkir: TDataSource
    DataSet = AnggotaMshParkir
    Left = 874
    Top = 137
  end
end