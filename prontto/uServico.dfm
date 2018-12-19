object fServico: TfServico
  Left = 475
  Top = 118
  Width = 450
  Height = 361
  Caption = 'Servi'#231'os'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 45
    Top = 23
    Width = 37
    Height = 13
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 31
    Top = 47
    Width = 51
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor hora:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 11
    Top = 71
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Deslocamento:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 47
    Top = 95
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Avulso:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 22
    Top = 119
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'Permanente:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 47
    Top = 151
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Alarme:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 43
    Top = 175
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#226'mera:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 43
    Top = 199
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Portaria:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 4
    Top = 223
    Width = 78
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ronda (PBS):'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 57
    Top = 247
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'Monitoramento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 141
    Top = 213
    Width = 231
    Height = 26
    Caption = 
      'Quando houver parada, ser'#225' obrigat'#243'rio '#13#10'marcar hora da PB no di' +
      #225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 10
    Top = 271
    Width = 120
    Height = 13
    Alignment = taRightJustify
    Caption = 'Abertura ou Fechamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsServico
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 434
    Height = 31
    Align = alBottom
    TabOrder = 11
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
  object JvDBComboBox1: TJvDBComboBox
    Left = 86
    Top = 39
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'VALORHORA'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 1
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox2: TJvDBComboBox
    Left = 86
    Top = 63
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'DESLOCAMENTO'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 2
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox3: TJvDBComboBox
    Left = 86
    Top = 87
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'AVULSO'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 3
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox4: TJvDBComboBox
    Left = 86
    Top = 111
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'PERMANENTE'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 4
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox5: TJvDBComboBox
    Left = 86
    Top = 143
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'ALARME'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 5
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox6: TJvDBComboBox
    Left = 86
    Top = 167
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'CAMERA'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 6
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox7: TJvDBComboBox
    Left = 86
    Top = 191
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'PORTARIA'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 7
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox8: TJvDBComboBox
    Left = 86
    Top = 215
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'RONDA'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 8
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox9: TJvDBComboBox
    Left = 134
    Top = 239
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'MONITORAMENTO'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 9
    Values.Strings = (
      '0'
      '1')
  end
  object JvDBComboBox10: TJvDBComboBox
    Left = 134
    Top = 263
    Width = 50
    Height = 21
    Style = csDropDownList
    DataField = 'ABERTURA'
    DataSource = Dm1.dsServico
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'N'#195'O'
      'SIM')
    TabOrder = 10
    Values.Strings = (
      '0'
      '1')
  end
end
