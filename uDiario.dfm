object fDiario: TfDiario
  Left = 328
  Top = 91
  Width = 800
  Height = 600
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 531
    Width = 784
    Height = 31
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
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
    object BitBtn7: TBitBtn
      Left = 153
      Top = 3
      Width = 71
      Height = 25
      Caption = 'Supervisor'
      TabOrder = 2
      OnClick = BitBtn7Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 89
    Align = alTop
    TabOrder = 0
    DesignSize = (
      784
      89)
    object Label1: TLabel
      Left = 85
      Top = 16
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 79
      Top = 40
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Truno:'
    end
    object Label3: TLabel
      Left = 5
      Top = 64
      Width = 112
      Height = 13
      Alignment = taRightJustify
      Caption = 'Operador de R'#225'dio:'
    end
    object DBText1: TDBText
      Left = 712
      Top = 15
      Width = 65
      Height = 17
      Anchors = [akTop, akRight]
      Color = clWhite
      DataField = 'ID'
      DataSource = dmDiario.dsDiario
      ParentColor = False
    end
    object Label4: TLabel
      Left = 639
      Top = 15
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'ID DI'#193'RIO:'
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 120
      Top = 56
      Width = 241
      Height = 21
      DropDownCount = 8
      DataField = 'OPERADOR_RADIO'
      DataSource = dmDiario.dsDiario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = dsAgente
      ParentFont = False
      TabOrder = 2
      OnEnter = JvDBLookupCombo1Enter
      OnExit = JvDBLookupCombo1Exit
    end
    object JvDBComboBox1: TJvDBComboBox
      Left = 120
      Top = 32
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'TURNO'
      DataSource = dmDiario.dsDiario
      EnableValues = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        '07:00 '#224's 19:00'
        '19:00 '#224's 07:00')
      ParentFont = False
      TabOrder = 1
      Values.Strings = (
        '1'
        '2')
      OnExit = JvDBComboBox1Exit
    end
    object JvDBDateEdit1: TJvDBDateEdit
      Left = 120
      Top = 8
      Width = 90
      Height = 21
      TabStop = False
      DataField = 'DATA'
      DataSource = dmDiario.dsDiario
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      StartOfWeek = Sun
    end
    object BitBtn12: TBitBtn
      Left = 638
      Top = 32
      Width = 142
      Height = 50
      Anchors = [akTop, akRight]
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn12Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 784
    Height = 273
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 1
    object TabSheet7: TTabSheet
      Caption = 'Viaturas / Celulares'
      ImageIndex = 6
      object Panel9: TPanel
        Left = 0
        Top = 218
        Width = 776
        Height = 27
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          776
          27)
        object DBCheckBox3: TDBCheckBox
          Left = 400
          Top = 6
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_VIATURA'
          DataSource = dmDiario.dsDiario
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox3Click
        end
        object DBCheckBox4: TDBCheckBox
          Left = 672
          Top = 6
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_VIATURA'
          DataSource = dmDiario.dsDiario
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox15: TDBCheckBox
          Left = 552
          Top = 6
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_VIATURA'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 178
        Align = alTop
        DataSource = dmDiario.dsDiarioViatura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
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
        ColCount = 7
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'VIATURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE'
            Width = 200
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
            FieldName = 'clKmTotal'
            Title.Caption = 'KM TOTAL'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Width = 345
            Visible = True
          end>
      end
      object SMDBGrid8: TSMDBGrid
        Left = 0
        Top = 178
        Width = 776
        Height = 40
        Align = alClient
        DataSource = dmDiario.dsDiarioCelular
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid8DblClick
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
            FieldName = 'OPERADORA'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'N'#218'MERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CREDITO'
            Title.Caption = 'CR'#201'DITO'
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Alarme'
      object Panel3: TPanel
        Left = 0
        Top = 212
        Width = 776
        Height = 33
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          776
          33)
        object BitBtn3: TBitBtn
          Left = 3
          Top = 4
          Width = 73
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn3Click
        end
        object BitBtn4: TBitBtn
          Left = 76
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn4Click
        end
        object DBCheckBox7: TDBCheckBox
          Left = 400
          Top = 10
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_ALARME'
          DataSource = dmDiario.dsDiario
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox8: TDBCheckBox
          Left = 672
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_ALARME'
          DataSource = dmDiario.dsDiario
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox17: TDBCheckBox
          Left = 552
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_ALARME'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 212
        Align = alClient
        DataSource = dmDiario.dsDiarioAlarme
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SA'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APBM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Especiais (SEG)'
      ImageIndex = 1
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 212
        Align = alClient
        DataSource = dmDiario.dsDiarioEspecial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid3DblClick
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
        ColCount = 8
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROCEDIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APBM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 212
        Width = 776
        Height = 33
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          776
          33)
        object BitBtn5: TBitBtn
          Left = 3
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 78
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn6Click
        end
        object DBCheckBox9: TDBCheckBox
          Left = 400
          Top = 10
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_ESPECIAL'
          DataSource = dmDiario.dsDiario
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox10: TDBCheckBox
          Left = 672
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_ESPECIAL'
          DataSource = dmDiario.dsDiario
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox18: TDBCheckBox
          Left = 552
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_ESPECIAL'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Ronda Bairros'
      ImageIndex = 2
      object SMDBGrid5: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 209
        Align = alClient
        DataSource = dmDiario.dsDiarioBairro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid5DblClick
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
        ColCount = 6
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end>
      end
      object Panel10: TPanel
        Left = 0
        Top = 209
        Width = 776
        Height = 36
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          776
          36)
        object Label7: TLabel
          Left = 12
          Top = 3
          Width = 338
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          Caption = 
            'BOT'#195'O DIREITO DO MOUSE PARA INFORMAR RONDA'#13#10'2 CLIQUES PARA DETAL' +
            'HAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBCheckBox5: TDBCheckBox
          Left = 400
          Top = 6
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_BAIRRO'
          DataSource = dmDiario.dsDiario
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox5Click
        end
        object DBCheckBox6: TDBCheckBox
          Left = 672
          Top = 6
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_BAIRRO'
          DataSource = dmDiario.dsDiario
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox19: TDBCheckBox
          Left = 552
          Top = 6
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_BAIRRO'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ronda e PBS'
      ImageIndex = 3
      object SMDBGrid4: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 209
        Align = alClient
        DataSource = dmDiario.dsDiarioRonda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid4DblClick
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
            FieldName = 'PESSOA_ID'
            Title.Caption = 'ID'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 244
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end>
      end
      object Panel8: TPanel
        Left = 0
        Top = 209
        Width = 776
        Height = 36
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          776
          36)
        object Label6: TLabel
          Left = 12
          Top = 2
          Width = 338
          Height = 32
          Anchors = [akLeft, akTop, akRight]
          Caption = 
            'BOT'#195'O DIREITO DO MOUSE PARA INFORMAR RONDA'#13#10'2 CLIQUES PARA DETAL' +
            'HAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 400
          Top = 6
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_RONDA'
          DataSource = dmDiario.dsDiario
          TabOrder = 0
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnClick = DBCheckBox1Click
        end
        object DBCheckBox2: TDBCheckBox
          Left = 672
          Top = 6
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_RONDA'
          DataSource = dmDiario.dsDiario
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox20: TDBCheckBox
          Left = 552
          Top = 6
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_RONDA'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 1
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'C'#226'meras'
      ImageIndex = 4
      object SMDBGrid6: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 212
        Align = alClient
        DataSource = dmDiario.dsDiarioCamera
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid6DblClick
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
            FieldName = 'CLIENTE'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA_QUEDA'
            Title.Caption = 'HR QUEDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MENSAGEM'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA_RETORNO'
            Title.Caption = 'HR RETORNO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 212
        Width = 776
        Height = 33
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          776
          33)
        object BitBtn8: TBitBtn
          Left = 3
          Top = 4
          Width = 69
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 72
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
          OnClick = BitBtn9Click
        end
        object DBCheckBox11: TDBCheckBox
          Left = 400
          Top = 10
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_CAMERA'
          DataSource = dmDiario.dsDiario
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox12: TDBCheckBox
          Left = 672
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_CAMERA'
          DataSource = dmDiario.dsDiario
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox21: TDBCheckBox
          Left = 552
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_CAMERA'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Portaria / Abertura / Fechamento'
      ImageIndex = 5
      object SMDBGrid7: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 212
        Align = alClient
        DataSource = dmDiario.dsDiarioPortaria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu3
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = SMDBGrid7DblClick
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
            FieldName = 'CLIENTE'
            Width = 274
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGENTE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA_INI'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA_FIM'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HR_CHEGADA'
            Title.Caption = 'CHEGADA'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HR_SAIDA'
            Title.Caption = 'SA'#205'DA'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 212
        Width = 776
        Height = 33
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          776
          33)
        object BitBtn10: TBitBtn
          Left = 103
          Top = 4
          Width = 69
          Height = 25
          Caption = '&Incluir'
          TabOrder = 1
          OnClick = BitBtn10Click
        end
        object BitBtn11: TBitBtn
          Left = 172
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 2
          OnClick = BitBtn11Click
        end
        object DBCheckBox13: TDBCheckBox
          Left = 400
          Top = 10
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataField = 'FC_PORTARIA'
          DataSource = dmDiario.dsDiario
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox14: TDBCheckBox
          Left = 672
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataField = 'OK_PORTARIA'
          DataSource = dmDiario.dsDiario
          TabOrder = 5
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox16: TDBCheckBox
          Left = 552
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataField = 'RV_PORTARIA'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object BitBtn15: TBitBtn
          Left = 3
          Top = 4
          Width = 100
          Height = 25
          Caption = 'Gerar Escala'
          TabOrder = 0
          OnClick = BitBtn15Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Reclama'#231#245'es'
      ImageIndex = 7
      object SMDBGrid9: TSMDBGrid
        Left = 0
        Top = 0
        Width = 776
        Height = 212
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Visible = False
        OnDblClick = SMDBGrid7DblClick
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
        ColCount = 3
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 274
            Visible = True
          end>
      end
      object Panel11: TPanel
        Left = 0
        Top = 212
        Width = 776
        Height = 33
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          776
          33)
        object BitBtn13: TBitBtn
          Left = 3
          Top = 4
          Width = 69
          Height = 25
          Caption = '&Incluir'
          TabOrder = 0
          OnClick = BitBtn13Click
        end
        object BitBtn14: TBitBtn
          Left = 72
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          TabOrder = 1
        end
        object DBCheckBox22: TDBCheckBox
          Left = 400
          Top = 10
          Width = 147
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ENCERRAR TURNO'
          DataSource = dmDiario.dsDiario
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox23: TDBCheckBox
          Left = 672
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'SUPERVISOR'
          DataSource = dmDiario.dsDiario
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object DBCheckBox24: TDBCheckBox
          Left = 552
          Top = 10
          Width = 100
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'REVISADO'
          DataSource = dmDiario.dsDiario
          Enabled = False
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 388
    Width = 784
    Height = 143
    Align = alBottom
    DataField = 'OBS'
    DataSource = dmDiario.dsDiario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Panel7: TPanel
    Left = 0
    Top = 362
    Width = 784
    Height = 26
    Align = alBottom
    TabOrder = 4
    DesignSize = (
      784
      26)
    object Label5: TLabel
      Left = 268
      Top = 4
      Width = 254
      Height = 19
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      Caption = 'OBSERVA'#199#213'ES GERAIS ABAIXO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Diario'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 228
    Top = 528
  end
  object sdsAgente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE AGENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 366
    Top = 20
    object sdsAgenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspAgente: TDataSetProvider
    DataSet = sdsAgente
    Left = 390
    Top = 20
  end
  object cdsAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 414
    Top = 20
    object cdsAgenteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsAgente: TDataSource
    DataSet = cdsAgente
    Left = 437
    Top = 20
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 472
    Top = 16
    object Ronda1: TMenuItem
      Caption = '&Ronda'
      OnClick = Ronda1Click
    end
    object Monitoramento1: TMenuItem
      Caption = '&Monitoramento'
      OnClick = Monitoramento1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Limpar1: TMenuItem
      Caption = '&Limpar'
      OnClick = Limpar1Click
    end
  end
  object PopupMenu2: TPopupMenu
    AutoHotkeys = maManual
    Left = 500
    Top = 16
    object MenuItem1: TMenuItem
      Caption = '&Ronda'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = '&Monitoramento'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = '&Limpar'
      OnClick = MenuItem4Click
    end
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    Left = 572
    Top = 16
    object MenuItem5: TMenuItem
      Caption = '&Ok'
      ShortCut = 79
      OnClick = MenuItem5Click
    end
    object MenuItem7: TMenuItem
      Caption = '-'
    end
    object MenuItem8: TMenuItem
      Caption = '&Limpar'
    end
  end
end
