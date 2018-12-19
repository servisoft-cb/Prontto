object dmCobranca: TdmCobranca
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 570
  Top = 185
  Height = 447
  Width = 461
  object sdsCReceber: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CRP.*, P.NOME, P.COBENDERECO, P.COBNUMERO, P.COBCOMPLEMEN' +
      'TO, P.COBUF, C1.NOME COBCIDADE, P.DOCUMENTO, P.COBCEP, P.COBBAIR' +
      'RO, P.PESSOA PESSOA_PGTO, P.ENDERECO, P.ENDNUMERO, P.BAIRRO, P.C' +
      'EP, P.ESTADO, C2.NOME CIDADE'#13#10'FROM CRECEBERPARC CRP'#13#10'INNER JOIN ' +
      'PESSOA P ON (CRP.CODCLIENTE = P.ID)'#13#10'INNER JOIN CIDADE C2 ON (P.' +
      'CIDADE = C2.ID)'#13#10'LEFT JOIN CIDADE C1 ON (P.COBCIDADE = C1.ID)'#13#10'W' +
      'HERE QUITADO = '#39'N'#39#13#10' AND CANCELADO = '#39'N'#39#13#10' AND VLRRESTANTE > 0'#13#10 +
      ' AND CRP.DTMOVIMENTO BETWEEN :D1 AND :D2'#13#10' AND CRP.CODTIPOCOBRAN' +
      'CA = '#39'1'#39#13#10' AND CRP.CODBANCO = :B1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'D1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'D2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'B1'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 48
    Top = 112
    object sdsCReceberNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object sdsCReceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object sdsCReceberVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object sdsCReceberDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsCReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
    end
    object sdsCReceberDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object sdsCReceberCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object sdsCReceberNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object sdsCReceberVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsCReceberVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object sdsCReceberVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object sdsCReceberCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object sdsCReceberPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object sdsCReceberAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object sdsCReceberTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object sdsCReceberCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object sdsCReceberVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object sdsCReceberCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object sdsCReceberPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object sdsCReceberDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object sdsCReceberDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object sdsCReceberJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object sdsCReceberCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object sdsCReceberVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object sdsCReceberCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object sdsCReceberDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object sdsCReceberCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object sdsCReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object sdsCReceberIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object sdsCReceberARQGERADO: TStringField
      FieldName = 'ARQGERADO'
      Size = 5
    end
    object sdsCReceberIMPBOLETOSICREDICEDENTE: TStringField
      FieldName = 'IMPBOLETOSICREDICEDENTE'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberNUMTITBANCO: TStringField
      FieldName = 'NUMTITBANCO'
    end
    object sdsCReceberNUMSEQNOSSONUM: TIntegerField
      FieldName = 'NUMSEQNOSSONUM'
    end
    object sdsCReceberITEMSEQNOSSONUM: TIntegerField
      FieldName = 'ITEMSEQNOSSONUM'
    end
    object sdsCReceberDUPLICATAIMP: TStringField
      FieldName = 'DUPLICATAIMP'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberNOSSONUMERO_SEQ: TStringField
      FieldName = 'NOSSONUMERO_SEQ'
      Size = 15
    end
    object sdsCReceberNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberCOD_CARTEIRA: TStringField
      FieldName = 'COD_CARTEIRA'
      Size = 3
    end
    object sdsCReceberID_BANCO_BOLETO: TIntegerField
      FieldName = 'ID_BANCO_BOLETO'
    end
    object sdsCReceberNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object sdsCReceberPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object sdsCReceberNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 40
    end
    object sdsCReceberCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object sdsCReceberCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
      ProviderFlags = []
    end
    object sdsCReceberCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      ProviderFlags = []
      Size = 10
    end
    object sdsCReceberCOBUF: TStringField
      FieldName = 'COBUF'
      ProviderFlags = []
      Size = 2
    end
    object sdsCReceberCOBCIDADE: TStringField
      FieldName = 'COBCIDADE'
      ProviderFlags = []
      Size = 30
    end
    object sdsCReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 18
    end
    object sdsCReceberCOBCEP: TStringField
      FieldName = 'COBCEP'
      ProviderFlags = []
      Size = 10
    end
    object sdsCReceberCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object sdsCReceberPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object sdsCReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object sdsCReceberENDNUMERO: TStringField
      FieldName = 'ENDNUMERO'
      ProviderFlags = []
      Size = 12
    end
    object sdsCReceberBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 25
    end
    object sdsCReceberCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 9
    end
    object sdsCReceberESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      Size = 2
    end
    object sdsCReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspCReceber: TDataSetProvider
    DataSet = sdsCReceber
    Left = 80
    Top = 112
  end
  object cdsCReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCReceber'
    Left = 112
    Top = 112
    object cdsCReceberNUMCRECEBER: TIntegerField
      DisplayWidth = 17
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object cdsCReceberPARCELA: TStringField
      DisplayWidth = 10
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object cdsCReceberDTVENCIMENTO: TDateField
      DisplayWidth = 17
      FieldName = 'DTVENCIMENTO'
    end
    object cdsCReceberVLRVENCIMENTO: TFloatField
      DisplayWidth = 21
      FieldName = 'VLRVENCIMENTO'
      DisplayFormat = '0.00'
    end
    object cdsCReceberVLRRESTANTE: TFloatField
      DisplayWidth = 16
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsCReceberNUMNOTA: TIntegerField
      DisplayWidth = 12
      FieldName = 'NUMNOTA'
    end
    object cdsCReceberNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object cdsCReceberVLRDESPESA: TFloatField
      DisplayWidth = 14
      FieldName = 'VLRDESPESA'
    end
    object cdsCReceberTIPODOC: TStringField
      DisplayWidth = 10
      FieldName = 'TIPODOC'
      Size = 2
    end
    object cdsCReceberCOBRANCAEMITIDA: TStringField
      DisplayWidth = 21
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberNOSSONUMERO: TStringField
      DisplayWidth = 18
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object cdsCReceberARQGERADO: TStringField
      DisplayWidth = 14
      FieldName = 'ARQGERADO'
      Size = 5
    end
    object cdsCReceberNUMTITBANCO: TStringField
      DisplayWidth = 24
      FieldName = 'NUMTITBANCO'
    end
    object cdsCReceberNUMSEQNOSSONUM: TIntegerField
      DisplayWidth = 22
      FieldName = 'NUMSEQNOSSONUM'
    end
    object cdsCReceberITEMSEQNOSSONUM: TIntegerField
      DisplayWidth = 22
      FieldName = 'ITEMSEQNOSSONUM'
    end
    object cdsCReceberDUPLICATAIMP: TStringField
      DisplayWidth = 16
      FieldName = 'DUPLICATAIMP'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberNOSSONUMERO_SEQ: TStringField
      FieldName = 'NOSSONUMERO_SEQ'
      Size = 15
    end
    object cdsCReceberNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberCOD_CARTEIRA: TStringField
      FieldName = 'COD_CARTEIRA'
      Size = 3
    end
    object cdsCReceberID_BANCO_BOLETO: TIntegerField
      FieldName = 'ID_BANCO_BOLETO'
    end
    object cdsCReceberNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsCReceberPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsCReceberCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object cdsCReceberCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
      ProviderFlags = []
    end
    object cdsCReceberCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      ProviderFlags = []
      Size = 10
    end
    object cdsCReceberCOBUF: TStringField
      FieldName = 'COBUF'
      ProviderFlags = []
      Size = 2
    end
    object cdsCReceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      ProviderFlags = []
      Size = 18
    end
    object cdsCReceberCOBCEP: TStringField
      FieldName = 'COBCEP'
      ProviderFlags = []
      Size = 10
    end
    object cdsCReceberCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object cdsCReceberCOBCIDADE: TStringField
      FieldName = 'COBCIDADE'
      ProviderFlags = []
      Size = 30
    end
    object cdsCReceberPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object cdsCReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 40
    end
    object cdsCReceberENDNUMERO: TStringField
      FieldName = 'ENDNUMERO'
      ProviderFlags = []
      Size = 12
    end
    object cdsCReceberBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 25
    end
    object cdsCReceberCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 9
    end
    object cdsCReceberESTADO: TStringField
      FieldName = 'ESTADO'
      ProviderFlags = []
      Size = 2
    end
    object cdsCReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 30
    end
    object cdsCReceberJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
    end
    object cdsCReceberCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
  end
  object dsCReceber: TDataSource
    DataSet = cdsCReceber
    Left = 144
    Top = 112
  end
  object sdsBanco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BANCO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 48
    Top = 64
  end
  object dspBanco: TDataSetProvider
    DataSet = sdsBanco
    Left = 80
    Top = 64
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 112
    Top = 64
    object cdsBancoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBancoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsBancoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object cdsBancoTIPOBANCO: TStringField
      FieldName = 'TIPOBANCO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object cdsBancoEMPCLI: TStringField
      FieldName = 'EMPCLI'
      FixedChar = True
      Size = 1
    end
    object cdsBancoNUMCONTA: TStringField
      FieldName = 'NUMCONTA'
      Size = 10
    end
    object cdsBancoDIGCONTA: TStringField
      FieldName = 'DIGCONTA'
      FixedChar = True
      Size = 1
    end
    object cdsBancoACBR_BANCO: TStringField
      FieldName = 'ACBR_BANCO'
      Size = 30
    end
    object cdsBancoACBR_LAYOUT: TStringField
      FieldName = 'ACBR_LAYOUT'
      FixedChar = True
      Size = 4
    end
    object cdsBancoACBR_LOGO_BANCO: TStringField
      FieldName = 'ACBR_LOGO_BANCO'
      Size = 200
    end
    object cdsBancoDIG_AGENCIA: TStringField
      FieldName = 'DIG_AGENCIA'
      Size = 2
    end
    object cdsBancoCEDENTE: TStringField
      FieldName = 'CEDENTE'
      Size = 15
    end
    object cdsBancoJUROS_MES: TFMTBCDField
      FieldName = 'JUROS_MES'
      Precision = 15
      Size = 2
    end
    object cdsBancoMULTA: TFMTBCDField
      FieldName = 'MULTA'
      Precision = 15
      Size = 2
    end
    object cdsBancoDIAS_PROTESTO: TSmallintField
      FieldName = 'DIAS_PROTESTO'
    end
    object cdsBancoCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
    object cdsBancoNUM_REMESSA: TSmallintField
      FieldName = 'NUM_REMESSA'
    end
    object cdsBancoCOD_FEBRABAN: TStringField
      FieldName = 'COD_FEBRABAN'
      Size = 4
    end
    object cdsBancoCOD_TRANSMISSAO: TStringField
      FieldName = 'COD_TRANSMISSAO'
      Size = 15
    end
    object cdsBancoOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Size = 3
    end
    object cdsBancoINSTRUCAO1: TStringField
      FieldName = 'INSTRUCAO1'
      Size = 3
    end
    object cdsBancoINSTRUCAO2: TStringField
      FieldName = 'INSTRUCAO2'
      Size = 3
    end
    object cdsBancoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 3
    end
    object cdsBancoEND_ARQ_REMESSA: TStringField
      FieldName = 'END_ARQ_REMESSA'
      Size = 200
    end
    object cdsBancoEXT_ARQ_REMESSA: TStringField
      FieldName = 'EXT_ARQ_REMESSA'
      Size = 3
    end
    object cdsBancoNOSSONUMERO_POR_ANO: TStringField
      FieldName = 'NOSSONUMERO_POR_ANO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoTIPO_IMPRESSAO: TStringField
      FieldName = 'TIPO_IMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object cdsBancoVARIACAO_CARTEIRA: TStringField
      FieldName = 'VARIACAO_CARTEIRA'
      Size = 3
    end
    object cdsBancoLOCAL_PAGAMENTO: TStringField
      FieldName = 'LOCAL_PAGAMENTO'
      Size = 100
    end
    object cdsBancoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 30
    end
    object cdsBancoNUM_ARQ_REMESSA: TIntegerField
      FieldName = 'NUM_ARQ_REMESSA'
    end
    object cdsBancoDT_REMESSA: TDateField
      FieldName = 'DT_REMESSA'
    end
    object cdsBancoSEQ_REMESSA_DIA: TIntegerField
      FieldName = 'SEQ_REMESSA_DIA'
    end
  end
  object dsBanco: TDataSource
    DataSet = cdsBanco
    Left = 144
    Top = 64
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.*, C.NOME CIDADE'#13#10'FROM EMPRESA E'#13#10'INNER JOIN CIDADE C O' +
      'N (E.CODCIDADE = C.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Dm1.Conexao
    Left = 48
    Top = 16
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 80
    Top = 16
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 112
    Top = 16
    object cdsEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsEmpresaCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEmpresaDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cdsEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 8
    end
    object cdsEmpresaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object cdsEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 144
    Top = 16
  end
  object sdsContas_Calculo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM CONTAS_CALCULO'#13#10'WHERE ID = :ID'#13#10'   AND ANO = :ANO' +
      #13#10'   AND ITEM = :ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 48
    Top = 160
    object sdsContas_CalculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField
      FieldName = 'SEQ_NOSSONUMERO'
      Precision = 15
      Size = 0
    end
  end
  object dspContas_calculo: TDataSetProvider
    DataSet = sdsContas_Calculo
    UpdateMode = upWhereKeyOnly
    Left = 80
    Top = 160
  end
  object cdsContas_calculo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspContas_calculo'
    Left = 112
    Top = 160
    object cdsContas_calculoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_calculoANO: TIntegerField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_calculoITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsContas_calculoSEQ_NOSSONUMERO: TFMTBCDField
      FieldName = 'SEQ_NOSSONUMERO'
      Precision = 15
      Size = 0
    end
  end
  object dsContas_calculo: TDataSource
    DataSet = cdsContas_calculo
    Left = 144
    Top = 160
  end
  object mRetorno: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodCarteira'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'CodOcorrenciaRet'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'NomeOcorrenciaRet'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DtOcorrencia'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NumNota'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtVenc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VlrTitulo'
        DataType = ftFloat
      end
      item
        Name = 'EspecieDoc'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VlrDespesaCobranca'
        DataType = ftFloat
      end
      item
        Name = 'VlrIOF'
        DataType = ftFloat
      end
      item
        Name = 'VlrAbatimento'
        DataType = ftFloat
      end
      item
        Name = 'VlrDesconto'
        DataType = ftFloat
      end
      item
        Name = 'VlrPago'
        DataType = ftFloat
      end
      item
        Name = 'VlrJurosPagos'
        DataType = ftFloat
      end
      item
        Name = 'DtLiquidacao'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'InstrCancelada'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Erros'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CodLiquidacao'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DescLiquidacao'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Atualizado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'Parcela'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DescErro1'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro2'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro3'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro4'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro5'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DescErro6'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'CodInstrCancelada'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ConfNossoNumero'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NossoNumero'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SeuNumero'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'ID_Duplicata'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Titulo_OK'
        DataType = ftBoolean
      end
      item
        Name = 'Usa_NumConta_Cedente'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Tipo_Ret'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Filial'
        DataType = ftInteger
      end
      item
        Name = 'Atualizar'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_Duplicata_Ant'
        DataType = ftInteger
      end
      item
        Name = 'VlrJurosdeMora'
        DataType = ftFloat
      end
      item
        Name = 'CodMotivo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DescMotivo'
        DataType = ftWideString
        Size = 500
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 48
    Top = 208
    Data = {
      E80400009619E0BD01000000180000002B000000000003000000E8040B436F64
      4361727465697261010049000000010005574944544802000200030010436F64
      4F636F7272656E63696152657401004900000001000557494454480200020002
      00114E6F6D654F636F7272656E63696152657401004900000001000557494454
      480200020064000C44744F636F7272656E636961010049000000010005574944
      5448020002000A00074E756D4E6F746101004900000001000557494454480200
      02000A0006447456656E630100490000000100055749445448020002000A0009
      566C72546974756C6F08000400000000000A45737065636965446F6301004900
      00000100055749445448020002001E0012566C7244657370657361436F627261
      6E6361080004000000000006566C72494F4608000400000000000D566C724162
      6174696D656E746F08000400000000000B566C72446573636F6E746F08000400
      0000000007566C725061676F08000400000000000D566C724A75726F73506167
      6F7308000400000000000C44744C69717569646163616F010049000000010005
      5749445448020002000A000E496E73747243616E63656C616461010049000000
      01000557494454480200020046000B4E6F6D65436C69656E7465010049000000
      0100055749445448020002001E00054572726F73010049000000010005574944
      54480200020008000D436F644C69717569646163616F01004900000001000557
      494454480200020002000E446573634C69717569646163616F01004900000001
      000557494454480200020046000A417475616C697A61646F0100490000000100
      0557494454480200020001000A436F64436C69656E7465040001000000000007
      50617263656C6101004900000001000557494454480200020014000944657363
      4572726F310100490000000100055749445448020002005A0009446573634572
      726F320100490000000100055749445448020002005A0009446573634572726F
      330100490000000100055749445448020002005A0009446573634572726F3401
      00490000000100055749445448020002005A0009446573634572726F35010049
      0000000100055749445448020002005A0009446573634572726F360100490000
      000100055749445448020002005A0011436F64496E73747243616E63656C6164
      6101004900000001000557494454480200020004000F436F6E664E6F73736F4E
      756D65726F01004900000001000557494454480200020008000B4E6F73736F4E
      756D65726F0100490000000100055749445448020002001400095365754E756D
      65726F01004900000001000557494454480200020019000C49445F4475706C69
      636174610100490000000100055749445448020002000A0009546974756C6F5F
      4F4B0200030000000000145573615F4E756D436F6E74615F436564656E746501
      00490000000100055749445448020002000100085469706F5F52657401004900
      000001000557494454480200020005000646696C69616C040001000000000009
      417475616C697A61720100490000000100055749445448020002000100104944
      5F4475706C69636174615F416E7404000100000000000E566C724A75726F7364
      654D6F7261080004000000000009436F644D6F7469766F010049000000010005
      57494454480200020014000A446573634D6F7469766F02004A00000001000557
      4944544802000200E8030000}
    object mRetornoCodCarteira: TStringField
      FieldName = 'CodCarteira'
      Size = 3
    end
    object mRetornoCodOcorrenciaRet: TStringField
      FieldName = 'CodOcorrenciaRet'
      Size = 2
    end
    object mRetornoNomeOcorrenciaRet: TStringField
      FieldName = 'NomeOcorrenciaRet'
      Size = 100
    end
    object mRetornoDtOcorrencia: TStringField
      FieldName = 'DtOcorrencia'
      Size = 10
    end
    object mRetornoNumNota: TStringField
      FieldName = 'NumNota'
      Size = 10
    end
    object mRetornoDtVenc: TStringField
      FieldName = 'DtVenc'
      Size = 10
    end
    object mRetornoVlrTitulo: TFloatField
      FieldName = 'VlrTitulo'
      DisplayFormat = '0.00'
    end
    object mRetornoEspecieDoc: TStringField
      FieldName = 'EspecieDoc'
      Size = 30
    end
    object mRetornoVlrDespesaCobranca: TFloatField
      FieldName = 'VlrDespesaCobranca'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrIOF: TFloatField
      FieldName = 'VlrIOF'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrAbatimento: TFloatField
      FieldName = 'VlrAbatimento'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrDesconto: TFloatField
      FieldName = 'VlrDesconto'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrPago: TFloatField
      FieldName = 'VlrPago'
      DisplayFormat = '0.00'
    end
    object mRetornoVlrJurosPagos: TFloatField
      FieldName = 'VlrJurosPagos'
      DisplayFormat = '0.00'
    end
    object mRetornoDtLiquidacao: TStringField
      FieldName = 'DtLiquidacao'
      Size = 10
    end
    object mRetornoInstrCancelada: TStringField
      FieldName = 'InstrCancelada'
      Size = 70
    end
    object mRetornoNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 30
    end
    object mRetornoErros: TStringField
      FieldName = 'Erros'
      Size = 8
    end
    object mRetornoCodLiquidacao: TStringField
      FieldName = 'CodLiquidacao'
      Size = 2
    end
    object mRetornoDescLiquidacao: TStringField
      FieldName = 'DescLiquidacao'
      Size = 70
    end
    object mRetornoAtualizado: TStringField
      FieldName = 'Atualizado'
      Size = 1
    end
    object mRetornoCodCliente: TIntegerField
      FieldName = 'CodCliente'
    end
    object mRetornoParcela: TStringField
      FieldName = 'Parcela'
    end
    object mRetornoDescErro1: TStringField
      FieldName = 'DescErro1'
      Size = 90
    end
    object mRetornoDescErro2: TStringField
      FieldName = 'DescErro2'
      Size = 90
    end
    object mRetornoDescErro3: TStringField
      FieldName = 'DescErro3'
      Size = 90
    end
    object mRetornoDescErro4: TStringField
      FieldName = 'DescErro4'
      Size = 90
    end
    object mRetornoDescErro5: TStringField
      FieldName = 'DescErro5'
      Size = 90
    end
    object mRetornoDescErro6: TStringField
      FieldName = 'DescErro6'
      Size = 90
    end
    object mRetornoCodInstrCancelada: TStringField
      FieldName = 'CodInstrCancelada'
      Size = 4
    end
    object mRetornoConfNossoNumero: TStringField
      FieldName = 'ConfNossoNumero'
      Size = 8
    end
    object mRetornoNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
    object mRetornoSeuNumero: TStringField
      FieldName = 'SeuNumero'
      Size = 25
    end
    object mRetornoID_Duplicata: TStringField
      FieldName = 'ID_Duplicata'
      Size = 10
    end
    object mRetornoTitulo_OK: TBooleanField
      FieldName = 'Titulo_OK'
      DisplayValues = 'Sim'
    end
    object mRetornoUsa_NumConta_Cedente: TStringField
      FieldName = 'Usa_NumConta_Cedente'
      Size = 1
    end
    object mRetornoTipo_Ret: TStringField
      FieldName = 'Tipo_Ret'
      Size = 5
    end
    object mRetornoFilial: TIntegerField
      FieldName = 'Filial'
    end
    object mRetornoAtualizar: TStringField
      FieldName = 'Atualizar'
      Size = 1
    end
    object mRetornoID_Duplicata_Ant: TIntegerField
      FieldName = 'ID_Duplicata_Ant'
    end
    object mRetornoVlrJurosdeMora: TFloatField
      FieldName = 'VlrJurosdeMora'
      DisplayFormat = '0.00'
    end
    object mRetornoCodMotivo: TStringField
      FieldName = 'CodMotivo'
    end
    object mRetornoDescMotivo: TWideStringField
      FieldName = 'DescMotivo'
      Size = 500
    end
  end
  object dsmRetorno: TDataSource
    DataSet = mRetorno
    Left = 72
    Top = 208
  end
  object sdsCReceberHist: TSQLDataSet
    CommandText = 
      'SELECT *'#13#10'FROM CRECEBERHIST'#13#10'WHERE NUMCRECEBER = :NCR1'#13#10'  AND PA' +
      'RCELA = :PCR1'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NCR1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCR1'
        ParamType = ptInput
      end>
    SQLConnection = Dm1.Conexao
    Left = 48
    Top = 256
  end
  object dspCReceberHist: TDataSetProvider
    DataSet = sdsCReceberHist
    Left = 80
    Top = 256
  end
  object cdsCReceberHist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCReceberHist'
    Left = 112
    Top = 256
    object cdsCReceberHistNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object cdsCReceberHistPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object cdsCReceberHistITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCReceberHistHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 70
    end
    object cdsCReceberHistDTHISTORICO: TDateField
      FieldName = 'DTHISTORICO'
    end
    object cdsCReceberHistDTULTPGTO: TDateField
      FieldName = 'DTULTPGTO'
    end
    object cdsCReceberHistVLRULTPGTO: TFloatField
      FieldName = 'VLRULTPGTO'
    end
    object cdsCReceberHistVLRULTJUROSPAGO: TFloatField
      FieldName = 'VLRULTJUROSPAGO'
    end
    object cdsCReceberHistVLRULTDESCONTO: TFloatField
      FieldName = 'VLRULTDESCONTO'
    end
    object cdsCReceberHistVLRULTDESPESA: TFloatField
      FieldName = 'VLRULTDESPESA'
    end
    object cdsCReceberHistTIPOHIST: TStringField
      FieldName = 'TIPOHIST'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberHistNUMMOVFINANC: TIntegerField
      FieldName = 'NUMMOVFINANC'
    end
    object cdsCReceberHistNUMMOVJUROS: TIntegerField
      FieldName = 'NUMMOVJUROS'
    end
    object cdsCReceberHistVLRULTDEVOLUCAO: TFloatField
      FieldName = 'VLRULTDEVOLUCAO'
    end
    object cdsCReceberHistNUMEXTCOMISSAO: TIntegerField
      FieldName = 'NUMEXTCOMISSAO'
    end
    object cdsCReceberHistCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsCReceberHistNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsCReceberHistCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object cdsCReceberHistCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 250
    end
  end
  object dsCReceberHist: TDataSource
    DataSet = cdsCReceberHist
    Left = 144
    Top = 256
  end
end
