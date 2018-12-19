object dmReclamacao: TdmReclamacao
  OldCreateOrder = False
  Left = 420
  Top = 113
  Height = 150
  Width = 215
  object sdsReclamacao: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 32
    Top = 32
  end
  object dspReclamacao: TDataSetProvider
    DataSet = sdsReclamacao
    Left = 64
    Top = 32
  end
  object cdsReclamacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReclamacao'
    Left = 96
    Top = 32
  end
  object dsReclamacao: TDataSource
    DataSet = cdsReclamacao
    Left = 128
    Top = 32
  end
end
