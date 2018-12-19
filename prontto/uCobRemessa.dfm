object fCobRemessa: TfCobRemessa
  Left = 53
  Top = 158
  Width = 1075
  Height = 500
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fCobRemessa'
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
    Width = 1059
    Height = 66
    Align = alTop
    Color = clBtnShadow
    TabOrder = 0
    object Label1: TLabel
      Left = 98
      Top = 24
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object NxLabel1: TNxLabel
      Left = 34
      Top = 47
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Emiss'#227'o Inicial:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object NxLabel2: TNxLabel
      Left = 274
      Top = 47
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
      HorizontalPosition = hpLeft
      InnerHorizontal = True
      InnerVertical = False
      InnerMargins.Horizontal = 0
      InnerMargins.Vertical = 2
      VerticalPosition = vpTop
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 136
      Top = 16
      Width = 257
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dmCobranca.dsBanco
      TabOrder = 0
      OnChange = JvDBLookupCombo1Change
    end
    object NxDatePicker1: TNxDatePicker
      Left = 136
      Top = 39
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '04/02/2014'
      HideFocus = False
      Date = 41674.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxDatePicker2: TNxDatePicker
      Left = 303
      Top = 39
      Width = 89
      Height = 21
      TabOrder = 2
      Text = '04/02/2014'
      HideFocus = False
      Date = 41674.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object ckReenviar: TCheckBox
      Left = 422
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Reenviar'
      TabOrder = 3
    end
    object GroupBox1: TGroupBox
      Left = 838
      Top = 3
      Width = 180
      Height = 62
      Caption = ' Pr'#243'ximo n'#186' de remessa '
      TabOrder = 5
      object Label2: TLabel
        Left = 9
        Top = 22
        Width = 62
        Height = 13
        Caption = 'N'#186' Remessa:'
      end
      object Label3: TLabel
        Left = 27
        Top = 44
        Width = 44
        Height = 13
        Caption = 'Seq. Dia:'
      end
      object JvIntegerEdit1: TJvIntegerEdit
        Left = 80
        Top = 14
        Width = 80
        Height = 21
        Alignment = taRightJustify
        ReadOnly = False
        TabOrder = 0
        Value = 0
        MaxValue = 0
        MinValue = 0
        HasMaxValue = False
        HasMinValue = False
      end
      object JvIntegerEdit2: TJvIntegerEdit
        Left = 80
        Top = 36
        Width = 80
        Height = 21
        Alignment = taRightJustify
        ReadOnly = False
        TabOrder = 1
        Value = 0
        MaxValue = 0
        MinValue = 0
        HasMaxValue = False
        HasMinValue = False
      end
    end
    object ckCarne: TCheckBox
      Left = 536
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Formato Carn'#234
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 1059
    Height = 33
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 4
      Width = 120
      Height = 25
      Caption = 'Localizar duplicatas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 128
      Top = 4
      Width = 120
      Height = 25
      Caption = 'Imprimir T'#237'tulos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 248
      Top = 4
      Width = 120
      Height = 25
      Caption = 'Gerar Remessa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 368
      Top = 4
      Width = 120
      Height = 25
      Caption = 'Imprmir Remessa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object NxButton1: TNxButton
      Left = 487
      Top = 2
      Width = 113
      Height = 28
      Caption = 'Mala Direta'
      PopupMenu = PopupMenu1
      ShowArrow = True
      TabOrder = 4
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 99
    Width = 1059
    Height = 363
    Align = alClient
    DataSource = dmCobranca.dsCReceber
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
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
    ExOptions = [eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 10
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'DTMOVIMENTO'
        Title.Caption = 'DT.MOV.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMNOTA'
        Title.Caption = 'NUM.NOTA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Caption = 'DT.VCTO.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOSSONUMERO'
        Title.Caption = 'NOSSO N'#218'MERO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRVENCIMENTO'
        Title.Caption = 'VLR. VCTO.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUM_REMESSA'
        Title.Caption = 'NUM.REMESSA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMCRECEBER'
        Title.Caption = 'NUM.CRECEBER'
        Width = 90
        Visible = True
      end>
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 728
    Top = 8
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    Left = 696
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 760
    Top = 66
    object Selecionado2: TMenuItem
      Caption = 'Selecionado'
      OnClick = Selecionado2Click
    end
    object odos2: TMenuItem
      Caption = 'Todos'
      OnClick = odos2Click
    end
  end
end
