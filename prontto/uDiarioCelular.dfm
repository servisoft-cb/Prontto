object fDiarioCelular: TfDiarioCelular
  Left = 485
  Top = 161
  Width = 454
  Height = 138
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiarioCelular'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 46
    Top = 39
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cr'#233'dito:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 69
    Width = 438
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
    object BitBtn3: TBitBtn
      Left = 153
      Top = 3
      Width = 150
      Height = 25
      Caption = '&Solicitar Cr'#233'dito'
      TabOrder = 2
    end
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 31
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CREDITO'
    DataSource = dmDiario.dsDiarioCelular
    TabOrder = 0
  end
end
