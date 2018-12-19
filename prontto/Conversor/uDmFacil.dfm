object dmFacil: TdmFacil
  OldCreateOrder = False
  Left = 562
  Top = 270
  Height = 342
  Width = 504
  object Conexao: TSQLConnection
    ConnectionName = 'SSFacil'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=192.168.25.114:C:\$Servisoft\Dados\SSFacil.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=WIN1252'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 56
    Top = 24
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 112
    Top = 24
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object sdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object sdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object sdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object sdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object sdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object sdsPessoaEMAIL_NFE2: TStringField
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object sdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object sdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object sdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_REGIME_TRIB: TIntegerField
      FieldName = 'ID_REGIME_TRIB'
    end
    object sdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object sdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object sdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object sdsPessoaNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object sdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object sdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object sdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object sdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object sdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object sdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object sdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object sdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object sdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object sdsPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object sdsPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object sdsPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object sdsPessoaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object sdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object sdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object sdsPessoaTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object sdsPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object sdsPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object sdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object sdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object sdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object sdsPessoaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object sdsPessoaTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object sdsPessoaTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object sdsPessoaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsPessoaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object sdsPessoaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object sdsPessoaPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object sdsPessoaVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object sdsPessoaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsPessoaTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsPessoaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
    end
    object sdsPessoaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object sdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField
      FieldName = 'COD_CONTABIL_CLIENTE'
    end
    object sdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField
      FieldName = 'COD_CONTABIL_FORNECEDOR'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 144
    Top = 24
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa'
    OnNewRecord = cdsPessoaNewRecord
    Left = 176
    Top = 24
    object cdsPessoaCODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      Alignment = taCenter
      DisplayLabel = 'N'#186
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      Alignment = taCenter
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      Alignment = taCenter
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fone'
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'DDD'
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      Alignment = taCenter
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaPESSOA: TStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF: TStringField
      Alignment = taCenter
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
    end
    object cdsPessoaINSCR_EST: TStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaENDERECO_ENT: TStringField
      DisplayLabel = 'Endere'#231'o Entrega'
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsPessoaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsPessoaID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsPessoaID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPessoaID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsPessoaPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsPessoaID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 200
    end
    object cdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsPessoaEMAIL_NFE: TStringField
      DisplayLabel = 'Email NFe'
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaEMAIL_PGTO: TStringField
      FieldName = 'EMAIL_PGTO'
      Size = 150
    end
    object cdsPessoaEMAIL_NFE2: TStringField
      DisplayLabel = 'Email NFe 2'
      FieldName = 'EMAIL_NFE2'
      Size = 150
    end
    object cdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsPessoaUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 2
    end
    object cdsPessoaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsPessoaTP_CLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsPessoaTP_FORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsPessoaTP_TRANSPORTADORA: TStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsPessoaTP_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsPessoaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_REGIME_TRIB: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Regime'
      FieldName = 'ID_REGIME_TRIB'
    end
    object cdsPessoaTIPO_ICMS: TStringField
      FieldName = 'TIPO_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_TAB_PRECO: TIntegerField
      FieldName = 'ID_TAB_PRECO'
    end
    object cdsPessoaTP_ATELIER: TStringField
      FieldName = 'TP_ATELIER'
      Size = 1
    end
    object cdsPessoaTIPO_COMISSAO: TStringField
      FieldName = 'TIPO_COMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNOME_CONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsPessoaINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
      Size = 15
    end
    object cdsPessoaDT_CONTRATO_INI: TDateField
      FieldName = 'DT_CONTRATO_INI'
    end
    object cdsPessoaDT_CONTRATO_FIN: TDateField
      FieldName = 'DT_CONTRATO_FIN'
    end
    object cdsPessoaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsPessoaID_SERVICO_INT: TIntegerField
      FieldName = 'ID_SERVICO_INT'
    end
    object cdsPessoaVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsPessoaCLIENTE_CONTA_ID: TIntegerField
      FieldName = 'CLIENTE_CONTA_ID'
    end
    object cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField
      FieldName = 'FORNECEDOR_CONTA_ID'
    end
    object cdsPessoaVENDEDOR_CONTA_ID: TIntegerField
      FieldName = 'VENDEDOR_CONTA_ID'
    end
    object cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField
      FieldName = 'TRANSPORTADORA_CONTA_ID'
    end
    object cdsPessoaATELIER_CONTA_ID: TIntegerField
      FieldName = 'ATELIER_CONTA_ID'
    end
    object cdsPessoaRETEM_ISS: TStringField
      FieldName = 'RETEM_ISS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_CSLL: TStringField
      FieldName = 'RETEM_CSLL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_PISCOFINS: TStringField
      FieldName = 'RETEM_PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaRETEM_INSS: TStringField
      FieldName = 'RETEM_INSS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaEMAIL_COMPRAS: TStringField
      FieldName = 'EMAIL_COMPRAS'
      Size = 200
    end
    object cdsPessoaCONTATO_COMPRAS: TStringField
      FieldName = 'CONTATO_COMPRAS'
      Size = 60
    end
    object cdsPessoaORGAO_PUBLICO: TStringField
      FieldName = 'ORGAO_PUBLICO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaID_NATUREZA: TIntegerField
      FieldName = 'ID_NATUREZA'
    end
    object cdsPessoaDIMINUIR_RETENCAO: TStringField
      FieldName = 'DIMINUIR_RETENCAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERC_REDUCAO_INSS: TFloatField
      FieldName = 'PERC_REDUCAO_INSS'
    end
    object cdsPessoaUSA_TRANSFICMS: TStringField
      FieldName = 'USA_TRANSFICMS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCLIENTE_ESTOQUE: TStringField
      FieldName = 'CLIENTE_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField
      FieldName = 'USA_TAMANHO_AGRUPADO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsPessoaID_EDI: TIntegerField
      FieldName = 'ID_EDI'
    end
    object cdsPessoaPAI_NOME: TStringField
      FieldName = 'PAI_NOME'
      Size = 60
    end
    object cdsPessoaMAE_NOME: TStringField
      FieldName = 'MAE_NOME'
      Size = 60
    end
    object cdsPessoaTP_ALUNO: TStringField
      FieldName = 'TP_ALUNO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCOBRAR_TAXA_BANCO: TStringField
      FieldName = 'COBRAR_TAXA_BANCO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVLR_LIMITE_CREDITO: TFloatField
      FieldName = 'VLR_LIMITE_CREDITO'
    end
    object cdsPessoaINSC_EST_ST: TStringField
      FieldName = 'INSC_EST_ST'
      Size = 14
    end
    object cdsPessoaUF_ST: TStringField
      FieldName = 'UF_ST'
      Size = 2
    end
    object cdsPessoaTIPO_CONSUMIDOR: TSmallintField
      FieldName = 'TIPO_CONSUMIDOR'
    end
    object cdsPessoaTIPO_CONTRIBUINTE: TSmallintField
      FieldName = 'TIPO_CONTRIBUINTE'
    end
    object cdsPessoaINSC_SUFRAMA: TStringField
      FieldName = 'INSC_SUFRAMA'
      Size = 9
    end
    object cdsPessoaCOD_ALFA: TStringField
      FieldName = 'COD_ALFA'
      Size = 15
    end
    object cdsPessoaTP_PREPOSTO: TStringField
      FieldName = 'TP_PREPOSTO'
      Size = 1
    end
    object cdsPessoaTP_EXPORTACAO: TStringField
      FieldName = 'TP_EXPORTACAO'
      Size = 1
    end
    object cdsPessoaCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsPessoaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsPessoaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsPessoaPERC_COMISSAO_VEND: TFloatField
      FieldName = 'PERC_COMISSAO_VEND'
    end
    object cdsPessoaPERC_DESC_SUFRAMA: TFloatField
      FieldName = 'PERC_DESC_SUFRAMA'
    end
    object cdsPessoaVLR_LIMITE_COMPRA: TFloatField
      FieldName = 'VLR_LIMITE_COMPRA'
    end
    object cdsPessoaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsPessoaTP_FUNCIONARIO: TStringField
      FieldName = 'TP_FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaIMP_COD_PRODUTO_CLI: TStringField
      FieldName = 'IMP_COD_PRODUTO_CLI'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsPessoaVLR_ULT_FATURAMENTO: TFloatField
      FieldName = 'VLR_ULT_FATURAMENTO'
      DisplayFormat = '0.00'
    end
    object cdsPessoaQTD_ULT_FATURAMENTO: TFloatField
      FieldName = 'QTD_ULT_FATURAMENTO'
    end
    object cdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField
      FieldName = 'COD_CONTABIL_CLIENTE'
    end
    object cdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField
      FieldName = 'COD_CONTABIL_FORNECEDOR'
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 208
    Top = 24
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    CommandText = 'SELECT ID, NOME'#13#10'FROM CIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 112
    Top = 80
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 144
    Top = 80
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCidade'
    Left = 176
    Top = 80
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsCidade: TDataSource
    Left = 208
    Top = 80
  end
  object sdsDuplica: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM DUPLICATA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 112
    Top = 136
  end
  object dspDuplica: TDataSetProvider
    DataSet = sdsDuplica
    Left = 144
    Top = 136
  end
  object cdsDuplicata: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplica'
    Left = 176
    Top = 136
    object cdsDuplicataID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDuplicataTIPO_ES: TStringField
      FieldName = 'TIPO_ES'
      Size = 1
    end
    object cdsDuplicataFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsDuplicataID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsDuplicataPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object cdsDuplicataNUMDUPLICATA: TStringField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsDuplicataNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsDuplicataSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsDuplicataDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsDuplicataVLR_PARCELA: TFloatField
      FieldName = 'VLR_PARCELA'
    end
    object cdsDuplicataVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
    end
    object cdsDuplicataVLR_PAGO: TFloatField
      FieldName = 'VLR_PAGO'
    end
    object cdsDuplicataVLR_DEVOLUCAO: TFloatField
      FieldName = 'VLR_DEVOLUCAO'
    end
    object cdsDuplicataVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
    end
    object cdsDuplicataVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
    end
    object cdsDuplicataVLR_JUROSPAGOS: TFloatField
      FieldName = 'VLR_JUROSPAGOS'
    end
    object cdsDuplicataVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
    end
    object cdsDuplicataPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsDuplicataDTULTPAGAMENTO: TDateField
      FieldName = 'DTULTPAGAMENTO'
    end
    object cdsDuplicataID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cdsDuplicataID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
    end
    object cdsDuplicataID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsDuplicataID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsDuplicataID_CONTA_BOLETO: TIntegerField
      FieldName = 'ID_CONTA_BOLETO'
    end
    object cdsDuplicataID_COMISSAO: TIntegerField
      FieldName = 'ID_COMISSAO'
    end
    object cdsDuplicataQTD_DIASATRASO: TIntegerField
      FieldName = 'QTD_DIASATRASO'
    end
    object cdsDuplicataDTRECEBIMENTO_TITULO: TDateField
      FieldName = 'DTRECEBIMENTO_TITULO'
    end
    object cdsDuplicataDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsDuplicataPAGO_CARTORIO: TStringField
      FieldName = 'PAGO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataPROTESTADO: TStringField
      FieldName = 'PROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Size = 3
    end
    object cdsDuplicataARQUIVO_GERADO: TStringField
      FieldName = 'ARQUIVO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataTRANSFERENCIA_ICMS: TStringField
      FieldName = 'TRANSFERENCIA_ICMS'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
    end
    object cdsDuplicataDTFINANCEIRO: TDateField
      FieldName = 'DTFINANCEIRO'
    end
    object cdsDuplicataNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsDuplicataACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_COB_ELETRONICA: TIntegerField
      FieldName = 'ID_COB_ELETRONICA'
    end
    object cdsDuplicataBOLETO_IMP: TStringField
      FieldName = 'BOLETO_IMP'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_CARTEIRA: TIntegerField
      FieldName = 'ID_CARTEIRA'
    end
    object cdsDuplicataID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object cdsDuplicataIMP_BOLETO: TStringField
      FieldName = 'IMP_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNUM_REMESSA: TIntegerField
      FieldName = 'NUM_REMESSA'
    end
    object cdsDuplicataID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsDuplicataDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object cdsDuplicataNUMRPS: TIntegerField
      FieldName = 'NUMRPS'
    end
    object cdsDuplicataANO_REF: TIntegerField
      FieldName = 'ANO_REF'
    end
    object cdsDuplicataMES_REF: TIntegerField
      FieldName = 'MES_REF'
    end
    object cdsDuplicataNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
    object cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsDuplicataID_CUPOM: TIntegerField
      FieldName = 'ID_CUPOM'
    end
    object cdsDuplicataVLR_TAXA_BANCARIA: TFloatField
      FieldName = 'VLR_TAXA_BANCARIA'
    end
    object cdsDuplicataCOBRAR_TAXA: TStringField
      FieldName = 'COBRAR_TAXA'
      Size = 1
    end
    object cdsDuplicataID_TERMINAL: TIntegerField
      FieldName = 'ID_TERMINAL'
    end
    object cdsDuplicataID_FECHAMENTO: TIntegerField
      FieldName = 'ID_FECHAMENTO'
    end
    object cdsDuplicataTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField
      FieldName = 'NOSSONUMERO_SEQ'
      Precision = 15
      Size = 0
    end
    object cdsDuplicataNOSSONUMERO_GERADO: TStringField
      FieldName = 'NOSSONUMERO_GERADO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataNUMDUPLICATA_SEQ: TIntegerField
      FieldName = 'NUMDUPLICATA_SEQ'
    end
    object cdsDuplicataID_RECIBO: TIntegerField
      FieldName = 'ID_RECIBO'
    end
    object cdsDuplicataID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField
      FieldName = 'PERC_COMISSAO_PAGAR_NOTA'
    end
    object cdsDuplicataUSUARIO: TStringField
      FieldName = 'USUARIO'
    end
    object cdsDuplicataTITULO_CARTORIO: TStringField
      FieldName = 'TITULO_CARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataID_DESCONTADA: TIntegerField
      FieldName = 'ID_DESCONTADA'
    end
    object cdsDuplicataCONFIRMA_PGTO: TStringField
      FieldName = 'CONFIRMA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataCOD_ANT: TIntegerField
      FieldName = 'COD_ANT'
    end
    object cdsDuplicataPERC_BASE_COMISSAO: TFloatField
      FieldName = 'PERC_BASE_COMISSAO'
    end
    object cdsDuplicataEMISSAO_BOLETO: TStringField
      FieldName = 'EMISSAO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicataDESCRICAO2: TStringField
      FieldName = 'DESCRICAO2'
      Size = 100
    end
    object cdsDuplicataID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
    end
  end
  object dsDuplicata: TDataSource
    DataSet = cdsDuplicata
    Left = 208
    Top = 136
  end
end
