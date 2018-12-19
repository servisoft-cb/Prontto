object fPessoaC: TfPessoaC
  Left = 202
  Top = 114
  Width = 800
  Height = 554
  Caption = 'fPessoaC'
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 486
    Width = 784
    Height = 32
    Align = alBottom
    TabOrder = 1
    object Label2: TLabel
      Left = 632
      Top = 12
      Width = 84
      Height = 13
      Caption = 'Total de registros:'
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 4
      Width = 75
      Height = 25
      Caption = 'E&xcluir'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 154
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Im&primir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 304
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Imprimir Ficha'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn6: TBitBtn
      Left = 379
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Mala direta'
      TabOrder = 4
      OnClick = BitBtn6Click
    end
    object BitBtn5: TBitBtn
      Left = 483
      Top = 4
      Width = 94
      Height = 25
      Caption = 'Importar Alunos'
      TabOrder = 5
      OnClick = BitBtn5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 29
      Width = 44
      Height = 13
      Caption = 'Consulta:'
    end
    object JvColorSquare4: TJvColorSquare
      Left = 233
      Top = 4
      Width = 27
      Height = 15
      Cursor = crHandPoint
      Color = clRed
      BorderStyle = bsSingle
    end
    object JvColorSquare1: TJvColorSquare
      Left = 385
      Top = 4
      Width = 27
      Height = 15
      Cursor = crHandPoint
      Color = clFuchsia
      BorderStyle = bsSingle
    end
    object JvComboBox1: TJvComboBox
      Left = 54
      Top = 21
      Width = 177
      Height = 21
      MaxPixel.Font.Charset = DEFAULT_CHARSET
      MaxPixel.Font.Color = clWindowText
      MaxPixel.Font.Height = -11
      MaxPixel.Font.Name = 'MS Sans Serif'
      MaxPixel.Font.Style = []
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Nome'
      OnEnter = JvComboBox1Enter
      Items.Strings = (
        'Nome'
        'CNPJ/CPF'
        'Cliente'
        'Fornecedor'
        'Transportadora'
        'Vendedor'
        'Funcion'#225'rios'
        'Alunos')
    end
    object Edit1: TEdit
      Left = 233
      Top = 21
      Width = 336
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
    end
    object CheckBox1: TCheckBox
      Left = 55
      Top = 3
      Width = 97
      Height = 17
      Caption = 'Ativos'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 267
      Top = 3
      Width = 97
      Height = 17
      Caption = 'Inativos'
      TabOrder = 3
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 419
      Top = 3
      Width = 97
      Height = 17
      Caption = 'Devedor'
      TabOrder = 4
      OnClick = CheckBox3Click
    end
    object BitBtn7: TBitBtn
      Left = 665
      Top = 19
      Width = 123
      Height = 25
      Caption = 'Localizar pelo telefone'
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object Edit2: TEdit
      Left = 574
      Top = 21
      Width = 89
      Height = 21
      TabOrder = 5
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 49
    Width = 784
    Height = 437
    Align = alClient
    DataSource = Dm1.dsPessoa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnTitleClick = SMDBGrid1TitleClick
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
    TitleHeight.LineCount = 2
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 17
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Pessoa'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Title.Alignment = taCenter
        Title.Caption = 'Fantasia'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEL'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDNUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'm.'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADENOME'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDCOMPLEMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Compl.'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESSOA'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo (F/J)'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ/CPF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDENTIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Identidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTCADASTRO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Cadastro'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTNASCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Dt. Nacimento'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCARTEIRA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Carteira'
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Pessoas'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 528
    Top = 464
  end
  object qDeleta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 560
    Top = 464
  end
end
