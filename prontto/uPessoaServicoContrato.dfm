object fPessoaServicoContrato: TfPessoaServicoContrato
  Left = 392
  Top = 26
  Width = 800
  Height = 668
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fPessoaServicoContrato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 599
    Width = 784
    Height = 31
    Align = alBottom
    TabOrder = 3
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
    Width = 784
    Height = 233
    Align = alTop
    DataSource = Dm1.dsClausula
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clTipo'
        Title.Caption = 'TIPO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 450
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 233
    Width = 784
    Height = 31
    Align = alTop
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 3
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Adicionar'
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object Button1: TButton
      Left = 80
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Editor'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 157
      Top = 3
      Width = 75
      Height = 25
      Caption = '&Limpar'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBRichEdit1: TDBRichEdit
    Left = 0
    Top = 264
    Width = 784
    Height = 335
    Align = alClient
    DataField = 'CONTRATO'
    DataSource = Dm1.dsPessoaServico
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    HideSelection = False
    HideScrollBars = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 320
    Top = 240
  end
end
