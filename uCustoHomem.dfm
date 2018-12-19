object fCustoHomem: TfCustoHomem
  Left = 251
  Top = 144
  Width = 450
  Height = 239
  Caption = 'Custo / Homem'
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
    Left = 53
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
  object Label12: TLabel
    Left = 54
    Top = 47
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 34
    Top = 71
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'Percentual:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 21
    Top = 95
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Periodicidade:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 94
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsCustoHomem
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 172
    Width = 434
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
  object DBEdit2: TDBEdit
    Left = 94
    Top = 39
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = Dm1.dsCustoHomem
    TabOrder = 1
  end
  object JvDBComboBox4: TJvDBComboBox
    Left = 94
    Top = 63
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'PERCENTUAL'
    DataSource = Dm1.dsCustoHomem
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 2
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 94
    Top = 87
    Width = 100
    Height = 21
    Style = csDropDownList
    DataField = 'PERIODICIDADE'
    DataSource = Dm1.dsCustoHomem
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'MENSAL'
      'ANUAL')
    TabOrder = 3
    Values.Strings = (
      '1'
      '2')
  end
end
