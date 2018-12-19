object fCidade: TfCidade
  Left = 326
  Top = 215
  Width = 450
  Height = 443
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 29
    Top = 23
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 35
    Top = 71
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Pa'#237's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 30
    Top = 95
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'ISSQN:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 20
    Top = 47
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Estado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 133
    Top = 39
    Width = 23
    Height = 22
    Caption = '...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Label6: TLabel
    Left = 32
    Top = 144
    Width = 53
    Height = 13
    Caption = 'C'#243'd.Pra'#231'a:'
  end
  object Label7: TLabel
    Left = 40
    Top = 166
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object Label9: TLabel
    Left = -2
    Top = 188
    Width = 87
    Height = 13
    Caption = 'Tipo de cobran'#231'a:'
  end
  object Label2: TLabel
    Left = 13
    Top = 211
    Width = 72
    Height = 13
    Caption = 'Dt.Atualiza'#231#227'o:'
  end
  object Label11: TLabel
    Left = 316
    Top = 166
    Width = 30
    Height = 13
    Caption = 'Posto:'
  end
  object Label10: TLabel
    Left = 193
    Top = 144
    Width = 153
    Height = 13
    Caption = 'Cooperativa de cr'#233'dito/ag'#234'ncia:'
  end
  object DBEdit1: TDBEdit
    Left = 70
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsCidade
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 385
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 4
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
  object DBEdit4: TDBEdit
    Left = 70
    Top = 87
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PERISSQN'
    DataSource = Dm1.dsCidade
    TabOrder = 3
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 70
    Top = 39
    Width = 60
    Height = 21
    DropDownCount = 20
    DataField = 'UF'
    DataSource = Dm1.dsCidade
    LookupField = 'UF'
    LookupDisplay = 'UF'
    LookupSource = DmCons.qsUF
    TabOrder = 1
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 70
    Top = 63
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'CODPAIS'
    DataSource = Dm1.dsCidade
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsPais
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 88
    Top = 136
    Width = 81
    Height = 21
    DataField = 'CodPracaSicredi'
    DataSource = Dm1.dsCidade
    MaxLength = 6
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 347
    Top = 158
    Width = 63
    Height = 21
    DataField = 'PostoSicredi'
    DataSource = Dm1.dsCidade
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 347
    Top = 136
    Width = 63
    Height = 21
    DataField = 'CooperativaSicredi'
    DataSource = Dm1.dsCidade
    TabOrder = 7
  end
  object JvDBComboBox2: TJvDBComboBox
    Left = 88
    Top = 181
    Width = 225
    Height = 21
    Style = csDropDownList
    DataField = 'TipoCobSicredi'
    DataSource = Dm1.dsCidade
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Sicredi'
      'Banco correspondente')
    TabOrder = 8
    Values.Strings = (
      'A'
      'B')
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 88
    Top = 159
    Width = 225
    Height = 21
    Style = csDropDownList
    DataField = 'SitSicredi'
    DataSource = Dm1.dsCidade
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'Ativa'
      'Inativa'
      'A ser desativada')
    TabOrder = 9
    Values.Strings = (
      'A'
      'B'
      'C')
  end
  object JvDBDateTimePicker1: TJvDBDateTimePicker
    Left = 88
    Top = 203
    Width = 105
    Height = 21
    Date = 0.732626400465960600
    Time = 0.732626400465960600
    TabOrder = 10
    DataField = 'DtAltSicredi'
    DataSource = Dm1.dsCidade
  end
end
