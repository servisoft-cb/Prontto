object fEscala: TfEscala
  Left = 274
  Top = 110
  Width = 450
  Height = 400
  Caption = 'Escala'
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
    Left = 42
    Top = 23
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 13
    Top = 47
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd. Horas:'
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
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsEscala
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 333
    Width = 434
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
    Top = 39
    Width = 51
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QTD_HORAS'
    DataSource = Dm1.dsEscala
    MaxLength = 3
    TabOrder = 1
  end
end
