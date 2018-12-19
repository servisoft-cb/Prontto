object fPessoaCurso: TfPessoaCurso
  Left = 417
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fPessoaCurso'
  ClientHeight = 308
  ClientWidth = 442
  Color = clMoneyGreen
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
  object Label7: TLabel
    Left = 53
    Top = 23
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Curso:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label7Click
  end
  object Label2: TLabel
    Left = 45
    Top = 46
    Width = 45
    Height = 13
    Caption = 'Dt. Inicio:'
  end
  object Label1: TLabel
    Left = 263
    Top = 46
    Width = 42
    Height = 13
    Caption = 'Dt. Final:'
  end
  object Label3: TLabel
    Left = 22
    Top = 77
    Width = 68
    Height = 13
    Caption = 'Carga Hor'#225'ria:'
  end
  object Label4: TLabel
    Left = 45
    Top = 141
    Width = 45
    Height = 13
    Caption = 'Vlr.Curso:'
  end
  object Label5: TLabel
    Left = 57
    Top = 101
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Turma:'
  end
  object Label6: TLabel
    Left = 17
    Top = 189
    Width = 73
    Height = 13
    Alignment = taRightJustify
    Caption = 'Forma Pgto.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label7Click
  end
  object Label8: TLabel
    Left = 18
    Top = 213
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cond. Pgto.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label7Click
  end
  object Label9: TLabel
    Left = 50
    Top = 165
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Entrada:'
  end
  object Label10: TLabel
    Left = 257
    Top = 141
    Width = 49
    Height = 13
    Alignment = taRightJustify
    Caption = 'Desconto:'
  end
  object Label11: TLabel
    Left = 45
    Top = 237
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 277
    Width = 442
    Height = 31
    Align = alBottom
    TabOrder = 11
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
      Width = 88
      Height = 25
      Caption = 'Gerar cobran'#231'a'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
  end
  object DBEdit8: TDBEdit
    Left = 94
    Top = 69
    Width = 99
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CARGAHORARIA'
    DataSource = Dm1.dsPessoa_Curso
    TabOrder = 3
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 94
    Top = 15
    Width = 315
    Height = 21
    DropDownCount = 15
    DataField = 'CURSO_ID'
    DataSource = Dm1.dsPessoa_Curso
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = Dm1.dsCurso
    TabOrder = 0
    OnChange = JvDBLookupCombo1Change
    OnEnter = JvDBLookupCombo1Enter
  end
  object JvDBDateEdit1: TJvDBDateEdit
    Left = 94
    Top = 38
    Width = 100
    Height = 21
    DataField = 'DTINICIO'
    DataSource = Dm1.dsPessoa_Curso
    NumGlyphs = 2
    TabOrder = 1
  end
  object JvDBDateEdit2: TJvDBDateEdit
    Left = 309
    Top = 38
    Width = 100
    Height = 21
    DataField = 'DTFINAL'
    DataSource = Dm1.dsPessoa_Curso
    NumGlyphs = 2
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 94
    Top = 133
    Width = 99
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLRCURSO'
    DataSource = Dm1.dsPessoa_Curso
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 94
    Top = 93
    Width = 99
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TURMA'
    DataSource = Dm1.dsPessoa_Curso
    TabOrder = 4
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 94
    Top = 181
    Width = 315
    Height = 21
    DropDownCount = 15
    DataField = 'FORMAPGTO_ID'
    DataSource = Dm1.dsPessoa_Curso
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = Dm1.dsFormaPgto
    TabOrder = 8
    OnEnter = JvDBLookupCombo2Enter
  end
  object JvDBLookupCombo3: TJvDBLookupCombo
    Left = 94
    Top = 205
    Width = 315
    Height = 21
    DropDownCount = 15
    DataField = 'CONDPGTO_ID'
    DataSource = Dm1.dsPessoa_Curso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = DmCons.qsCondPgto
    ParentFont = False
    TabOrder = 9
    OnEnter = JvDBLookupCombo3Enter
  end
  object DBEdit3: TDBEdit
    Left = 94
    Top = 157
    Width = 99
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENTRADA'
    DataSource = Dm1.dsPessoa_Curso
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 310
    Top = 133
    Width = 99
    Height = 21
    CharCase = ecUpperCase
    DataField = 'VLRDESCONTO'
    DataSource = Dm1.dsPessoa_Curso
    TabOrder = 6
  end
  object JvDBComboBox2: TJvDBComboBox
    Left = 94
    Top = 229
    Width = 195
    Height = 21
    Style = csDropDownList
    DataField = 'SITUACAO'
    DataSource = Dm1.dsPessoa_Curso
    DropDownCount = 3
    EnableValues = True
    ItemHeight = 13
    Items.Strings = (
      'MATRICULADO'
      'APROVADO'
      'DESISTENTE'
      'REPROVADO')
    TabOrder = 10
    Values.Strings = (
      'MT'
      'AP'
      'DES'
      'REP')
  end
end
