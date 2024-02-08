object BayarNotaNewFrm: TBayarNotaNewFrm
  Left = 400
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cara Bayar'
  ClientHeight = 162
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel11: TRzLabel
    Left = 0
    Top = 0
    Width = 330
    Height = 31
    Align = alTop
    Alignment = taCenter
    Caption = 'CARA BAYAR'
    Color = 12615680
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Franklin Gothic Book'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    WordWrap = True
    Blinking = True
    BlinkColor = clRed
    BlinkIntervalOff = 750
    BlinkIntervalOn = 750
    BorderInner = fsFlatBold
    BorderOuter = fsFlatBold
    BorderColor = clBlue
    BorderWidth = 1
  end
  object PanelTop: TRzPanel
    Left = 0
    Top = 31
    Width = 330
    Height = 131
    Align = alClient
    BorderInner = fsFlatRounded
    BorderOuter = fsButtonDown
    BorderSides = []
    BorderColor = clSkyBlue
    Color = clWhite
    GradientColorStop = clSilver
    TabOrder = 0
    VisualStyle = vsClassic
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
    object btnCahsless: TSCButton
      Left = 217
      Top = 4
      Width = 105
      Height = 50
      Caption = '&CASHLESS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = DM.ImageList1
      ImageIndex = 12
      ParentFont = False
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsHower
      TabOrder = 3
      OnClick = btnCahslessClick
    end
    object btnTunai: TSCButton
      Left = 7
      Top = 4
      Width = 105
      Height = 50
      Caption = 'TUNAI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = DM.ImageList1
      ImageIndex = 22
      ParentFont = False
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsHower
      TabOrder = 1
      OnClick = btnTunaiClick
    end
    object btnVoucher: TSCButton
      Left = 112
      Top = 4
      Width = 105
      Height = 50
      Caption = 'VOUCHER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Images = DM.ImageList1
      ImageIndex = 14
      ParentFont = False
      RoundColor = 11507049
      RoundWithParentColor = False
      Style = scbsHower
      TabOrder = 2
      OnClick = btnVoucherClick
    end
    object pnlVoucher: TPanel
      Left = 0
      Top = 57
      Width = 330
      Height = 74
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvSpace
      Caption = 'VOUCHER '
      Color = 15265510
      Locked = True
      TabOrder = 4
      DesignSize = (
        330
        74)
      object SCButton1: TSCButton
        Left = 1209
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
      object SCButton2: TSCButton
        Left = 1129
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
      object edtVoucher: TRzEdit
        Left = 2
        Top = 36
        Width = 326
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
        TabOrder = 2
        TextHint = 'NOPOL'
        TextHintVisibleOnFocus = True
        OnKeyPress = edtVoucherKeyPress
      end
      object cxLabel1: TcxLabel
        Left = 2
        Top = 2
        Align = alTop
        AutoSize = False
        Caption = 'NO. VOUCHER'
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
        Height = 34
        Width = 326
        AnchorX = 165
      end
    end
  end
  object F8: TLMDGlobalHotKey
    HotKey = 119
    Left = 101
    Top = 8
  end
  object F9: TLMDGlobalHotKey
    HotKey = 120
    Left = 140
    Top = 65533
  end
  object qJenis: TZQuery
    Connection = DM.conn
    SQL.Strings = (
      'select * from master.mjns_pembayaran')
    Params = <>
    Left = 51
    Top = 16
    object qJenisjns_pembayaran: TStringField
      FieldName = 'jns_pembayaran'
      Required = True
      Size = 4
    end
    object qJenisketerangan: TStringField
      FieldName = 'keterangan'
      Size = 200
    end
    object qJenisaktif: TStringField
      FieldName = 'aktif'
      Size = 4
    end
  end
  object qVoucher: TZQuery
    Connection = DM.conn2
    SQL.Strings = (
      'select *'
      'from Voucher'
      'where No_Voucher=:pvoucher and Aktif='#39'1'#39' and lock='#39'0'#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'pvoucher'
        ParamType = ptUnknown
      end>
    Left = 259
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pvoucher'
        ParamType = ptUnknown
      end>
    object qVoucherNo_Voucher: TStringField
      FieldName = 'No_Voucher'
    end
    object qVoucherAktif: TBooleanField
      FieldName = 'Aktif'
    end
    object qVoucherLock: TBooleanField
      FieldName = 'Lock'
    end
    object qVoucherIdentitas: TStringField
      FieldName = 'Identitas'
      Size = 100
    end
    object qVoucherKeterangan: TStringField
      FieldName = 'Keterangan'
      Size = 200
    end
    object qVoucherHarga: TFloatField
      FieldName = 'Harga'
    end
    object qVoucherIsi: TIntegerField
      FieldName = 'Isi'
    end
    object qVoucherOperator: TIntegerField
      FieldName = 'Operator'
    end
    object qVoucherTglInput: TDateTimeField
      FieldName = 'TglInput'
    end
    object qVoucherEditor: TIntegerField
      FieldName = 'Editor'
    end
    object qVoucherUpdated: TDateTimeField
      FieldName = 'Updated'
    end
  end
end
