object fValores: TfValores
  Left = 413
  Top = 117
  Width = 474
  Height = 498
  Caption = 'Valores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 58
    Height = 13
    Caption = 'Funcionario:'
  end
  object Label2: TLabel
    Left = 37
    Top = 93
    Width = 53
    Height = 13
    Caption = 'Data Mov.:'
  end
  object Label3: TLabel
    Left = 64
    Top = 152
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object Label4: TLabel
    Left = 63
    Top = 122
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label5: TLabel
    Left = 53
    Top = 64
    Width = 37
    Height = 13
    Caption = 'Evento:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 431
    Width = 458
    Height = 31
    Align = alBottom
    TabOrder = 5
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
    Left = 97
    Top = 144
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HORA'
    DataSource = Dm1.dsValores
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 97
    Top = 114
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VALOR'
    DataSource = Dm1.dsValores
    TabOrder = 3
  end
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 97
    Top = 85
    Width = 121
    Height = 21
    DataField = 'DTMOV'
    DataSource = Dm1.dsValores
    NumGlyphs = 2
    TabOrder = 2
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 97
    Top = 24
    Width = 305
    Height = 21
    DropDownCount = 8
    DataField = 'FUNCIONARIO'
    DataSource = Dm1.dsValores
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = qsFuncionario
    TabOrder = 0
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 97
    Top = 56
    Width = 305
    Height = 21
    DropDownCount = 8
    DataField = 'IDEVENTO'
    DataSource = Dm1.dsValores
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsEventos
    TabOrder = 1
  end
  object Funcionario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, NOME, FUNCIONARIO'
      'FROM PESSOA'
      'WHERE FUNCIONARIO = '#39'1'#39
      'ORDER BY NOME')
    SQLConnection = Dm1.Conexao
    Left = 80
    Top = 184
  end
  object FuncionarioP: TDataSetProvider
    DataSet = Funcionario
    Left = 112
    Top = 184
  end
  object qFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'FuncionarioP'
    Left = 144
    Top = 184
    object qFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qFuncionarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
  end
  object qsFuncionario: TDataSource
    DataSet = qFuncionario
    Left = 184
    Top = 184
  end
end
