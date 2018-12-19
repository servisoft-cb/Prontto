object dmBairro: TdmBairro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 420
  Top = 113
  Height = 150
  Width = 215
  object sdsBairro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 32
  end
  object dspBairro: TDataSetProvider
    DataSet = sdsBairro
    Left = 64
    Top = 32
  end
  object cdsBairro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBairro'
    Left = 96
    Top = 32
  end
  object dsBairro: TDataSource
    DataSet = cdsBairro
    Left = 128
    Top = 32
  end
end
