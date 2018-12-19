object fViatura: TfViatura
  Left = 192
  Top = 117
  Width = 704
  Height = 480
  Caption = 'fViatura'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 66
    Top = 48
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Placa:'
  end
  object Label3: TLabel
    Left = 30
    Top = 70
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Kilometragem:'
  end
  object Label4: TLabel
    Left = 69
    Top = 92
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Ativo:'
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 40
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PLACA'
    DataSource = dmViatura.dsViatura
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 29
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 160
      Top = 8
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object btSalvar: TBitBtn
      Left = 2
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = btSalvarClick
    end
    object btCancelar: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
    end
    object DBEdit2: TDBEdit
      Left = 178
      Top = 4
      Width = 71
      Height = 21
      Color = clBtnFace
      DataField = 'ID'
      DataSource = dmViatura.dsViatura
      ReadOnly = True
      TabOrder = 2
    end
  end
  object RxDBComboBox2: TRxDBComboBox
    Left = 104
    Top = 84
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'ATIVA'
    DataSource = dmViatura.dsViatura
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'SIM'
      'N'#195'O')
    TabOrder = 2
    Values.Strings = (
      'S'
      'N')
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 62
    Width = 145
    Height = 21
    DataField = 'KM'
    DataSource = dmViatura.dsViatura
    TabOrder = 1
  end
end
