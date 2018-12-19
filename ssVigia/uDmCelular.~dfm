object dmCelular: TdmCelular
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 420
  Top = 113
  Height = 150
  Width = 215
  object sdsCelular: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM VIG_CELULAR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 32
    object sdsCelularID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCelularOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 10
    end
    object sdsCelularNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object sdsCelularATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsCelularDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
  end
  object dspCelular: TDataSetProvider
    DataSet = sdsCelular
    Left = 64
    Top = 32
  end
  object cdsCelular: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCelular'
    OnCalcFields = cdsCelularCalcFields
    Left = 96
    Top = 32
    object cdsCelularID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCelularOPERADORA: TStringField
      FieldName = 'OPERADORA'
      Size = 10
    end
    object cdsCelularNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsCelularATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCelularDDD: TStringField
      FieldName = 'DDD'
      FixedChar = True
      Size = 2
    end
    object cdsCelularclOperadora: TStringField
      FieldKind = fkCalculated
      FieldName = 'clOperadora'
      Size = 15
      Calculated = True
    end
  end
  object dsCelular: TDataSource
    DataSet = cdsCelular
    Left = 128
    Top = 32
  end
end
