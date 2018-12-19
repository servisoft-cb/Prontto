object fExtratoSEG: TfExtratoSEG
  Left = 144
  Top = 110
  Width = 800
  Height = 563
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fExtratoSEG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 69
      Top = 16
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label2: TLabel
      Left = 50
      Top = 40
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Incial:'
    end
    object Label3: TLabel
      Left = 229
      Top = 40
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Final:'
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 110
      Top = 7
      Width = 313
      Height = 21
      DropDownCount = 15
      DisplayEmpty = '[TODOS]'
      EmptyItemColor = clInfoBk
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dsCliente
      TabOrder = 0
    end
    object JvDateEdit1: TJvDateEdit
      Left = 110
      Top = 31
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 1
    end
    object JvDateEdit2: TJvDateEdit
      Left = 286
      Top = 31
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 424
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 65
    Width = 792
    Height = 452
    Align = alClient
    DataSource = dsResumo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Cliente'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeOcorrencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observacao'
        Width = 300
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 517
    Width = 792
    Height = 19
    Panels = <
      item
        Width = 100
      end>
  end
  object sdsCliente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE CLIENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 454
    Top = 4
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
    Left = 478
    Top = 4
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 502
    Top = 4
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
    Left = 525
    Top = 4
  end
  object sdsOcorrencias: TSQLDataSet
    CommandText = 
      'SELECT P.NOME, D.DATA, DE.MOTIVO'#13#10'FROM DIARIO D '#13#10'LEFT JOIN DIAR' +
      'IO_ESPECIAL DE ON (D.ID = DE.DIARIO_ID) '#13#10'INNER JOIN PESSOA P ON' +
      ' (P.ID = DE.CLIENTE_ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 452
    Top = 72
    object sdsOcorrenciasNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsOcorrenciasDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsOcorrenciasMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
  end
  object dspOcorrencias: TDataSetProvider
    DataSet = sdsOcorrencias
    Left = 484
    Top = 72
  end
  object cdsOcorrencias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOcorrencias'
    Left = 516
    Top = 72
    object cdsOcorrenciasNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsOcorrenciasDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsOcorrenciasMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
  end
  object dsOcorrencias: TDataSource
    DataSet = cdsOcorrencias
    Left = 548
    Top = 72
  end
  object cdsResumo: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NomeOcorrencia'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Hora'
        DataType = ftTime
      end
      item
        Name = 'Observacao'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Data'
        DataType = ftDate
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cliente;Data'
    Params = <>
    StoreDefs = True
    Left = 516
    Top = 104
    Data = {
      920000009619E0BD010000001800000005000000000003000000920007436C69
      656E74650100490000000100055749445448020002003C000E4E6F6D654F636F
      7272656E6369610100490000000100055749445448020002000F0004486F7261
      04000700000000000A4F62736572766163616F01004900000001000557494454
      4802000200C800044461746104000600000000000000}
    object cdsResumoCliente: TStringField
      FieldName = 'Cliente'
      Size = 60
    end
    object cdsResumoNomeOcorrencia: TStringField
      FieldName = 'NomeOcorrencia'
      Size = 15
    end
    object cdsResumoHora: TTimeField
      FieldName = 'Hora'
    end
    object cdsResumoObservacao: TStringField
      FieldName = 'Observacao'
      Size = 200
    end
    object cdsResumoData: TDateField
      FieldName = 'Data'
    end
  end
  object dsResumo: TDataSource
    DataSet = cdsResumo
    Left = 548
    Top = 104
  end
end
