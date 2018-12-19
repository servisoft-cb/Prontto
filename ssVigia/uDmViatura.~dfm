object dmViatura: TdmViatura
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 420
  Top = 113
  Height = 150
  Width = 215
  object sdsViatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM VIG_VIATURA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 32
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
    object sdsViaturaKM: TIntegerField
      FieldName = 'KM'
    end
  end
  object dspViatura: TDataSetProvider
    DataSet = sdsViatura
    Left = 64
    Top = 32
  end
  object cdsViatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViatura'
    Left = 96
    Top = 32
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
    object cdsViaturaKM: TIntegerField
      FieldName = 'KM'
    end
  end
  object dsViatura: TDataSource
    DataSet = cdsViatura
    Left = 128
    Top = 32
  end
end
