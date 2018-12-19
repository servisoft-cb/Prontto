object fAgente: TfAgente
  Left = 274
  Top = 110
  Width = 450
  Height = 180
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fAgente'
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
    Top = 63
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
  object Label4: TLabel
    Left = 65
    Top = 16
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object DBText1: TDBText
    Left = 86
    Top = 12
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'ID'
    DataSource = Dm1.dsPessoa
    ParentColor = False
  end
  object Label9: TLabel
    Left = 38
    Top = 87
    Width = 44
    Height = 13
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 38
    Top = 39
    Width = 44
    Height = 13
    Alignment = taRightJustify
    Caption = 'C'#243'digo:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 55
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = Dm1.dsPessoa
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 111
    Width = 434
    Height = 31
    Align = alBottom
    TabOrder = 2
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
    Left = 86
    Top = 79
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'CIDADE'
    DataSource = Dm1.dsPessoa
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsCidade
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 31
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CODIGO'
    DataSource = Dm1.dsPessoa
    TabOrder = 3
  end
end
