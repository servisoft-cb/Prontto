object fViatura: TfViatura
  Left = 463
  Top = 301
  Width = 274
  Height = 145
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fViatura'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 45
    Top = 39
    Width = 37
    Height = 13
    Caption = 'Placa:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 55
    Top = 63
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ativa:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 65
    Top = 16
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object DBText1: TDBText
    Left = 86
    Top = 12
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'ID'
    DataSource = Dm1.dsViatura
    ParentColor = False
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 31
    Width = 115
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PLACA'
    DataSource = Dm1.dsViatura
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 87
    Width = 266
    Height = 31
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 86
    Top = 55
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'ATIVA'
    DataSource = Dm1.dsViatura
    DropDownCount = 3
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 1
    Values.Strings = (
      'N'
      'S')
  end
end
