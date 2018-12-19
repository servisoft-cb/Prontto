object fDiarioPortaria: TfDiarioPortaria
  Left = 485
  Top = 161
  Width = 454
  Height = 252
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiarioPortaria'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 47
    Top = 50
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 27
    Top = 98
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora inicial:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 65
    Top = 27
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object DBText1: TDBText
    Left = 86
    Top = 23
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'ID'
    DataSource = dmDiario.dsDiarioPortaria
    ParentColor = False
  end
  object Label6: TLabel
    Left = 57
    Top = 122
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs.:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 194
    Top = 98
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora final:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 45
    Top = 74
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Agente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 183
    Width = 438
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
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 86
    Top = 42
    Width = 313
    Height = 21
    DropDownCount = 15
    DataField = 'CLIENTE_ID'
    DataSource = dmDiario.dsDiarioPortaria
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsCliente
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 90
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HORA_INI'
    DataSource = dmDiario.dsDiarioPortaria
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 86
    Top = 114
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OBS'
    DataSource = dmDiario.dsDiarioPortaria
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 246
    Top = 90
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HORA_FIM'
    DataSource = dmDiario.dsDiarioPortaria
    TabOrder = 3
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 86
    Top = 66
    Width = 313
    Height = 21
    DropDownCount = 15
    DataField = 'AGENTE_ID'
    DataSource = dmDiario.dsDiarioPortaria
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsAgente
    TabOrder = 1
  end
  object sdsCliente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE CLIENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 270
    Top = 44
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 294
    Top = 44
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 318
    Top = 44
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 341
    Top = 44
  end
  object sdsAgente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE AGENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 270
    Top = 60
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspAgente: TDataSetProvider
    DataSet = sdsAgente
    Left = 294
    Top = 60
  end
  object cdsAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 318
    Top = 60
    object IntegerField4: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsAgente: TDataSource
    DataSet = cdsAgente
    Left = 341
    Top = 60
  end
end
