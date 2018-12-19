object fClausula: TfClausula
  Left = 206
  Top = 108
  Width = 765
  Height = 533
  Caption = 'Cl'#225'usula'
  Color = clBtnFace
  Constraints.MinHeight = 274
  Constraints.MinWidth = 450
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
  object Label1: TLabel
    Left = 5
    Top = 71
    Width = 62
    Height = 13
    Caption = 'Descri'#231#227'o:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 36
    Top = 47
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 70
    Top = 15
    Width = 519
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsClausula
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 475
    Width = 757
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
  object DBMemo1: TDBMemo
    Left = 0
    Top = 87
    Width = 757
    Height = 388
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataField = 'DESCRICAO'
    DataSource = Dm1.dsClausula
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object JvDBComboBox1: TJvDBComboBox
    Left = 70
    Top = 40
    Width = 283
    Height = 21
    EnableValues = False
    ItemHeight = 13
    Items.Strings = (
      'Partes'
      'Objeto'
      'Per'#237'odo'
      'Pre'#231'o'
      'Resp. Contratada'
      'Resp. Contratante'
      'Obriga'#231#245'es'
      'Disposi'#231#245'es Gerais')
    TabOrder = 1
    Values.Strings = (
      '1'
      '2'
      '2.1'
      '2.2'
      '3'
      '4'
      '5'
      '6')
  end
end
