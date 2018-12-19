object fTelefone: TfTelefone
  Left = 400
  Top = 113
  Width = 450
  Height = 252
  BorderIcons = [biSystemMenu]
  Caption = 'Telefones de Contato'
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
  object Label4: TLabel
    Left = 34
    Top = 95
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-Mail:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 31
    Top = 47
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fone:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 38
    Top = 119
    Width = 28
    Height = 13
    Alignment = taRightJustify
    Caption = 'Setor:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 33
    Top = 71
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ramal:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 70
    Top = 15
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CONTATO'
    DataSource = Dm1.dsTelefone
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 194
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 5
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
    Top = 63
    Width = 60
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RAMAL'
    DataSource = Dm1.dsTelefone
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 70
    Top = 39
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = Dm1.dsTelefone
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 70
    Top = 87
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = Dm1.dsTelefone
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 70
    Top = 111
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SETOR'
    DataSource = Dm1.dsTelefone
    TabOrder = 4
  end
end
