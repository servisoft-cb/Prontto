object fPessoaServico: TfPessoaServico
  Left = 332
  Top = 219
  Width = 450
  Height = 400
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Servi'#231'o Contratado'
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
    Left = 49
    Top = 23
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label46: TLabel
    Left = 30
    Top = 47
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data In'#237'cio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 41
    Top = 71
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Fim:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 59
    Top = 92
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label2: TLabel
    Left = 146
    Top = 135
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora inicial'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 214
    Top = 135
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora final'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 60
    Top = 154
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Segunda-feira:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 60
    Top = 178
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ter'#231'a-feira:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 60
    Top = 202
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Quarta-feira:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 60
    Top = 226
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Quinta-feira:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 60
    Top = 250
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Sexta-feira:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 60
    Top = 274
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'S'#225'bado:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label11: TLabel
    Left = 60
    Top = 298
    Width = 80
    Height = 18
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Domingo:'
    Color = clWhite
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 331
    Width = 434
    Height = 31
    Align = alBottom
    TabOrder = 18
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
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 90
    Top = 15
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'SERVICO_ID'
    DataSource = Dm1.dsPessoaServico
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsServico
    TabOrder = 0
    OnEnter = JvDBLookupCombo1Enter
  end
  object JvDBDateEdit2: TJvDBDateEdit
    Left = 91
    Top = 38
    Width = 95
    Height = 21
    DataField = 'DATAINI'
    DataSource = Dm1.dsPessoaServico
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 91
    Top = 62
    Width = 95
    Height = 21
    DataField = 'DATAFIM'
    DataSource = Dm1.dsPessoaServico
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 91
    Top = 86
    Width = 94
    Height = 21
    DataField = 'VALOR'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 142
    Top = 151
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEG_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 4
    OnExit = DBEdit2Exit
  end
  object DBEdit3: TDBEdit
    Left = 206
    Top = 151
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEG_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 5
    OnExit = DBEdit3Exit
  end
  object DBEdit4: TDBEdit
    Left = 142
    Top = 175
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TER_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 206
    Top = 175
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TER_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 7
  end
  object DBEdit6: TDBEdit
    Left = 142
    Top = 199
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUA_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 8
  end
  object DBEdit7: TDBEdit
    Left = 206
    Top = 199
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUA_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 9
  end
  object DBEdit8: TDBEdit
    Left = 142
    Top = 223
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUI_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 10
  end
  object DBEdit9: TDBEdit
    Left = 206
    Top = 223
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUI_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 11
  end
  object DBEdit10: TDBEdit
    Left = 142
    Top = 247
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEX_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 12
  end
  object DBEdit11: TDBEdit
    Left = 206
    Top = 247
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEX_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 13
  end
  object DBEdit12: TDBEdit
    Left = 142
    Top = 271
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SAB_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 14
  end
  object DBEdit13: TDBEdit
    Left = 206
    Top = 271
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SAB_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 15
  end
  object DBEdit14: TDBEdit
    Left = 142
    Top = 295
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOM_HR_INI'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 16
  end
  object DBEdit15: TDBEdit
    Left = 206
    Top = 295
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOM_HR_FIM'
    DataSource = Dm1.dsPessoaServico
    TabOrder = 17
  end
end
