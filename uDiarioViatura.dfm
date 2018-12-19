object fDiarioViatura: TfDiarioViatura
  Left = 485
  Top = 161
  Width = 454
  Height = 227
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiarioViatura'
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
  object Label3: TLabel
    Left = 34
    Top = 79
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Km Inicial:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 45
    Top = 55
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Agente:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 39
    Top = 103
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Km Final:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 57
    Top = 127
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs.:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 52
    Top = 31
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Placa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 158
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
  object DBEdit1: TDBEdit
    Left = 86
    Top = 71
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'KM_INICIAL'
    DataSource = dmDiario.dsDiarioViatura
    TabOrder = 2
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 86
    Top = 47
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'AGENTE_ID'
    DataSource = dmDiario.dsDiarioViatura
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsAgente
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 95
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'KM_FINAL'
    DataSource = dmDiario.dsDiarioViatura
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 86
    Top = 119
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OBS'
    DataSource = dmDiario.dsDiarioViatura
    TabOrder = 4
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 86
    Top = 23
    Width = 107
    Height = 21
    DropDownCount = 8
    DataField = 'VIATURA_ID'
    DataSource = dmDiario.dsDiarioViatura
    LookupField = 'ID'
    LookupDisplay = 'PLACA'
    LookupSource = dsViatura
    TabOrder = 0
  end
  object sdsAgente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE AGENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 190
    Top = 12
    object sdsAgenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspAgente: TDataSetProvider
    DataSet = sdsAgente
    Left = 214
    Top = 12
  end
  object cdsAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 238
    Top = 12
    object cdsAgenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsAgente: TDataSource
    DataSet = cdsAgente
    Left = 261
    Top = 12
  end
  object sdsViatura: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM VIATURA'#13#10'WHERE ATIVA = '#39'S'#39#13#10'ORDER BY PLACA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 302
    Top = 8
    object sdsViaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsViaturaATIVA: TStringField
      FieldName = 'ATIVA'
      FixedChar = True
      Size = 1
    end
    object sdsViaturaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
  end
  object dspViatura: TDataSetProvider
    DataSet = sdsViatura
    Left = 326
    Top = 8
  end
  object cdsViatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViatura'
    Left = 350
    Top = 8
    object cdsViaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsViaturaATIVA: TStringField
      FieldName = 'ATIVA'
      FixedChar = True
      Size = 1
    end
    object cdsViaturaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
  end
  object dsViatura: TDataSource
    DataSet = cdsViatura
    Left = 373
    Top = 8
  end
end
