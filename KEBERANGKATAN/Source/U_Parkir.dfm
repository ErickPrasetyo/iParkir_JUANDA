object ParkirFrm: TParkirFrm
  Left = 55
  Top = 71
  Width = 1327
  Height = 745
  Caption = 'Parkir Keluar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzSplitterMain: TRzSplitter
    Left = 433
    Top = 0
    Width = 878
    Height = 706
    LockBar = True
    Position = 447
    Percent = 51
    UsePercent = True
    SplitterStyle = ssGroupBar
    SplitterWidth = 3
    Align = alClient
    TabOrder = 0
    BarSize = (
      447
      0
      450
      706)
    UpperLeftControls = (
      RzPanel9
      RzPanel33
      RzSplitter6)
    LowerRightControls = (
      RzSplitter2)
    object RzPanel9: TRzPanel
      Left = 0
      Top = 0
      Width = 447
      Height = 52
      Align = alTop
      BorderOuter = fsStatus
      Color = 15265510
      TabOrder = 0
      Transparent = True
      Visible = False
      DesignSize = (
        446
        51)
      object RzPanel10: TRzPanel
        Left = 1
        Top = 1
        Width = 445
        Height = 3
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
        Transparent = True
      end
      object RzPanel13: TRzPanel
        Left = 1
        Top = 48
        Width = 445
        Height = 3
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 1
        Transparent = True
      end
      object RzPanel17: TRzPanel
        Left = 1
        Top = 4
        Width = 3
        Height = 44
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 2
        Transparent = True
      end
      object RzPanel20: TRzPanel
        Left = 441
        Top = 4
        Width = 5
        Height = 44
        Align = alRight
        BorderOuter = fsNone
        TabOrder = 3
        Transparent = True
      end
      object btnMotor: TRzButton
        Left = 4
        Top = 4
        Width = 98
        Height = 44
        Align = alLeft
        Caption = 'MOTOR [F1]'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnClick = btnMotorClick
      end
      object RzPanel14: TRzPanel
        Left = 102
        Top = 4
        Width = 2
        Height = 44
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 5
        Transparent = True
      end
      object btnMobil: TRzButton
        Left = 104
        Top = 4
        Width = 98
        Height = 44
        Align = alLeft
        Caption = 'MOBIL [F2]  '
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Visible = False
        OnClick = btnMobilClick
      end
      object RzPanel5: TRzPanel
        Left = 202
        Top = 4
        Width = 2
        Height = 44
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 7
        Transparent = True
      end
      object btnBus: TRzButton
        Left = 204
        Top = 4
        Width = 98
        Height = 44
        Align = alLeft
        Caption = 'BUS [F3]'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btnBusClick
      end
      object RzPanel22: TRzPanel
        Left = 302
        Top = 4
        Width = 2
        Height = 44
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 9
        Transparent = True
      end
      object btnTruk: TRzButton
        Left = 304
        Top = 4
        Width = 98
        Height = 44
        Align = alCustom
        Caption = 'TRUCK [F4]'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = btnTrukClick
      end
      object RzPanel23: TRzPanel
        Left = 304
        Top = 4
        Width = 2
        Height = 44
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 11
        Transparent = True
      end
      object btnValet: TRzButton
        Left = 952
        Top = 4
        Width = 145
        Height = 44
        Align = alCustom
        Caption = 'PARKIR VALET [F6]'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = btnValetClick
      end
      object RzPanel7: TRzPanel
        Left = 306
        Top = 4
        Width = 10
        Height = 44
        Align = alLeft
        BorderOuter = fsNone
        TabOrder = 13
        Transparent = True
      end
      object btnKarcisHilang: TRzButton
        Left = 289
        Top = 4
        Width = 72
        Height = 44
        Align = alRight
        Caption = 'KARCIS HILANG'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        Visible = False
        OnClick = btnKarcisHilangClick
      end
      object btnPenitipanHelm: TRzButton
        Left = 361
        Top = 4
        Width = 80
        Height = 44
        Align = alRight
        Caption = 'PENITIPAN HELM'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        Visible = False
        OnClick = btnPenitipanHelmClick
      end
      object btnKarcisManual: TRzButton
        Left = 217
        Top = 4
        Width = 72
        Height = 44
        Align = alRight
        Caption = 'KARCIS MANUAL'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        Visible = False
        OnClick = btnKarcisManualClick
      end
      object btnPendLain: TRzButton
        Left = 129
        Top = 4
        Width = 88
        Height = 44
        Align = alRight
        Caption = 'PENDAPATAN LAIN-LAIN'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        Visible = False
        OnClick = btnPendLainClick
      end
      object btnPenjualanVoucher: TAdvGlassButton
        Left = 346
        Top = 4
        Width = 95
        Height = 44
        Anchors = [akTop, akRight, akBottom]
        BackColor = clBlack
        Caption = 'PENJUALAN VOUCHER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ForeColor = clWhite
        GlowColor = 16760205
        InnerBorderColor = clBlack
        OuterBorderColor = clWhite
        ParentFont = False
        ShineColor = clWhite
        ShowFocusRect = True
        TabOrder = 14
        Version = '1.3.0.1'
        OnClick = btnPenjualanVoucherClick
      end
    end
    object RzPanel33: TRzPanel
      Left = 0
      Top = 634
      Width = 447
      Height = 72
      Align = alBottom
      BorderOuter = fsStatus
      Color = 15265510
      TabOrder = 1
      Transparent = True
      Visible = False
      object edtTarif: TRzLabel
        Left = 1
        Top = 4
        Width = 281
        Height = 64
        Align = alClient
        AutoSize = False
        Caption = 'Rp. 0'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -53
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        Visible = False
        BlinkIntervalOff = 600
        BlinkIntervalOn = 600
      end
      object RzPanel34: TRzPanel
        Left = 1
        Top = 1
        Width = 445
        Height = 3
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 0
        Transparent = True
      end
      object RzPanel35: TRzPanel
        Left = 1
        Top = 68
        Width = 445
        Height = 3
        Align = alBottom
        BorderOuter = fsNone
        TabOrder = 1
        Transparent = True
      end
      object RzPanel38: TRzPanel
        Left = 421
        Top = 4
        Width = 25
        Height = 64
        Align = alRight
        BorderOuter = fsNone
        TabOrder = 2
        Transparent = True
      end
      object btnBuka: TRzButton
        Left = 241
        Top = 4
        Width = 90
        Height = 64
        Align = alRight
        Caption = 'BUKA'#13'GATE'#13'[F7]'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnBukaClick
      end
      object btnCetakStruk: TRzButton
        Left = -29
        Top = 4
        Width = 90
        Height = 64
        Align = alRight
        Caption = 'BUKA && CETAK STRUK [F8]'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Visible = False
        OnClick = btnCetakStrukClick
      end
      object btnBukaSimpan: TRzButton
        Left = 61
        Top = 4
        Width = 90
        Height = 64
        Align = alRight
        Caption = 'BUKA && SIMPAN [F9]'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnClick = btnBukaSimpanClick
      end
      object btnBayar: TRzButton
        Left = 151
        Top = 4
        Width = 90
        Height = 64
        Align = alRight
        Caption = 'BAYAR [F11]'
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = btnBayarClick
      end
      object btnInstansi: TRzButton
        Left = 331
        Top = 4
        Width = 90
        Height = 64
        Align = alRight
        Caption = 'GATE TNI / POLRI'#13'[F10]'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = btnInstansiClick
      end
    end
    object RzSplitter6: TRzSplitter
      Left = 0
      Top = 52
      Width = 447
      Height = 582
      Position = 440
      Percent = 99
      UsePercent = True
      SplitterStyle = ssBump
      SplitterWidth = 6
      Align = alClient
      TabOrder = 2
      BarSize = (
        440
        0
        446
        582)
      UpperLeftControls = (
        pgcMain)
      LowerRightControls = (
        pgcBayar)
      object pgcMain: TcxPageControl
        Left = 0
        Top = 0
        Width = 440
        Height = 582
        ActivePage = tabKarcisHilang
        Align = alClient
        TabOrder = 0
        ClientRectBottom = 578
        ClientRectLeft = 4
        ClientRectRight = 436
        ClientRectTop = 24
        object tabMain: TcxTabSheet
          Caption = 'Main Trans'
          ImageIndex = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 432
            Height = 146
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvSpace
            BorderStyle = bsSingle
            Color = 15265510
            Locked = True
            TabOrder = 0
            DesignSize = (
              428
              142)
            object SCButton3: TSCButton
              Left = 1217
              Top = 3
              Width = 72
              Height = 25
              Anchors = [akTop, akRight]
              Caption = 'Tutup'
              Images = DM.ImageList1
              ImageIndex = 6
              ModalResult = 7
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 0
            end
            object SCButton4: TSCButton
              Left = 1137
              Top = 3
              Width = 78
              Height = 25
              Anchors = [akTop, akRight]
              Caption = '&Cetak'
              Images = DM.ImageList1
              ImageIndex = 8
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 1
            end
            object RzLabel4: TcxLabel
              Left = 2
              Top = 69
              Align = alTop
              AutoSize = False
              Caption = 'BARCODE'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = 6026370
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.LabelStyle = cxlsLowered
              Height = 35
              Width = 424
              AnchorX = 214
            end
            object cxLabel7: TcxLabel
              Left = 2
              Top = 2
              Align = alTop
              AutoSize = False
              Caption = 'NOPOL / NO. KARTU [MEMBER]'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = 6026370
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.LabelStyle = cxlsLowered
              Height = 33
              Width = 424
              AnchorX = 214
            end
            object edtNopol: TRzEdit
              Left = 2
              Top = 35
              Width = 424
              Height = 34
              Align = alTop
              Alignment = taCenter
              AutoSize = False
              CharCase = ecUpperCase
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -21
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              FocusColor = 12909521
              FrameVisible = True
              ParentFont = False
              TabOrder = 4
              TextHint = 'NOPOL'
              TextHintVisibleOnFocus = True
              OnKeyPress = edtNopolKeyPress
            end
            object edtBarcode: TRzEdit
              Left = 2
              Top = 104
              Width = 424
              Height = 36
              Align = alClient
              Alignment = taCenter
              AutoSize = False
              Color = clInfoBk
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -21
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              FocusColor = 12909521
              FrameVisible = True
              ParentFont = False
              TabOrder = 5
              OnKeyPress = edtBarcodeKeyPress
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 146
            Width = 432
            Height = 147
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvSpace
            BorderStyle = bsSingle
            Color = 15265510
            Locked = True
            TabOrder = 1
            DesignSize = (
              428
              143)
            object imagejenis: TImage
              Left = 2
              Top = 2
              Width = 224
              Height = 139
              Align = alClient
              Center = True
              Proportional = True
            end
            object lblStatus: TRzLabel
              Left = 226
              Top = 2
              Width = 200
              Height = 139
              Align = alRight
              Alignment = taCenter
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clHotLight
              Font.Height = -40
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              WordWrap = True
              BlinkIntervalOff = 600
              BlinkIntervalOn = 600
              TextStyle = tsRaised
            end
            object SCButton1: TSCButton
              Left = 360
              Top = 8
              Width = 107
              Height = 30
              Anchors = [akTop, akRight]
              Caption = '&Export2Excel'
              Images = DM.ImageList1
              ImageIndex = 23
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 0
            end
          end
          object Panel1: TPanel
            Left = 0
            Top = 293
            Width = 432
            Height = 261
            Align = alClient
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 15265510
            TabOrder = 2
            DesignSize = (
              432
              261)
            object btnExport: TSCButton
              Left = 496
              Top = 8
              Width = 107
              Height = 30
              Anchors = [akTop, akRight]
              Caption = '&Export2Excel'
              Images = DM.ImageList1
              ImageIndex = 23
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 0
            end
            object cxLabel1: TcxLabel
              Left = 5
              Top = 36
              AutoSize = False
              Caption = 'Jenis'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Transparent = True
              Height = 34
              Width = 146
              AnchorX = 78
              AnchorY = 53
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 148
              Top = 6
              AutoSize = False
              DataBinding.DataField = 'nama_anggota'
              DataBinding.DataSource = dsMemBrowseGate
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              Style.Color = clInfoBk
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -19
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.Shadow = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 2
              Height = 32
              Width = 267
            end
            object cxLabel3: TcxLabel
              Left = 5
              Top = 5
              AutoSize = False
              Caption = 'Nama'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Transparent = True
              Height = 34
              Width = 145
              AnchorX = 78
              AnchorY = 22
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 148
              Top = 37
              AutoSize = False
              DataBinding.DataField = 'jns_anggota'
              DataBinding.DataSource = dsMemBrowseGate
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              Style.Color = clInfoBk
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -19
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.Shadow = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 4
              Height = 32
              Width = 267
            end
            object cxLabel2: TcxLabel
              Left = 5
              Top = 71
              AutoSize = False
              Caption = 'Tgl./Jam Masuk'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 34
              Width = 146
              AnchorX = 78
              AnchorY = 88
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 149
              Top = 72
              AutoSize = False
              DataBinding.DataField = 'jam_masuk'
              DataBinding.DataSource = dsMemBrowseGate
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              Style.Color = clInfoBk
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -19
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.Shadow = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 6
              Height = 32
              Width = 267
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 149
              Top = 103
              AutoSize = False
              DataBinding.DataField = 'jam_keluar'
              DataBinding.DataSource = dsMemBrowseGate
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              Style.Color = clInfoBk
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -19
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.Shadow = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 7
              Height = 32
              Width = 267
            end
            object cxLabel4: TcxLabel
              Left = 5
              Top = 102
              AutoSize = False
              Caption = 'Tgl./Jam Keluar'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 34
              Width = 146
              AnchorX = 78
              AnchorY = 119
            end
            object cxLabel5: TcxLabel
              Left = 5
              Top = 137
              AutoSize = False
              Caption = 'Lama Parkir'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Transparent = True
              Height = 34
              Width = 146
              AnchorX = 78
              AnchorY = 154
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 149
              Top = 138
              AutoSize = False
              DataBinding.DataField = 'jam'
              DataBinding.DataSource = dsMemBrowseGate
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              Style.Color = clInfoBk
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -19
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.Shadow = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 10
              Height = 32
              Width = 267
            end
            object cxLabel6: TcxLabel
              Left = 5
              Top = 168
              AutoSize = False
              Caption = 'Tarif'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Transparent = True
              Height = 34
              Width = 146
              AnchorX = 78
              AnchorY = 185
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 149
              Top = 169
              AutoSize = False
              DataBinding.DataField = 'tarif'
              DataBinding.DataSource = dsMemBrowseGate
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ReadOnly = True
              Style.Color = clInfoBk
              Style.Edges = [bLeft, bTop, bRight, bBottom]
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -19
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.Shadow = False
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 11
              Height = 32
              Width = 267
            end
          end
        end
        object tabKarcisHilang: TcxTabSheet
          Caption = 'Karcis Hilang'
          ImageIndex = 1
          OnShow = tabKarcisHilangShow
          object RzPanel3: TRzPanel
            Left = 0
            Top = 49
            Width = 432
            Height = 505
            Align = alClient
            BorderOuter = fsGroove
            BorderSides = []
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 0
            VisualStyle = vsClassic
            object Label1: TLabel
              Left = 7
              Top = 103
              Width = 54
              Height = 19
              Caption = 'NOPOL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 157
              Top = 103
              Width = 12
              Height = 19
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 7
              Top = 333
              Width = 86
              Height = 18
              Caption = 'Tarif/Denda'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 118
              Top = 326
              Width = 7
              Height = 28
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 7
              Top = 135
              Width = 142
              Height = 19
              Caption = 'JENIS KENDARAAN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 157
              Top = 135
              Width = 12
              Height = 19
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label8: TLabel
              Left = 7
              Top = 167
              Width = 89
              Height = 19
              Caption = 'PENGGUNA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 157
              Top = 167
              Width = 12
              Height = 19
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 7
              Top = 71
              Width = 116
              Height = 19
              Caption = 'NAMA MEMBER'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label13: TLabel
              Left = 157
              Top = 71
              Width = 12
              Height = 19
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object LblTarif: TLabel
              Left = 175
              Top = 333
              Width = 11
              Height = 23
              Caption = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SCPanel3: TSCPanel
              Left = 5
              Top = 311
              Width = 448
              Height = 2
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Century Gothic'
              Font.Style = []
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              ParentFont = False
              TabOrder = 5
            end
            object edtKHNopol: TcxDBTextEdit
              Left = 173
              Top = 98
              AutoSize = False
              DataBinding.DataField = 'nopol'
              DataBinding.DataSource = dsKarcisHilang
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              OnKeyPress = edtKHNopolKeyPress
              Height = 30
              Width = 284
            end
            object SCPanel6: TSCPanel
              Left = 7
              Top = 368
              Width = 451
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 6
            end
            object pnlMiddle: TSCPanel
              Left = -18
              Top = 384
              Width = 803
              Height = 49
              BorderProps.Border = sccbFlat
              Color = 12615680
              GradientMid = 15845560
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 4
              object btnKHSimpan: TAdvGlassButton
                Left = 266
                Top = 2
                Width = 99
                Height = 43
                BackColor = clGreen
                BackGroundSymbolColor = clGreen
                Caption = 'SIMPAN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -17
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                ForeColor = 12615680
                ForceTransparent = True
                GlowColor = 12615680
                InnerBorderColor = 12615680
                OuterBorderColor = clCream
                ParentFont = False
                ShineColor = clGreen
                ShowFocusRect = True
                TabOrder = 0
                Version = '1.3.0.1'
                OnClick = btnKHSimpanClick
              end
              object btnKHBatal: TAdvGlassButton
                Left = 374
                Top = 2
                Width = 99
                Height = 43
                BackColor = clRed
                BackGroundSymbolColor = clRed
                Caption = 'BATAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -17
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                ForeColor = clRed
                ForceTransparent = True
                GlowColor = clRed
                InnerBorderColor = clRed
                OuterBorderColor = clCream
                ParentFont = False
                ShineColor = clRed
                ShowFocusRect = True
                TabOrder = 1
                Version = '1.3.0.1'
                OnClick = btnKHBatalClick
              end
            end
            object edtJnsKendaraan: TcxDBTextEdit
              Left = 173
              Top = 130
              AutoSize = False
              DataBinding.DataField = 'type_kendaraan'
              DataBinding.DataSource = dsKarcisHilang
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyPress = edtJnsKendaraanKeyPress
              Height = 30
              Width = 284
            end
            object edtJnsAnggota: TcxDBTextEdit
              Left = 173
              Top = 162
              AutoSize = False
              DataBinding.DataField = 'jns_pengguna'
              DataBinding.DataSource = dsKarcisHilang
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 3
              OnKeyPress = edtKHNopolKeyPress
              Height = 30
              Width = 284
            end
            object CheckBox1: TcxCheckBox
              Left = 16
              Top = 12
              Caption = '   MEMBER'
              ParentFont = False
              Properties.OnChange = CheckBox1PropertiesChange
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 7
              Width = 97
            end
            object edtNamaMember: TcxDBTextEdit
              Left = 173
              Top = 66
              AutoSize = False
              DataBinding.DataField = 'nama_member'
              DataBinding.DataSource = dsKarcisHilang
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Visible = False
              Height = 30
              Width = 284
            end
            object edtNoMember: TcxTextEdit
              Left = 1
              Top = -2
              AutoSize = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.CharCase = ecUpperCase
              Properties.ClearKey = 16449
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 8
              OnKeyPress = edtNoMemberKeyPress
              Height = 8
              Width = 744
            end
          end
          object RzPanel4: TRzPanel
            Left = 0
            Top = 0
            Width = 432
            Height = 49
            Align = alTop
            BorderOuter = fsGroove
            BorderSides = []
            BorderShadow = clSkyBlue
            Color = 6026370
            GradientColorStyle = gcsCustom
            GradientColorStart = 6026370
            GradientColorStop = 6026370
            GradientDirection = gdHorizontalCenter
            GridColor = clBlack
            TabOrder = 1
            VisualStyle = vsGradient
            object cxLabel8: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              Caption = 'KEBERANGKATAN'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clWindow
              Style.BorderStyle = ebsFlat
              Style.Color = 12615680
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindow
              Style.Font.Height = -27
              Style.Font.Name = 'Calibri'
              Style.Font.Style = []
              Style.TextStyle = []
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 49
              Width = 432
              AnchorX = 216
              AnchorY = 25
            end
          end
        end
        object tabPenitipan: TcxTabSheet
          Caption = 'Penitipan Helm'
          ImageIndex = 1
          OnShow = tabPenitipanShow
          object RzPanel1: TRzPanel
            Left = 0
            Top = 40
            Width = 432
            Height = 514
            Align = alClient
            BorderOuter = fsGroove
            BorderSides = []
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 0
            VisualStyle = vsClassic
            object Label19: TLabel
              Left = 7
              Top = 36
              Width = 105
              Height = 16
              Caption = 'Nama Customer'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 117
              Top = 36
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 7
              Top = 8
              Width = 87
              Height = 16
              Caption = 'Nomor Karcis'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label27: TLabel
              Left = 117
              Top = 8
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label28: TLabel
              Left = 7
              Top = 104
              Width = 29
              Height = 18
              Caption = 'Tarif'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 118
              Top = 97
              Width = 7
              Height = 28
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtPHNama_cust: TcxDBTextEdit
              Left = 134
              Top = 33
              DataBinding.DataField = 'nama'
              DataBinding.DataSource = dsTarifHelm
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 1
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object SCPanel8: TSCPanel
              Left = 5
              Top = 82
              Width = 448
              Height = 2
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Century Gothic'
              Font.Style = []
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object edtPHNo_karcis: TcxDBTextEdit
              Left = 133
              Top = 5
              DataBinding.DataField = 'no_karcis'
              DataBinding.DataSource = dsTarifHelm
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 0
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object edtPHBayar: TcxTextEdit
              Left = 134
              Top = 93
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -24
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object SCPanel9: TSCPanel
              Left = 7
              Top = 138
              Width = 451
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 5
            end
            object SCPanel10: TSCPanel
              Left = -10
              Top = 152
              Width = 458
              Height = 40
              BorderProps.Border = sccbFlat
              Color = 6026370
              GradientMid = 15845560
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 3
              object SCButton2: TSCButton
                Left = 343
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Batal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 2
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 2
                OnClick = btnKHBatalClick
              end
              object SCButton5: TSCButton
                Left = 262
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Simpan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 3
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 1
                OnClick = SCButton5Click
              end
              object SCButton6: TSCButton
                Left = 491
                Top = 8
                Width = 72
                Height = 25
                Caption = '&Refresh'
                Images = DM.ImageList1
                ImageIndex = 5
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 0
              end
            end
          end
          object RzPanel2: TRzPanel
            Left = 0
            Top = 0
            Width = 432
            Height = 40
            Align = alTop
            BorderOuter = fsGroove
            BorderSides = []
            BorderShadow = clSkyBlue
            Color = 6026370
            GradientColorStyle = gcsCustom
            GradientColorStart = 6026370
            GradientColorStop = 6026370
            GradientDirection = gdHorizontalCenter
            GridColor = clBlack
            TabOrder = 1
            VisualStyle = vsGradient
            object cxLabel9: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              Caption = 'PENITIPAN HELM'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = 6026370
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 40
              Width = 432
              AnchorY = 20
            end
          end
        end
        object TabPenjualan: TcxTabSheet
          Caption = 'Penjualan Voucher'
          ImageIndex = 1
          OnShow = TabPenjualanShow
          object RzPanel6: TRzPanel
            Left = 0
            Top = 40
            Width = 432
            Height = 514
            Align = alClient
            BorderOuter = fsGroove
            BorderSides = []
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 0
            VisualStyle = vsClassic
            object Label17: TLabel
              Left = 7
              Top = 36
              Width = 86
              Height = 16
              Caption = 'Nama Pasien'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 117
              Top = 36
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 7
              Top = 8
              Width = 90
              Height = 16
              Caption = 'Jenis Voucher'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 117
              Top = 8
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label24: TLabel
              Left = 7
              Top = 205
              Width = 29
              Height = 18
              Caption = 'Tarif'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 118
              Top = 198
              Width = 7
              Height = 28
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label30: TLabel
              Left = 7
              Top = 64
              Width = 53
              Height = 16
              Caption = 'No. MRS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 117
              Top = 64
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label32: TLabel
              Left = 7
              Top = 92
              Width = 69
              Height = 16
              Caption = 'No. Kamar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 117
              Top = 92
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label34: TLabel
              Left = 7
              Top = 120
              Width = 106
              Height = 16
              Caption = 'NoPol. Kendaraan'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label35: TLabel
              Left = 117
              Top = 120
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label48: TLabel
              Left = 7
              Top = 147
              Width = 42
              Height = 16
              Caption = 'Jumlah'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 117
              Top = 147
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtPVNamaPasien: TcxDBTextEdit
              Left = 134
              Top = 33
              DataBinding.DataField = 'nama_pasien'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 1
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object SCPanel11: TSCPanel
              Left = 8
              Top = 183
              Width = 448
              Height = 2
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Century Gothic'
              Font.Style = []
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object SCPanel12: TSCPanel
              Left = 7
              Top = 239
              Width = 451
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 5
            end
            object SCPanel13: TSCPanel
              Left = -18
              Top = 251
              Width = 458
              Height = 40
              BorderProps.Border = sccbFlat
              Color = 6026370
              GradientMid = 15845560
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 3
              object SCButton7: TSCButton
                Left = 343
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Batal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 2
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 2
                OnClick = btnKHBatalClick
              end
              object SCButton8: TSCButton
                Left = 262
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Simpan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 3
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 1
                OnClick = SCButton8Click
              end
              object SCButton9: TSCButton
                Left = 491
                Top = 8
                Width = 72
                Height = 25
                Caption = '&Refresh'
                Images = DM.ImageList1
                ImageIndex = 5
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 0
              end
            end
            object edtPVNoMRS: TcxDBTextEdit
              Left = 134
              Top = 61
              DataBinding.DataField = 'no_mrs'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 6
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object edtPVNoKamar: TcxDBTextEdit
              Left = 134
              Top = 89
              DataBinding.DataField = 'no_kamar'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 7
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object edtPVNoPol: TcxDBTextEdit
              Left = 134
              Top = 117
              DataBinding.DataField = 'nopol'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 8
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object cbJnsVoucher: TcxDBLookupComboBox
              Left = 133
              Top = 5
              DataBinding.DataField = 'jns_voucher'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Properties.KeyFieldNames = 'diskripsi'
              Properties.ListColumns = <
                item
                  Caption = 'Jenis Voucher'
                  Width = 200
                  FieldName = 'diskripsi'
                end
                item
                  Caption = 'Tarif'
                  Width = 83
                  FieldName = 'tarif'
                end>
              Properties.ListSource = dsJnsVoucher
              Properties.OnEditValueChanged = cbJnsVoucherPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object edtPVTarifBayar: TcxDBTextEdit
              Left = 134
              Top = 194
              DataBinding.DataField = 'tarif'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -24
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object edtJumlah: TcxDBTextEdit
              Left = 134
              Top = 144
              DataBinding.DataField = 'qty'
              DataBinding.DataSource = dsPenjualanVoucher
              ParentFont = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.OnEditValueChanged = edtJumlahPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 9
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
          end
          object RzPanel11: TRzPanel
            Left = 0
            Top = 0
            Width = 432
            Height = 40
            Align = alTop
            BorderOuter = fsGroove
            BorderSides = []
            BorderShadow = clSkyBlue
            Color = 6026370
            GradientColorStyle = gcsCustom
            GradientColorStart = 6026370
            GradientColorStop = 6026370
            GradientDirection = gdHorizontalCenter
            GridColor = clBlack
            TabOrder = 1
            VisualStyle = vsGradient
            object cxLabel10: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              Caption = 'PENJUALAN VOUCHER'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = 6026370
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 40
              Width = 432
              AnchorY = 20
            end
          end
        end
        object tabKarcisManual: TcxTabSheet
          Caption = 'Karcis Manual'
          ImageIndex = 1
          OnShow = tabKarcisManualShow
          object RzPanel12: TRzPanel
            Left = 0
            Top = 40
            Width = 432
            Height = 514
            Align = alClient
            BorderOuter = fsGroove
            BorderSides = []
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 0
            VisualStyle = vsClassic
            object Label36: TLabel
              Left = 7
              Top = 15
              Width = 109
              Height = 16
              Caption = 'Jenis Kendaraan'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label39: TLabel
              Left = 117
              Top = 15
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label42: TLabel
              Left = 7
              Top = 40
              Width = 66
              Height = 16
              Caption = 'No. Karcis'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label43: TLabel
              Left = 117
              Top = 40
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label46: TLabel
              Left = 7
              Top = 97
              Width = 29
              Height = 18
              Caption = 'Tarif'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label47: TLabel
              Left = 118
              Top = 90
              Width = 7
              Height = 28
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SCPanel14: TSCPanel
              Left = 5
              Top = 75
              Width = 448
              Height = 2
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Century Gothic'
              Font.Style = []
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object edtKMNoKarcis: TcxDBTextEdit
              Left = 133
              Top = 37
              DataBinding.DataField = 'no_karcis'
              DataBinding.DataSource = dsKarcisManual
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object SCPanel15: TSCPanel
              Left = 3
              Top = 132
              Width = 451
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 5
            end
            object SCPanel16: TSCPanel
              Left = -18
              Top = 208
              Width = 467
              Height = 40
              BorderProps.Border = sccbFlat
              Color = 6026370
              GradientMid = 15845560
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 3
              object SCButton10: TSCButton
                Left = 343
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Batal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 2
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 2
                OnClick = btnKHBatalClick
              end
              object SCButton11: TSCButton
                Left = 262
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Simpan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 3
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 1
                OnClick = SCButton11Click
              end
              object SCButton12: TSCButton
                Left = 491
                Top = 8
                Width = 72
                Height = 25
                Caption = '&Refresh'
                Images = DM.ImageList1
                ImageIndex = 5
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 0
              end
            end
            object edtKMJensKendaraan: TcxDBLookupComboBox
              Left = 133
              Top = 12
              DataBinding.DataField = 'jns_kendaraan'
              DataBinding.DataSource = dsKarcisManual
              ParentFont = False
              Properties.KeyFieldNames = 'jns_kendaraan'
              Properties.ListColumns = <
                item
                  Caption = 'Jenis Kendaraan'
                  Width = 200
                  FieldName = 'jns_kendaraan'
                end
                item
                  Caption = 'Id Kendaraan'
                  Width = 83
                  FieldName = 'id_jns_kendaraan'
                end>
              Properties.ListSource = dsJnsKendaraan
              Properties.OnEditValueChanged = edtKMJensKendaraanPropertiesEditValueChanged
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 284
            end
            object edtKMTarif: TcxTextEdit
              Left = 134
              Top = 86
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -24
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
          end
          object RzPanel15: TRzPanel
            Left = 0
            Top = 0
            Width = 432
            Height = 40
            Align = alTop
            BorderOuter = fsGroove
            BorderSides = []
            BorderShadow = clSkyBlue
            Color = 6026370
            GradientColorStyle = gcsCustom
            GradientColorStart = 6026370
            GradientColorStop = 6026370
            GradientDirection = gdHorizontalCenter
            GridColor = clBlack
            TabOrder = 1
            VisualStyle = vsGradient
            object cxLabel11: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              Caption = ' KARCIS MANUAL'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = 6026370
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 40
              Width = 432
              AnchorY = 20
            end
          end
        end
        object tabLainLain: TcxTabSheet
          Caption = 'Pendapatan Lain - Lain'
          ImageIndex = 1
          OnShow = tabLainLainShow
          object RzPanel16: TRzPanel
            Left = 0
            Top = 40
            Width = 432
            Height = 514
            Align = alClient
            BorderOuter = fsGroove
            BorderSides = []
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 0
            VisualStyle = vsClassic
            object Label37: TLabel
              Left = 7
              Top = 15
              Width = 111
              Height = 16
              Caption = 'Pendapatan dari'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label38: TLabel
              Left = 141
              Top = 15
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 7
              Top = 40
              Width = 90
              Height = 16
              Caption = 'Diterima Oleh'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 141
              Top = 40
              Width = 12
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label44: TLabel
              Left = 7
              Top = 97
              Width = 53
              Height = 18
              Caption = 'Jumlah'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label45: TLabel
              Left = 142
              Top = 90
              Width = 7
              Height = 28
              Caption = ':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -24
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SCPanel17: TSCPanel
              Left = 5
              Top = 75
              Width = 448
              Height = 2
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Century Gothic'
              Font.Style = []
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              ParentFont = False
              TabOrder = 4
            end
            object edtPLLditerima: TcxDBTextEdit
              Left = 173
              Top = 37
              DataBinding.DataField = 'diterima'
              DataBinding.DataSource = dsPLL
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 1
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object SCPanel18: TSCPanel
              Left = 3
              Top = 132
              Width = 451
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 5
            end
            object SCPanel19: TSCPanel
              Left = -18
              Top = 208
              Width = 467
              Height = 40
              BorderProps.Border = sccbFlat
              Color = 6026370
              GradientMid = 15845560
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 3
              object SCButton13: TSCButton
                Left = 343
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Batal'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 2
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 2
                OnClick = btnKHBatalClick
              end
              object SCButton14: TSCButton
                Left = 262
                Top = 6
                Width = 80
                Height = 27
                Caption = '&Simpan'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Century Gothic'
                Font.Style = [fsBold]
                Images = DM.ImageList1
                ImageIndex = 3
                ParentFont = False
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 1
                OnClick = SCButton14Click
              end
              object SCButton15: TSCButton
                Left = 491
                Top = 8
                Width = 72
                Height = 25
                Caption = '&Refresh'
                Images = DM.ImageList1
                ImageIndex = 5
                RoundColor = 6026370
                Style = scbsCorel
                TabOrder = 0
              end
            end
            object edtPLJumlah: TcxTextEdit
              Left = 174
              Top = 86
              ParentFont = False
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -24
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyPress = edtKHNopolKeyPress
              Width = 284
            end
            object edtPLLdari: TcxDBTextEdit
              Left = 173
              Top = 12
              DataBinding.DataField = 'dari'
              DataBinding.DataSource = dsPLL
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 284
            end
          end
          object RzPanel18: TRzPanel
            Left = 0
            Top = 0
            Width = 432
            Height = 40
            Align = alTop
            BorderOuter = fsGroove
            BorderSides = []
            BorderShadow = clSkyBlue
            Color = 6026370
            GradientColorStyle = gcsCustom
            GradientColorStart = 6026370
            GradientColorStop = 6026370
            GradientDirection = gdHorizontalCenter
            GridColor = clBlack
            TabOrder = 1
            VisualStyle = vsGradient
            object cxLabel12: TcxLabel
              Left = 0
              Top = 0
              Align = alClient
              AutoSize = False
              Caption = 'PENDAPATAN LAIN - LAIN'
              ParentColor = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = 6026370
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = 'Century Gothic'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.LabelStyle = cxlsLowered
              Height = 40
              Width = 432
              AnchorY = 20
            end
          end
        end
      end
      object pgcBayar: TcxPageControl
        Left = 0
        Top = 0
        Width = 1
        Height = 582
        ActivePage = tabBayar
        Align = alClient
        Color = 15265510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Style = 9
        TabHeight = 25
        TabOrder = 0
        TabSlants.Positions = [spRight]
        TabWidth = 135
        ClientRectBottom = 582
        ClientRectRight = 1
        ClientRectTop = 1
        object tabBayar: TcxTabSheet
          Caption = 'PEMBAYARAN'
          ImageIndex = 1
          object pnlBawah: TRzPanel
            Left = 0
            Top = 0
            Width = 1
            Height = 483
            Align = alClient
            BorderOuter = fsGroove
            BorderSides = []
            BorderColor = clSkyBlue
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 0
            VisualStyle = vsClassic
            object Label4: TLabel
              Left = 8
              Top = 177
              Width = 38
              Height = 18
              Caption = 'Bayar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 9
              Top = 242
              Width = 50
              Height = 18
              Caption = 'Kembali'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 5
              Top = 14
              Width = 63
              Height = 16
              Caption = 'Cara bayar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object LblNoKartu: TLabel
              Left = 5
              Top = 73
              Width = 109
              Height = 16
              Caption = 'No. Kartu/ Voucher'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object LblBank: TLabel
              Left = 5
              Top = 44
              Width = 69
              Height = 16
              Caption = 'Bank/ Nama'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 115
              Top = 14
              Width = 13
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 9
              Top = 115
              Width = 33
              Height = 18
              Caption = 'Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object LblStatusReader: TRzLabel
              Left = 6
              Top = 314
              Width = 290
              Height = 35
              Alignment = taCenter
              AutoSize = False
              Caption = 'Silahkan Tempelkan Kartu'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -16
              Font.Name = 'Century Gothic'
              Font.Style = []
              ParentFont = False
              Transparent = True
              Layout = tlCenter
              Blinking = True
              BlinkColor = clRed
              BlinkIntervalOff = 600
              BlinkIntervalOn = 600
              BorderColor = clMenu
            end
            object LblBank2: TLabel
              Left = 115
              Top = 43
              Width = 13
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LblNoKartu2: TLabel
              Left = 115
              Top = 73
              Width = 13
              Height = 16
              Caption = ' : '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtNoKartu: TcxDBTextEdit
              Left = 129
              Top = 67
              AutoSize = False
              DataBinding.DataField = 'no_kartu'
              DataBinding.DataSource = dsTotal
              ParentFont = False
              Properties.Alignment.Vert = taVCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 1
              Height = 27
              Width = 168
            end
            object edtBank: TcxDBTextEdit
              Left = 129
              Top = 38
              AutoSize = False
              DataBinding.DataField = 'bank'
              DataBinding.DataSource = dsTotal
              ParentFont = False
              Properties.Alignment.Vert = taVCenter
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextStyle = [fsBold]
              Style.IsFontAssigned = True
              StyleFocused.BorderStyle = ebsThick
              StyleHot.BorderStyle = ebsThick
              TabOrder = 0
              Height = 27
              Width = 168
            end
            object SCPanel1: TSCPanel
              Left = 4
              Top = 105
              Width = 294
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 6
            end
            object edtKembali: TcxLabel
              Left = 6
              Top = 261
              AutoSize = False
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clActiveBorder
              Style.BorderStyle = ebsSingle
              Style.Color = clBtnFace
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -27
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 40
              Width = 290
              AnchorX = 296
              AnchorY = 281
            end
            object cxDBLabel1: TcxDBLabel
              Left = 23
              Top = -32
              DataBinding.DataField = 'grand_total'
              ParentColor = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -24
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.Shadow = False
              Style.IsFontAssigned = True
              Transparent = True
              Visible = False
              Height = 34
              Width = 195
              AnchorX = 218
            end
            object LblTotal: TcxLabel
              Left = 6
              Top = 134
              AutoSize = False
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clActiveBorder
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -27
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.TransparentBorder = True
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Properties.Alignment.Vert = taVCenter
              Transparent = True
              Height = 40
              Width = 290
              AnchorX = 296
              AnchorY = 154
            end
            object LblPembayaran: TcxLabel
              Left = 129
              Top = 9
              AutoSize = False
              Caption = 'CARABAYAR'
              ParentFont = False
              Style.BorderColor = clBlue
              Style.BorderStyle = ebsUltraFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.WordWrap = True
              Height = 27
              Width = 168
              AnchorY = 23
            end
            object edtBayar: TRzEdit
              Left = 6
              Top = 197
              Width = 290
              Height = 40
              AutoSize = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              FocusColor = 12909521
              FrameVisible = True
              ParentFont = False
              TabOrder = 2
              OnEnter = edtBayarEnter
              OnKeyPress = edtBayarKeyPress
              OnKeyUp = edtBayarKeyUp
            end
            object SCPanel7: TSCPanel
              Left = 4
              Top = 310
              Width = 293
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 8
            end
          end
          object RzPanel8: TRzPanel
            Left = 0
            Top = 483
            Width = 1
            Height = 98
            Align = alBottom
            BorderOuter = fsGroove
            BorderSides = []
            BorderColor = clSkyBlue
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 1
            VisualStyle = vsClassic
            object btnOK2: TSCButton
              Left = 13
              Top = 20
              Width = 90
              Height = 63
              Caption = 'BUKA && SIMPAN [F8]'
              Color = 8404992
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              HighlightColor = 33023
              Images = DM.ImageList1
              ImageIndex = 3
              Layout = scblTop
              Multiline = True
              ParentFont = False
              ParentShowHint = False
              RoundColor = clBlue
              RoundWithParentColor = False
              ShowHint = False
              Style = scbsXP
              TabOrder = 0
              OnClick = btnOKClick
            end
            object btnOK: TSCButton
              Left = 106
              Top = 20
              Width = 90
              Height = 63
              Caption = 'BUKA && CETAK [F9]'
              Color = 8404992
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              HighlightColor = 33023
              Images = DM.ImageList1
              ImageIndex = 8
              Layout = scblTop
              Multiline = True
              ParentFont = False
              RoundColor = clWhite
              Style = scbsXP
              TabOrder = 1
              Transparent = True
              OnClick = btnOKClick
            end
            object btnCancel: TSCButton
              Left = 199
              Top = 20
              Width = 90
              Height = 63
              Caption = 'BATAL'
              Color = 8404992
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Century Gothic'
              Font.Style = [fsBold]
              HighlightColor = 33023
              Images = DM.ImageList1
              ImageIndex = 2
              Layout = scblTop
              Multiline = True
              ParentFont = False
              RoundColor = clWhite
              Style = scbsXP
              TabOrder = 2
              Transparent = True
              OnClick = btnCancelClick
            end
            object SCPanel2: TSCPanel
              Left = -1
              Top = 14
              Width = 308
              Height = 2
              Color = clBlue
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 3
            end
            object SCPanel5: TSCPanel
              Left = -1
              Top = 87
              Width = 308
              Height = 2
              Color = clBlue
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 4
            end
          end
        end
        object tabCekSaldo: TcxTabSheet
          Caption = 'CEK SALDO'
          ImageIndex = 2
          object MemoEcho: TMemo
            Left = 0
            Top = 50
            Width = 1
            Height = 531
            Align = alClient
            Color = clNone
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Consolas'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
            WordWrap = False
          end
          object PanelTop: TRzPanel
            Left = 0
            Top = 0
            Width = 1
            Height = 50
            Align = alTop
            BorderOuter = fsGroove
            BorderSides = []
            BorderColor = clSkyBlue
            Color = clWhite
            GradientColorStop = clSilver
            TabOrder = 1
            VisualStyle = vsClassic
            object SCPanel4: TSCPanel
              Left = 13
              Top = 43
              Width = 307
              Height = 2
              Color = clWhite
              Gradient = scgLeftToRight
              GradientMid = 16707038
              GradientUsesMid = True
              ParentColor = False
              TabOrder = 0
            end
            object cxDBLabel2: TcxDBLabel
              Left = 23
              Top = -32
              DataBinding.DataField = 'grand_total'
              ParentColor = False
              ParentFont = False
              Properties.Alignment.Horz = taRightJustify
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -24
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.Shadow = False
              Style.IsFontAssigned = True
              Transparent = True
              Visible = False
              Height = 34
              Width = 195
              AnchorX = 218
            end
            object btnEcho: TSCButton
              Left = 83
              Top = 5
              Width = 78
              Height = 33
              Caption = '&Echo'
              Images = DM.ImageList1
              ImageIndex = 5
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 3
              OnClick = btnEchoClick
            end
            object btnCeckSaldo: TSCButton
              Left = 4
              Top = 5
              Width = 78
              Height = 33
              Caption = 'Cek Saldo'
              Images = DM.ImageList1
              ImageIndex = 22
              ModalResult = 7
              Multiline = True
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 2
              OnClick = btnCeckSaldoClick
            end
            object btnLastTrans: TSCButton
              Left = 162
              Top = 5
              Width = 90
              Height = 33
              Caption = '&Transaksi Terakhir'
              Images = DM.ImageList1
              ImageIndex = 0
              Multiline = True
              RoundColor = 11507049
              RoundWithParentColor = False
              Style = scbsXP
              TabOrder = 4
              OnClick = btnLastTransClick
            end
          end
        end
      end
    end
    object RzSplitter2: TRzSplitter
      Left = 0
      Top = 0
      Width = 428
      Height = 706
      LockBar = True
      Orientation = orVertical
      Position = 494
      Percent = 70
      UsePercent = True
      SplitterStyle = ssGroupBar
      SplitterWidth = 3
      Align = alClient
      TabOrder = 0
      BarSize = (
        0
        494
        428
        497)
      UpperLeftControls = (
        RzLabel2
        LblGateKeluar
        IpCamKeluar)
      LowerRightControls = (
        RzLabel3
        RzPanel19)
      object RzLabel2: TRzLabel
        Left = 0
        Top = 0
        Width = 428
        Height = 44
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'GATE MASUK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Main'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        BlinkIntervalOff = 600
        BlinkIntervalOn = 600
      end
      object LblGateKeluar: TRzLabel
        Left = 0
        Top = 453
        Width = 428
        Height = 41
        Align = alBottom
        Alignment = taCenter
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        BlinkIntervalOff = 600
        BlinkIntervalOn = 600
      end
      object IpCamKeluar: TPasLibVlcPlayer
        Left = 0
        Top = 44
        Width = 428
        Height = 409
        Align = alClient
        SnapShotFmt = 'png'
      end
      object RzLabel3: TRzLabel
        Left = 0
        Top = 0
        Width = 428
        Height = 233
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Century Gothic'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        WordWrap = True
        BlinkColor = clWhite
        BlinkIntervalOff = 600
        BlinkIntervalOn = 600
        BorderColor = clBlue
        BorderWidth = 1
      end
      object RzPanel19: TRzPanel
        Left = 0
        Top = 141
        Width = 428
        Height = 68
        Align = alBottom
        BorderInner = fsFlat
        BorderOuter = fsNone
        BorderColor = 12615680
        BorderHighlight = 12615680
        BorderShadow = 12615680
        FlatColor = 12615680
        GradientColorStyle = gcsCustom
        GradientColorStart = 12615680
        GradientColorStop = 12615680
        GridColor = 12615680
        ParentColor = True
        TabOrder = 0
        VisualStyle = vsGradient
        DesignSize = (
          427
          67)
        object RzPanel21: TRzPanel
          Left = 402
          Top = 1
          Width = 25
          Height = 66
          Align = alRight
          BorderOuter = fsNone
          TabOrder = 0
          Transparent = True
        end
        object btnKeluar: TAdvGlassButton
          Left = 306
          Top = 9
          Width = 108
          Height = 53
          Anchors = [akTop, akRight, akBottom]
          AntiAlias = aaNone
          BackColor = clRed
          BackGroundSymbolColor = clRed
          Caption = 'CLOSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -17
          Font.Name = 'Century Gothic'
          Font.Style = [fsBold]
          ForeColor = clRed
          GlowColor = clRed
          InnerBorderColor = clRed
          OuterBorderColor = clCream
          ParentFont = False
          ShineColor = clRed
          ShowFocusRect = True
          Style = tasCheck
          TabOrder = 1
          Version = '1.3.0.1'
          OnClick = btnKeluarClick
        end
      end
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 706
    Align = alLeft
    BevelOuter = bvNone
    Color = 15265510
    TabOrder = 1
    object RzLabel11: TRzLabel
      Left = 0
      Top = 0
      Width = 433
      Height = 41
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'JUMLAH KENDARAAN'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      WordWrap = True
      BlinkColor = clWhite
      BlinkIntervalOff = 600
      BlinkIntervalOn = 600
      BorderColor = clBlue
      BorderWidth = 1
    end
    object btnCetak: TRzButton
      Left = 0
      Top = 666
      Width = 433
      Height = 40
      Align = alBottom
      Caption = 'CETAK STRUK ULANG'
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Century Gothic'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnCetakClick
    end
    object grdMaster: TcxGrid
      Left = 0
      Top = 41
      Width = 433
      Height = 625
      Align = alClient
      TabOrder = 1
      object grdDTBV_Master: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsqLastGateOut
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'no_karcis'
            Column = grdDTBV_Masterno_karcis
          end
          item
            Format = ',0'
            Kind = skSum
            FieldName = 'tarif'
            Column = grdDTBV_Mastertarif
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Styles.Content = cxStyle2
        Styles.Header = cxStyle1
        object grdDTBV_Masterno_karcis: TcxGridDBColumn
          Caption = 'Reg. Number'
          DataBinding.FieldName = 'no_karcis2'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Sorting = False
          Width = 152
        end
        object grdDTBV_MasterColumn1: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'keterangan'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 166
        end
        object grdDTBV_MasterColumn3: TcxGridDBColumn
          Caption = 'No. Pol'
          DataBinding.FieldName = 'nopol'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 99
        end
        object grdDTBV_Masterjns_kendaraan: TcxGridDBColumn
          Caption = 'Car Type'
          DataBinding.FieldName = 'type_kendaraan'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.WordWrap = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Sorting = False
          Width = 89
        end
        object grdDTBV_Mastertarif: TcxGridDBColumn
          Caption = 'Price'
          DataBinding.FieldName = 'tarif'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Sorting = False
          Width = 87
        end
        object grdDTBV_MasterColumn2: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'usr_upd'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 62
        end
      end
      object grdMasterLvl: TcxGridLevel
        GridView = grdDTBV_Master
      end
    end
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
    Left = 1179
    Top = 227
  end
  object SR: TcxStyleRepository
    Left = 1181
    Top = 195
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
  object AFS: TAdvFormStyler
    Style = tsOffice2007Obsidian
    Left = 1145
    Top = 193
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
    Left = 1146
    Top = 225
  end
  object F1: TLMDGlobalHotKey
    HotKey = 112
    OnKeyDown = F1KeyDown
    Left = 1159
    Top = 80
  end
  object F2: TLMDGlobalHotKey
    HotKey = 113
    OnKeyDown = F2KeyDown
    Left = 1031
    Top = 83
  end
  object F10: TLMDGlobalHotKey
    HotKey = 121
    OnKeyDown = F10KeyDown
    Left = 1091
    Top = 127
  end
  object qBroweGate: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.vgate'
      'where no_karcis=:no_karcis or no_kartu_char=:pno_kartu'
      'order by jam_masuk desc'
      'limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_karcis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pno_kartu'
        ParamType = ptUnknown
      end>
    Left = 1065
    Top = 219
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_karcis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pno_kartu'
        ParamType = ptUnknown
      end>
    object qBroweGateno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 30
    end
    object qBroweGateid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 10
    end
    object qBroweGateid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 10
    end
    object qBroweGateno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 50
    end
    object qBroweGatejam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qBroweGatejam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qBroweGatetarif: TFloatField
      FieldName = 'tarif'
    end
    object qBroweGatedenda: TFloatField
      FieldName = 'denda'
    end
    object qBroweGatefoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 255
    end
    object qBroweGatefoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 255
    end
    object qBroweGatenopol: TStringField
      FieldName = 'nopol'
      Size = 30
    end
    object qBroweGateusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object qBroweGateusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object qBroweGateiskeluar: TStringField
      FieldName = 'iskeluar'
      Size = 1
    end
    object qBroweGatejns_anggota: TStringField
      FieldName = 'jns_anggota'
      Size = 255
    end
    object qBroweGatelama_jam: TStringField
      FieldName = 'lama_jam'
      Size = 32
    end
    object qBroweGatelama_menit: TFloatField
      FieldName = 'lama_menit'
      ReadOnly = True
    end
    object qBroweGatejam: TStringField
      FieldName = 'jam'
      ReadOnly = True
      Size = 255
    end
    object qBroweGatemenit: TStringField
      FieldName = 'menit'
      ReadOnly = True
      Size = 255
    end
    object qBroweGatenama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 255
    end
    object qBroweGatehari: TStringField
      FieldName = 'hari'
      Size = 255
    end
  end
  object ComPort: TComPort
    BaudRate = br9600
    Port = 'COM29'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 1171
    Top = 156
  end
  object F9: TLMDGlobalHotKey
    HotKey = 120
    OnKeyDown = F9KeyDown
    Left = 180
    Top = 77
  end
  object F7: TLMDGlobalHotKey
    HotKey = 118
    OnKeyDown = F7KeyDown
    Left = 1060
    Top = 125
  end
  object frxDBPerusahaan: TfrxDBDataset
    UserName = 'frxDBPerusahaan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'nama=nama'
      'alamat=alamat'
      'isactive=isactive'
      'kota=kota'
      'telp=telp'
      'web=web')
    DataSet = DM.L_Perusahaan
    BCDToCurrency = False
    Left = 1269
    Top = 197
  end
  object qTarif: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select * from master.fn_get_tarif(:pjns_anggota,:pjns_kendaraan,' +
        ':pnokarcis) as tarif')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pjns_anggota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pjns_kendaraan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pnokarcis'
        ParamType = ptUnknown
      end>
    Left = 1008
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pjns_anggota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pjns_kendaraan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pnokarcis'
        ParamType = ptUnknown
      end>
    object qTariftarif: TFloatField
      FieldName = 'tarif'
      ReadOnly = True
    end
  end
  object F3: TLMDGlobalHotKey
    HotKey = 114
    OnKeyDown = F3KeyDown
    Left = 1058
    Top = 86
  end
  object F4: TLMDGlobalHotKey
    HotKey = 115
    OnKeyDown = F4KeyDown
    Left = 1091
    Top = 86
  end
  object F8: TLMDGlobalHotKey
    HotKey = 119
    Left = 148
    Top = 74
  end
  object qBukaPalang: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.gate'
      'where no_karcis='#39'-'#39)
    Params = <>
    Left = 1160
    Top = 268
    object qBukaPalangno_karcis: TStringField
      FieldName = 'no_karcis'
      Required = True
      Size = 30
    end
    object qBukaPalangid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 10
    end
    object qBukaPalangid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 10
    end
    object qBukaPalangno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 50
    end
    object qBukaPalangjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qBukaPalangjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qBukaPalangtarif: TFloatField
      FieldName = 'tarif'
    end
    object qBukaPalangdenda: TFloatField
      FieldName = 'denda'
    end
    object qBukaPalangfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 255
    end
    object qBukaPalangfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 255
    end
    object qBukaPalangnopol: TStringField
      FieldName = 'nopol'
      Size = 30
    end
    object qBukaPalangusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qBukaPalangusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qBukaPalangdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qBukaPalangdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qBukaPalangiskeluar: TStringField
      FieldName = 'iskeluar'
      Size = 1
    end
    object qBukaPalangno_rfid: TStringField
      FieldName = 'no_rfid'
      Size = 50
    end
    object qBukaPalangno_gate_in: TIntegerField
      FieldName = 'no_gate_in'
    end
    object qBukaPalangno_gate_out: TIntegerField
      FieldName = 'no_gate_out'
    end
    object qBukaPalangshift: TIntegerField
      FieldName = 'shift'
    end
    object qBukaPalangstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
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
    Left = 1228
    Top = 221
    Datasets = <
      item
        DataSet = frxdbKarcisHilang
        DataSetName = 'frxdbKarcisHilang'
      end
      item
        DataSet = frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 95.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 3.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 306.141917800000000000
        Top = 18.897650000000000000
        Width = 253.228510000000000000
        object frxDBPrintno_karcis: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 55.252010000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."no_karcis"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 100.724490000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."tgl"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Top = 55.252010000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nomor Karcis')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Top = 100.724490000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl Masuk')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 55.252010000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 100.724490000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          Top = 115.842610000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jam Masuk')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 115.842610000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          Left = 107.826840000000000000
          Top = 115.842610000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."jam"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Top = 267.023810000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '~TERIMAKASIH~')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Top = 282.141930000000000000
          Width = 253.228510000000000000
          Height = 11.338577800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Top = 70.488250000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jenis Kendaraan')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 70.488250000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 70.488250000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."type_kendaraan"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 105.826840000000000000
          Top = 130.078850000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."nama"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Top = 85.606370000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nopol')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 85.606370000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 85.606370000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxdbKarcisHilang."nopol"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 0.220470000000000000
          Top = 148.976500000000000000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 98.267780000000000000
          Top = 148.976500000000000000
          Width = 7.559060000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.504020000000000000
          Top = 148.976500000000000000
          Width = 139.842610000000000000
          Height = 18.897637800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxdbKarcisHilang."tarif"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 105.826840000000000000
          Top = 148.976500000000000000
          Width = 26.456710000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 130.078850000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Operator')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 130.078850000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo27: TfrxMemoView
          Width = 253.228510000000000000
          Height = 30.236227800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Bandar Udara Juanda'
            'Terminal 1 - [frxDBPerusahaan."alamat"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 47.692949999999990000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Style = fsDash
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 49.472480000000010000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Style = fsDash
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Top = 176.315090000000000000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Style = fsDash
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 3.779530000000000000
          Top = 178.094620000000000000
          Width = 245.669450000000000000
          Color = clBlack
          Frame.Style = fsDash
          Diagonal = True
        end
        object Memo22: TfrxMemoView
          ShiftMode = smDontShift
          Top = 183.874150000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Ketentuan Umum :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          ShiftMode = smDontShift
          Top = 198.992270000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '1.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 198.992270000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Biaya adalah untuk sekali masuk.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Top = 214.110390000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '2.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 214.110390000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Kendaraan dilarang menginap')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Top = 229.228510000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '3.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 229.228510000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jam Operasional 05.00 WIB - 22.00 WIB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 244.346630000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '4.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 244.346630000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Keluhan dan Saran 08113099914 / 08123220027')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 28.015770000000000000
          Width = 253.228510000000000000
          Height = 18.897637800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Premium Car Space')
          ParentFont = False
        end
      end
    end
  end
  object xml: TXMLDocument
    NodeIndentStr = '   '
    Left = 1282
    Top = 133
    DOMVendorDesc = 'Open XML'
  end
  object qKarcisHilang: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.karcis_hilang'
      'where id_hilang=-1')
    Params = <>
    Left = 1243
    Top = 96
    object qKarcisHilangid_hilang: TLargeintField
      FieldName = 'id_hilang'
      Required = True
    end
    object qKarcisHilangnopol: TStringField
      FieldName = 'nopol'
      Size = 255
    end
    object qKarcisHilangno_ktp: TStringField
      FieldName = 'no_ktp'
      Size = 255
    end
    object qKarcisHilangnama: TStringField
      FieldName = 'nama'
      Size = 255
    end
    object qKarcisHilangalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object qKarcisHilangno_hp: TStringField
      FieldName = 'no_hp'
      Size = 255
    end
    object qKarcisHilangusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 30
    end
    object qKarcisHilangusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 30
    end
    object qKarcisHilangtype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 1020
    end
    object qKarcisHilangtarif: TFloatField
      FieldName = 'tarif'
    end
  end
  object qExec: TZQuery
    Connection = DM.conn
    Params = <>
    Left = 1277
    Top = 96
  end
  object qSysDate: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'SELECT CAST(to_char(current_timestamp, '#39'YYYYMMDDHH24MISSMS'#39') AS ' +
        'varchar(30)) as svrdate')
    Params = <>
    Left = 1316
    Top = 94
    object qSysDatesvrdate: TStringField
      FieldName = 'svrdate'
      ReadOnly = True
      Size = 30
    end
  end
  object Timer1: TTimer
    Interval = 6000
    OnTimer = Timer1Timer
    Left = 1188
    Top = 73
  end
  object qLastGateOut: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select a.no_karcis, a.usr_upd, a.type_kendaraan, a.nopol, a.jam_' +
        'masuk, a.nama_anggota, a.no_kartu_char, a.id_jns_anggota,'
      
        '(case when a.keterangan='#39'UMUM'#39' then a.keterangan else '#39'Passing B' +
        'y Member Card a/n  '#39'||a.nama_anggota||'#39' No Kartu :  '#39'||a.no_kart' +
        'u_char end) as keterangan,'
      
        'cast((a.no_karcis||'#39' Jam: '#39'||to_char(a.jam_keluar, '#39'HH24:MI:SS'#39')' +
        ') as varchar(255)) as no_karcis2,'
      ' b.jns_kendaraan, a.tarif'
      'from trans.gate a'
      
        'left join master.mjns_kendaraan b on b.id_jns_kendaraan=a.id_jns' +
        '_kendaraan'
      'where a.iskeluar='#39'1'#39' and a.usr_upd=:pusr'
      
        'and a.jam_keluar between to_timestamp(:ptgl0,'#39'dd/mm/yyyy'#39') and t' +
        'o_timestamp(:ptgl1,'#39'dd/mm/yyyy'#39') + interval '#39'23 hours 59 mins 59' +
        ' secs'#39
      'and a.shift=:pshift'
      'order by a.jam_keluar desc')
    Params = <
      item
        DataType = ftString
        Name = 'pusr'
        ParamType = ptUnknown
        Value = 'sa'
      end
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/09/2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/09/2019'
      end
      item
        DataType = ftString
        Name = 'pshift'
        ParamType = ptUnknown
        Value = '1'
      end>
    Left = 1175
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'pusr'
        ParamType = ptUnknown
        Value = 'sa'
      end
      item
        DataType = ftString
        Name = 'ptgl0'
        ParamType = ptUnknown
        Value = '01/09/2019'
      end
      item
        DataType = ftString
        Name = 'ptgl1'
        ParamType = ptUnknown
        Value = '01/09/2019'
      end
      item
        DataType = ftString
        Name = 'pshift'
        ParamType = ptUnknown
        Value = '1'
      end>
    object qLastGateOutno_karcis: TStringField
      FieldName = 'no_karcis'
      ReadOnly = True
      Size = 255
    end
    object qLastGateOutno_karcis2: TStringField
      FieldName = 'no_karcis2'
      ReadOnly = True
      Size = 255
    end
    object qLastGateOutjns_kendaraan: TStringField
      Alignment = taCenter
      FieldName = 'jns_kendaraan'
      ReadOnly = True
      Size = 255
    end
    object qLastGateOuttarif: TFloatField
      FieldName = 'tarif'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qLastGateOutusr_upd: TStringField
      Alignment = taCenter
      FieldName = 'usr_upd'
      ReadOnly = True
      Size = 120
    end
    object qLastGateOuttype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      ReadOnly = True
      Size = 255
    end
    object qLastGateOutketerangan: TMemoField
      DisplayWidth = 255
      FieldName = 'keterangan'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qLastGateOutnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qLastGateOutjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qLastGateOutnama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
    object qLastGateOutno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object qLastGateOutid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
  end
  object dsqLastGateOut: TDataSource
    DataSet = qLastGateOut
    Left = 1202
    Top = 103
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
    Left = 1187
    Top = 305
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
  object qTarif2: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mtarif2'
      'where id_tarif=:pid_tarif')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid_tarif'
        ParamType = ptUnknown
      end>
    Left = 1192
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid_tarif'
        ParamType = ptUnknown
      end>
    object qTarif2id_tarif: TStringField
      FieldName = 'id_tarif'
      Required = True
      Size = 10
    end
    object qTarif2diskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 255
    end
    object qTarif2tarif: TFloatField
      FieldName = 'tarif'
    end
  end
  object MemBrowseGate: TkbmMemTable
    Active = True
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
      end
      item
        Name = 'no_pan'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bank'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'saldo_awal'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'saldo_akhir'
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
    Left = 1096
    Top = 220
    object MemBrowseGateno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 30
    end
    object MemBrowseGateid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 10
    end
    object MemBrowseGateid_jns_kendaraan: TStringField
      DisplayWidth = 255
      FieldName = 'id_jns_kendaraan'
      Size = 255
    end
    object MemBrowseGateno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 50
    end
    object MemBrowseGatejam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
      DisplayFormat = 'dd-mm-yyyy hh:nn:ss'
    end
    object MemBrowseGatejam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
      DisplayFormat = 'dd-mm-yyyy hh:nn:ss'
    end
    object MemBrowseGatetarif: TFloatField
      FieldName = 'tarif'
      DisplayFormat = ',0'
    end
    object MemBrowseGatedenda: TFloatField
      FieldName = 'denda'
      DisplayFormat = ',0'
    end
    object MemBrowseGatefoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 255
    end
    object MemBrowseGatefoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 255
    end
    object MemBrowseGatenopol: TStringField
      FieldName = 'nopol'
      Size = 30
    end
    object MemBrowseGateusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object MemBrowseGateusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object MemBrowseGatedt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object MemBrowseGatedt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object MemBrowseGateiskeluar: TStringField
      FieldName = 'iskeluar'
      Size = 1
    end
    object MemBrowseGatejns_anggota: TStringField
      FieldName = 'jns_anggota'
      Size = 255
    end
    object MemBrowseGatenama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 255
    end
    object MemBrowseGatelama_jam: TStringField
      FieldName = 'lama_jam'
      Size = 32
    end
    object MemBrowseGatelama_menit: TFloatField
      FieldName = 'lama_menit'
    end
    object MemBrowseGatehari: TStringField
      FieldName = 'hari'
      Size = 255
    end
    object MemBrowseGatejam: TStringField
      FieldName = 'jam'
      Size = 255
    end
    object MemBrowseGatemenit: TStringField
      FieldName = 'menit'
      Size = 255
    end
    object MemBrowseGateno_pan: TStringField
      FieldName = 'no_pan'
      Size = 100
    end
    object MemBrowseGatebank: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object MemBrowseGatesaldo_awal: TStringField
      FieldName = 'saldo_awal'
      Size = 100
    end
    object MemBrowseGatesaldo_akhir: TStringField
      FieldName = 'saldo_akhir'
      Size = 100
    end
  end
  object dsMemBrowseGate: TDataSource
    DataSet = MemBrowseGate
    Left = 1116
    Top = 236
  end
  object frxDBMemBrowse: TfrxDBDataset
    UserName = 'frxDBMemBrowse'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_karcis=no_karcis'
      'id_jns_anggota=id_jns_anggota'
      'id_jns_kendaraan=id_jns_kendaraan'
      'no_kartu_char=no_kartu_char'
      'jam_masuk=jam_masuk'
      'jam_keluar=jam_keluar'
      'tarif=tarif'
      'denda=denda'
      'foto_bg_in=foto_bg_in'
      'foto_bg_ot=foto_bg_ot'
      'nopol=nopol'
      'usr_ins=usr_ins'
      'usr_upd=usr_upd'
      'dt_ins=dt_ins'
      'dt_upd=dt_upd'
      'iskeluar=iskeluar'
      'jns_anggota=jns_anggota'
      'nama_anggota=nama_anggota'
      'lama_jam=lama_jam'
      'lama_menit=lama_menit'
      'hari=hari'
      'jam=jam'
      'menit=menit'
      'no_pan=no_pan'
      'bank=bank'
      'saldo_awal=saldo_awal'
      'saldo_akhir=saldo_akhir')
    DataSet = MemBrowseGate
    BCDToCurrency = False
    Left = 1299
    Top = 199
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
    Left = 1251
    Top = 249
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
    Left = 1281
    Top = 250
  end
  object F6: TLMDGlobalHotKey
    HotKey = 117
    OnKeyDown = F6KeyDown
    Left = 1122
    Top = 85
  end
  object MemTotal: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'grand_total'
        DataType = ftFloat
      end
      item
        Name = 'bayar'
        DataType = ftFloat
      end
      item
        Name = 'cara'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'no_kartu'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'bank'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nk'
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
    Left = 198
    Top = 175
    object MemTotalgrand_total: TFloatField
      FieldName = 'grand_total'
      DisplayFormat = '#,###'
    end
    object MemTotalbayar: TFloatField
      FieldName = 'bayar'
      OnChange = MemTotalbayarChange
      DisplayFormat = '#,###'
    end
    object MemTotalkembali: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kembali'
      DisplayFormat = '#,###'
      Calculated = True
    end
    object MemTotalcara: TStringField
      FieldName = 'cara'
      Size = 100
    end
    object MemTotalno_kartu: TStringField
      FieldName = 'no_kartu'
      Size = 100
    end
    object MemTotalbank: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object MemTotalsubtotal: TFloatField
      FieldName = 'subtotal'
      DisplayFormat = '#,###'
    end
  end
  object dsTotal: TDataSource
    DataSet = MemTotal
    Left = 223
    Top = 177
  end
  object qCmd: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select gto.jns_pembayaran, gto.id_reader_cmd, gto.reader_com_por' +
        't, gto.reader_baudrate, rd.*'
      'from master.mgate_ot gto'
      
        'left join master.reader_cmd rd on rd.id_reader_cmd=gto.id_reader' +
        '_cmd'
      'where gto.id_gate=:pid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    Left = 165
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    object qCmdid_reader_cmd: TLargeintField
      FieldName = 'id_reader_cmd'
      Required = True
    end
    object qCmdpg_owner: TStringField
      FieldName = 'pg_owner'
      Size = 1020
    end
    object qCmdstx: TStringField
      FieldName = 'stx'
      Size = 400
    end
    object qCmdetx: TStringField
      FieldName = 'etx'
      Size = 400
    end
    object qCmdnew_debet: TStringField
      FieldName = 'new_debet'
      Size = 400
    end
    object qCmdecho_ping: TStringField
      FieldName = 'echo_ping'
      Size = 400
    end
    object qCmdlast_trans: TStringField
      FieldName = 'last_trans'
      Size = 400
    end
    object qCmdcheck_balance: TStringField
      FieldName = 'check_balance'
      Size = 400
    end
    object qCmdjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Size = 4
    end
    object qCmdreader_com_port: TStringField
      FieldName = 'reader_com_port'
      Size = 400
    end
    object qCmdreader_baudrate: TStringField
      FieldName = 'reader_baudrate'
      Size = 400
    end
    object qCmdid_reader_cmd_1: TLargeintField
      FieldName = 'id_reader_cmd_1'
      Required = True
    end
  end
  object ComPort2: TComPort
    BaudRate = br115200
    Port = 'COM5'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    OnRxChar = ComPort2RxChar
    Left = 231
    Top = 120
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 200
    Top = 139
  end
  object MemKarcisHilang: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nopol'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_ktp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_hp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tarif'
        DataType = ftFloat
      end
      item
        Name = 'type_kendaraan'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'jns_pengguna'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'nama_member'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'no_karcis'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'dt_ins'
        DataType = ftDateTime
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
    Left = 413
    Top = 438
    object MemKarcisHilangnopol: TStringField
      FieldName = 'nopol'
      Size = 255
    end
    object MemKarcisHilangno_ktp: TStringField
      FieldName = 'no_ktp'
      Size = 100
    end
    object MemKarcisHilangnama: TStringField
      FieldName = 'nama'
      Size = 100
    end
    object MemKarcisHilangalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object MemKarcisHilangno_hp: TStringField
      FieldName = 'no_hp'
    end
    object MemKarcisHilangtarif: TFloatField
      FieldName = 'tarif'
    end
    object MemKarcisHilangtype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 200
    end
    object MemKarcisHilangjns_pengguna: TStringField
      FieldName = 'jns_pengguna'
      Size = 200
    end
    object MemKarcisHilangnama_member: TStringField
      FieldName = 'nama_member'
      Size = 200
    end
    object MemKarcisHilangno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 200
    end
    object MemKarcisHilangdt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
  end
  object dsKarcisHilang: TDataSource
    DataSet = MemKarcisHilang
    Left = 440
    Top = 441
  end
  object qryTrfKarcisHilang: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select tarif'
      'from master.mtarif'
      'where id_jns_anggota=:jns_anggota')
    Params = <
      item
        DataType = ftUnknown
        Name = 'jns_anggota'
        ParamType = ptUnknown
      end>
    Left = 469
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'jns_anggota'
        ParamType = ptUnknown
      end>
    object qryTrfKarcisHilangtarif: TFloatField
      FieldName = 'tarif'
    end
  end
  object frxKarcisCashless: TfrxReport
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
    Left = 1336
    Top = 199
    Datasets = <
      item
        DataSet = frxDBLogo
        DataSetName = 'frxDBLogo'
      end
      item
        DataSet = frxDBMemBrowse
        DataSetName = 'frxDBMemBrowse'
      end
      item
        DataSet = frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 100.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 343.937217800000000000
        Top = 18.897650000000000000
        Width = 253.228510000000000000
        object frxDBPrintno_karcis: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 60.472480000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'no_karcis'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."no_karcis"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 105.826840000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'jam_masuk'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."jam_masuk"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Top = 60.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nomor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Top = 105.826840000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl & Jam Masuk')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 105.826840000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          Top = 120.944960000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl & Jam Keluar')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 120.944960000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          Left = 107.826840000000000000
          Top = 120.944960000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'jam_keluar'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."jam_keluar"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jenis Kendaraan')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 75.590600000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 75.590600000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'id_jns_kendaraan'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."id_jns_kendaraan"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 170.078850000000000000
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tarif')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 98.267780000000000000
          Top = 170.078850000000000000
          Width = 7.559060000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 130.504020000000000000
          Top = 170.078850000000000000
          Width = 139.842610000000000000
          Height = 18.897637800000000000
          DataField = 'tarif'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxDBMemBrowse."tarif"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 136.063080000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Lama Parkir')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 98.267780000000000000
          Top = 136.063080000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo24: TfrxMemoView
          Left = 107.826840000000000000
          Top = 136.063080000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'jam'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."jam"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 105.826840000000000000
          Top = 170.078850000000000000
          Width = 22.677180000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 105.826840000000000000
          Top = 151.181200000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'usr_upd'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."usr_upd"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nopol')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 90.708720000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 90.708720000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'nopol'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."nopol"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Top = 196.535560000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '=========== PEMBAYARAN==========')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 211.653680000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'no_pan'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."no_pan"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Top = 211.653680000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'No. Kartu')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 211.653680000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Top = 226.771800000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Bank')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 226.771800000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 226.771800000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'bank'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."bank"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 241.889920000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Trans.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 241.889920000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 241.889920000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'tarif'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."tarif"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 257.008040000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'saldo_awal'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."saldo_awal"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Top = 257.008040000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Saldo Awal')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 257.008040000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo40: TfrxMemoView
          ShiftMode = smDontShift
          Top = 272.126160000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Saldo Akhir')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 272.126160000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo42: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 272.126160000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'saldo_akhir'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."saldo_akhir"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Top = 287.244280000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '==============================')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          Width = 215.433070870000000000
          Height = 52.913420000000000000
          Center = True
          DataField = 'logo'
          DataSet = frxDBLogo
          DataSetName = 'frxDBLogo'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Top = 151.181200000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Operator')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 151.181200000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          ShiftMode = smDontShift
          Top = 309.921460000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Terima Kasih Atas Kunjungan Anda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Top = 325.039580000000000000
          Width = 253.228510000000000000
          Height = 11.338577800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '~Hati-Hati di Jalan~')
          ParentFont = False
        end
      end
    end
  end
  object qCekAnggota: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select  master.fn_cek_anggota(:pkartu) as vcount')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pkartu'
        ParamType = ptUnknown
      end>
    Left = 361
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pkartu'
        ParamType = ptUnknown
      end>
    object qCekAnggotavcount: TIntegerField
      FieldName = 'vcount'
      ReadOnly = True
    end
  end
  object qAnggota: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select *'
      'from master.manggota'
      
        'where (ltrim(no_kartu_char,'#39'0'#39')=:pno or upper(nopol)=upper(:pno)' +
        ')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pno'
        ParamType = ptUnknown
      end>
    Left = 393
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pno'
        ParamType = ptUnknown
      end>
    object qAnggotano_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Required = True
      Size = 200
    end
    object qAnggotano_kartu_hex: TStringField
      FieldName = 'no_kartu_hex'
      Required = True
      Size = 200
    end
    object qAnggotaid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object qAnggotaid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object qAnggotanama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
    object qAnggotaalamat: TStringField
      FieldName = 'alamat'
      Size = 1020
    end
    object qAnggotakota: TStringField
      FieldName = 'kota'
      Size = 400
    end
    object qAnggotanopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qAnggotaisactive: TStringField
      FieldName = 'isactive'
      Size = 4
    end
    object qAnggotausr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object qAnggotausr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object qAnggotadt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qAnggotadt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qAnggotadt_mulai: TDateTimeField
      FieldName = 'dt_mulai'
    end
    object qAnggotadt_akhir: TDateTimeField
      FieldName = 'dt_akhir'
    end
    object qAnggotanomor: TIntegerField
      FieldName = 'nomor'
    end
    object qAnggotatype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 1020
    end
  end
  object F12: TLMDGlobalHotKey
    HotKey = 123
    OnKeyDown = F12KeyDown
    Left = 1051
    Top = 167
  end
  object qCekAnggotaAktif: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * '
      'from master.fn_cek_anggota_aktif(:pkartu)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pkartu'
        ParamType = ptUnknown
      end>
    Left = 425
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pkartu'
        ParamType = ptUnknown
      end>
    object qCekAnggotaAktifstatus: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
    object qCekAnggotaAktiftgl_aktif: TStringField
      FieldName = 'tgl_aktif'
      ReadOnly = True
      Size = 252
    end
  end
  object qGateIN: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mgate_in'
      'where id_gate=:pid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    Left = 1147
    Top = 305
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pid'
        ParamType = ptUnknown
      end>
    object qGateINid_gate: TStringField
      FieldName = 'id_gate'
      Required = True
    end
    object qGateINcnt_id: TStringField
      FieldName = 'cnt_id'
      Required = True
      Size = 40
    end
    object qGateINgt_isactive: TStringField
      FieldName = 'gt_isactive'
      Size = 4
    end
    object qGateINgt_print: TStringField
      FieldName = 'gt_print'
      Size = 400
    end
    object qGateINgt_loop_on: TStringField
      FieldName = 'gt_loop_on'
      Size = 400
    end
    object qGateINgt_loop_off: TStringField
      FieldName = 'gt_loop_off'
      Size = 400
    end
    object qGateINgt_green_btn: TStringField
      FieldName = 'gt_green_btn'
      Size = 400
    end
    object qGateINgt_red_btn: TStringField
      FieldName = 'gt_red_btn'
      Size = 400
    end
    object qGateINketerangan: TStringField
      FieldName = 'keterangan'
      Size = 1020
    end
    object qGateINgt_cam: TStringField
      FieldName = 'gt_cam'
      Size = 1020
    end
    object qGateINt_open: TIntegerField
      FieldName = 't_open'
    end
    object qGateINgt_knd: TStringField
      FieldName = 'gt_knd'
      Size = 40
    end
    object qGateINgt_open_gate: TStringField
      FieldName = 'gt_open_gate'
      Size = 40
    end
    object qGateINgt_loop_gate: TStringField
      FieldName = 'gt_loop_gate'
      Size = 400
    end
    object qGateINgt_info_ok: TStringField
      FieldName = 'gt_info_ok'
      Size = 400
    end
  end
  object frxKarcisVoucher: TfrxReport
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
    Left = 1328
    Top = 231
    Datasets = <
      item
        DataSet = frxDBLogo
        DataSetName = 'frxDBLogo'
      end
      item
        DataSet = frxDBMemBrowse
        DataSetName = 'frxDBMemBrowse'
      end
      item
        DataSet = frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 86.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 1.000000000000000000
      BottomMargin = 1.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 291.023797800000000000
        Top = 18.897650000000000000
        Width = 253.228510000000000000
        object frxDBPrintno_karcis: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 60.472480000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'no_karcis'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."no_karcis"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 105.826840000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'jam_masuk'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."jam_masuk"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Top = 60.472480000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nomor')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          ShiftMode = smDontShift
          Top = 105.826840000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl & Jam Masuk')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 60.472480000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo10: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 105.826840000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          Top = 120.944960000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl & Jam Keluar')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 120.944960000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          Left = 107.826840000000000000
          Top = 120.944960000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'jam_keluar'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd mmm yyyy hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."jam_keluar"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Top = 75.590600000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Jenis Kendaraan')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 75.590600000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 75.590600000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'id_jns_kendaraan'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."id_jns_kendaraan"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 136.063080000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Lama Parkir')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 98.267780000000000000
          Top = 136.063080000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo24: TfrxMemoView
          Left = 107.826840000000000000
          Top = 136.063080000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'jam'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."jam"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Left = 105.826840000000000000
          Top = 151.181200000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'usr_upd'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."usr_upd"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nopol')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 90.708720000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 90.708720000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'nopol'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."nopol"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          ShiftMode = smDontShift
          Top = 170.078850000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '=========== PEMBAYARAN==========')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 185.196970000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'no_pan'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."no_pan"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Top = 185.196970000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'No. Voucher')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 185.196970000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 200.315090000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Nama Pasien')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 200.315090000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 200.315090000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataField = 'bank'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."bank"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 215.433210000000000000
          Width = 147.401670000000000000
          Height = 15.118107800000000000
          DataField = 'saldo_akhir'
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBMemBrowse."saldo_akhir"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          ShiftMode = smDontShift
          Top = 215.433210000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Sisa Parkir')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 215.433210000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
        object Memo43: TfrxMemoView
          ShiftMode = smDontShift
          Top = 230.551330000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '==============================')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Align = baLeft
          Width = 215.433070870000000000
          Height = 52.913420000000000000
          Center = True
          DataField = 'logo'
          DataSet = frxDBLogo
          DataSetName = 'frxDBLogo'
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo2: TfrxMemoView
          Top = 151.181200000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Operator')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 98.267780000000000000
          Top = 151.181200000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
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
          ShiftMode = smDontShift
          Top = 257.008040000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Terima Kasih Atas Kunjungan Anda')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          ShiftMode = smDontShift
          Top = 272.126160000000000000
          Width = 253.228510000000000000
          Height = 11.338577800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '~Hati-Hati di Jalan~')
          ParentFont = False
        end
      end
    end
  end
  object qExec2: TZQuery
    Connection = DM.conn2
    Params = <>
    Left = 1325
    Top = 280
  end
  object MemBrowseGateStruk: TkbmMemTable
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
    Left = 1072
    Top = 252
    object StringField1: TStringField
      FieldName = 'no_karcis'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'id_jns_anggota'
      Size = 10
    end
    object StringField3: TStringField
      DisplayWidth = 255
      FieldName = 'id_jns_kendaraan'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'no_kartu_char'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'jam_masuk'
      DisplayFormat = 'dd-mm-yyyy hh:nn:ss'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'jam_keluar'
      DisplayFormat = 'dd-mm-yyyy hh:nn:ss'
    end
    object FloatField1: TFloatField
      FieldName = 'tarif'
      DisplayFormat = ',0'
    end
    object FloatField2: TFloatField
      FieldName = 'denda'
      DisplayFormat = ',0'
    end
    object StringField5: TStringField
      FieldName = 'foto_bg_in'
      Size = 255
    end
    object StringField6: TStringField
      FieldName = 'foto_bg_ot'
      Size = 255
    end
    object StringField7: TStringField
      FieldName = 'nopol'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'usr_ins'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'usr_upd'
      Size = 30
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'dt_ins'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'dt_upd'
    end
    object StringField10: TStringField
      FieldName = 'iskeluar'
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'jns_anggota'
      Size = 255
    end
    object StringField12: TStringField
      FieldName = 'nama_anggota'
      Size = 255
    end
    object StringField13: TStringField
      FieldName = 'lama_jam'
      Size = 32
    end
    object FloatField3: TFloatField
      FieldName = 'lama_menit'
    end
    object StringField14: TStringField
      FieldName = 'hari'
      Size = 255
    end
    object StringField15: TStringField
      FieldName = 'jam'
      Size = 255
    end
    object StringField16: TStringField
      FieldName = 'menit'
      Size = 255
    end
    object StringField17: TStringField
      FieldName = 'no_pan'
      Size = 100
    end
    object StringField18: TStringField
      FieldName = 'bank'
      Size = 100
    end
    object StringField19: TStringField
      FieldName = 'saldo_awal'
      Size = 100
    end
    object StringField20: TStringField
      FieldName = 'saldo_akhir'
      Size = 100
    end
  end
  object dsBrowseGateStruk: TDataSource
    DataSet = MemBrowseGateStruk
    Left = 1092
    Top = 268
  end
  object qPrint: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select a.* from trans.vbrowse_gate a'
      'where a.no_karcis=:no_karcis'
      'limit 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_karcis'
        ParamType = ptUnknown
      end>
    Left = 1207
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_karcis'
        ParamType = ptUnknown
      end>
    object qPrintno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 120
    end
    object qPrintjam_masuk: TDateTimeField
      FieldName = 'jam_masuk'
    end
    object qPrintjam_keluar: TDateTimeField
      FieldName = 'jam_keluar'
    end
    object qPrinttarif: TFloatField
      FieldName = 'tarif'
    end
    object qPrintusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 120
    end
    object qPrinthari: TStringField
      FieldName = 'hari'
      Size = 252
    end
    object qPrintjns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
      Size = 1020
    end
    object qPrintnopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qPrintjam: TStringField
      FieldName = 'jam'
      Size = 252
    end
    object qPrintmenit: TStringField
      FieldName = 'menit'
      Size = 252
    end
    object qPrintlama_jam: TStringField
      FieldName = 'lama_jam'
      Size = 32
    end
    object qPrintlama_menit: TFloatField
      FieldName = 'lama_menit'
    end
    object qPrintid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object qPrintid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object qPrintno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Size = 200
    end
    object qPrintdenda: TFloatField
      FieldName = 'denda'
    end
    object qPrintfoto_bg_in: TStringField
      FieldName = 'foto_bg_in'
      Size = 1020
    end
    object qPrintfoto_bg_ot: TStringField
      FieldName = 'foto_bg_ot'
      Size = 1020
    end
    object qPrintusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 120
    end
    object qPrintdt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object qPrintdt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object qPrintiskeluar: TStringField
      FieldName = 'iskeluar'
      Size = 4
    end
    object qPrintjns_anggota: TStringField
      FieldName = 'jns_anggota'
      Size = 1020
    end
    object qPrintnama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
    object qPrinttype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 1020
    end
    object qPrintnama_member: TStringField
      FieldName = 'nama_member'
      Size = 1020
    end
  end
  object dsPrint: TDataSource
    DataSet = qPrint
    Left = 1234
    Top = 143
  end
  object dsTarifHelm: TDataSource
    DataSet = memTarifHelm
    Left = 528
    Top = 441
  end
  object qTarifHelm: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select tarif'
      'from master.mtarif_penitipan'
      'where jns_trans='#39'Penitipan Helm'#39)
    Params = <>
    Left = 525
    Top = 408
    object qTarifHelmtarif: TFloatField
      FieldName = 'tarif'
    end
  end
  object memTarifHelm: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nopol'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_ktp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_hp'
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
    Left = 557
    Top = 438
    object memTarifHelmno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 100
    end
    object memTarifHelmnama: TStringField
      FieldName = 'nama'
      Size = 100
    end
    object memTarifHelmtarif: TFloatField
      FieldName = 'tarif'
    end
  end
  object qPenitipanHelm: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.penitipan_helm'
      'where id_penitipan=-1')
    Params = <>
    Left = 563
    Top = 400
    object qPenitipanHelmid_penitipan: TLargeintField
      FieldName = 'id_penitipan'
      Required = True
    end
    object qPenitipanHelmnopol: TStringField
      FieldName = 'nopol'
      Size = 1020
    end
    object qPenitipanHelmno_ktp: TStringField
      FieldName = 'no_ktp'
      Size = 1020
    end
    object qPenitipanHelmnama: TStringField
      FieldName = 'nama'
      Size = 1020
    end
    object qPenitipanHelmalamat: TStringField
      FieldName = 'alamat'
      Size = 1020
    end
    object qPenitipanHelmno_hp: TStringField
      FieldName = 'no_hp'
      Size = 1020
    end
    object qPenitipanHelmusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object qPenitipanHelmusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
  end
  object qJnsVoucher: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select id_voucher, diskripsi, tarif'
      'from master.mtarif_voucher')
    Params = <>
    Left = 619
    Top = 392
    object qJnsVoucherdiskripsi: TStringField
      FieldName = 'diskripsi'
      Size = 1020
    end
    object qJnsVouchertarif: TFloatField
      FieldName = 'tarif'
    end
    object qJnsVoucherid_voucher: TLargeintField
      FieldName = 'id_voucher'
      Required = True
    end
  end
  object dsJnsVoucher: TDataSource
    DataSet = qJnsVoucher
    Left = 648
    Top = 393
  end
  object dsPenjualanVoucher: TDataSource
    DataSet = memPenjualanVoucher
    Left = 616
    Top = 417
  end
  object memPenjualanVoucher: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'jns_voucher'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama_pasien'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tarif'
        DataType = ftFloat
      end
      item
        Name = 'no_mrs'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'no_kamar'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nopol'
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
    Left = 645
    Top = 422
    object memPenjualanVoucherjns_voucher: TStringField
      FieldName = 'jns_voucher'
      Size = 100
    end
    object memPenjualanVouchernama_pasien: TStringField
      FieldName = 'nama_pasien'
      Size = 100
    end
    object memPenjualanVoucherTarif: TFloatField
      FieldName = 'tarif'
    end
    object memPenjualanVoucherno_mrs: TStringField
      FieldName = 'no_mrs'
    end
    object memPenjualanVoucherno_kamar: TStringField
      FieldName = 'no_kamar'
    end
    object memPenjualanVouchernopol: TStringField
      FieldName = 'nopol'
    end
    object memPenjualanVoucherid_voucher: TIntegerField
      FieldName = 'id_voucher'
    end
    object memPenjualanVoucherqty: TFloatField
      Alignment = taLeftJustify
      FieldName = 'qty'
    end
  end
  object qPenjualanVoucher: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.penjualan_voucher'
      'where id_penjualan=-1')
    Params = <>
    Left = 691
    Top = 400
    object qPenjualanVoucherid_penjualan: TLargeintField
      FieldName = 'id_penjualan'
      Required = True
    end
    object qPenjualanVouchernopol: TStringField
      FieldName = 'nopol'
      Size = 1020
    end
    object qPenjualanVoucherno_kamar: TStringField
      FieldName = 'no_kamar'
      Size = 1020
    end
    object qPenjualanVouchernama: TStringField
      FieldName = 'nama'
      Size = 1020
    end
    object qPenjualanVoucherno_mrs: TStringField
      FieldName = 'no_mrs'
      Size = 1020
    end
    object qPenjualanVoucherno_hp: TStringField
      FieldName = 'no_hp'
      Size = 1020
    end
    object qPenjualanVoucherusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object qPenjualanVoucherusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object qPenjualanVoucherdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qPenjualanVoucherdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
    object qPenjualanVoucherid_voucher: TStringField
      FieldName = 'id_voucher'
      Size = 80
    end
  end
  object memKarcisManual: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nopol'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_ktp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_hp'
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
    Left = 413
    Top = 510
    object memKarcisManualjns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
      Size = 200
    end
    object memKarcisManualno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 100
    end
    object memKarcisManualtarif: TFloatField
      FieldName = 'tarif'
    end
    object memKarcisManualid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
    end
  end
  object dsKarcisManual: TDataSource
    DataSet = memKarcisManual
    Left = 440
    Top = 513
  end
  object qJnsKendaraan: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select jns_kendaraan, id_jns_kendaraan'
      'from master.mjns_kendaraan')
    Params = <>
    Left = 469
    Top = 512
    object qJnsKendaraanjns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
      Required = True
      Size = 1020
    end
    object qJnsKendaraanid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Required = True
      Size = 40
    end
  end
  object dsJnsKendaraan: TDataSource
    DataSet = qJnsKendaraan
    Left = 496
    Top = 513
  end
  object qTarifManual: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      
        'select * from master.fn_get_tarif_manual(:pjns_anggota,:pjns_ken' +
        'daraan) as tarif')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pjns_anggota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pjns_kendaraan'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 540
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pjns_anggota'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pjns_kendaraan'
        ParamType = ptUnknown
      end>
    object qTarifManualtarif: TFloatField
      FieldName = 'tarif'
      ReadOnly = True
    end
  end
  object qKarcisManual: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.karcis_manual')
    Params = <>
    Left = 469
    Top = 544
    object qKarcisManualid_karcis_manual: TLargeintField
      FieldName = 'id_karcis_manual'
      Required = True
    end
    object qKarcisManualnokarcis: TStringField
      FieldName = 'nokarcis'
      Size = 1020
    end
    object qKarcisManualjns_kendaraan: TStringField
      FieldName = 'jns_kendaraan'
      Size = 200
    end
    object qKarcisManualid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 200
    end
    object qKarcisManualusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object qKarcisManualusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object qKarcisManualdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qKarcisManualdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
  end
  object memPLL: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nopol'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_ktp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_hp'
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
    Left = 597
    Top = 526
    object memPLLdari: TStringField
      FieldName = 'dari'
      Size = 200
    end
    object memPLLditerima: TStringField
      FieldName = 'diterima'
      Size = 200
    end
    object memPLLjumlah: TFloatField
      FieldName = 'jumlah'
    end
  end
  object dsPLL: TDataSource
    DataSet = memPLL
    Left = 624
    Top = 529
  end
  object qPLL: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from trans.pendapatan_lain')
    Params = <>
    Left = 653
    Top = 528
    object qPLLid_pendapatan_lain: TLargeintField
      FieldName = 'id_pendapatan_lain'
      Required = True
    end
    object qPLLdari: TStringField
      FieldName = 'dari'
      Size = 1020
    end
    object qPLLoleh: TStringField
      FieldName = 'oleh'
      Size = 1020
    end
    object qPLLjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object qPLLusr_ins: TStringField
      FieldName = 'usr_ins'
      Required = True
      Size = 120
    end
    object qPLLusr_upd: TStringField
      FieldName = 'usr_upd'
      Required = True
      Size = 120
    end
    object qPLLdt_ins: TDateTimeField
      FieldName = 'dt_ins'
      Required = True
    end
    object qPLLdt_upd: TDateTimeField
      FieldName = 'dt_upd'
      Required = True
    end
  end
  object qMember: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select *'
      'from master.manggota'
      'where no_kartu_char=:nokartu')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nokartu'
        ParamType = ptUnknown
      end>
    Left = 457
    Top = 371
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nokartu'
        ParamType = ptUnknown
      end>
    object qMemberno_kartu_char: TStringField
      FieldName = 'no_kartu_char'
      Required = True
      Size = 200
    end
    object qMemberno_kartu_hex: TStringField
      FieldName = 'no_kartu_hex'
      Size = 200
    end
    object qMemberid_jns_anggota: TStringField
      FieldName = 'id_jns_anggota'
      Size = 40
    end
    object qMemberid_jns_kendaraan: TStringField
      FieldName = 'id_jns_kendaraan'
      Size = 40
    end
    object qMembernama_anggota: TStringField
      FieldName = 'nama_anggota'
      Size = 1020
    end
    object qMemberalamat: TStringField
      FieldName = 'alamat'
      Size = 1020
    end
    object qMemberkota: TStringField
      FieldName = 'kota'
      Size = 400
    end
    object qMembernopol: TStringField
      FieldName = 'nopol'
      Size = 120
    end
    object qMemberisactive: TStringField
      FieldName = 'isactive'
      Size = 4
    end
    object qMemberusr_ins: TStringField
      FieldName = 'usr_ins'
      Size = 120
    end
    object qMemberusr_upd: TStringField
      FieldName = 'usr_upd'
      Size = 120
    end
    object qMemberdt_ins: TDateTimeField
      FieldName = 'dt_ins'
    end
    object qMemberdt_upd: TDateTimeField
      FieldName = 'dt_upd'
    end
    object qMemberdt_mulai: TDateTimeField
      FieldName = 'dt_mulai'
    end
    object qMemberdt_akhir: TDateTimeField
      FieldName = 'dt_akhir'
    end
    object qMembernomor: TIntegerField
      FieldName = 'nomor'
    end
    object qMemberstatus_aktif: TBooleanField
      FieldName = 'status_aktif'
    end
    object qMembernik: TStringField
      FieldName = 'nik'
      Size = 80
    end
    object qMembertype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 1020
    end
  end
  object frxdbKarcisHilang: TfrxDBDataset
    UserName = 'frxdbKarcisHilang'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nopol=nopol'
      'no_ktp=no_ktp'
      'nama=nama'
      'alamat=alamat'
      'no_hp=no_hp'
      'type_kendaraan=type_kendaraan'
      'jns_pengguna=jns_pengguna'
      'nama_member=nama_member'
      'no_karcis=no_karcis'
      'tarif=tarif'
      'tgl=tgl'
      'jam=jam')
    DataSet = memPrint
    BCDToCurrency = False
    Left = 409
    Top = 466
  end
  object memPrint: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nopol'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_ktp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'nama'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'alamat'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'no_hp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'type_kendaraan'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'jns_pengguna'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'nama_member'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'no_karcis'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'tarif'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'tgl'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'jam'
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
    Left = 381
    Top = 438
    object memPrintnopol: TStringField
      FieldName = 'nopol'
      Size = 255
    end
    object memPrintno_ktp: TStringField
      FieldName = 'no_ktp'
      Size = 100
    end
    object memPrintnama: TStringField
      FieldName = 'nama'
      Size = 100
    end
    object memPrintalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object memPrintno_hp: TStringField
      FieldName = 'no_hp'
    end
    object memPrinttype_kendaraan: TStringField
      FieldName = 'type_kendaraan'
      Size = 200
    end
    object memPrintjns_pengguna: TStringField
      FieldName = 'jns_pengguna'
      Size = 200
    end
    object memPrintnama_member: TStringField
      FieldName = 'nama_member'
      Size = 200
    end
    object memPrintno_karcis: TStringField
      FieldName = 'no_karcis'
      Size = 200
    end
    object memPrinttarif: TStringField
      FieldName = 'tarif'
      Size = 100
    end
    object memPrinttgl: TStringField
      FieldName = 'tgl'
      Size = 100
    end
    object memPrintjam: TStringField
      FieldName = 'jam'
      Size = 100
    end
  end
  object CtrlDel: TLMDGlobalHotKey
    HotKey = 16430
    OnKeyDown = CtrlDelKeyDown
    Left = 1019
    Top = 135
  end
  object F11: TLMDGlobalHotKey
    HotKey = 122
    OnKeyDown = F11KeyDown
    Left = 999
    Top = 83
  end
  object frxKarcis0: TfrxReport
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
    Left = 1236
    Top = 181
    Datasets = <
      item
        DataSet = frxdbKarcisHilang
        DataSetName = 'frxdbKarcisHilang'
      end
      item
        DataSet = frxDBLogo
        DataSetName = 'frxDBLogo'
      end
      item
        DataSet = frxDBPerusahaan
        DataSetName = 'frxDBPerusahaan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 78.000000000000000000
      PaperHeight = 100.000000000000000000
      PaperSize = 256
      LeftMargin = 8.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 3.000000000000000000
      EndlessHeight = True
      EndlessWidth = True
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 314.480507800000000000
        Top = 18.897650000000000000
        Width = 253.228510000000000000
        object frxDBPrintno_karcis: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 57.811070000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."no_karcis"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          ShiftMode = smDontShift
          Top = 57.811070000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Bukti')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 57.811070000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Top = 73.370130000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal Masuk')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 73.370130000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 107.826840000000000000
          Top = 73.370130000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."tgl"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          ShiftMode = smDontShift
          Top = 121.504020000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Petugas')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 121.504020000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 121.504020000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."nama"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          ShiftMode = smDontShift
          Top = 104.385900000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nopol')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 104.385900000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          ShiftMode = smDontShift
          Left = 107.826840000000000000
          Top = 104.385900000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[frxdbKarcisHilang."nopol"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 134.283550000000000000
          Top = 136.622140000000000000
          Width = 117.165430000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."tarif"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          ShiftMode = smDontShift
          Top = 181.181200000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '-')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          Width = 254.228510000000000000
          Height = 30.236227800000000000
          DataSet = frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Bandar Udara Juanda'
            'Terminal 1 [frxDBPerusahaan."alamat"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 1.000000000000000000
          Top = 30.456710000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          DataSet = frxDBPerusahaan
          DataSetName = 'frxDBPerusahaan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Premium Car Space')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          ShiftMode = smDontShift
          Top = 166.299320000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Ketentuan Umum :')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 181.417440000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Biaya Parkir adalah per 8 jam')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          ShiftMode = smDontShift
          Top = 197.315090000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '-')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 197.551330000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Karcis Hilang denda Rp. 100.000')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          ShiftMode = smDontShift
          Top = 212.433210000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '-')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo33: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 212.669450000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Jam Operasional 06.00 WIB - 22.00 WIB')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo34: TfrxMemoView
          ShiftMode = smDontShift
          Top = 227.551330000000000000
          Width = 15.118120000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            '-')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo35: TfrxMemoView
          ShiftMode = smDontShift
          Left = 15.118120000000000000
          Top = 227.787570000000000000
          Width = 238.110390000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Keluhan/Saran 0811309914/08123220027')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo36: TfrxMemoView
          ShiftMode = smDontShift
          Top = 249.685220000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Terimakasih')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          ShiftMode = smDontShift
          Top = 272.905690000000000000
          Width = 253.228510000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '.')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo38: TfrxMemoView
          Top = 88.708720000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jam Masuk')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 98.267780000000000000
          Top = 88.708720000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 107.826840000000000000
          Top = 88.708720000000000000
          Width = 143.622140000000000000
          Height = 15.118107800000000000
          DataSet = frxDBMemBrowse
          DataSetName = 'frxDBMemBrowse'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'hh:mm:ss'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxdbKarcisHilang."jam"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          ShiftMode = smDontShift
          Top = 136.063080000000000000
          Width = 98.267780000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Biaya')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          ShiftMode = smDontShift
          Left = 98.267780000000000000
          Top = 136.063080000000000000
          Width = 7.559060000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          ShiftMode = smDontShift
          Left = 105.826840000000000000
          Top = 136.063080000000000000
          Width = 30.236240000000000000
          Height = 15.118107800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Rp.')
          ParentFont = False
        end
      end
    end
  end
  object Timer3: TTimer
    Interval = 6000
    OnTimer = Timer3Timer
    Left = 956
    Top = 81
  end
end
