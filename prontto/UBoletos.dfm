object fBoletos: TfBoletos
  Left = 237
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Gera'#231#227'o de Boletos - Ita'#250
  ClientHeight = 533
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label2: TLabel
    Left = 13
    Top = 40
    Width = 54
    Height = 13
    Alignment = taRightJustify
    Caption = 'M'#234's Venc.:'
  end
  object Label3: TLabel
    Left = 292
    Top = 40
    Width = 22
    Height = 13
    Caption = 'Ano:'
  end
  object Label4: TLabel
    Left = 212
    Top = 40
    Width = 19
    Height = 13
    Caption = 'Dia:'
  end
  object Label5: TLabel
    Left = 95
    Top = 509
    Width = 113
    Height = 13
    Caption = 'Caminho da Impressora:'
  end
  object Label6: TLabel
    Left = 95
    Top = 77
    Width = 72
    Height = 13
    Caption = 'Local de Pgto.:'
  end
  object Bevel1: TBevel
    Left = -2
    Top = 61
    Width = 620
    Height = 2
  end
  object Label7: TLabel
    Left = 430
    Top = 40
    Width = 68
    Height = 13
    Caption = 'Data Emiss'#227'o:'
  end
  object Label8: TLabel
    Left = 111
    Top = 116
    Width = 56
    Height = 13
    Caption = 'Instru'#231#227'o 1:'
  end
  object Label9: TLabel
    Left = 111
    Top = 140
    Width = 56
    Height = 13
    Caption = 'Instru'#231#227'o 2:'
  end
  object Label10: TLabel
    Left = 111
    Top = 164
    Width = 56
    Height = 13
    Caption = 'Instru'#231#227'o 3:'
  end
  object Label11: TLabel
    Left = 111
    Top = 188
    Width = 56
    Height = 13
    Caption = 'Instru'#231#227'o 4:'
  end
  object Label12: TLabel
    Left = 111
    Top = 212
    Width = 56
    Height = 13
    Caption = 'Instru'#231#227'o 5:'
  end
  object Label13: TLabel
    Left = 467
    Top = 16
    Width = 31
    Height = 13
    Caption = 'Venc.:'
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 72
    Top = 8
    Width = 329
    Height = 21
    DropDownCount = 15
    LookupField = 'IdCliente'
    LookupDisplay = 'Nome'
    LookupSource = Dm1.dsClienteAcc
    TabOrder = 0
  end
  object JvDBGrid1: TJvDBGrid
    Left = 8
    Top = 276
    Width = 593
    Height = 217
    DataSource = Dm1.dsClienteAcc
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 243
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiaVencimento'
        Title.Alignment = taCenter
        Title.Caption = 'Dia Vencimento'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IdCliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IdTipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IdCidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fax'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPFCNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataNasc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conjuge'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FoneContato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataContrato'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IdFormaPagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiaVencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ativo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Identificacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'senha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lkCidade'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 72
    Top = 32
    Width = 136
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'JANEIRO'
      'FEVEREIRO'
      'MAR'#199'O'
      'ABRIL'
      'MAIO'
      'JUNHO'
      'JULHO'
      'AGOSTO'
      'SETEMBRO'
      'OUTUBRO'
      'NOVEMBRO'
      'DEZEMBRO')
  end
  object JvYearEdit1: TJvYearEdit
    Left = 320
    Top = 32
    Width = 81
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 5
    Value = 2006
    MaxValue = 9999
    MinValue = 0
    HasMaxValue = True
    HasMinValue = True
    WindowsillYear = 71
  end
  object Panel1: TPanel
    Left = 145
    Top = 234
    Width = 336
    Height = 42
    TabOrder = 14
    object BitBtn1: TBitBtn
      Left = 7
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gerar Boleto'
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 82
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 157
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 232
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Gerar Arquivos'
      TabOrder = 3
      OnClick = BitBtn4Click
    end
  end
  object JvIntegerEdit1: TJvIntegerEdit
    Left = 235
    Top = 32
    Width = 52
    Height = 21
    Alignment = taRightJustify
    ReadOnly = False
    TabOrder = 4
    Value = 0
    MaxValue = 0
    MinValue = 0
    HasMaxValue = False
    HasMinValue = False
  end
  object Edit1: TEdit
    Left = 212
    Top = 501
    Width = 329
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 13
    Text = 'C:\LPT1'
  end
  object Edit2: TEdit
    Left = 172
    Top = 69
    Width = 366
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 91
    TabOrder = 7
  end
  object JvDateEdit1: TJvDateEdit
    Left = 503
    Top = 32
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 6
  end
  object Instrucao1: TJvDBLookupCombo
    Left = 172
    Top = 108
    Width = 366
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = Dm1.dsInstrCobranca
    TabOrder = 8
  end
  object Instrucao2: TJvDBLookupCombo
    Left = 172
    Top = 132
    Width = 366
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = Dm1.dsInstrCobranca
    TabOrder = 9
  end
  object Instrucao3: TJvDBLookupCombo
    Left = 172
    Top = 156
    Width = 366
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = Dm1.dsInstrCobranca
    TabOrder = 10
  end
  object Instrucao4: TJvDBLookupCombo
    Left = 172
    Top = 180
    Width = 366
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = Dm1.dsInstrCobranca
    TabOrder = 11
  end
  object Instrucao5: TJvDBLookupCombo
    Left = 172
    Top = 204
    Width = 366
    Height = 21
    DropDownCount = 8
    LookupField = 'ID'
    LookupDisplay = 'DESCRICAO'
    LookupSource = Dm1.dsInstrCobranca
    TabOrder = 12
  end
  object CheckBox1: TCheckBox
    Left = 405
    Top = 17
    Width = 53
    Height = 12
    Alignment = taLeftJustify
    Caption = 'Atraso'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object JvDateEdit2: TJvDateEdit
    Left = 502
    Top = 8
    Width = 95
    Height = 21
    ButtonFlat = False
    NumGlyphs = 2
    TabOrder = 2
  end
end
