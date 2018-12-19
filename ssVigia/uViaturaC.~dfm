object fViaturaC: TfViaturaC
  Left = 464
  Top = 146
  Width = 612
  Height = 480
  Caption = 'fViaturaC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 29
    Align = alTop
    TabOrder = 0
    object btInserir: TBitBtn
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btInserirClick
    end
    object btPesquisar: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = btPesquisarClick
    end
    object btExcluir: TBitBtn
      Left = 152
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btExcluirClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 58
    Width = 604
    Height = 391
    Align = alClient
    DataSource = dmViatura.dsViatura
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'PLACA'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATIVA'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end>
  end
  object pnlPesquisa: TPanel
    Left = 0
    Top = 29
    Width = 604
    Height = 29
    Align = alTop
    TabOrder = 2
    Visible = False
    DesignSize = (
      604
      29)
    object Label1: TLabel
      Left = 57
      Top = 11
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Placa:'
    end
    object tbPesquisa: TBitBtn
      Left = 525
      Top = 2
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Pesquisa'
      TabOrder = 0
      OnClick = tbPesquisaClick
    end
    object Edit1: TEdit
      Left = 96
      Top = 3
      Width = 241
      Height = 21
      TabOrder = 1
    end
  end
end
