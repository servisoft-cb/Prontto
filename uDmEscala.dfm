object dmEscala: TdmEscala
  OldCreateOrder = False
  Left = 484
  Top = 155
  Height = 296
  Width = 328
  object sdsEscalaDiaria: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ED.*, P.NOME CLIENTE'#13#10'FROM ESCALA_DIARIA ED'#13#10'INNER JOIN P' +
      'ESSOA P ON (ED.CLIENTE_ID = P.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 16
    object sdsEscalaDiariaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEscalaDiariaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsEscalaDiariaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsEscalaDiariaHR_INI: TTimeField
      FieldName = 'HR_INI'
    end
    object sdsEscalaDiariaHR_FIM: TTimeField
      FieldName = 'HR_FIM'
    end
    object sdsEscalaDiariaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object sdsEscalaDiariaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 40
    end
  end
  object dspEscalaDiaria: TDataSetProvider
    DataSet = sdsEscalaDiaria
    Options = [poCascadeDeletes, poCascadeUpdates]
    Left = 54
    Top = 16
  end
  object cdsEscalaDiaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEscalaDiaria'
    Left = 78
    Top = 16
    object cdsEscalaDiariaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEscalaDiariaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsEscalaDiariaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsEscalaDiariaHR_INI: TTimeField
      FieldName = 'HR_INI'
    end
    object cdsEscalaDiariaHR_FIM: TTimeField
      FieldName = 'HR_FIM'
    end
    object cdsEscalaDiariaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsEscalaDiariaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInKey]
      Size = 40
    end
    object cdsEscalaDiarialkAgente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAgente'
      LookupDataSet = cdsPessoa
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'AGENTE_ID'
      Size = 30
      Lookup = True
    end
  end
  object dsEscalaDiaria: TDataSource
    DataSet = cdsEscalaDiaria
    Left = 101
    Top = 16
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM PESSOA'#13#10'WHERE AGENTE = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 64
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Options = [poCascadeDeletes, poCascadeUpdates]
    Left = 54
    Top = 64
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 78
    Top = 64
    object cdsPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object sdsAvisoEscala: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ED.*, P.NOME CLIENTE'#13#10'FROM ESCALA_DIARIA ED'#13#10'INNER JOIN P' +
      'ESSOA P ON (ED.CLIENTE_ID = P.ID)'#13#10'WHERE ED.DATA = :D1'#13#10'AND HR_I' +
      'NI BETWEEN :H1 AND :H2'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'H1'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'H2'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 112
    object sdsAvisoEscalaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAvisoEscalaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsAvisoEscalaDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsAvisoEscalaHR_INI: TTimeField
      FieldName = 'HR_INI'
    end
    object sdsAvisoEscalaHR_FIM: TTimeField
      FieldName = 'HR_FIM'
    end
    object sdsAvisoEscalaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object sdsAvisoEscalaHR_QAP: TTimeField
      FieldName = 'HR_QAP'
    end
    object sdsAvisoEscalaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 40
    end
  end
  object pdsAvisoEscala: TDataSetProvider
    DataSet = sdsAvisoEscala
    Options = [poCascadeDeletes, poCascadeUpdates]
    Left = 54
    Top = 112
  end
  object cdsAvisoEscala: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsAvisoEscala'
    Left = 78
    Top = 112
    object cdsAvisoEscalaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAvisoEscalaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsAvisoEscalaDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsAvisoEscalaHR_INI: TTimeField
      FieldName = 'HR_INI'
    end
    object cdsAvisoEscalaHR_FIM: TTimeField
      FieldName = 'HR_FIM'
    end
    object cdsAvisoEscalaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsAvisoEscalaHR_QAP: TTimeField
      FieldName = 'HR_QAP'
    end
    object cdsAvisoEscalaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 40
    end
    object cdsAvisoEscalalkAgente: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAgente'
      LookupDataSet = cdsPessoa
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'AGENTE_ID'
      Size = 30
      Lookup = True
    end
  end
  object dsAvisoEscala: TDataSource
    DataSet = cdsAvisoEscala
    Left = 101
    Top = 112
  end
end
