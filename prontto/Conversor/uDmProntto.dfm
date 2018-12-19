object dmProntto: TdmProntto
  OldCreateOrder = False
  Left = 715
  Top = 81
  Height = 356
  Width = 574
  object Conexao: TSQLConnection
    ConnectionName = 'prontto'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=192.168.25.155:e:\$Servisoft\Prontto\PRONTTO.FDB'
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
    CommandText = 
      'SELECT P.*, C.NOME CIDADE_NOME'#13#10'FROM PESSOA P'#13#10'LEFT JOIN CIDADE ' +
      'C ON (P.CIDADE = C.ID)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 144
    Top = 24
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 176
    Top = 24
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 208
    Top = 24
    object cdsPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 40
    end
    object cdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsPessoaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsPessoaFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      Size = 15
    end
    object cdsPessoaIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
      Size = 10
    end
    object cdsPessoaESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 12
    end
    object cdsPessoaPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 25
    end
    object cdsPessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaREFPESSOAL1: TStringField
      FieldName = 'REFPESSOAL1'
      Size = 40
    end
    object cdsPessoaREFPESSOAL2: TStringField
      FieldName = 'REFPESSOAL2'
      Size = 40
    end
    object cdsPessoaREFPESSOALEND1: TStringField
      FieldName = 'REFPESSOALEND1'
      Size = 40
    end
    object cdsPessoaREFPESSOALEND2: TStringField
      FieldName = 'REFPESSOALEND2'
      Size = 40
    end
    object cdsPessoaREFPESSOALFONE1: TStringField
      FieldName = 'REFPESSOALFONE1'
      Size = 15
    end
    object cdsPessoaREFPESSOALFONE2: TStringField
      FieldName = 'REFPESSOALFONE2'
      Size = 15
    end
    object cdsPessoaREFCOMERCIAL1: TStringField
      FieldName = 'REFCOMERCIAL1'
      Size = 40
    end
    object cdsPessoaREFCOMERCIAL2: TStringField
      FieldName = 'REFCOMERCIAL2'
      Size = 40
    end
    object cdsPessoaREFCOMERCIALEND1: TStringField
      FieldName = 'REFCOMERCIALEND1'
      Size = 40
    end
    object cdsPessoaREFCOMERCIALEND2: TStringField
      FieldName = 'REFCOMERCIALEND2'
      Size = 40
    end
    object cdsPessoaREFCOMERCIALFONE1: TStringField
      FieldName = 'REFCOMERCIALFONE1'
      Size = 15
    end
    object cdsPessoaREFCOMERCIALFONE2: TStringField
      FieldName = 'REFCOMERCIALFONE2'
      Size = 15
    end
    object cdsPessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
    end
    object cdsPessoaTRANSPORTADORA: TStringField
      FieldName = 'TRANSPORTADORA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object cdsPessoaTIPOCOMISSAO: TStringField
      FieldName = 'TIPOCOMISSAO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaDTCONTRATOINI: TDateField
      FieldName = 'DTCONTRATOINI'
    end
    object cdsPessoaDTCONTRATOFIM: TDateField
      FieldName = 'DTCONTRATOFIM'
    end
    object cdsPessoaCONTRATODEVOLVIDO: TDateField
      FieldName = 'CONTRATODEVOLVIDO'
    end
    object cdsPessoaCOBENDERECO: TStringField
      FieldName = 'COBENDERECO'
      Size = 40
    end
    object cdsPessoaCOBNUMERO: TIntegerField
      FieldName = 'COBNUMERO'
    end
    object cdsPessoaCOBCOMPLEMENTO: TStringField
      FieldName = 'COBCOMPLEMENTO'
      Size = 10
    end
    object cdsPessoaCOBBAIRRO: TStringField
      FieldName = 'COBBAIRRO'
      Size = 30
    end
    object cdsPessoaCOBCIDADE: TIntegerField
      FieldName = 'COBCIDADE'
    end
    object cdsPessoaCOBUF: TStringField
      FieldName = 'COBUF'
      Size = 2
    end
    object cdsPessoaCOBCONTATO: TStringField
      FieldName = 'COBCONTATO'
      Size = 30
    end
    object cdsPessoaENDNUMERO: TStringField
      FieldName = 'ENDNUMERO'
      Size = 12
    end
    object cdsPessoaENDCOMPLEMENTO: TStringField
      FieldName = 'ENDCOMPLEMENTO'
      Size = 15
    end
    object cdsPessoaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
    end
    object cdsPessoaCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object cdsPessoaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 5
    end
    object cdsPessoaNUMCONTACORRENTE: TStringField
      FieldName = 'NUMCONTACORRENTE'
      Size = 15
    end
    object cdsPessoaLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 10
    end
    object cdsPessoaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 100
    end
    object cdsPessoaDIAPAGAMENTO: TIntegerField
      FieldName = 'DIAPAGAMENTO'
    end
    object cdsPessoaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsPessoaFORMAPGTO: TIntegerField
      FieldName = 'FORMAPGTO'
    end
    object cdsPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsPessoaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 50
    end
    object cdsPessoaSELECIONADO: TStringField
      FieldName = 'SELECIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 40
    end
    object cdsPessoaDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsPessoaCEL: TStringField
      FieldName = 'CEL'
      Size = 15
    end
    object cdsPessoaPLANOSAUDE_ID: TIntegerField
      FieldName = 'PLANOSAUDE_ID'
    end
    object cdsPessoaCOBCEP: TStringField
      FieldName = 'COBCEP'
      Size = 10
    end
    object cdsPessoaVLRPGTO: TFloatField
      FieldName = 'VLRPGTO'
    end
    object cdsPessoaNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object cdsPessoaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object cdsPessoaCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsPessoaTIPOSALARIO: TStringField
      FieldName = 'TIPOSALARIO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaVALORSALARIO: TFloatField
      FieldName = 'VALORSALARIO'
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object cdsPessoaNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object cdsPessoaCODCLAUSULA: TIntegerField
      FieldName = 'CODCLAUSULA'
    end
    object cdsPessoaDESCCLAUSULA: TBlobField
      FieldName = 'DESCCLAUSULA'
      Size = 1
    end
    object cdsPessoaNATURALIDADE_CID: TIntegerField
      FieldName = 'NATURALIDADE_CID'
    end
    object cdsPessoaNATURALIDADE_UF: TStringField
      FieldName = 'NATURALIDADE_UF'
      Size = 2
    end
    object cdsPessoaEMPREGOS_ANT: TBlobField
      FieldName = 'EMPREGOS_ANT'
      Size = 1
    end
    object cdsPessoaCURSOS_ANT: TBlobField
      FieldName = 'CURSOS_ANT'
      Size = 1
    end
    object cdsPessoaINFO_ADICIONAIS: TBlobField
      FieldName = 'INFO_ADICIONAIS'
      Size = 1
    end
    object cdsPessoaFOTO_CAMINHO: TStringField
      FieldName = 'FOTO_CAMINHO'
      Size = 100
    end
    object cdsPessoaFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object cdsPessoaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaALUNO: TStringField
      FieldName = 'ALUNO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaREGISTRO_DPF: TStringField
      FieldName = 'REGISTRO_DPF'
      Size = 15
    end
    object cdsPessoaEXP_REGISTRO_DPF: TStringField
      FieldName = 'EXP_REGISTRO_DPF'
      Size = 11
    end
    object cdsPessoaDT_FORMACAO: TDateField
      FieldName = 'DT_FORMACAO'
    end
    object cdsPessoaCHAVE: TStringField
      FieldName = 'CHAVE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCONTROLE: TStringField
      FieldName = 'CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCONTRASENHA: TStringField
      FieldName = 'CONTRASENHA'
      Size = 100
    end
    object cdsPessoaAGENTE: TStringField
      FieldName = 'AGENTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsPessoaPESO: TFMTBCDField
      FieldName = 'PESO'
      Precision = 15
      Size = 2
    end
    object cdsPessoaALTURA: TFMTBCDField
      FieldName = 'ALTURA'
      Precision = 15
      Size = 2
    end
    object cdsPessoaFILHOS: TStringField
      FieldName = 'FILHOS'
      Size = 2
    end
    object cdsPessoaCARGO_PRETENDIDO: TStringField
      FieldName = 'CARGO_PRETENDIDO'
      Size = 30
    end
    object cdsPessoaSALARIO_PRETENDIDO: TFMTBCDField
      FieldName = 'SALARIO_PRETENDIDO'
      Precision = 15
      Size = 2
    end
    object cdsPessoaESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaOBJETIVOS: TMemoField
      FieldName = 'OBJETIVOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaID_INTERNET: TIntegerField
      FieldName = 'ID_INTERNET'
    end
    object cdsPessoaJAQUETA: TStringField
      FieldName = 'JAQUETA'
      Size = 10
    end
    object cdsPessoaSAPATO: TStringField
      FieldName = 'SAPATO'
      Size = 10
    end
    object cdsPessoaCOLETE: TStringField
      FieldName = 'COLETE'
      Size = 10
    end
    object cdsPessoaCAMISA: TStringField
      FieldName = 'CAMISA'
      Size = 10
    end
    object cdsPessoaOUTRA_LINGUA: TStringField
      FieldName = 'OUTRA_LINGUA'
      Size = 50
    end
    object cdsPessoaOUTRA_LINGUA_NIVEL: TStringField
      FieldName = 'OUTRA_LINGUA_NIVEL'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaHORARIO_DISPONIVEL: TStringField
      FieldName = 'HORARIO_DISPONIVEL'
      Size = 30
    end
    object cdsPessoaFDS_DISPONIVEL: TStringField
      FieldName = 'FDS_DISPONIVEL'
      Size = 10
    end
    object cdsPessoaFUMANTE: TStringField
      FieldName = 'FUMANTE'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaAP: TStringField
      FieldName = 'AP'
    end
    object cdsPessoaVERB: TStringField
      FieldName = 'VERB'
    end
    object cdsPessoaCOD: TStringField
      FieldName = 'COD'
    end
    object cdsPessoaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object cdsPessoaCALCA: TStringField
      FieldName = 'CALCA'
      Size = 10
    end
    object cdsPessoaTURMA_INTERNET: TStringField
      FieldName = 'TURMA_INTERNET'
      Size = 30
    end
    object cdsPessoaENDNUMERO1: TStringField
      FieldName = 'ENDNUMERO1'
      Size = 10
    end
    object cdsPessoaVALIDADE_CMA: TDateField
      FieldName = 'VALIDADE_CMA'
    end
    object cdsPessoaCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      Size = 30
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 240
    Top = 24
  end
  object sdsCPagar: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CP.*'#13#10'FROM CPAGARPARC CP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 144
    Top = 96
  end
  object dspCPagar: TDataSetProvider
    DataSet = sdsCPagar
    Left = 176
    Top = 96
  end
  object cdsCPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCPagar'
    Left = 208
    Top = 96
    object cdsCPagarNUMCPAGAR: TIntegerField
      FieldName = 'NUMCPAGAR'
      Required = True
    end
    object cdsCPagarPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object cdsCPagarNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
    end
    object cdsCPagarVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object cdsCPagarDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsCPagarQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object cdsCPagarVLRJUROS: TFloatField
      FieldName = 'VLRJUROS'
    end
    object cdsCPagarDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object cdsCPagarCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsCPagarNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsCPagarVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object cdsCPagarVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object cdsCPagarVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object cdsCPagarCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsCPagarVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object cdsCPagarCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object cdsCPagarPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsCPagarTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsCPagarQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object cdsCPagarDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsCPagarDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object cdsCPagarJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object cdsCPagarCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCPagarTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object cdsCPagarVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object cdsCPagarDTRECTO: TDateField
      FieldName = 'DTRECTO'
    end
    object cdsCPagarCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsCPagarDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object cdsCPagarCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
  end
  object dsCPagar: TDataSource
    DataSet = cdsCPagar
    Left = 240
    Top = 96
  end
  object sdsCReceber: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT CP.*'#13#10'FROM CRECEBERPARC CP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 144
    Top = 152
  end
  object dspCReceber: TDataSetProvider
    DataSet = sdsCReceber
    Left = 176
    Top = 152
  end
  object cdsCReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCReceber'
    Left = 208
    Top = 152
    object cdsCReceberNUMCRECEBER: TIntegerField
      FieldName = 'NUMCRECEBER'
      Required = True
    end
    object cdsCReceberPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      Size = 3
    end
    object cdsCReceberVLRVENCIMENTO: TFloatField
      FieldName = 'VLRVENCIMENTO'
    end
    object cdsCReceberDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsCReceberQUITADO: TStringField
      FieldName = 'QUITADO'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberJUROSCALC: TFloatField
      FieldName = 'JUROSCALC'
    end
    object cdsCReceberDTPAGTO: TDateField
      FieldName = 'DTPAGTO'
    end
    object cdsCReceberCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object cdsCReceberNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsCReceberVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object cdsCReceberVLRPAGTO: TFloatField
      FieldName = 'VLRPAGTO'
    end
    object cdsCReceberVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object cdsCReceberCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object cdsCReceberPERCCOMISSAO: TFloatField
      FieldName = 'PERCCOMISSAO'
    end
    object cdsCReceberAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 6
    end
    object cdsCReceberTITPORTADOR: TStringField
      FieldName = 'TITPORTADOR'
    end
    object cdsCReceberCODTIPOCOBRANCA: TIntegerField
      FieldName = 'CODTIPOCOBRANCA'
    end
    object cdsCReceberVLRDESPESA: TFloatField
      FieldName = 'VLRDESPESA'
    end
    object cdsCReceberCODBANCO: TIntegerField
      FieldName = 'CODBANCO'
    end
    object cdsCReceberPGCARTORIO: TStringField
      FieldName = 'PGCARTORIO'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberTITPROTESTADO: TStringField
      FieldName = 'TITPROTESTADO'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberQTDDIASPROT: TIntegerField
      FieldName = 'QTDDIASPROT'
    end
    object cdsCReceberDTMOVIMENTO: TDateField
      FieldName = 'DTMOVIMENTO'
    end
    object cdsCReceberDIASATRASO: TIntegerField
      FieldName = 'DIASATRASO'
    end
    object cdsCReceberJUROSPAGOS: TFloatField
      FieldName = 'JUROSPAGOS'
    end
    object cdsCReceberCANCELADO: TStringField
      FieldName = 'CANCELADO'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberTIPODOC: TStringField
      FieldName = 'TIPODOC'
      Size = 2
    end
    object cdsCReceberVLRDEVOLUCAO: TFloatField
      FieldName = 'VLRDEVOLUCAO'
    end
    object cdsCReceberCODCONDPGTO: TIntegerField
      FieldName = 'CODCONDPGTO'
    end
    object cdsCReceberDTDEVOLUCAO: TDateField
      FieldName = 'DTDEVOLUCAO'
    end
    object cdsCReceberCOBRANCAEMITIDA: TStringField
      FieldName = 'COBRANCAEMITIDA'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberNUMCARTEIRA: TStringField
      FieldName = 'NUMCARTEIRA'
      Size = 3
    end
    object cdsCReceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 15
    end
    object cdsCReceberIMPRIMIR: TStringField
      FieldName = 'IMPRIMIR'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberCODCENTROCUSTO: TIntegerField
      FieldName = 'CODCENTROCUSTO'
    end
    object cdsCReceberOBS: TBlobField
      FieldName = 'OBS'
      Size = 1
    end
    object cdsCReceberARQGERADO: TStringField
      FieldName = 'ARQGERADO'
      Size = 5
    end
    object cdsCReceberIMPBOLETOSICREDICEDENTE: TStringField
      FieldName = 'IMPBOLETOSICREDICEDENTE'
      FixedChar = True
      Size = 1
    end
    object cdsCReceberNUMTITBANCO: TStringField
      FieldName = 'NUMTITBANCO'
    end
    object cdsCReceberNUMSEQNOSSONUM: TIntegerField
      FieldName = 'NUMSEQNOSSONUM'
    end
    object cdsCReceberITEMSEQNOSSONUM: TIntegerField
      FieldName = 'ITEMSEQNOSSONUM'
    end
    object cdsCReceberDUPLICATAIMP: TStringField
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
  end
  object dsCReceber: TDataSource
    DataSet = cdsCReceber
    Left = 240
    Top = 152
  end
end
