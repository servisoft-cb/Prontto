object fEventos: TfEventos
  Left = 413
  Top = 117
  Width = 474
  Height = 498
  Caption = 'Eventos'
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
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 51
    Height = 13
    Caption = 'Descri'#231#227'o:'
  end
  object Label2: TLabel
    Left = 32
    Top = 61
    Width = 71
    Height = 13
    Caption = 'Desc. e Venc.:'
  end
  object Label3: TLabel
    Left = 32
    Top = 120
    Width = 65
    Height = 13
    Caption = 'Percentual %:'
  end
  object Label4: TLabel
    Left = 32
    Top = 90
    Width = 53
    Height = 13
    Caption = 'Hora Extra:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 431
    Width = 458
    Height = 31
    Align = alBottom
    TabOrder = 4
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
  object DBEdit1: TDBEdit
    Left = 112
    Top = 24
    Width = 325
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsEventos
    TabOrder = 0
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 112
    Top = 53
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'ES'
    DataSource = Dm1.dsEventos
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Desconto'
      'Vencimento')
    TabOrder = 1
    Values.Strings = (
      'E'
      'S')
  end
  object JvDBComboBox2: TJvDBComboBox
    Left = 112
    Top = 82
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'HORAEXTRA'
    DataSource = Dm1.dsEventos
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Sim'
      'N'#227'o')
    TabOrder = 2
    Values.Strings = (
      'S'
      'N')
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 112
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PERCENTUAL'
    DataSource = Dm1.dsEventos
    TabOrder = 3
  end
end
