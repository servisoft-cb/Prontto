object fPrevVendaCurso: TfPrevVendaCurso
  Left = 203
  Top = 148
  Width = 851
  Height = 494
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fPrevVendaCurso'
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
    Width = 835
    Height = 62
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 39
      Top = 20
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vendedor:'
    end
    object Label2: TLabel
      Left = 32
      Top = 44
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 293
      Top = 44
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'At'#233':'
    end
    object JvDBLookupCombo4: TJvDBLookupCombo
      Left = 94
      Top = 12
      Width = 315
      Height = 21
      DropDownCount = 15
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DmCons.dsVendedor
      TabOrder = 0
      OnEnter = JvDBLookupCombo4Enter
    end
    object JvDateEdit1: TJvDateEdit
      Left = 94
      Top = 36
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 1
    end
    object JvDateEdit2: TJvDateEdit
      Left = 320
      Top = 36
      Width = 90
      Height = 21
      ButtonFlat = False
      NumGlyphs = 2
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 432
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 432
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 62
    Width = 835
    Height = 393
    Align = alClient
    DataSource = DmCons.dsVendaCurso
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 9
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'DTVENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTINICIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRCURSO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRDESCONTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR_ID'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end>
  end
end
