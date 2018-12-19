object fPessoaAtendimento: TfPessoaAtendimento
  Left = 404
  Top = 155
  Width = 450
  Height = 419
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Atendimento'
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
  DesignSize = (
    442
    392)
  PixelsPerInch = 96
  TextHeight = 13
  object Label46: TLabel
    Left = 37
    Top = 46
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 13
    Top = 70
    Width = 56
    Height = 13
    Alignment = taRightJustify
    Caption = 'Medica'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 142
    Width = 37
    Height = 26
    Alignment = taRightJustify
    Caption = 'Parecer'#13#10'm'#233'dico:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 17
    Top = 214
    Width = 52
    Height = 26
    Alignment = taRightJustify
    Caption = 'Parecer'#13#10'enfermeira:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 3
    Top = 286
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 25
    Top = 17
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 361
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 6
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
  object JvDBDateEdit2: TJvDBDateEdit
    Left = 71
    Top = 37
    Width = 95
    Height = 21
    DataField = 'DATA'
    DataSource = Dm1.dsPessoaAtendimento
    NumGlyphs = 2
    TabOrder = 1
  end
  object DBMemo1: TDBMemo
    Left = 72
    Top = 61
    Width = 378
    Height = 69
    Anchors = [akLeft, akTop, akRight]
    DataField = 'MEDICACAO'
    DataSource = Dm1.dsPessoaAtendimento
    TabOrder = 2
  end
  object DBMemo2: TDBMemo
    Left = 72
    Top = 133
    Width = 378
    Height = 69
    Anchors = [akLeft, akTop, akRight]
    DataField = 'PARECERMEDICO'
    DataSource = Dm1.dsPessoaAtendimento
    TabOrder = 3
  end
  object DBMemo3: TDBMemo
    Left = 72
    Top = 205
    Width = 378
    Height = 69
    Anchors = [akLeft, akTop, akRight]
    DataField = 'PARECERENFERMEIRA'
    DataSource = Dm1.dsPessoaAtendimento
    TabOrder = 4
  end
  object DBMemo4: TDBMemo
    Left = 72
    Top = 277
    Width = 378
    Height = 69
    Anchors = [akLeft, akTop, akRight]
    DataField = 'OBS'
    DataSource = Dm1.dsPessoaAtendimento
    TabOrder = 5
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 73
    Top = 9
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'PESSOA_ID'
    DataSource = Dm1.dsPessoaAtendimento
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsPessoa
    TabOrder = 0
    OnEnter = JvDBLookupCombo1Enter
  end
end
