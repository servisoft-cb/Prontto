object fDiarioViatura: TfDiarioViatura
  Left = 346
  Top = 211
  Width = 508
  Height = 211
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiarioViatura'
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 80
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Km Inicial:'
  end
  object Label2: TLabel
    Left = 53
    Top = 102
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Km Final:'
  end
  object Label3: TLabel
    Left = 35
    Top = 124
    Width = 61
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#227'o:'
  end
  object Label4: TLabel
    Left = 59
    Top = 58
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Agente:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 29
    Align = alTop
    TabOrder = 1
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
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 72
    Width = 145
    Height = 21
    DataField = 'KM_FINAL'
    DataSource = dmDiario.dsDiarioViatura
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 94
    Width = 145
    Height = 21
    DataField = 'KM_FINAL'
    DataSource = dmDiario.dsDiarioViatura
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 116
    Width = 369
    Height = 21
    DataField = 'KM_FINAL'
    DataSource = dmDiario.dsDiarioViatura
    TabOrder = 4
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 104
    Top = 50
    Width = 369
    Height = 21
    DropDownCount = 8
    DataField = 'AGENTE_ID'
    DataSource = dmDiario.dsDiarioViatura
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    LookupSource = dmDiario.dsAgente
    TabOrder = 0
  end
end
