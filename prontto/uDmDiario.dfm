object dmDiario: TdmDiario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 571
  Top = 196
  Height = 418
  Width = 624
  object sdsDiario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT D.*, D.ID AS DIARIO_ID'#13#10'FROM DIARIO D'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 16
    object sdsDiarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = []
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
    Options = [poCascadeDeletes, poCascadeUpdates]
    OnUpdateError = dspDiarioUpdateError
    Left = 54
    Top = 16
  end
  object cdsDiario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDiario'
    BeforeDelete = cdsDiarioBeforeDelete
    Left = 78
    Top = 16
    object cdsDiarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = []
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
    object cdsDiariosdsDiarioBairro: TDataSetField
      FieldName = 'sdsDiarioBairro'
    end
    object cdsDiariosdsDiarioViatura: TDataSetField
      FieldName = 'sdsDiarioViatura'
    end
    object cdsDiariosdsDiarioAlarme: TDataSetField
      FieldName = 'sdsDiarioAlarme'
    end
    object cdsDiariosdsDiarioRonda: TDataSetField
      FieldName = 'sdsDiarioRonda'
    end
    object cdsDiariosdsDiarioCamera: TDataSetField
      FieldName = 'sdsDiarioCamera'
    end
    object cdsDiariosdsDiarioEspecial: TDataSetField
      FieldName = 'sdsDiarioEspecial'
    end
    object cdsDiariosdsDiarioPortaria: TDataSetField
      FieldName = 'sdsDiarioPortaria'
    end
    object cdsDiariosdsDiarioCelular: TDataSetField
      FieldName = 'sdsDiarioCelular'
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
  end
  object dsDiario: TDataSource
    DataSet = cdsDiario
    Left = 101
    Top = 16
  end
  object dsmDiario: TDataSource
    DataSet = sdsDiario
    Left = 128
    Top = 16
  end
  object sdsDiarioViatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DV.*, V.PLACA VIATURA, P.NOME AGENTE'#13#10'FROM DIARIO_VIATURA' +
      ' DV'#13#10'INNER JOIN VIATURA V ON (V.ID = DV.VIATURA_ID)'#13#10'LEFT JOIN P' +
      'ESSOA P ON (P.ID = DV.AGENTE_ID)'#13#10'WHERE DIARIO_ID = :DIARIO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 64
    object sdsDiarioViaturaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioViaturaVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object sdsDiarioViaturaVIATURA: TStringField
      FieldName = 'VIATURA'
      ProviderFlags = []
      Size = 10
    end
    object sdsDiarioViaturaAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object cdsDiarioViatura: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioViatura
    Params = <>
    OnCalcFields = cdsDiarioViaturaCalcFields
    Left = 54
    Top = 64
    object cdsDiarioViaturaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioViaturaVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsDiarioViaturaVIATURA: TStringField
      FieldName = 'VIATURA'
      ProviderFlags = []
      Size = 10
    end
    object cdsDiarioViaturaAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 70
    end
    object cdsDiarioViaturaclKmTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'clKmTotal'
      Calculated = True
    end
  end
  object dsDiarioViatura: TDataSource
    DataSet = cdsDiarioViatura
    Left = 77
    Top = 64
  end
  object sdsDiarioBairro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DB.*, B.NOME BAIRRO, V.PLACA'#13#10'FROM DIARIO_BAIRRO DB'#13#10'INNE' +
      'R JOIN BAIRRO B ON (DB.BAIRRO_ID = B.ID)'#13#10'LEFT JOIN VIATURA V ON' +
      ' (DB.VIATURA_ID = V.ID)'#13#10'WHERE DB.DIARIO_ID = :DIARIO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 112
    object sdsDiarioBairroDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioBairroBAIRRO_ID: TIntegerField
      FieldName = 'BAIRRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioBairroVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
    end
    object sdsDiarioBairroHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsDiarioBairroOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsDiarioBairroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object sdsDiarioBairroPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sdsDiarioBairroTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsDiarioBairro: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioBairro
    IndexFieldNames = 'BAIRRO'
    Params = <>
    Left = 54
    Top = 112
    object cdsDiarioBairroDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioBairroBAIRRO_ID: TIntegerField
      FieldName = 'BAIRRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsDiarioBairroBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsDiarioBairroPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cdsDiarioBairroTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDiarioBairro: TDataSource
    DataSet = cdsDiarioBairro
    Left = 77
    Top = 112
  end
  object sdsDiarioRonda: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DR.*, P.NOME CLIENTE, V.PLACA'#13#10'FROM DIARIO_RONDA DR'#13#10'INNE' +
      'R JOIN PESSOA P ON (P.ID = DR.PESSOA_ID)'#13#10'LEFT JOIN VIATURA V ON' +
      ' (DR.VIATURA_ID = V.ID)'#13#10'WHERE DIARIO_ID = :DIARIO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 174
    Top = 64
    object sdsDiarioRondaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioRondaPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioRondaVIATURA_ID: TIntegerField
      FieldName = 'VIATURA_ID'
    end
    object sdsDiarioRondaHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsDiarioRondaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsDiarioRondaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object sdsDiarioRondaPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object sdsDiarioRondaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsDiarioRonda: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioRonda
    IndexFieldNames = 'CLIENTE'
    Params = <>
    Left = 198
    Top = 64
    object cdsDiarioRondaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioRondaPESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsDiarioRondaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object cdsDiarioRondaPLACA: TStringField
      FieldName = 'PLACA'
      ProviderFlags = []
      Size = 10
    end
    object cdsDiarioRondaTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object dsDiarioRonda: TDataSource
    DataSet = cdsDiarioRonda
    Left = 221
    Top = 64
  end
  object sdsDiarioAlarme: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DA.*, P.NOME AS CLIENTE, A.NOME AS AGENTE'#13#10'FROM DIARIO_AL' +
      'ARME DA'#13#10'INNER JOIN PESSOA P ON (P.ID = DA.PESSOA_ID)'#13#10'INNER JOI' +
      'N PESSOA A ON (A.ID = DA.AGENTE_ID)'#13#10'WHERE DA.DIARIO_ID = :DIARI' +
      'O_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 174
    Top = 112
    object sdsDiarioAlarmeDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioAlarmePESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioAlarmeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioAlarmeAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object sdsDiarioAlarmeHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsDiarioAlarmeSA: TStringField
      FieldName = 'SA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioAlarmeCA: TStringField
      FieldName = 'CA'
      Size = 100
    end
    object sdsDiarioAlarmeAPBM: TStringField
      FieldName = 'APBM'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioAlarmeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object sdsDiarioAlarmeAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object cdsDiarioAlarme: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioAlarme
    Params = <>
    Left = 198
    Top = 112
    object cdsDiarioAlarmeDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioAlarmePESSOA_ID: TIntegerField
      FieldName = 'PESSOA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioAlarmeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsDiarioAlarmeCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object cdsDiarioAlarmeAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsDiarioAlarme: TDataSource
    DataSet = cdsDiarioAlarme
    Left = 221
    Top = 112
  end
  object sdsDiarioEspecial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DE.*, P.NOME AS CLIENTE, A.NOME AS AGENTE'#13#10'FROM DIARIO_ES' +
      'PECIAL DE'#13#10'INNER JOIN PESSOA P ON (P.ID = DE.CLIENTE_ID)'#13#10'INNER ' +
      'JOIN PESSOA A ON (A.ID = DE.AGENTE_ID)'#13#10'WHERE DE.DIARIO_ID = :DI' +
      'ARIO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 30
    Top = 160
    object sdsDiarioEspecialDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioEspecialCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioEspecialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioEspecialMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 50
    end
    object sdsDiarioEspecialAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object sdsDiarioEspecialSA: TStringField
      FieldName = 'SA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioEspecialPROCEDIMENTO: TStringField
      FieldName = 'PROCEDIMENTO'
      Size = 100
    end
    object sdsDiarioEspecialAPBM: TStringField
      FieldName = 'APBM'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioEspecialCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object sdsDiarioEspecialAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object cdsDiarioEspecial: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioEspecial
    Params = <>
    Left = 54
    Top = 160
    object cdsDiarioEspecialDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioEspecialCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioEspecialID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cdsDiarioEspecialCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object cdsDiarioEspecialAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsDiarioEspecial: TDataSource
    DataSet = cdsDiarioEspecial
    Left = 77
    Top = 160
  end
  object sdsDiarioCamera: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DC.*, P.NOME AS CLIENTE'#13#10'FROM DIARIO_CAMERA DC'#13#10'INNER JOI' +
      'N PESSOA P ON (P.ID = DC.CLIENTE_ID)'#13#10'WHERE DC.DIARIO_ID = :DIAR' +
      'IO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 174
    Top = 160
    object sdsDiarioCameraDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioCameraCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioCameraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioCameraHORA_QUEDA: TTimeField
      FieldName = 'HORA_QUEDA'
    end
    object sdsDiarioCameraMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 100
    end
    object sdsDiarioCameraHORA_RETORNO: TTimeField
      FieldName = 'HORA_RETORNO'
    end
    object sdsDiarioCameraOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsDiarioCameraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object cdsDiarioCamera: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioCamera
    Params = <>
    Left = 198
    Top = 160
    object cdsDiarioCameraDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioCameraCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioCameraID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioCameraHORA_QUEDA: TTimeField
      FieldName = 'HORA_QUEDA'
    end
    object cdsDiarioCameraMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 100
    end
    object cdsDiarioCameraHORA_RETORNO: TTimeField
      FieldName = 'HORA_RETORNO'
    end
    object cdsDiarioCameraOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsDiarioCameraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
  end
  object dsDiarioCamera: TDataSource
    DataSet = cdsDiarioCamera
    Left = 221
    Top = 160
  end
  object sdsDiarioPortaria: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DP.*, P.NOME CLIENTE, A.NOME AGENTE'#13#10'FROM DIARIO_PORTARIA' +
      ' DP'#13#10'INNER JOIN PESSOA P ON (P.ID = DP.CLIENTE_ID)'#13#10'LEFT JOIN PE' +
      'SSOA A ON (DP.AGENTE_ID = A.ID)'#13#10'WHERE DIARIO_ID = :DIARIO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 286
    Top = 64
    object sdsDiarioPortariaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioPortariaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDiarioPortariaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object sdsDiarioPortariaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object sdsDiarioPortariaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object sdsDiarioPortariaHORA_INI: TTimeField
      FieldName = 'HORA_INI'
    end
    object sdsDiarioPortariaHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
    end
    object sdsDiarioPortariaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object sdsDiarioPortariaAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 40
    end
    object sdsDiarioPortariaHR_CHEGADA: TTimeField
      FieldName = 'HR_CHEGADA'
    end
    object sdsDiarioPortariaHR_SAIDA: TTimeField
      FieldName = 'HR_SAIDA'
    end
  end
  object cdsDiarioPortaria: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioPortaria
    Params = <>
    Left = 310
    Top = 64
    object cdsDiarioPortariaDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioPortariaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioPortariaCLIENTE_ID: TIntegerField
      FieldName = 'CLIENTE_ID'
    end
    object cdsDiarioPortariaOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsDiarioPortariaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 70
    end
    object cdsDiarioPortariaHORA_INI: TTimeField
      FieldName = 'HORA_INI'
    end
    object cdsDiarioPortariaHORA_FIM: TTimeField
      FieldName = 'HORA_FIM'
    end
    object cdsDiarioPortariaAGENTE_ID: TIntegerField
      FieldName = 'AGENTE_ID'
    end
    object cdsDiarioPortariaAGENTE: TStringField
      FieldName = 'AGENTE'
      ProviderFlags = []
      Size = 40
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
    Left = 333
    Top = 64
  end
  object sdsDiarioCelular: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT DC.*, C.OPERADORA, C.NUMERO'#13#10'FROM DIARIO_CELULAR DC'#13#10'INNE' +
      'R JOIN CELULAR C ON (C.ID = DC.CELULAR_ID)'#13#10'WHERE DIARIO_ID = :D' +
      'IARIO_ID'
    DataSource = dsmDiario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'DIARIO_ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = Dm1.Conexao
    Left = 286
    Top = 112
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
    object sdsDiarioCelularOPERADORA: TStringField
      FieldName = 'OPERADORA'
      ProviderFlags = []
      Size = 10
    end
    object sdsDiarioCelularNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      Size = 15
    end
  end
  object cdsDiarioCelular: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDiariosdsDiarioCelular
    Params = <>
    Left = 310
    Top = 112
    object cdsDiarioCelularDIARIO_ID: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioCelularCELULAR_ID: TIntegerField
      FieldName = 'CELULAR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDiarioCelularCREDITO: TFMTBCDField
      FieldName = 'CREDITO'
      DisplayFormat = '0.00'
      Precision = 15
      Size = 2
    end
    object cdsDiarioCelularOPERADORA: TStringField
      FieldName = 'OPERADORA'
      ProviderFlags = []
      Size = 10
    end
    object cdsDiarioCelularNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      Size = 15
    end
  end
  object dsDiarioCelular: TDataSource
    DataSet = cdsDiarioCelular
    Left = 333
    Top = 112
  end
  object sdsResumo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT D.*, D.ID AS DIARIO_ID'#13#10'FROM DIARIO D'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 38
    Top = 280
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = []
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
  object dspResumo: TDataSetProvider
    DataSet = sdsResumo
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspDiarioUpdateError
    Left = 62
    Top = 280
  end
  object cdsResumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDiario'
    BeforeDelete = cdsDiarioBeforeDelete
    Left = 86
    Top = 280
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'DIARIO_ID'
      ProviderFlags = []
      Required = True
    end
    object DateField2: TDateField
      FieldName = 'DATA'
    end
    object StringField25: TStringField
      FieldName = 'TURNO'
      FixedChar = True
      Size = 1
    end
    object TimeField2: TTimeField
      FieldName = 'REVISADO_HORA'
    end
    object StringField26: TStringField
      FieldName = 'REVISADO_POR'
    end
    object StringField27: TStringField
      FieldName = 'OPERADOR_RADIO'
    end
    object MemoField3: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object DataSetField1: TDataSetField
      FieldName = 'sdsDiarioBairro'
    end
    object DataSetField2: TDataSetField
      FieldName = 'sdsDiarioViatura'
    end
    object DataSetField3: TDataSetField
      FieldName = 'sdsDiarioAlarme'
    end
    object DataSetField4: TDataSetField
      FieldName = 'sdsDiarioRonda'
    end
    object DataSetField5: TDataSetField
      FieldName = 'sdsDiarioCamera'
    end
    object DataSetField6: TDataSetField
      FieldName = 'sdsDiarioEspecial'
    end
    object DataSetField7: TDataSetField
      FieldName = 'sdsDiarioPortaria'
    end
    object DataSetField8: TDataSetField
      FieldName = 'sdsDiarioCelular'
    end
    object MemoField4: TMemoField
      FieldName = 'OBS_REVISAO'
      BlobType = ftMemo
      Size = 1
    end
    object StringField28: TStringField
      FieldName = 'RV_ALARME'
      FixedChar = True
      Size = 1
    end
    object StringField29: TStringField
      FieldName = 'RV_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object StringField30: TStringField
      FieldName = 'RV_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object StringField31: TStringField
      FieldName = 'RV_CAMERA'
      FixedChar = True
      Size = 1
    end
    object StringField32: TStringField
      FieldName = 'RV_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object StringField33: TStringField
      FieldName = 'RV_RONDA'
      FixedChar = True
      Size = 1
    end
    object StringField34: TStringField
      FieldName = 'RV_VIATURA'
      FixedChar = True
      Size = 1
    end
    object StringField35: TStringField
      FieldName = 'FC_ALARME'
      FixedChar = True
      Size = 1
    end
    object StringField36: TStringField
      FieldName = 'FC_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object StringField37: TStringField
      FieldName = 'FC_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object StringField38: TStringField
      FieldName = 'FC_CAMERA'
      FixedChar = True
      Size = 1
    end
    object StringField39: TStringField
      FieldName = 'FC_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object StringField40: TStringField
      FieldName = 'FC_RONDA'
      FixedChar = True
      Size = 1
    end
    object StringField41: TStringField
      FieldName = 'FC_VIATURA'
      FixedChar = True
      Size = 1
    end
    object StringField42: TStringField
      FieldName = 'OK_ALARME'
      FixedChar = True
      Size = 1
    end
    object StringField43: TStringField
      FieldName = 'OK_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object StringField44: TStringField
      FieldName = 'OK_CAMERA'
      FixedChar = True
      Size = 1
    end
    object StringField45: TStringField
      FieldName = 'OK_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object StringField46: TStringField
      FieldName = 'OK_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object StringField47: TStringField
      FieldName = 'OK_RONDA'
      FixedChar = True
      Size = 1
    end
    object StringField48: TStringField
      FieldName = 'OK_VIATURA'
      FixedChar = True
      Size = 1
    end
  end
  object dsResumo: TDataSource
    DataSet = cdsResumo
    Left = 109
    Top = 280
  end
  object sdsViatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM VIATURA'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 206
    Top = 280
    object sdsViaturaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspDiarioUpdateError
    Left = 222
    Top = 280
  end
  object cdsViatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspViatura'
    BeforeDelete = cdsDiarioBeforeDelete
    Left = 240
    Top = 280
    object cdsViaturaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 253
    Top = 280
  end
  object sdsDiarioCons: TSQLDataSet
    CommandText = 
      'SELECT D.*, P.NOME OPERADOR'#13#10'FROM DIARIO D'#13#10'INNER JOIN PESSOA P ' +
      'ON (P.ID = D.OPERADOR_RADIO)'#13#10'WHERE 1 = 1'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 422
    Top = 16
    object sdsDiarioConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDiarioConsDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsDiarioConsTURNO: TStringField
      FieldName = 'TURNO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsREVISADO_HORA: TTimeField
      FieldName = 'REVISADO_HORA'
    end
    object sdsDiarioConsREVISADO_POR: TStringField
      FieldName = 'REVISADO_POR'
    end
    object sdsDiarioConsOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Size = 70
    end
    object sdsDiarioConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsDiarioConsRV_ALARME: TStringField
      FieldName = 'RV_ALARME'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsRV_ESPECIAL: TStringField
      FieldName = 'RV_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsRV_BAIRRO: TStringField
      FieldName = 'RV_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsRV_CAMERA: TStringField
      FieldName = 'RV_CAMERA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsRV_PORTARIA: TStringField
      FieldName = 'RV_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsRV_RONDA: TStringField
      FieldName = 'RV_RONDA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsRV_VIATURA: TStringField
      FieldName = 'RV_VIATURA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_ALARME: TStringField
      FieldName = 'FC_ALARME'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_ESPECIAL: TStringField
      FieldName = 'FC_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_BAIRRO: TStringField
      FieldName = 'FC_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_CAMERA: TStringField
      FieldName = 'FC_CAMERA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_PORTARIA: TStringField
      FieldName = 'FC_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_RONDA: TStringField
      FieldName = 'FC_RONDA'
      FixedChar = True
      Size = 1
    end
    object sdsDiarioConsFC_VIATURA: TStringField
      FieldName = 'FC_VIATURA'
      FixedChar = True
      Size = 1
    end
  end
  object dspDiarioCons: TDataSetProvider
    DataSet = sdsDiarioCons
    Left = 446
    Top = 16
  end
  object cdsDiarioCons: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DATA'
        DataType = ftDate
      end
      item
        Name = 'TURNO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REVISADO_HORA'
        DataType = ftTime
      end
      item
        Name = 'OPERADOR'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'OBS'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'RV_ALARME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RV_ESPECIAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RV_BAIRRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RV_CAMERA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RV_PORTARIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RV_RONDA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RV_VIATURA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_ALARME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_ESPECIAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_BAIRRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_CAMERA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_PORTARIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_RONDA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FC_VIATURA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REVISADO_POR'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'cdsDiarioIndex3'
        Fields = 'DATA'
        Options = [ixDescending]
      end>
    PacketRecords = 25
    Params = <>
    ProviderName = 'dspDiarioCons'
    StoreDefs = True
    OnCalcFields = cdsDiarioConsCalcFields
    Left = 470
    Top = 16
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
    object cdsDiarioConsOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Size = 70
    end
    object cdsDiarioConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDiarioConsRV_ALARME: TStringField
      FieldName = 'RV_ALARME'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsRV_ESPECIAL: TStringField
      FieldName = 'RV_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsRV_BAIRRO: TStringField
      FieldName = 'RV_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsRV_CAMERA: TStringField
      FieldName = 'RV_CAMERA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsRV_PORTARIA: TStringField
      FieldName = 'RV_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsRV_RONDA: TStringField
      FieldName = 'RV_RONDA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsRV_VIATURA: TStringField
      FieldName = 'RV_VIATURA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_ALARME: TStringField
      FieldName = 'FC_ALARME'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_ESPECIAL: TStringField
      FieldName = 'FC_ESPECIAL'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_BAIRRO: TStringField
      FieldName = 'FC_BAIRRO'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_CAMERA: TStringField
      FieldName = 'FC_CAMERA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_PORTARIA: TStringField
      FieldName = 'FC_PORTARIA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_RONDA: TStringField
      FieldName = 'FC_RONDA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsFC_VIATURA: TStringField
      FieldName = 'FC_VIATURA'
      FixedChar = True
      Size = 1
    end
    object cdsDiarioConsclTurno: TStringField
      FieldKind = fkCalculated
      FieldName = 'clTurno'
      Size = 15
      Calculated = True
    end
  end
  object dsDiarioCons: TDataSource
    DataSet = cdsDiarioCons
    Left = 493
    Top = 16
  end
end
