object AuthorizationFrm: TAuthorizationFrm
  Left = 327
  Top = 227
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Authorization Confirmation'
  ClientHeight = 195
  ClientWidth = 370
  Color = 14733762
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    370
    195)
  PixelsPerInch = 96
  TextHeight = 13
  object RGauthor: TcxRadioGroup
    Left = 16
    Top = 11
    Alignment = alCenterCenter
    Ctl3D = False
    ParentCtl3D = False
    ParentFont = False
    Properties.Columns = 2
    Properties.Items = <
      item
        Caption = 'ACCEPTED'
      end
      item
        Caption = 'REJECTED'
      end>
    ItemIndex = 0
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clRed
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 43
    Width = 343
  end
  object cxMemoRemarks: TcxMemo
    Left = 16
    Top = 74
    Properties.MaxLength = 255
    Style.Color = 15919073
    TabOrder = 1
    Height = 69
    Width = 345
  end
  object cxLabel1: TcxLabel
    Left = 16
    Top = 57
    Caption = 'Remarks'
  end
  object btnOK: TSCButton
    Left = 215
    Top = 160
    Width = 70
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'OK'
    ModalResult = 6
    RoundColor = 11507049
    RoundWithParentColor = False
    Style = scbsXP
    TabOrder = 2
  end
  object btnCancel: TSCButton
    Left = 289
    Top = 160
    Width = 70
    Height = 26
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    ModalResult = 7
    RoundColor = 11507049
    RoundWithParentColor = False
    Style = scbsXP
    TabOrder = 3
  end
  object SCPanel1: TSCPanel
    Left = 75
    Top = 151
    Width = 285
    Height = 2
    Gradient = scgLeftToRight
    GradientEnd = clBlack
    TabOrder = 5
  end
end
