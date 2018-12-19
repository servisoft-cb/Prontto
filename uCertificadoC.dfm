object fCertificadoC: TfCertificadoC
  Left = 252
  Top = 111
  Width = 900
  Height = 550
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCertificadoC'
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 15
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Curso:'
    end
    object Label6: TLabel
      Left = 26
      Top = 40
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object BitBtn1: TBitBtn
      Left = 448
      Top = 3
      Width = 89
      Height = 25
      Caption = 'Imprimir &Frente'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 64
      Top = 7
      Width = 300
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsCurso
      TabOrder = 1
      OnEnter = JvDBLookupCombo1Enter
    end
    object Edit1: TEdit
      Left = 64
      Top = 31
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 368
      Top = 3
      Width = 80
      Height = 25
      Caption = '&Localizar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 537
      Top = 3
      Width = 89
      Height = 25
      Caption = 'Imprimir &Verso'
      TabOrder = 4
      OnClick = BitBtn3Click
    end
    object CheckBox1: TCheckBox
      Left = 368
      Top = 32
      Width = 105
      Height = 17
      Caption = 'Imprimir imagens'
      TabOrder = 5
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 65
    Width = 884
    Height = 377
    Align = alClient
    DataSource = dsPessoaCurso
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'PESSOA_ID'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALUNO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEDIA'
        Title.Caption = 'M'#201'DIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTINICIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTFINAL'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 442
    Width = 884
    Height = 70
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 64
      Top = 18
      Width = 65
      Height = 13
      Caption = 'Respons'#225'vel:'
    end
    object Memo1: TMemo
      Left = 157
      Top = 3
      Width = 534
      Height = 61
      Alignment = taCenter
      Lines.Strings = (
        '________________________________'
        'M'#225'rcio Lu'#237's Pereira Flores'
        'Diretor de Ensino')
      TabOrder = 0
    end
  end
  object vPessoaCurso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AC.*, P.DTNASCIMENTO, P.NOMEPAI, P.NOMEMAE, P.NATURALIDAD' +
      'E_CID,  P.NATURALIDADE_UF, P.DOCUMENTO'#13#10'FROM V_ALUNO_CURSO AC'#13#10'I' +
      'NNER JOIN PESSOA P ON (P.ID = AC.PESSOA_ID)'#13#10'WHERE 0 = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 384
    Top = 104
  end
  object pPessoaCurso: TDataSetProvider
    DataSet = vPessoaCurso
    Left = 416
    Top = 104
  end
  object tPessoaCurso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPessoaCurso'
    Left = 448
    Top = 104
    object tPessoaCursoALUNO: TStringField
      FieldName = 'ALUNO'
      Size = 40
    end
    object tPessoaCursoCURSO: TStringField
      FieldName = 'CURSO'
      Size = 70
    end
    object tPessoaCursoDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object tPessoaCursoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object tPessoaCursoTURMA: TStringField
      FieldName = 'TURMA'
    end
    object tPessoaCursoPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object tPessoaCursoCARGAHORARIA: TIntegerField
      FieldName = 'CARGAHORARIA'
    end
    object tPessoaCursoNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object tPessoaCursoNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object tPessoaCursoDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object tPessoaCursoNATUR_CID: TStringField
      FieldName = 'NATUR_CID'
      Size = 30
    end
    object tPessoaCursoNATUR_UF: TStringField
      FieldName = 'NATUR_UF'
      Size = 2
    end
    object tPessoaCursoCURSO_ID: TIntegerField
      FieldName = 'CURSO_ID'
    end
    object tPessoaCursoMEDIA: TFMTBCDField
      FieldName = 'MEDIA'
      Precision = 15
      Size = 2
    end
    object tPessoaCursoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
  end
  object dsPessoaCurso: TDataSource
    DataSet = tPessoaCurso
    Left = 480
    Top = 104
  end
  object PessoaNota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PCN.ID, P.NOME ALUNO, C.NOME CURSO, PC.TURMA, D.DESCRICAO' +
      ' DISCIPLINA, PCN.NOTA, D.SIGLA, D.CARGA_HORARIA'#13#10'FROM PESSOA_CUR' +
      'SO_NOTA PCN'#13#10'INNER JOIN PESSOA P ON (P.ID = PCN.PESSOA_ID)'#13#10'INNE' +
      'R JOIN PESSOA_CURSO PC ON (P.ID = PC.PESSOA_ID)'#13#10'INNER JOIN CURS' +
      'O C ON (PC.CURSO_ID = C.ID AND PC.CURSO_ID = PCN.CURSO_ID)'#13#10'INNE' +
      'R JOIN DISCIPLINA D ON (PCN.DISCIPLINA_ID = D.ID)'#13#10'WHERE 1 = 1 A' +
      'ND P.ID = :P1'#13#10'AND PC.CURSO_ID = :PC1'#13#10'AND TURMA = :T1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'P1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'PC1'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'T1'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 384
    Top = 136
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
      Size = 100
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
    object PessoaNotaCARGA_HORARIA: TStringField
      FieldName = 'CARGA_HORARIA'
      Size = 3
    end
  end
  object pPessoaNota: TDataSetProvider
    DataSet = PessoaNota
    Left = 416
    Top = 136
  end
  object tPessoaNota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pPessoaNota'
    Left = 448
    Top = 136
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
      Size = 100
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
    object tPessoaNotaCARGA_HORARIA: TStringField
      FieldName = 'CARGA_HORARIA'
      Size = 3
    end
  end
  object dsPessoaNota: TDataSource
    DataSet = tPessoaNota
    Left = 480
    Top = 136
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ESCOLA FROM PARAMETRO')
    SQLConnection = Dm1.Conexao
    Left = 384
    Top = 168
    object qParametrosESCOLA: TStringField
      FieldName = 'ESCOLA'
      FixedChar = True
      Size = 1
    end
  end
end
