object KarcisHilangFrm: TKarcisHilangFrm
  Left = 434
  Top = 192
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Karcis Parkir Hilang'
  ClientHeight = 295
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 42
    Align = alTop
    BorderOuter = fsGroove
    BorderSides = []
    BorderShadow = clSkyBlue
    GradientColorStyle = gcsCustom
    GradientColorStart = 8404992
    GradientColorStop = 13986304
    GradientDirection = gdHorizontalCenter
    GridColor = clBlack
    TabOrder = 0
    VisualStyle = vsGradient
    object lblCap: TLabel
      Left = 16
      Top = 5
      Width = 65
      Height = 25
      Caption = 'lblCap'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 42
    Width = 477
    Height = 253
    Align = alClient
    BorderOuter = fsGroove
    BorderSides = []
    Color = clWhite
    GradientColorStop = clSilver
    TabOrder = 1
    VisualStyle = vsClassic
    object Label11: TLabel
      Left = 30
      Top = 17
      Width = 41
      Height = 16
      Caption = 'NOPOL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 30
      Top = 112
      Width = 37
      Height = 16
      Caption = 'No HP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 30
      Top = 91
      Width = 46
      Height = 16
      Caption = 'Alamat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 140
      Top = 17
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
    object Label8: TLabel
      Left = 140
      Top = 112
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
    object Label9: TLabel
      Left = 140
      Top = 91
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
    object Label1: TLabel
      Left = 29
      Top = 45
      Width = 84
      Height = 16
      Caption = 'NO. Identitas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 139
      Top = 45
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
    object Label7: TLabel
      Left = 29
      Top = 68
      Width = 35
      Height = 16
      Caption = 'Nama'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 139
      Top = 68
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
    object Label3: TLabel
      Left = 24
      Top = 158
      Width = 92
      Height = 18
      Caption = 'Tarif/Denda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 133
      Top = 151
      Width = 23
      Height = 29
      Caption = ' : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNoKartu: TcxDBTextEdit
      Left = 157
      Top = 110
      DataBinding.DataField = 'no_hp'
      DataBinding.DataSource = dsTotal
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsThick
      StyleHot.BorderStyle = ebsThick
      TabOrder = 4
      OnKeyPress = edtPembayaranKeyPress
      Width = 300
    end
    object edtBank: TcxDBTextEdit
      Left = 157
      Top = 88
      DataBinding.DataField = 'alamat'
      DataBinding.DataSource = dsTotal
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsThick
      StyleHot.BorderStyle = ebsThick
      TabOrder = 3
      OnKeyPress = edtPembayaranKeyPress
      Width = 300
    end
    object SCPanel1: TSCPanel
      Left = 5
      Top = 138
      Width = 447
      Height = 2
      Color = clWhite
      Gradient = scgLeftToRight
      GradientMid = 16707038
      GradientUsesMid = True
      ParentColor = False
      TabOrder = 5
    end
    object edtCicil: TcxDBTextEdit
      Left = 156
      Top = 65
      DataBinding.DataField = 'nama'
      DataBinding.DataSource = dsTotal
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.BorderStyle = ebsThick
      StyleHot.BorderStyle = ebsThick
      TabOrder = 2
      OnKeyPress = edtPembayaranKeyPress
      Width = 300
    end
    object edtPembayaran: TcxDBTextEdit
      Left = 156
      Top = 16
      DataBinding.DataField = 'nopol'
      DataBinding.DataSource = dsTotal
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyPress = edtPembayaranKeyPress
      Width = 300
    end
    object edtAnggota: TcxDBTextEdit
      Left = 156
      Top = 41
      DataBinding.DataField = 'no_ktp'
      DataBinding.DataSource = dsTotal
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyPress = edtPembayaranKeyPress
      Width = 300
    end
    object edtBayar: TcxTextEdit
      Left = 157
      Top = 147
      ParentFont = False
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      OnKeyUp = edtBayarKeyUp
      Width = 195
    end
    object SCPanel2: TSCPanel
      Left = 7
      Top = 195
      Width = 447
      Height = 2
      Color = clWhite
      Gradient = scgLeftToRight
      GradientMid = 16707038
      GradientUsesMid = True
      ParentColor = False
      TabOrder = 7
    end
    object pnlMiddle: TSCPanel
      Left = 0
      Top = 213
      Width = 477
      Height = 40
      Align = alBottom
      Color = 11769446
      GradientMid = 15845560
      GradientUsesMid = True
      ParentColor = False
      TabOrder = 8
      object SCButton1: TSCButton
        Left = 365
        Top = 8
        Width = 72
        Height = 25
        Caption = '&Batal'
        Images = DM.ImageList1
        ImageIndex = 2
        RoundColor = 11769446
        Style = scbsCorel
        TabOrder = 2
        OnClick = SCButton1Click
      end
      object btnSave: TSCButton
        Left = 287
        Top = 8
        Width = 72
        Height = 25
        Caption = '&Simpan'
        Images = DM.ImageList1
        ImageIndex = 3
        RoundColor = 11769446
        Style = scbsCorel
        TabOrder = 1
        OnClick = btnSaveClick
      end
      object btnRefresh: TSCButton
        Left = 491
        Top = 8
        Width = 72
        Height = 25
        Caption = '&Refresh'
        Images = DM.ImageList1
        ImageIndex = 5
        RoundColor = 11769446
        Style = scbsCorel
        TabOrder = 0
      end
    end
  end
  object dsTotal: TDataSource
    DataSet = MemTotal
    Left = 195
    Top = 32
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
    Left = 182
    Top = 20
    object MemTotalnopol: TStringField
      FieldName = 'nopol'
      Size = 255
    end
    object MemTotalno_ktp: TStringField
      FieldName = 'no_ktp'
      Size = 100
    end
    object MemTotalnama: TStringField
      FieldName = 'nama'
      Size = 100
    end
    object MemTotalalamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object MemTotalno_hp: TStringField
      FieldName = 'no_hp'
    end
    object MemTotaltarif: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tarif'
      Calculated = True
    end
  end
  object qryTarif: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select tarif '
      'from master.mtarif2'
      'where id_tarif=:p')
    Params = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end>
    Left = 243
    Top = 17
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p'
        ParamType = ptUnknown
      end>
    object qryTariftarif: TFloatField
      FieldName = 'tarif'
    end
  end
end
