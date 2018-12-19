object fPessoaAnamnese: TfPessoaAnamnese
  Left = 133
  Top = 104
  Width = 450
  Height = 400
  Caption = 'Anamnese'
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 335
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 1
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
    Left = 70
    Top = 15
    Width = 313
    Height = 21
    DropDownCount = 8
    DataField = 'ANAMNESE_ID'
    DataSource = Dm1.dsPessoaAnamnese
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsAnamnese
    TabOrder = 0
  end
end
