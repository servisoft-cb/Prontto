object fOrcServPerm: TfOrcServPerm
  Left = 147
  Top = 104
  Width = 450
  Height = 400
  Caption = 'Servi'#231'os'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 50
    Top = 15
    Width = 48
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Servi'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label1Click
  end
  object Label4: TLabel
    Left = 73
    Top = 87
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Qtd:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 146
    Top = 135
    Width = 52
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora inicial'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 214
    Top = 135
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora final'
    FocusControl = DBEdit2
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
  object Label12: TLabel
    Left = 64
    Top = 111
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor:'
    FocusControl = DBEdit16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 174
    Top = 87
    Width = 89
    Height = 13
    Caption = '(Efetivo ou rondas)'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 63
    Top = 39
    Width = 35
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Escala:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = Label14Click
  end
  object Label15: TLabel
    Left = 11
    Top = 63
    Width = 87
    Height = 13
    Alignment = taRightJustify
    Caption = 'Horas mensais:'
    FocusControl = DBEdit17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 174
    Top = 63
    Width = 122
    Height = 13
    Caption = 'Horas em formato decimal'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 342
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 19
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
    Left = 102
    Top = 79
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QTD'
    DataSource = Dm1.dsPedidoServicoPermanente
    MaxLength = 3
    TabOrder = 3
    OnExit = DBEdit4Exit
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 102
    Top = 7
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'SERVICO_ID'
    DataSource = Dm1.dsPedidoServicoPermanente
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsServico
    TabOrder = 0
    OnEnter = JvDBLookupCombo1Enter
    OnExit = JvDBLookupCombo1Exit
  end
  object DBEdit1: TDBEdit
    Left = 142
    Top = 151
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEG_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnExit = DBEdit1Exit
  end
  object DBEdit2: TDBEdit
    Left = 206
    Top = 151
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEG_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 6
    OnExit = DBEdit2Exit
  end
  object DBEdit3: TDBEdit
    Left = 142
    Top = 175
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TER_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 206
    Top = 175
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TER_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 8
    OnExit = DBEdit5Exit
  end
  object DBEdit6: TDBEdit
    Left = 142
    Top = 199
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUA_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 9
  end
  object DBEdit7: TDBEdit
    Left = 206
    Top = 199
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUA_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 10
    OnExit = DBEdit5Exit
  end
  object DBEdit8: TDBEdit
    Left = 142
    Top = 223
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUI_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 11
  end
  object DBEdit9: TDBEdit
    Left = 206
    Top = 223
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'QUI_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 12
    OnExit = DBEdit5Exit
  end
  object DBEdit10: TDBEdit
    Left = 142
    Top = 247
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEX_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 13
  end
  object DBEdit11: TDBEdit
    Left = 206
    Top = 247
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SEX_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 14
    OnExit = DBEdit5Exit
  end
  object DBEdit12: TDBEdit
    Left = 142
    Top = 271
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SAB_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 15
  end
  object DBEdit13: TDBEdit
    Left = 206
    Top = 271
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SAB_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 16
    OnExit = DBEdit5Exit
  end
  object DBEdit14: TDBEdit
    Left = 142
    Top = 295
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOM_HR_INI'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 17
  end
  object DBEdit15: TDBEdit
    Left = 206
    Top = 295
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DOM_HR_FIM'
    DataSource = Dm1.dsPedidoServicoPermanente
    PopupMenu = PopupMenu1
    TabOrder = 18
    OnExit = DBEdit5Exit
  end
  object DBEdit16: TDBEdit
    Left = 102
    Top = 103
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLR'
    DataSource = Dm1.dsPedidoServicoPermanente
    TabOrder = 4
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 102
    Top = 31
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'ESCALA_ID'
    DataSource = Dm1.dsPedidoServicoPermanente
    DisplayEmpty = '[N'#227'o aplic'#225'vel]'
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsEscala
    TabOrder = 1
    OnExit = JvDBLookupCombo2Exit
  end
  object DBEdit17: TDBEdit
    Left = 102
    Top = 55
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HORAS'
    DataSource = Dm1.dsPedidoServicoPermanente
    TabOrder = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 56
    object Limpar1: TMenuItem
      Caption = 'Limpar'
      OnClick = Limpar1Click
    end
  end
end
