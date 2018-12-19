object dmAgente: TdmAgente
  OldCreateOrder = False
  Left = 420
  Top = 113
  Height = 307
  Width = 392
  object sdsAgente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 32
  end
  object dspAgente: TDataSetProvider
    DataSet = sdsAgente
    Left = 64
    Top = 32
  end
  object cdsAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 96
    Top = 32
  end
  object dsAgente: TDataSource
    DataSet = cdsAgente
    Left = 128
    Top = 32
  end
end
