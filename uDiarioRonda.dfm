object fDiarioRonda: TfDiarioRonda
  Left = 397
  Top = 284
  Width = 438
  Height = 233
  Caption = 'fDiarioRonda'
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
  object Label1: TLabel
    Left = 44
    Top = 32
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Viatura:'
  end
  object Label2: TLabel
    Left = 14
    Top = 56
    Width = 66
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observa'#231#245'es:'
  end
  object DBMemo1: TDBMemo
    Left = 16
    Top = 72
    Width = 385
    Height = 89
    DataField = 'OBS'
    DataSource = dmDiario.dsDiarioRonda
    TabOrder = 0
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 86
    Top = 23
    Width = 107
    Height = 21
    DropDownCount = 15
    DataField = 'VIATURA_ID'
    DataSource = dmDiario.dsDiarioRonda
    LookupField = 'ID'
    LookupDisplay = 'PLACA'
    LookupSource = dsViatura
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 163
    Width = 422
    Height = 32
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 78
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Ca&ncelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Hint = 'Finaliza o di'#225'rio'
      Caption = '&Confirmar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object sdsViatura: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM VIATURA'#13#10'WHERE ATIVA = '#39'S'#39#13#10'ORDER BY PLACA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 262
    Top = 16
    object sdsViaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsViaturaATIVA: TStringField
      FieldName = 'ATIVA'
      FixedChar = True
      Size = 1
    end
    object sdsViaturaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
  end
  object dspViatura: TDataSetProvider
    DataSet = sdsViatura
    Left = 286
    Top = 16
  end
  object cdsViatura: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViatura'
    Left = 310
    Top = 16
    object cdsViaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsViaturaATIVA: TStringField
      FieldName = 'ATIVA'
      FixedChar = True
      Size = 1
    end
    object cdsViaturaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
  end
  object dsViatura: TDataSource
    DataSet = cdsViatura
    Left = 333
    Top = 16
  end
end
