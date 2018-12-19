object fEscalaDiaria: TfEscalaDiaria
  Left = 345
  Top = 143
  Width = 711
  Height = 563
  Caption = 'fEscalaDiaria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 493
    Width = 695
    Height = 32
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 78
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 0
    Width = 695
    Height = 493
    Align = alClient
    DataSource = dmEscala.dsEscalaDiaria
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
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
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        ReadOnly = True
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HR_INI'
        ReadOnly = True
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HR_FIM'
        ReadOnly = True
        Visible = True
      end
      item
        DropDownRows = 20
        Expanded = False
        FieldName = 'lkAgente'
        Title.Caption = 'AGENTE'
        Width = 118
        Visible = True
      end>
  end
end
