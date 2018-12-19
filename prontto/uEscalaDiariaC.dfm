object fEscalaDiariaC: TfEscalaDiariaC
  Left = 550
  Top = 158
  Width = 338
  Height = 561
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fEscalaDiariaC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 503
    Width = 330
    Height = 31
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 95
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object JvDateEdit1: TJvDateEdit
      Left = 5
      Top = 5
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      StartOfWeek = Sun
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 170
      Top = 2
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 41
    Width = 330
    Height = 462
    Align = alClient
    DataSource = dsEscalaDiaria
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
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
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 23
    ScrollBars = ssHorizontal
    ColCount = 2
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Width = 283
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 41
    Align = alTop
    TabOrder = 2
  end
  object sdsEscalaDiaria: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT DISTINCT(DATA)'#13#10'FROM ESCALA_DIARIA'#13#10'ORDER BY DATA DESC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 190
    Top = 8
    object sdsEscalaDiariaDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dspEscalaDiaria: TDataSetProvider
    DataSet = sdsEscalaDiaria
    Options = [poCascadeDeletes, poCascadeUpdates]
    Left = 214
    Top = 8
  end
  object cdsEscalaDiaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscalaDiaria'
    Left = 238
    Top = 8
    object cdsEscalaDiariaDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object dsEscalaDiaria: TDataSource
    DataSet = cdsEscalaDiaria
    Left = 261
    Top = 8
  end
  object dsPessoaServico: TDataSource
    DataSet = cdsPessoaServico
    Left = 261
    Top = 40
  end
  object cdsPessoaServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoaServico'
    Left = 238
    Top = 40
    object cdsPessoaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsPessoaServicoPORTARIA: TStringField
      FieldName = 'PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaServicoABERTURA: TStringField
      FieldName = 'ABERTURA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaServicoSEG_HR_INI: TTimeField
      FieldName = 'SEG_HR_INI'
    end
    object cdsPessoaServicoSEG_HR_FIM: TTimeField
      FieldName = 'SEG_HR_FIM'
    end
    object cdsPessoaServicoTER_HR_INI: TTimeField
      FieldName = 'TER_HR_INI'
    end
    object cdsPessoaServicoTER_HR_FIM: TTimeField
      FieldName = 'TER_HR_FIM'
    end
    object cdsPessoaServicoQUA_HR_INI: TTimeField
      FieldName = 'QUA_HR_INI'
    end
    object cdsPessoaServicoQUA_HR_FIM: TTimeField
      FieldName = 'QUA_HR_FIM'
    end
    object cdsPessoaServicoQUI_HR_INI: TTimeField
      FieldName = 'QUI_HR_INI'
    end
    object cdsPessoaServicoQUI_HR_FIM: TTimeField
      FieldName = 'QUI_HR_FIM'
    end
    object cdsPessoaServicoSEX_HR_INI: TTimeField
      FieldName = 'SEX_HR_INI'
    end
    object cdsPessoaServicoSEX_HR_FIM: TTimeField
      FieldName = 'SEX_HR_FIM'
    end
    object cdsPessoaServicoSAB_HR_INI: TTimeField
      FieldName = 'SAB_HR_INI'
    end
    object cdsPessoaServicoSAB_HR_FIM: TTimeField
      FieldName = 'SAB_HR_FIM'
    end
    object cdsPessoaServicoDOM_HR_INI: TTimeField
      FieldName = 'DOM_HR_INI'
    end
    object cdsPessoaServicoDOM_HR_FIM: TTimeField
      FieldName = 'DOM_HR_FIM'
    end
  end
  object dspPessoaServico: TDataSetProvider
    DataSet = sdsPessoaServico
    Left = 214
    Top = 40
  end
  object sdsPessoaServico: TSQLDataSet
    CommandText = 
      'SELECT P.ID, P.NOME, S.ALARME, S.AVULSO, S.CAMERA,  PS.*, S.PORT' +
      'ARIA, S.RONDA, S.ABERTURA'#13#10'FROM PESSOA P'#13#10'INNER JOIN PESSOA_SERV' +
      'ICO PS ON (P.ID = PS.PESSOA_ID)'#13#10'INNER JOIN SERVICO S ON (PS.SER' +
      'VICO_ID = S.ID)'#13#10'WHERE S.ABERTURA = '#39'1'#39' OR S.PORTARIA = '#39'1'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 190
    Top = 40
    object sdsPessoaServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPessoaServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsPessoaServicoABERTURA: TStringField
      FieldName = 'ABERTURA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaServicoSEG_HR_INI: TTimeField
      FieldName = 'SEG_HR_INI'
    end
    object sdsPessoaServicoSEG_HR_FIM: TTimeField
      FieldName = 'SEG_HR_FIM'
    end
    object sdsPessoaServicoTER_HR_INI: TTimeField
      FieldName = 'TER_HR_INI'
    end
    object sdsPessoaServicoTER_HR_FIM: TTimeField
      FieldName = 'TER_HR_FIM'
    end
    object sdsPessoaServicoQUA_HR_INI: TTimeField
      FieldName = 'QUA_HR_INI'
    end
    object sdsPessoaServicoQUA_HR_FIM: TTimeField
      FieldName = 'QUA_HR_FIM'
    end
    object sdsPessoaServicoQUI_HR_INI: TTimeField
      FieldName = 'QUI_HR_INI'
    end
    object sdsPessoaServicoQUI_HR_FIM: TTimeField
      FieldName = 'QUI_HR_FIM'
    end
    object sdsPessoaServicoSEX_HR_INI: TTimeField
      FieldName = 'SEX_HR_INI'
    end
    object sdsPessoaServicoSEX_HR_FIM: TTimeField
      FieldName = 'SEX_HR_FIM'
    end
    object sdsPessoaServicoSAB_HR_INI: TTimeField
      FieldName = 'SAB_HR_INI'
    end
    object sdsPessoaServicoSAB_HR_FIM: TTimeField
      FieldName = 'SAB_HR_FIM'
    end
    object sdsPessoaServicoDOM_HR_INI: TTimeField
      FieldName = 'DOM_HR_INI'
    end
    object sdsPessoaServicoDOM_HR_FIM: TTimeField
      FieldName = 'DOM_HR_FIM'
    end
    object sdsPessoaServicoPORTARIA: TStringField
      FieldName = 'PORTARIA'
      FixedChar = True
      Size = 1
    end
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'DELETE FROM ESCALA_DIARIA WHERE DATA = :D1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 190
    Top = 112
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'DELETE FROM ESCALA_DIARIA WHERE DATA = :D1')
    SQLConnection = Dm1.Conexao
    Left = 192
    Top = 144
  end
end
