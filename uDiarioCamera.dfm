object fDiarioCamera: TfDiarioCamera
  Left = 485
  Top = 161
  Width = 454
  Height = 227
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'fDiarioCamera'
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
  object Label4: TLabel
    Left = 27
    Top = 114
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Mensagem:'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 47
    Top = 42
    Width = 35
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 23
    Top = 66
    Width = 59
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora queda:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 20
    Top = 90
    Width = 62
    Height = 13
    Alignment = taRightJustify
    Caption = 'Hora retorno:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 65
    Top = 19
    Width = 14
    Height = 13
    Alignment = taRightJustify
    Caption = 'ID:'
  end
  object DBText1: TDBText
    Left = 86
    Top = 15
    Width = 65
    Height = 17
    Color = clWhite
    DataField = 'ID'
    DataSource = dmDiario.dsDiarioCamera
    ParentColor = False
  end
  object Label6: TLabel
    Left = 57
    Top = 138
    Width = 25
    Height = 13
    Alignment = taRightJustify
    Caption = 'Obs.:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 158
    Width = 438
    Height = 31
    Align = alBottom
    TabOrder = 5
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
  object DBEdit3: TDBEdit
    Left = 86
    Top = 106
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MENSAGEM'
    DataSource = dmDiario.dsDiarioCamera
    TabOrder = 3
  end
  object JvDBLookupCombo2: TJvDBLookupCombo
    Left = 86
    Top = 34
    Width = 313
    Height = 21
    DropDownCount = 15
    DataField = 'CLIENTE_ID'
    DataSource = dmDiario.dsDiarioCamera
    LookupField = 'ID'
    LookupDisplay = 'NOME'
    LookupSource = dsCliente
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 86
    Top = 58
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HORA_QUEDA'
    DataSource = dmDiario.dsDiarioCamera
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 86
    Top = 82
    Width = 59
    Height = 21
    CharCase = ecUpperCase
    DataField = 'HORA_RETORNO'
    DataSource = dmDiario.dsDiarioCamera
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 86
    Top = 130
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OBS'
    DataSource = dmDiario.dsDiarioCamera
    TabOrder = 4
  end
  object sdsCliente: TSQLDataSet
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE CLIENTE = '#39'1'#39#13#10'ORDER BY NOME'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 190
    Top = 36
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 214
    Top = 36
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 238
    Top = 36
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 70
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 261
    Top = 36
  end
end
