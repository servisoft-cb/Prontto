object fPrevQNC: TfPrevQNC
  Left = 131
  Top = 38
  Width = 1024
  Height = 700
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 126
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1008
      126)
    object Label1: TLabel
      Left = 29
      Top = 36
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Curso:'
    end
    object Label4: TLabel
      Left = 35
      Top = 107
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object Label5: TLabel
      Left = 15
      Top = 12
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa:'
    end
    object Label6: TLabel
      Left = 26
      Top = 61
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object Label7: TLabel
      Left = 220
      Top = 59
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turno:'
    end
    object Label9: TLabel
      Left = 27
      Top = 85
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Of'#237'cio:'
      FocusControl = BitBtn1
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 64
      Top = 28
      Width = 300
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsCurso
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 368
      Top = 3
      Width = 80
      Height = 25
      Caption = '&Localizar'
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 100
      Width = 218
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 5
      Items.Strings = (
        'Qualifica'#231#227'o nominal de turma (In'#237'cio)'
        'Comprovante de conclus'#227'o'
        'Of'#237'cio de entrega de certificados'
        'Lista de presen'#231'a (chamada)'
        'Lista de documentos enviados (Final)')
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 64
      Top = 4
      Width = 300
      Height = 21
      DropDownCount = 15
      DisplayEmpty = '[Todos...]'
      EmptyItemColor = clMoneyGreen
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = Dm1.dsPessoa
      TabOrder = 0
      OnChange = JvDBLookupCombo2Change
      OnEnter = JvDBLookupCombo2Enter
    end
    object BitBtn3: TBitBtn
      Left = 612
      Top = 97
      Width = 120
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Arquivo Forma'#231#227'o'
      TabOrder = 9
      OnClick = BitBtn3Click
    end
    object Edit1: TEdit
      Left = 64
      Top = 52
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 692
      Top = 25
      Width = 80
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Mala direta'
      TabOrder = 7
      Visible = False
    end
    object BitBtn5: TBitBtn
      Left = 732
      Top = 97
      Width = 120
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Arquivo Reciclagem'
      TabOrder = 10
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 528
      Top = 3
      Width = 80
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 8
      OnClick = BitBtn6Click
    end
    object ComboBox2: TComboBox
      Left = 256
      Top = 51
      Width = 107
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'Manh'#227
      Items.Strings = (
        'Manh'#227
        'Tarde')
    end
    object CheckBox1: TCheckBox
      Left = 536
      Top = 32
      Width = 116
      Height = 17
      Caption = 'Imp. Selecionados'
      TabOrder = 11
    end
    object Edit2: TEdit
      Left = 64
      Top = 76
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 126
    Width = 1008
    Height = 444
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
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ALUNO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Width = 294
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTINICIO'
        Title.Caption = 'DT. IN'#205'CIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTFINAL'
        Title.Caption = 'DT. FINAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CELULAR'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtDATAFORM'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 570
    Width = 1008
    Height = 92
    Align = alBottom
    TabOrder = 2
    object Label2: TLabel
      Left = 64
      Top = 18
      Width = 82
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aos cuidados de:'
    end
    object Label3: TLabel
      Left = 54
      Top = 75
      Width = 92
      Height = 13
      Caption = 'CTPS para registro:'
    end
    object Label8: TLabel
      Left = 569
      Top = 18
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Respons'#225'vel:'
    end
    object Memo1: TMemo
      Left = 157
      Top = 3
      Width = 324
      Height = 61
      Lines.Strings = (
        'A DELESP'
        'A/C COMISS'#195'O DE VISTORIA'
        'Av. Ipiranga, n'#186' 1365'
        'Porto Alegre - RS')
      TabOrder = 0
    end
    object JvSpinEdit1: TJvSpinEdit
      Left = 157
      Top = 67
      Width = 52
      Height = 21
      TabStop = True
      TabOrder = 2
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Text = '0'
      HotTrack = True
    end
    object Memo2: TMemo
      Left = 645
      Top = 3
      Width = 324
      Height = 61
      Lines.Strings = (
        'M'#225'rcio Luis Pereira Flores'
        'Diretor')
      TabOrder = 1
    end
  end
  object vPessoaCurso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM V_ALUNO_CURSO'#13#10'WHERE 0 = 0'
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
    object tPessoaCursoPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
    end
    object tPessoaCursoCURSO_ID: TIntegerField
      FieldName = 'CURSO_ID'
    end
    object tPessoaCursoNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object tPessoaCursoNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object tPessoaCursoRG: TStringField
      FieldName = 'RG'
      Size = 10
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
    object tPessoaCursoCARGAHORARIA: TIntegerField
      FieldName = 'CARGAHORARIA'
    end
    object tPessoaCursoTURMA: TStringField
      FieldName = 'TURMA'
      Size = 10
    end
    object tPessoaCursoMATRICULA: TIntegerField
      FieldName = 'MATRICULA'
    end
    object tPessoaCursoEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
    end
    object tPessoaCursoFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object tPessoaCursoCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object tPessoaCursoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 71
    end
    object tPessoaCursoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object tPessoaCursoESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object tPessoaCursoDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object tPessoaCursoREGISTRO_DPF: TStringField
      FieldName = 'REGISTRO_DPF'
      Size = 15
    end
    object tPessoaCursoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 3
    end
    object tPessoaCursoVALIDADE_CMA: TDateField
      FieldName = 'VALIDADE_CMA'
    end
  end
  object dsPessoaCurso: TDataSource
    DataSet = tPessoaCurso
    Left = 480
    Top = 104
  end
end
