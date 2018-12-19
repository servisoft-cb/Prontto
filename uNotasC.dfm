object fNotasC: TfNotasC
  Left = 350
  Top = 98
  Width = 764
  Height = 548
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Qualifica'#231#227'o Nominal de Curso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 57
    Align = alTop
    TabOrder = 0
    DesignSize = (
      756
      57)
    object Label1: TLabel
      Left = 29
      Top = 12
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Curso:'
    end
    object Label6: TLabel
      Left = 26
      Top = 37
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 64
      Top = 4
      Width = 300
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsCurso
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 368
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Localizar'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 443
      Top = 27
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Im&primir'
      TabOrder = 4
      OnClick = BitBtn2Click
    end
    object Edit1: TEdit
      Left = 64
      Top = 28
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 368
      Top = 27
      Width = 75
      Height = 25
      Hint = 'Grava notas digitadas'
      Caption = '&Gravar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitBtn3Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 57
    Width = 756
    Height = 464
    Align = alClient
    DataSource = dsPessoaNota
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
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
        FieldName = 'ALUNO'
        ReadOnly = True
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        ReadOnly = True
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        ReadOnly = True
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DISCIPLINA'
        ReadOnly = True
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTA'
        Width = 60
        Visible = True
      end>
  end
  object PessoaNota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PCN.ID, P.NOME ALUNO, C.NOME CURSO, PC.TURMA, D.DESCRICAO' +
      ' DISCIPLINA, PCN.NOTA, D.SIGLA'#13#10'FROM PESSOA_CURSO_NOTA PCN '#13#10'INN' +
      'ER JOIN PESSOA P ON (P.ID = PCN.PESSOA_ID)'#13#10'INNER JOIN PESSOA_CU' +
      'RSO PC ON (P.ID = PC.PESSOA_ID)'#13#10'INNER JOIN CURSO C ON (PC.CURSO' +
      '_ID = C.ID AND PC.CURSO_ID = PCN.CURSO_ID)'#13#10'INNER JOIN DISCIPLIN' +
      'A D ON (PCN.DISCIPLINA_ID = D.ID)'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 384
    Top = 8
    object PessoaNotaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object PessoaNotaALUNO: TStringField
      FieldName = 'ALUNO'
      ProviderFlags = []
      Size = 40
    end
    object PessoaNotaCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = []
      Size = 70
    end
    object PessoaNotaTURMA: TStringField
      FieldName = 'TURMA'
      ProviderFlags = []
      Size = 10
    end
    object PessoaNotaDISCIPLINA: TStringField
      FieldName = 'DISCIPLINA'
      ProviderFlags = []
      Size = 40
    end
    object PessoaNotaNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Precision = 15
      Size = 2
    end
    object PessoaNotaSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = []
      Size = 10
    end
  end
  object pPessoaNota: TDataSetProvider
    DataSet = PessoaNota
    Left = 416
    Top = 8
  end
  object tPessoaNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPessoaNota'
    Left = 448
    Top = 8
    object tPessoaNotaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tPessoaNotaALUNO: TStringField
      FieldName = 'ALUNO'
      ProviderFlags = []
      Size = 40
    end
    object tPessoaNotaCURSO: TStringField
      FieldName = 'CURSO'
      ProviderFlags = []
      Size = 70
    end
    object tPessoaNotaTURMA: TStringField
      FieldName = 'TURMA'
      ProviderFlags = []
      Size = 10
    end
    object tPessoaNotaDISCIPLINA: TStringField
      FieldName = 'DISCIPLINA'
      ProviderFlags = []
      Size = 40
    end
    object tPessoaNotaNOTA: TFMTBCDField
      FieldName = 'NOTA'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object tPessoaNotaSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsPessoaNota: TDataSource
    DataSet = tPessoaNota
    Left = 480
    Top = 8
  end
  object mNotas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Aluno'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'D1'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N1'
        DataType = ftFloat
      end
      item
        Name = 'D2'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N2'
        DataType = ftFloat
      end
      item
        Name = 'D3'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N3'
        DataType = ftFloat
      end
      item
        Name = 'D4'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N4'
        DataType = ftFloat
      end
      item
        Name = 'D5'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N5'
        DataType = ftFloat
      end
      item
        Name = 'D6'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N6'
        DataType = ftFloat
      end
      item
        Name = 'D7'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N7'
        DataType = ftFloat
      end
      item
        Name = 'D8'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N8'
        DataType = ftFloat
      end
      item
        Name = 'D9'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N9'
        DataType = ftFloat
      end
      item
        Name = 'D10'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N10'
        DataType = ftFloat
      end
      item
        Name = 'D11'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N11'
        DataType = ftFloat
      end
      item
        Name = 'D12'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'N12'
        DataType = ftFloat
      end
      item
        Name = 'Media'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 512
    Top = 8
    Data = {
      F40100009619E0BD01000000180000001A000000000003000000F40105416C75
      6E6F010049000000010005574944544802000200320002443101004900000001
      00055749445448020002000A00024E3108000400000000000244320100490000
      000100055749445448020002000A00024E320800040000000000024433010049
      0000000100055749445448020002000A00024E33080004000000000002443401
      00490000000100055749445448020002000A00024E3408000400000000000244
      350100490000000100055749445448020002000A00024E350800040000000000
      0244360100490000000100055749445448020002000A00024E36080004000000
      00000244370100490000000100055749445448020002000A00024E3708000400
      000000000244380100490000000100055749445448020002000A00024E380800
      0400000000000244390100490000000100055749445448020002000A00024E39
      0800040000000000034431300100490000000100055749445448020002000A00
      034E313008000400000000000344313101004900000001000557494454480200
      02000A00034E3131080004000000000003443132010049000000010005574944
      5448020002000A00034E31320800040000000000054D65646961080004000000
      010007535542545950450200490006004D6F6E6579000000}
    object mNotasAluno: TStringField
      FieldName = 'Aluno'
      Size = 50
    end
    object mNotasD1: TStringField
      FieldName = 'D1'
      Size = 10
    end
    object mNotasN1: TFloatField
      FieldName = 'N1'
    end
    object mNotasD2: TStringField
      FieldName = 'D2'
      Size = 10
    end
    object mNotasN2: TFloatField
      FieldName = 'N2'
    end
    object mNotasD3: TStringField
      FieldName = 'D3'
      Size = 10
    end
    object mNotasN3: TFloatField
      FieldName = 'N3'
    end
    object mNotasD4: TStringField
      FieldName = 'D4'
      Size = 10
    end
    object mNotasN4: TFloatField
      FieldName = 'N4'
    end
    object mNotasD5: TStringField
      FieldName = 'D5'
      Size = 10
    end
    object mNotasN5: TFloatField
      FieldName = 'N5'
    end
    object mNotasD6: TStringField
      FieldName = 'D6'
      Size = 10
    end
    object mNotasN6: TFloatField
      FieldName = 'N6'
    end
    object mNotasD7: TStringField
      FieldName = 'D7'
      Size = 10
    end
    object mNotasN7: TFloatField
      FieldName = 'N7'
    end
    object mNotasD8: TStringField
      FieldName = 'D8'
      Size = 10
    end
    object mNotasN8: TFloatField
      FieldName = 'N8'
    end
    object mNotasD9: TStringField
      FieldName = 'D9'
      Size = 10
    end
    object mNotasN9: TFloatField
      FieldName = 'N9'
    end
    object mNotasD10: TStringField
      FieldName = 'D10'
      Size = 10
    end
    object mNotasN10: TFloatField
      FieldName = 'N10'
    end
    object mNotasD11: TStringField
      FieldName = 'D11'
      Size = 10
    end
    object mNotasN11: TFloatField
      FieldName = 'N11'
    end
    object mNotasD12: TStringField
      FieldName = 'D12'
      Size = 10
    end
    object mNotasN12: TFloatField
      FieldName = 'N12'
    end
    object mNotasMedia: TCurrencyField
      FieldName = 'Media'
      DisplayFormat = '0.00'
    end
  end
  object dsmNotas: TDataSource
    DataSet = mNotas
    Left = 544
    Top = 8
  end
end
