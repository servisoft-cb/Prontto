object fImportaAlunos: TfImportaAlunos
  Left = 439
  Top = 173
  Width = 800
  Height = 500
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fImportaAlunos'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 800
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
    Width = 784
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 16
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo de Origem:'
    end
    object Label2: TLabel
      Left = 74
      Top = 40
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Curso:'
    end
    object JvFilenameEdit1: TJvFilenameEdit
      Left = 112
      Top = 8
      Width = 450
      Height = 21
      Filter = 'Arquivos TXT (*.txt)|*.txt|Arquivos CSV (*.csv)|*.csv'
      HistoryList.Strings = (
        'c:\Delphi7\Prontto')
      ButtonFlat = False
      NumGlyphs = 1
      TabOrder = 0
      Text = 'C:\'
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 112
      Top = 32
      Width = 450
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsCurso
      TabOrder = 1
      OnEnter = JvDBLookupCombo1Enter
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 784
    Height = 41
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alunos'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Importar'
      TabOrder = 2
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Turmas'
      TabOrder = 1
      OnClick = BitBtn3Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 106
    Width = 784
    Height = 119
    Align = alTop
    DataSource = dsTurma
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 2
    RowCount = 2
  end
  object SMDBGrid2: TSMDBGrid
    Left = 0
    Top = 225
    Width = 784
    Height = 237
    Align = alClient
    DataSource = ds1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 2
    RowCount = 2
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 8
    object cds1ID: TIntegerField
      FieldName = 'ID'
    end
    object cds1RG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cds1CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object cds1NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cds1TIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cds1SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object cds1ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cds1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cds1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 10
    end
    object cds1BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cds1CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cds1ESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 40
    end
    object cds1FONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cds1CELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cds1DTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cds1EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cds1FOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object cds1REGISTRO_PF: TStringField
      FieldName = 'REGISTRO_PF'
      Size = 10
    end
    object cds1ORGAO_EXPED: TStringField
      FieldName = 'ORGAO_EXPED'
      Size = 10
    end
    object cds1DT_FORMACAO: TDateField
      FieldName = 'DT_FORMACAO'
    end
    object cds1PAI: TStringField
      FieldName = 'PAI'
      Size = 50
    end
    object cds1MAE: TStringField
      FieldName = 'MAE'
      Size = 50
    end
    object cds1CIDADE_NATAL: TStringField
      FieldName = 'CIDADE_NATAL'
      Size = 30
    end
    object cds1ESTADO_NATAL: TStringField
      FieldName = 'ESTADO_NATAL'
      Size = 40
    end
    object cds1TURMA: TStringField
      FieldName = 'TURMA'
    end
    object cds1NACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object cds1DT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object cds1CARGO: TStringField
      FieldName = 'CARGO'
      Size = 30
    end
    object cds1TRABALANDO: TStringField
      FieldName = 'TRABALANDO'
      Size = 1
    end
    object cds1CARTEIRA_CNV: TStringField
      FieldName = 'CARTEIRA_CNV'
    end
    object cds1EMPREGO: TStringField
      FieldName = 'EMPREGO'
      Size = 30
    end
    object cds1DT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cds1DT_DEMISSAO: TDateField
      FieldName = 'DT_DEMISSAO'
    end
    object cds1DT_CURSO_VIG: TDateField
      FieldName = 'DT_CURSO_VIG'
    end
    object cds1ESCOLA_VIG: TStringField
      FieldName = 'ESCOLA_VIG'
      Size = 30
    end
    object cds1DT_RECIC_VIG: TDateField
      FieldName = 'DT_RECIC_VIG'
    end
    object cds1ESCOLA_RECIC: TStringField
      FieldName = 'ESCOLA_RECIC'
      Size = 30
    end
    object cds1CURSO_BOMBEIRO: TStringField
      FieldName = 'CURSO_BOMBEIRO'
      Size = 1
    end
    object cds1CURSO_HELIPONTO: TStringField
      FieldName = 'CURSO_HELIPONTO'
      Size = 1
    end
    object cds1CURSO_COND_CAO: TStringField
      FieldName = 'CURSO_COND_CAO'
      Size = 1
    end
    object cds1CURSO_OP_MONITOR: TStringField
      FieldName = 'CURSO_OP_MONITOR'
      Size = 1
    end
    object cds1CURSO_SEG_BANCARIA: TStringField
      FieldName = 'CURSO_SEG_BANCARIA'
      Size = 1
    end
    object cds1EXT_TRANSP_VAL: TStringField
      FieldName = 'EXT_TRANSP_VAL'
      Size = 1
    end
    object cds1DT_EXT_TRANSP_VAL: TDateField
      FieldName = 'DT_EXT_TRANSP_VAL'
    end
    object cds1EXT_ESCOLTA_ARMADA: TStringField
      FieldName = 'EXT_ESCOLTA_ARMADA'
      Size = 1
    end
    object cds1DT_EXT_ESCOLTA_ARM: TDateField
      FieldName = 'DT_EXT_ESCOLTA_ARM'
    end
    object cds1EXT_SSP: TStringField
      FieldName = 'EXT_SSP'
      Size = 1
    end
    object cds1DT_EXT_SSP: TDateField
      FieldName = 'DT_EXT_SSP'
    end
    object cds1OUTRA_LINGA: TStringField
      FieldName = 'OUTRA_LINGA'
      Size = 30
    end
    object cds1NIVEL_OUTRA_LINGUA: TStringField
      FieldName = 'NIVEL_OUTRA_LINGUA'
      Size = 1
    end
    object cds1HORARIO_DISP: TStringField
      FieldName = 'HORARIO_DISP'
      Size = 40
    end
    object cds1FDS_DISP: TStringField
      FieldName = 'FDP_DISP'
      Size = 1
    end
    object cds1AP: TStringField
      FieldName = 'AP'
    end
    object cds1VERB: TStringField
      FieldName = 'VERB'
    end
    object cds1COD: TStringField
      FieldName = 'COD'
    end
    object cds1FUMANTE: TStringField
      FieldName = 'FUMANTE'
      Size = 1
    end
    object cds1CONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cds1AGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object cds1OBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cds1CALCA: TStringField
      FieldName = 'CALCA'
      Size = 2
    end
    object cds1CAMISA: TStringField
      FieldName = 'CAMISA'
      Size = 10
    end
    object cds1JAQUETA: TStringField
      FieldName = 'JAQUETA'
      Size = 10
    end
    object cds1SAPATO: TStringField
      FieldName = 'SAPATO'
      Size = 2
    end
    object cds1COLETE: TStringField
      FieldName = 'COLETE'
      Size = 10
    end
    object cds1EXT_GRANDES_EVENTOS: TStringField
      FieldName = 'EXT_GRANDES_EVENTOS'
      Size = 1
    end
    object cds1CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
  end
  object ds1: TDataSource
    DataSet = cds1
    Left = 520
    Top = 8
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID FROM CIDADE'
      'WHERE UPPER(NOME) = UPPER(:NOME)')
    SQLConnection = Dm1.Conexao
    Left = 584
    Top = 8
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object cdsTurma: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 640
    Top = 8
    object cdsTurmaId: TIntegerField
      FieldName = 'Id'
    end
    object cdsTurmaTurma: TStringField
      FieldName = 'Turma'
      Size = 30
    end
    object cdsTurmaDtIni: TDateField
      FieldName = 'DtIni'
    end
    object cdsTurmaDtFim: TDateField
      FieldName = 'DtFim'
    end
  end
  object dsTurma: TDataSource
    DataSet = cdsTurma
    Left = 672
    Top = 8
  end
end
