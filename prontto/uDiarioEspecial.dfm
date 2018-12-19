object fDiarioEspecial: TfDiarioEspecial
  Left = 739
  Top = 201
  Width = 454
  Height = 235
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiarioEspecial'
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
  object Label1: TLabel
    Left = 45
    Top = 55
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
  object Label4: TLabel
    Left = 47
    Top = 103
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Motivo:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 47
    Top = 31
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
    Left = 14
    Top = 127
    Width = 68
    Height = 13
    Alignment = taRightJustify
    Caption = 'Procedimento:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 46
    Top = 151
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'AP.BM:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 177
    Width = 446
    Height = 31
    Align = alBottom
    TabOrder = 6
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
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 86
    Top = 47
    Width = 313
    Height = 21
    DropDownCount = 15
    DataField = 'AGENTE_ID'
    DataSource = dmDiario.dsDiarioEspecial
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsAgente
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 86
    Top = 95
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MOTIVO'
    DataSource = dmDiario.dsDiarioEspecial
    TabOrder = 3
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 86
    Top = 23
    Width = 313
    Height = 21
    DropDownCount = 15
    DataField = 'CLIENTE_ID'
    DataSource = dmDiario.dsDiarioEspecial
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsCliente
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 119
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PROCEDIMENTO'
    DataSource = dmDiario.dsDiarioEspecial
    TabOrder = 4
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 86
    Top = 71
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'SA'
    DataSource = dmDiario.dsDiarioEspecial
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'S/A'
      'C/A')
    TabOrder = 2
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox2: TJvDBComboBox
    Left = 86
    Top = 143
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'APBM'
    DataSource = dmDiario.dsDiarioEspecial
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#227'o'
      'Sim')
    TabOrder = 5
    Values.Strings = (
      'N'
      'S')
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
    Top = 4
  end
  object sdsCliente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE CLIENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 190
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
    Left = 214
    Top = 44
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 238
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
    Left = 261
    Top = 36
  end
end
