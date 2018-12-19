object fCelular: TfCelular
  Left = 463
  Top = 301
  Width = 281
  Height = 158
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCelular'
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
    Left = 17
    Top = 39
    Width = 64
    Height = 13
    Alignment = taRightJustify
    Caption = 'Operadora:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 67
    Top = 12
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
    DataSource = Dm1.dsCelular
    ParentColor = False
  end
  object Label1: TLabel
    Left = 33
    Top = 63
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#250'mero:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 31
    Width = 115
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OPERADORA'
    DataSource = Dm1.dsCelular
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 265
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
  object DBEdit2: TDBEdit
    Left = 86
    Top = 55
    Width = 115
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = Dm1.dsCelular
    TabOrder = 1
  end
end
