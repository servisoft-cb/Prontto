object Form1: TForm1
  Left = 235
  Top = 141
  Width = 870
  Height = 130
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 52
    Align = alTop
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Pessoas'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Financeiro'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 56
    Width = 97
    Height = 25
    Caption = 'Marcar Inativos'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
end
