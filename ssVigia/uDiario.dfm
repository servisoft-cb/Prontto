object fDiario: TfDiario
  Left = 206
  Top = 59
  Width = 846
  Height = 588
  Caption = 'fDiario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 29
    Align = alTop
    Color = 16776176
    TabOrder = 0
    object Label2: TLabel
      Left = 160
      Top = 8
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object btSalvar: TBitBtn
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object DBEdit2: TDBEdit
      Left = 178
      Top = 4
      Width = 71
      Height = 21
      Color = clBtnFace
      DataField = 'ID'
      DataSource = dmDiario.dsDiario
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 838
    Height = 84
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 62
      Top = 16
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 57
      Top = 38
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turno:'
    end
    object Label4: TLabel
      Left = 41
      Top = 60
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Operador:'
    end
    object DBDateEdit1: TDBDateEdit
      Left = 96
      Top = 8
      Width = 90
      Height = 21
      DataField = 'DATA'
      DataSource = dmDiario.dsDiario
      NumGlyphs = 2
      TabOrder = 0
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 96
      Top = 30
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'TURNO'
      DataSource = dmDiario.dsDiario
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        '07:00 '#224's 19:00'
        '19:00 '#224's 07:00')
      TabOrder = 1
      Values.Strings = (
        '1'
        '2')
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 96
      Top = 52
      Width = 289
      Height = 21
      DropDownCount = 8
      DataField = 'OPERADOR_RADIO'
      DataSource = dmDiario.dsDiario
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      LookupSource = dmDiario.dsAgente
      TabOrder = 2
      OnEnter = RxDBLookupCombo1Enter
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 113
    Width = 838
    Height = 248
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Celulares / Viaturas'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 97
        Width = 834
        Height = 128
        Align = alClient
        DataSource = dmDiario.dsDiarioViatura
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
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
            FieldName = 'PLACA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KM_INICIAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KM_FINAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Width = 290
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VIATURA_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIARIO_ID'
            Visible = True
          end>
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 834
        Height = 97
        Align = alTop
        DataSource = dmDiario.dsDiarioCelular
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid2DblClick
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
        ColCount = 4
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CELULAR_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CREDITO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIARIO_ID'
            Visible = True
          end>
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Alarme'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        DataSource = dmDiario.dsDiarioAlarme
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 9
        RowCount = 2
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 1
        object btInserir: TBitBtn
          Left = 2
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 77
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Especiais'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 0
        object BitBtn3: TBitBtn
          Left = 2
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
        end
        object BitBtn5: TBitBtn
          Left = 77
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
        end
      end
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        DataSource = dmDiario.dsDiarioEspecial
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Ronda Bairros'
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 0
      end
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet5: TRzTabSheet
      Caption = 'Ronda e PBS'
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 0
      end
      object SMDBGrid6: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = 'C'#226'meras'
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 0
        object BitBtn6: TBitBtn
          Left = 2
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
        end
        object BitBtn8: TBitBtn
          Left = 77
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
        end
      end
      object SMDBGrid7: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet7: TRzTabSheet
      Caption = 'Portaria: Abertura e Fechamento'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 0
        object BitBtn9: TBitBtn
          Left = 2
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
        end
        object BitBtn11: TBitBtn
          Left = 77
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
        end
      end
      object SMDBGrid8: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet8: TRzTabSheet
      Caption = 'Reclama'#231#245'es'
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 834
        Height = 29
        Align = alTop
        TabOrder = 0
        object BitBtn12: TBitBtn
          Left = 2
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
        end
        object BitBtn14: TBitBtn
          Left = 77
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
        end
      end
      object SMDBGrid9: TSMDBGrid
        Left = 0
        Top = 29
        Width = 834
        Height = 196
        Align = alClient
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ColCount = 2
        RowCount = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 361
    Width = 838
    Height = 29
    Align = alTop
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 390
    Width = 838
    Height = 167
    Align = alClient
    TabOrder = 4
  end
end
