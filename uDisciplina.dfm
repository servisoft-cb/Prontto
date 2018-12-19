object fDisciplina: TfDisciplina
  Left = 321
  Top = 107
  Width = 450
  Height = 200
  BorderIcons = [biSystemMenu]
  Caption = 'Disciplina'
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 450
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
    Left = 33
    Top = 47
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sigla:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 35
    Top = 71
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Carga:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 124
    Top = 71
    Width = 28
    Height = 13
    Caption = 'Horas'
    FocusControl = DBEdit3
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
    Width = 350
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = Dm1.dsDisciplina
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 142
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 3
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
      Caption = 'Can&celar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object DBEdit2: TDBEdit
    Left = 70
    Top = 39
    Width = 150
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SIGLA'
    DataSource = Dm1.dsDisciplina
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 70
    Top = 63
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CARGA_HORARIA'
    DataSource = Dm1.dsDisciplina
    TabOrder = 2
  end
end
