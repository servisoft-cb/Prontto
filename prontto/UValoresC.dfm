object fValoresC: TfValoresC
  Left = 705
  Top = 228
  Width = 458
  Height = 425
  Caption = 'Valores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 354
    Width = 442
    Height = 33
    Align = alBottom
    TabOrder = 1
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 442
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 12
      Width = 44
      Height = 13
      Caption = 'Consulta:'
    end
    object Edit1: TEdit
      Left = 62
      Top = 4
      Width = 227
      Height = 21
      TabOrder = 0
      Text = '[Digite o nome e pressione F3 para localizar]'
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 31
    Width = 442
    Height = 323
    Align = alClient
    DataSource = Dm1.dsValores
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
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
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMEFUNCIONARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTMOV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDEVENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Visible = True
      end>
  end
  object UCControls1: TUCControls
    GroupName = 'Centro Custo'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 96
    Top = 136
  end
end
