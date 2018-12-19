object fAlarme: TfAlarme
  Left = 400
  Top = 113
  Width = 450
  Height = 400
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Alarme'
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
    Left = 61
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
    Left = 54
    Top = 47
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fone 1:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 62
    Top = 71
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fone 2:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 62
    Top = 95
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fone 3:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 39
    Top = 119
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 68
    Top = 143
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bairro:'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 54
    Top = 167
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 31
    Top = 191
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Melhor trajeto:'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 57
    Top = 271
    Width = 41
    Height = 13
    Alignment = taRightJustify
    Caption = 'Senha:'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 18
    Top = 295
    Width = 80
    Height = 13
    Alignment = taRightJustify
    Caption = 'Contra-senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 102
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME_EXIBICAO'
    DataSource = Dm1.dsAlarme
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 342
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 10
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
  object DBEdit2: TDBEdit
    Left = 102
    Top = 39
    Width = 150
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FONE1'
    DataSource = Dm1.dsAlarme
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 102
    Top = 63
    Width = 150
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FONE2'
    DataSource = Dm1.dsAlarme
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 102
    Top = 87
    Width = 150
    Height = 21
    CharCase = ecUpperCase
    DataField = 'FONE3'
    DataSource = Dm1.dsAlarme
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 102
    Top = 111
    Width = 315
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = Dm1.dsAlarme
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 102
    Top = 135
    Width = 315
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = Dm1.dsAlarme
    TabOrder = 5
  end
  object DBEdit8: TDBEdit
    Left = 102
    Top = 263
    Width = 315
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SENHA'
    DataSource = Dm1.dsAlarme
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 102
    Top = 287
    Width = 315
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTRASENHA'
    DataSource = Dm1.dsAlarme
    TabOrder = 9
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 102
    Top = 159
    Width = 315
    Height = 21
    DropDownCount = 8
    DataField = 'CIDADE_ID'
    DataSource = Dm1.dsAlarme
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsCidade
    TabOrder = 6
  end
  object DBMemo1: TDBMemo
    Left = 102
    Top = 184
    Width = 315
    Height = 76
    DataField = 'MELHOR_TRAJETO'
    DataSource = Dm1.dsAlarme
    TabOrder = 7
  end
end
