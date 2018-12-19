object fDiarioRevisado: TfDiarioRevisado
  Left = 441
  Top = 210
  Width = 425
  Height = 232
  Caption = 'fDiarioRevisado'
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
    Left = 8
    Top = 24
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Revisado por:'
  end
  object Label2: TLabel
    Left = 8
    Top = 49
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#245'es:'
  end
  object BitBtn1: TBitBtn
    Left = 129
    Top = 161
    Width = 75
    Height = 25
    Hint = 'Finaliza o di'#225'rio'
    Caption = '&Finalizar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object DBMemo1: TDBMemo
    Left = 10
    Top = 65
    Width = 385
    Height = 89
    DataField = 'OBS_REVISAO'
    DataSource = dmDiario.dsDiario
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 204
    Top = 161
    Width = 75
    Height = 25
    Caption = 'Ca&ncelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBEdit1: TDBEdit
    Left = 79
    Top = 16
    Width = 121
    Height = 21
    DataField = 'REVISADO_POR'
    DataSource = dmDiario.dsmDiario
    ReadOnly = True
    TabOrder = 3
  end
end
