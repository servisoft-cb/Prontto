object fAgente: TfAgente
  Left = 192
  Top = 117
  Width = 704
  Height = 480
  Caption = 'fAgente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 65
    Top = 48
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 40
    Width = 369
    Height = 21
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 696
    Height = 29
    Align = alTop
    TabOrder = 1
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
    end
    object btCancelar: TBitBtn
      Left = 77
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 178
      Top = 4
      Width = 71
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
  end
end
