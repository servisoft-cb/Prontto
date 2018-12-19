object dmDiario: TdmDiario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 420
  Top = 12
  Height = 624
  Width = 419
  object sdsAgente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME FROM PESSOA WHERE TP_FUNCIONARIO = '#39'S'#39' AND A' +
      'TIVO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 8
  end
  object dspAgente: TDataSetProvider
    DataSet = sdsAgente
    Left = 40
    Top = 8
  end
  object cdsAgente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAgente'
    Left = 72
    Top = 8
    object cdsAgenteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsAgenteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsAgente: TDataSource
    DataSet = cdsAgente
    Left = 104
    Top = 8
  end
  object sdsBairro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM BAIRRO'#13#10'WHERE ID_CIDADE = :C1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'C1'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 56
  end
  object dspBairro: TDataSetProvider
    DataSet = sdsBairro
    Left = 40
    Top = 56
  end
  object cdsBairro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBairro'
    Left = 72
    Top = 56
    object cdsBairroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBairroNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsBairroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
  end
  object dsBairro: TDataSource
    DataSet = cdsBairro
    Left = 104
    Top = 56
  end
  object sdsViatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM VIG_VIATURA WHERE ATIVO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 104
  end
  object dspViatura: TDataSetProvider
    DataSet = sdsViatura
    Left = 40
    Top = 104
  end
  object cdsViatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViatura'
    Left = 72
    Top = 104
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
    Left = 104
    Top = 104
  end
  object sdsCelular: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM VIG_CELULAR WHERE ATIVO = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 152
  end
  object dspCelular: TDataSetProvider
    DataSet = sdsCelular
    Left = 40
    Top = 152
  end
  object cdsCelular: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCelular'
    Left = 72
    Top = 152
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
      Size = 15
    end
  end
  object dsCelular: TDataSource
    DataSet = cdsCelular
    Left = 104
    Top = 152
  end
  object sdsDiario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM VIG_DIARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 200
    object sdsDiarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDiarioDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsDiarioTURNO: TStringField
      FieldName = 'TURNO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioREVISADO_HORA: TTimeField
      FieldName = 'REVISADO_HORA'
    end
    object sdsDiarioREVISADO_POR: TStringField
      FieldName = 'REVISADO_POR'
    end
    object sdsDiarioOPERADOR_RADIO: TStringField
      FieldName = 'OPERADOR_RADIO'
    end
    object sdsDiarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsDiarioOBS_REVISAO: TMemoField
      FieldName = 'OBS_REVISAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsDiarioRV_ALARME: TStringField
      FieldName = 'RV_ALARME'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioRV_ESPECIAL: TStringField
      FieldName = 'RV_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioRV_BAIRRO: TStringField
      FieldName = 'RV_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioRV_CAMERA: TStringField
      FieldName = 'RV_CAMERA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioRV_PORTARIA: TStringField
      FieldName = 'RV_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioRV_RONDA: TStringField
      FieldName = 'RV_RONDA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioRV_VIATURA: TStringField
      FieldName = 'RV_VIATURA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_ALARME: TStringField
      FieldName = 'FC_ALARME'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_ESPECIAL: TStringField
      FieldName = 'FC_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_BAIRRO: TStringField
      FieldName = 'FC_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_CAMERA: TStringField
      FieldName = 'FC_CAMERA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_PORTARIA: TStringField
      FieldName = 'FC_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_RONDA: TStringField
      FieldName = 'FC_RONDA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioFC_VIATURA: TStringField
      FieldName = 'FC_VIATURA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_ALARME: TStringField
      FieldName = 'OK_ALARME'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_BAIRRO: TStringField
      FieldName = 'OK_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_CAMERA: TStringField
      FieldName = 'OK_CAMERA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_ESPECIAL: TStringField
      FieldName = 'OK_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_PORTARIA: TStringField
      FieldName = 'OK_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_RONDA: TStringField
      FieldName = 'OK_RONDA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioOK_VIATURA: TStringField
      FieldName = 'OK_VIATURA'
      FixedChar = True
      Size = 1
    end
  end
  object dspDiario: TDataSetProvider
    DataSet = sdsDiario
    Left = 40
    Top = 200
  end
  object cdsDiario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDiario'
    Left = 72
    Top = 200
    object cdsDiarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDiarioDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDiarioTURNO: TStringField
      FieldName = 'TURNO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioREVISADO_HORA: TTimeField
      FieldName = 'REVISADO_HORA'
    end
    object cdsDiarioREVISADO_POR: TStringField
      FieldName = 'REVISADO_POR'
    end
    object cdsDiarioOPERADOR_RADIO: TStringField
      FieldName = 'OPERADOR_RADIO'
    end
    object cdsDiarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDiarioOBS_REVISAO: TMemoField
      FieldName = 'OBS_REVISAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDiarioRV_ALARME: TStringField
      FieldName = 'RV_ALARME'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioRV_ESPECIAL: TStringField
      FieldName = 'RV_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioRV_BAIRRO: TStringField
      FieldName = 'RV_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioRV_CAMERA: TStringField
      FieldName = 'RV_CAMERA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioRV_PORTARIA: TStringField
      FieldName = 'RV_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioRV_RONDA: TStringField
      FieldName = 'RV_RONDA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioRV_VIATURA: TStringField
      FieldName = 'RV_VIATURA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_ALARME: TStringField
      FieldName = 'FC_ALARME'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_ESPECIAL: TStringField
      FieldName = 'FC_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_BAIRRO: TStringField
      FieldName = 'FC_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_CAMERA: TStringField
      FieldName = 'FC_CAMERA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_PORTARIA: TStringField
      FieldName = 'FC_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_RONDA: TStringField
      FieldName = 'FC_RONDA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioFC_VIATURA: TStringField
      FieldName = 'FC_VIATURA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_ALARME: TStringField
      FieldName = 'OK_ALARME'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_BAIRRO: TStringField
      FieldName = 'OK_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_CAMERA: TStringField
      FieldName = 'OK_CAMERA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_ESPECIAL: TStringField
      FieldName = 'OK_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_PORTARIA: TStringField
      FieldName = 'OK_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_RONDA: TStringField
      FieldName = 'OK_RONDA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioOK_VIATURA: TStringField
      FieldName = 'OK_VIATURA'
      FixedChar = True
      Size = 1
    end
    object cdsDiariosdsDiarioBairro: TDataSetField
      FieldName = 'sdsDiarioBairro'
    end
    object cdsDiariosdsDiarioAlarme: TDataSetField
      FieldName = 'sdsDiarioAlarme'
    end
    object cdsDiariosdsDiarioCelular: TDataSetField
      FieldName = 'sdsDiarioCelular'
    end
    object cdsDiariosdsDiarioEspecial: TDataSetField
      FieldName = 'sdsDiarioEspecial'
    end
    object cdsDiariosdsDiarioViatura: TDataSetField
      FieldName = 'sdsDiarioViatura'
    end
    object cdsDiariosdsDiarioRonda: TDataSetField
      FieldName = 'sdsDiarioRonda'
    end
    object cdsDiariosdsDiarioPortaria: TDataSetField
      FieldName = 'sdsDiarioPortaria'
    end
  end
  object dsDiario: TDataSource
    DataSet = cdsDiario
    Left = 104
    Top = 200
  end
  object dsmDiario: TDataSource
    DataSet = sdsDiario
    Left = 136
    Top = 200
  end
  object sdsDiarioAlarme: TSQLDataSet
    CommandText = 'SELECT * FROM VIG_DIARIO_ALARME'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 248
  end
  object cdsDiarioAlarme: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioAlarme
    Params = <>
    Left = 72
    Top = 248
    object cdsDiarioAlarmeDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioAlarmePESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Required = True
    end
    object cdsDiarioAlarmeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDiarioAlarmeAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsDiarioAlarmeHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsDiarioAlarmeSA: TStringField
      FieldName = 'SA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioAlarmeCA: TStringField
      FieldName = 'CA'
      Size = 100
    end
    object cdsDiarioAlarmeAPBM: TStringField
      FieldName = 'APBM'
      FixedChar = True
      Size = 1
    end
  end
  object dsDiarioAlarme: TDataSource
    DataSet = cdsDiarioAlarme
    Left = 104
    Top = 248
  end
  object sdsDiarioCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM VIG_DIARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 184
    Top = 200
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object DateField1: TDateField
      FieldName = 'DATA'
    end
    object StringField1: TStringField
      FieldName = 'TURNO'
      FixedChar = True
      Size = 1
    end
    object TimeField1: TTimeField
      FieldName = 'REVISADO_HORA'
    end
    object StringField2: TStringField
      FieldName = 'REVISADO_POR'
    end
    object StringField3: TStringField
      FieldName = 'OPERADOR_RADIO'
    end
    object MemoField1: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object MemoField2: TMemoField
      FieldName = 'OBS_REVISAO'
      BlobType = ftMemo
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'RV_ALARME'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'RV_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'RV_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'RV_CAMERA'
      FixedChar = True
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'RV_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'RV_RONDA'
      FixedChar = True
      Size = 1
    end
    object StringField10: TStringField
      FieldName = 'RV_VIATURA'
      FixedChar = True
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'FC_ALARME'
      FixedChar = True
      Size = 1
    end
    object StringField12: TStringField
      FieldName = 'FC_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'FC_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object StringField14: TStringField
      FieldName = 'FC_CAMERA'
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      FieldName = 'FC_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object StringField16: TStringField
      FieldName = 'FC_RONDA'
      FixedChar = True
      Size = 1
    end
    object StringField17: TStringField
      FieldName = 'FC_VIATURA'
      FixedChar = True
      Size = 1
    end
    object StringField18: TStringField
      FieldName = 'OK_ALARME'
      FixedChar = True
      Size = 1
    end
    object StringField19: TStringField
      FieldName = 'OK_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object StringField20: TStringField
      FieldName = 'OK_CAMERA'
      FixedChar = True
      Size = 1
    end
    object StringField21: TStringField
      FieldName = 'OK_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object StringField22: TStringField
      FieldName = 'OK_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object StringField23: TStringField
      FieldName = 'OK_RONDA'
      FixedChar = True
      Size = 1
    end
    object StringField24: TStringField
      FieldName = 'OK_VIATURA'
      FixedChar = True
      Size = 1
    end
  end
  object dspDiarioCons: TDataSetProvider
    DataSet = sdsDiarioCons
    Left = 216
    Top = 200
  end
  object cdsDiarioCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDiario'
    Left = 248
    Top = 200
    object cdsDiarioConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDiarioConsDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsDiarioConsTURNO: TStringField
      FieldName = 'TURNO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsREVISADO_HORA: TTimeField
      FieldName = 'REVISADO_HORA'
    end
    object cdsDiarioConsREVISADO_POR: TStringField
      FieldName = 'REVISADO_POR'
    end
    object cdsDiarioConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsDiarioCons: TDataSource
    DataSet = cdsDiarioCons
    Left = 280
    Top = 200
  end
  object sdsDiarioBairro: TSQLDataSet
    CommandText = 'SELECT * FROM VIG_DIARIO_BAIRRO'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 296
  end
  object cdsDiarioBairro: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioBairro
    Params = <>
    Left = 72
    Top = 296
    object cdsDiarioBairroDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioBairroBAIRRO_ID: TIntegerField
      FieldName = 'BAIRRO_ID'
      Required = True
    end
    object cdsDiarioBairroVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
    end
    object cdsDiarioBairroHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsDiarioBairroOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsDiarioBairroTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDiarioBairro: TDataSource
    DataSet = cdsDiarioBairro
    Left = 104
    Top = 296
  end
  object sdsDiarioCelular: TSQLDataSet
    CommandText = 'SELECT * FROM VIG_DIARIO_CELULAR'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 344
    object sdsDiarioCelularDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object sdsDiarioCelularCELULAR_ID: TIntegerField
      FieldName = 'CELULAR_ID'
      Required = True
    end
    object sdsDiarioCelularCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
  end
  object cdsDiarioCelular: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioCelular
    Params = <>
    Left = 72
    Top = 344
    object cdsDiarioCelularDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioCelularCELULAR_ID: TIntegerField
      FieldName = 'CELULAR_ID'
      Required = True
    end
    object cdsDiarioCelularCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      Precision = 15
      Size = 2
    end
  end
  object dsDiarioCelular: TDataSource
    DataSet = cdsDiarioCelular
    Left = 104
    Top = 344
  end
  object sdsDiarioPortaria: TSQLDataSet
    CommandText = 'SELECT * FROM VIG_DIARIO_PORTARIA'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 440
  end
  object cdsDiarioPortaria: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioPortaria
    Params = <>
    Left = 72
    Top = 440
    object cdsDiarioPortariaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioPortariaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDiarioPortariaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsDiarioPortariaHORA_INI: TTimeField
      FieldName = 'HORA_INI'
    end
    object cdsDiarioPortariaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsDiarioPortariaHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
    end
    object cdsDiarioPortariaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsDiarioPortariaHR_CHEGADA: TTimeField
      FieldName = 'HR_CHEGADA'
    end
    object cdsDiarioPortariaHR_SAIDA: TTimeField
      FieldName = 'HR_SAIDA'
    end
  end
  object dsDiarioPortaria: TDataSource
    DataSet = cdsDiarioPortaria
    Left = 104
    Top = 440
  end
  object sdsDiarioRonda: TSQLDataSet
    CommandText = 'SELECT * FROM VIG_DIARIO_RONDA'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 488
  end
  object cdsDiarioRonda: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioRonda
    Params = <>
    Left = 72
    Top = 488
    object cdsDiarioRondaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioRondaPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      Required = True
    end
    object cdsDiarioRondaVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
    end
    object cdsDiarioRondaHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsDiarioRondaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsDiarioRondaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDiarioRonda: TDataSource
    DataSet = cdsDiarioRonda
    Left = 104
    Top = 488
  end
  object sdsDiarioViatura: TSQLDataSet
    CommandText = 
      'SELECT DV.*, P.NOME AGENTE, V.PLACA'#13#10'FROM VIG_DIARIO_VIATURA DV'#13 +
      #10'INNER JOIN PESSOA P ON (DV.AGENTE_ID = P.CODIGO)'#13#10'INNER JOIN VI' +
      'G_VIATURA V ON (DV.VIATURA_ID = V.ID)'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 536
    object sdsDiarioViaturaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object sdsDiarioViaturaVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
      Required = True
    end
    object sdsDiarioViaturaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object sdsDiarioViaturaKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object sdsDiarioViaturaKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object sdsDiarioViaturaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsDiarioViaturaAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 60
    end
    object sdsDiarioViaturaPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
  end
  object cdsDiarioViatura: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioViatura
    Params = <>
    Left = 72
    Top = 536
    object cdsDiarioViaturaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioViaturaVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
      Required = True
    end
    object cdsDiarioViaturaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsDiarioViaturaKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
    end
    object cdsDiarioViaturaKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
    end
    object cdsDiarioViaturaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsDiarioViaturaAGENTE: TStringField
      FieldName = 'AGENTE'
      Size = 60
    end
    object cdsDiarioViaturaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
  end
  object dsDiarioViatura: TDataSource
    DataSet = cdsDiarioViatura
    Left = 104
    Top = 536
  end
  object sdsDiarioEspecial: TSQLDataSet
    CommandText = 'SELECT * FROM VIG_DIARIO_ESPECIAL'#13#10'WHERE DIARIO_ID = :ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 8
    Top = 392
  end
  object cdsDiarioEspecial: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioEspecial
    Params = <>
    Left = 72
    Top = 392
    object cdsDiarioEspecialDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      Required = True
    end
    object cdsDiarioEspecialCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      Required = True
    end
    object cdsDiarioEspecialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDiarioEspecialMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object cdsDiarioEspecialAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsDiarioEspecialSA: TStringField
      FieldName = 'SA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioEspecialPROCEDIMENTO: TStringField
      FieldName = 'PROCEDIMENTO'
      Size = 100
    end
    object cdsDiarioEspecialAPBM: TStringField
      FieldName = 'APBM'
      FixedChar = True
      Size = 1
    end
  end
  object dsDiarioEspecial: TDataSource
    DataSet = cdsDiarioEspecial
    Left = 104
    Top = 392
  end
end
