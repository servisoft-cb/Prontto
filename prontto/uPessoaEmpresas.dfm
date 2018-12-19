object fPessoaEmpresas: TfPessoaEmpresas
  Left = 400
  Top = 113
  Width = 450
  Height = 209
  BorderIcons = [biSystemMenu]
  Caption = 'Empresa do aluno'
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
    Left = 13
    Top = 23
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Empresa:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 28
    Top = 47
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'In'#237'cio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 47
    Top = 71
    Width = 19
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fim:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 0
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
  object JvDBLookupCombo8: TJvDBLookupCombo
    Left = 72
    Top = 15
    Width = 315
    Height = 21
    DropDownCount = 8
    DataField = 'EMPRESA_ID'
    DataSource = Dm1.dsPessoaEmpresas
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsPessoa
    TabOrder = 1
    OnChange = JvDBLookupCombo8Change
    OnEnter = JvDBLookupCombo8Enter
  end
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 72
    Top = 40
    Width = 90
    Height = 21
    DataField = 'DATAINI'
    DataSource = Dm1.dsPessoaEmpresas
    NumGlyphs = 2
    TabOrder = 2
    StartOfWeek = Sun
  end
  object JvDBDateEdit2: TJvDBDateEdit
    Left = 72
    Top = 64
    Width = 90
    Height = 21
    DataField = 'DATAFIM'
    DataSource = Dm1.dsPessoaEmpresas
    NumGlyphs = 2
    TabOrder = 3
    StartOfWeek = Sun
  end
end
