unit UDm1;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider, ADODB, jclStrings, LogTypes, rsDataSetError,
  midasLib;

type
  TDm1 = class(TDataModule)
    Conexao: TSQLConnection;
    Pessoa: TSQLDataSet;
    PessoaP: TDataSetProvider;
    tPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    qInc: TSQLQuery;
    tPessoaID: TIntegerField;
    tPessoaPESSOA: TStringField;
    tPessoaDOCUMENTO: TStringField;
    tPessoaENDERECO: TStringField;
    tPessoaBAIRRO: TStringField;
    tPessoaCEP: TStringField;
    tPessoaESTADO: TStringField;
    tPessoaFONE: TStringField;
    tPessoaFAX: TStringField;
    tPessoaINSCESTADUAL: TStringField;
    tPessoaIDENTIDADE: TStringField;
    tPessoaESTCIVIL: TStringField;
    tPessoaPROFISSAO: TStringField;
    tPessoaNACIONALIDADE: TStringField;
    tPessoaDTCADASTRO: TDateField;
    tPessoaOBSERVACAO: TBlobField;
    tPessoaFORNECEDOR: TStringField;
    tPessoaCLIENTE: TStringField;
    tPessoaVENDEDOR: TStringField;
    tPessoaREFPESSOAL1: TStringField;
    tPessoaREFPESSOAL2: TStringField;
    tPessoaREFPESSOALEND1: TStringField;
    tPessoaREFPESSOALEND2: TStringField;
    tPessoaREFPESSOALFONE1: TStringField;
    tPessoaREFPESSOALFONE2: TStringField;
    tPessoaREFCOMERCIAL1: TStringField;
    tPessoaREFCOMERCIAL2: TStringField;
    tPessoaREFCOMERCIALEND1: TStringField;
    tPessoaREFCOMERCIALEND2: TStringField;
    tPessoaREFCOMERCIALFONE1: TStringField;
    tPessoaREFCOMERCIALFONE2: TStringField;
    Pais: TSQLDataSet;
    PaisP: TDataSetProvider;
    tPais: TClientDataSet;
    dsPais: TDataSource;
    tPaisID: TIntegerField;
    tPaisNOME: TStringField;
    Cidade: TSQLDataSet;
    CidadeP: TDataSetProvider;
    tCidade: TClientDataSet;
    dsCidade: TDataSource;
    tCidadeID: TIntegerField;
    tCidadeNOME: TStringField;
    tCidadeUF: TStringField;
    tCidadeCODPAIS: TIntegerField;
    tCidadePERISSQN: TFloatField;
    Grupo: TSQLDataSet;
    GrupoP: TDataSetProvider;
    tGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    tGrupoID: TIntegerField;
    tGrupoNOME: TStringField;
    SitTributaria: TSQLDataSet;
    SitTributariaP: TDataSetProvider;
    tSitTributaria: TClientDataSet;
    dsSitTributaria: TDataSource;
    tSitTributariaID: TIntegerField;
    tSitTributariaDESCRICAO: TBlobField;
    tSitTributariaPERCENTUAL: TFloatField;
    tSitTributariaCODSITTRIB: TStringField;
    ClasFiscal: TSQLDataSet;
    ClasFiscalP: TDataSetProvider;
    tClasFiscal: TClientDataSet;
    dsClasFiscal: TDataSource;
    tClasFiscalCODCLASFISCAL: TStringField;
    tClasFiscalCODREDUZIDO: TStringField;
    tClasFiscalDESCRICAO: TBlobField;
    NatOperacao: TSQLDataSet;
    NatOperacaoP: TDataSetProvider;
    tNatOperacao: TClientDataSet;
    dsNatOperacao: TDataSource;
    tNatOperacaoID: TIntegerField;
    tNatOperacaoNOME: TStringField;
    tNatOperacaoES: TStringField;
    tNatOperacaoCALCIPI: TStringField;
    tNatOperacaoCALCICMS: TStringField;
    tNatOperacaoGERADUPL: TStringField;
    tNatOperacaoLEI: TBlobField;
    tNatOperacaoCODIGO: TStringField;
    tPessoaCIDADE: TIntegerField;
    Produto: TSQLDataSet;
    ProdutoP: TDataSetProvider;
    tProduto: TClientDataSet;
    dsProduto: TDataSource;
    tProdutoID: TIntegerField;
    tProdutoUNIDADE: TStringField;
    tProdutoCODGRUPO: TIntegerField;
    tProdutoALIQICMS: TFloatField;
    tProdutoALIQIPI: TFloatField;
    tProdutoCODFORNECEDOR: TIntegerField;
    tProdutoINATIVO: TStringField;
    tProdutoPOSSUITAMANHO: TStringField;
    tProdutoOPCAOPRECO: TStringField;
    tProdutoDTCADASTRO: TDateField;
    tProdutoCODSITTRIB: TIntegerField;
    tProdutoPRECOCUSTO: TFloatField;
    tProdutoPERCMINIMO: TFloatField;
    tProdutoPRECOMINIMO: TFloatField;
    tProdutoPERCVENDA: TFloatField;
    tProdutoDTREAJUSTE: TDateField;
    tProdutoCODBARRA: TStringField;
    tProdutoESTMINIMO: TFloatField;
    tProdutoOBS: TBlobField;
    ProdutoTam: TSQLDataSet;
    ProdutoTamP: TDataSetProvider;
    tProdutoTam: TClientDataSet;
    dsProdutoTam: TDataSource;
    tProdutoTamCODPRODUTO: TIntegerField;
    tProdutoTamTAMANHO: TStringField;
    tProdutoTamPRECOCUSTO: TFloatField;
    tProdutoTamPRECOMINIMO: TFloatField;
    tProdutoTamPRECOVENDA: TFloatField;
    tProdutoTamCODBARRA: TStringField;
    tProdutoTamESTMINIMO: TFloatField;
    CondPgto: TSQLDataSet;
    CondPgtoP: TDataSetProvider;
    tCondPgto: TClientDataSet;
    tCondPgtoID: TIntegerField;
    tCondPgtoNOME: TStringField;
    tCondPgtoPRAZOVISTA: TStringField;
    tCondPgtoPERCCUSTO: TFloatField;
    tCondPgtoENTRADA: TStringField;
    tCondPgtoPERCJUROS: TFloatField;
    dsCondPgto: TDataSource;
    CondPgtoIt: TSQLDataSet;
    CondPgtoItP: TDataSetProvider;
    tCondPgtoIt: TClientDataSet;
    tCondPgtoItCODCONDPGTO: TIntegerField;
    tCondPgtoItITEM: TIntegerField;
    tCondPgtoItQTDDIAS: TIntegerField;
    dsCondPgtoIt: TDataSource;
    PromocaoIt: TSQLDataSet;
    PromocaoItP: TDataSetProvider;
    tPromocaoIt: TClientDataSet;
    dsPromocaoIt: TDataSource;
    PromocaoItNUMMOVIMENTO: TIntegerField;
    PromocaoItITEM: TIntegerField;
    PromocaoItCODPRODUTO: TIntegerField;
    PromocaoItTAMANHO: TStringField;
    PromocaoItPERCVENDA: TFloatField;
    PromocaoItPRECOVENDA: TFloatField;
    PromocaoItNOME: TStringField;
    tPromocaoItNUMMOVIMENTO: TIntegerField;
    tPromocaoItITEM: TIntegerField;
    tPromocaoItCODPRODUTO: TIntegerField;
    tPromocaoItTAMANHO: TStringField;
    tPromocaoItPERCVENDA: TFloatField;
    tPromocaoItPRECOVENDA: TFloatField;
    tPromocaoItNOME: TStringField;
    Parametro: TSQLDataSet;
    ParametroP: TDataSetProvider;
    tParametro: TClientDataSet;
    tParametroPERCMINIMO: TFloatField;
    tParametroPERCVENDA: TFloatField;
    tParametroCODPAIS: TIntegerField;
    dsParametro: TDataSource;
    tPessoaFANTASIA: TStringField;
    tProdutoATUALIZAPRECO: TStringField;
    NotaEntrada: TSQLDataSet;
    NotaEntradaP: TDataSetProvider;
    tNotaEntrada: TClientDataSet;
    dsNotaEntrada: TDataSource;
    NotaEntradaIt: TSQLDataSet;
    NotaEntradaItP: TDataSetProvider;
    tNotaEntradaIt: TClientDataSet;
    dsNotaEntradaIt: TDataSource;
    NotaEntradaParc: TSQLDataSet;
    NotaEntradaParcP: TDataSetProvider;
    tNotaEntradaParc: TClientDataSet;
    dsNotaEntradaParc: TDataSource;
    NotaEntradaMObra: TSQLDataSet;
    NotaEntradaMObraP: TDataSetProvider;
    tNotaEntradaMObra: TClientDataSet;
    dsNotaEntradaMObra: TDataSource;
    NotaEntradaNUMNOTA: TIntegerField;
    NotaEntradaCODFORNECEDOR: TIntegerField;
    NotaEntradaSERIE: TStringField;
    NotaEntradaINFCONDPGTO: TStringField;
    NotaEntradaCODNATOPER: TIntegerField;
    NotaEntradaDTEMISSAO: TDateField;
    NotaEntradaDTENTRADA: TDateField;
    NotaEntradaICMSIPI: TStringField;
    NotaEntradaVLRTOTAL: TFloatField;
    NotaEntradaBASEICMS: TFloatField;
    NotaEntradaVLRICMS: TFloatField;
    NotaEntradaVLRIPI: TFloatField;
    NotaEntradaBASEIPI: TFloatField;
    NotaEntradaVLROUTRASDESP: TFloatField;
    NotaEntradaNRODUPLICATA: TIntegerField;
    NotaEntradaNOME: TStringField;
    tNotaEntradaNUMNOTA: TIntegerField;
    tNotaEntradaCODFORNECEDOR: TIntegerField;
    tNotaEntradaSERIE: TStringField;
    tNotaEntradaINFCONDPGTO: TStringField;
    tNotaEntradaCODNATOPER: TIntegerField;
    tNotaEntradaDTEMISSAO: TDateField;
    tNotaEntradaDTENTRADA: TDateField;
    tNotaEntradaICMSIPI: TStringField;
    tNotaEntradaVLRTOTAL: TFloatField;
    tNotaEntradaBASEICMS: TFloatField;
    tNotaEntradaVLRICMS: TFloatField;
    tNotaEntradaVLRIPI: TFloatField;
    tNotaEntradaBASEIPI: TFloatField;
    tNotaEntradaVLROUTRASDESP: TFloatField;
    tNotaEntradaNRODUPLICATA: TIntegerField;
    tNotaEntradaNOME: TStringField;
    NotaEntradaItNUMNOTA: TIntegerField;
    NotaEntradaItCODFORNECEDOR: TIntegerField;
    NotaEntradaItITEM: TIntegerField;
    NotaEntradaItCODPRODUTO: TIntegerField;
    NotaEntradaItTAMANHO: TStringField;
    NotaEntradaItQTD: TFloatField;
    NotaEntradaItVLRUNITARIO: TFloatField;
    NotaEntradaItVLRTOTAL: TFloatField;
    NotaEntradaItALIQICMS: TFloatField;
    NotaEntradaItALIQIPI: TFloatField;
    NotaEntradaItPERCDESC: TFloatField;
    NotaEntradaItVLRDESC: TFloatField;
    NotaEntradaItVLRIPI: TFloatField;
    NotaEntradaItBASEIPI: TFloatField;
    NotaEntradaItBASEICMS: TFloatField;
    NotaEntradaItVLRICMS: TFloatField;
    NotaEntradaItCODSITTRIB: TIntegerField;
    NotaEntradaItUNIDADE: TStringField;
    NotaEntradaItNUMOC: TIntegerField;
    NotaEntradaItITEMOC: TIntegerField;
    NotaEntradaItQTD2: TFloatField;
    NotaEntradaItNUMMOVEST: TIntegerField;
    NotaEntradaItNOME: TStringField;
    tNotaEntradaItNUMNOTA: TIntegerField;
    tNotaEntradaItCODFORNECEDOR: TIntegerField;
    tNotaEntradaItITEM: TIntegerField;
    tNotaEntradaItCODPRODUTO: TIntegerField;
    tNotaEntradaItTAMANHO: TStringField;
    tNotaEntradaItQTD: TFloatField;
    tNotaEntradaItVLRUNITARIO: TFloatField;
    tNotaEntradaItVLRTOTAL: TFloatField;
    tNotaEntradaItALIQICMS: TFloatField;
    tNotaEntradaItALIQIPI: TFloatField;
    tNotaEntradaItPERCDESC: TFloatField;
    tNotaEntradaItVLRDESC: TFloatField;
    tNotaEntradaItVLRIPI: TFloatField;
    tNotaEntradaItBASEIPI: TFloatField;
    tNotaEntradaItBASEICMS: TFloatField;
    tNotaEntradaItVLRICMS: TFloatField;
    tNotaEntradaItCODSITTRIB: TIntegerField;
    tNotaEntradaItUNIDADE: TStringField;
    tNotaEntradaItNUMOC: TIntegerField;
    tNotaEntradaItITEMOC: TIntegerField;
    tNotaEntradaItQTD2: TFloatField;
    tNotaEntradaItNUMMOVEST: TIntegerField;
    tNotaEntradaItNOME: TStringField;
    tNotaEntradaParcNUMNOTA: TIntegerField;
    tNotaEntradaParcCODFORNECEDOR: TIntegerField;
    tNotaEntradaParcITEM: TIntegerField;
    tNotaEntradaParcNUMDUPLICATA: TIntegerField;
    tNotaEntradaParcDTVENCIMENTO: TDateField;
    tNotaEntradaParcVLRVENCIMENTO: TFloatField;
    tNotaEntradaParcCODBANCO: TIntegerField;
    NotaEntradaMObraNUMNOTA: TIntegerField;
    NotaEntradaMObraCODFORNECEDOR: TIntegerField;
    NotaEntradaMObraITEM: TIntegerField;
    NotaEntradaMObraCODNATOPER: TIntegerField;
    NotaEntradaMObraCODMOBRA: TIntegerField;
    NotaEntradaMObraQTD: TFloatField;
    NotaEntradaMObraALIQISSQN: TFloatField;
    NotaEntradaMObraALIQINSS: TFloatField;
    NotaEntradaMObraALIQIRF: TFloatField;
    NotaEntradaMObraVLRUNITARIO: TFloatField;
    NotaEntradaMObraVLRTOTAL: TFloatField;
    NotaEntradaMObraVLRISSQN: TFloatField;
    NotaEntradaMObraCODFISCALNATOPER: TStringField;
    tNotaEntradaMObraNUMNOTA: TIntegerField;
    tNotaEntradaMObraCODFORNECEDOR: TIntegerField;
    tNotaEntradaMObraITEM: TIntegerField;
    tNotaEntradaMObraCODNATOPER: TIntegerField;
    tNotaEntradaMObraCODMOBRA: TIntegerField;
    tNotaEntradaMObraQTD: TFloatField;
    tNotaEntradaMObraALIQISSQN: TFloatField;
    tNotaEntradaMObraALIQINSS: TFloatField;
    tNotaEntradaMObraALIQIRF: TFloatField;
    tNotaEntradaMObraVLRUNITARIO: TFloatField;
    tNotaEntradaMObraVLRTOTAL: TFloatField;
    tNotaEntradaMObraVLRISSQN: TFloatField;
    tNotaEntradaMObraCODFISCALNATOPER: TStringField;
    TipoCobranca: TSQLDataSet;
    TipoCobrancaP: TDataSetProvider;
    tTipoCobranca: TClientDataSet;
    dsTipoCobranca: TDataSource;
    tTipoCobrancaID: TIntegerField;
    tTipoCobrancaNOME: TStringField;
    UF: TSQLDataSet;
    UFP: TDataSetProvider;
    tUF: TClientDataSet;
    dsUF: TDataSource;
    tUFUF: TStringField;
    tUFALIQICMS: TFloatField;
    MaoObra: TSQLDataSet;
    MaoObraP: TDataSetProvider;
    tMaoObra: TClientDataSet;
    dsMaoObra: TDataSource;
    tMaoObraID: TIntegerField;
    tMaoObraNOME: TStringField;
    tMaoObraVALOR: TFloatField;
    tMaoObraDTREAJUSTE: TDateField;
    tProdutoTamDTREAJUST: TDateField;
    Empresa: TSQLDataSet;
    EmpresaP: TDataSetProvider;
    tEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    tEmpresaNOME: TStringField;
    tEmpresaFANTASIA: TStringField;
    tEmpresaENDERECO: TStringField;
    tEmpresaBAIRRO: TStringField;
    tEmpresaCEP: TStringField;
    tEmpresaCODCIDADE: TIntegerField;
    tEmpresaUF: TStringField;
    tEmpresaDDD: TStringField;
    tEmpresaFONE: TStringField;
    tEmpresaFAX: TStringField;
    tEmpresaDOCUMENTO: TStringField;
    tEmpresaINSCREST: TStringField;
    tEmpresaCODACESSO: TIntegerField;
    tEmpresaAUTORIZACAO: TStringField;
    tEmpresaDATA: TDateField;
    NotaEntradaParcNUMNOTA: TIntegerField;
    NotaEntradaParcCODFORNECEDOR: TIntegerField;
    NotaEntradaParcITEM: TIntegerField;
    NotaEntradaParcNUMDUPLICATA: TIntegerField;
    NotaEntradaParcDTVENCIMENTO: TDateField;
    NotaEntradaParcVLRVENCIMENTO: TFloatField;
    NotaEntradaParcCODBANCO: TIntegerField;
    NotaEntradaParcNUMCPAGAR: TIntegerField;
    NotaEntradaParcNOMEBANCO: TStringField;
    tNotaEntradaParcNUMCPAGAR: TIntegerField;
    tNotaEntradaParcNOMEBANCO: TStringField;
    NotaEntradaMObraNOMEMOBRA: TStringField;
    tNotaEntradaMObraNOMEMOBRA: TStringField;
    Banco: TSQLDataSet;
    BancoP: TDataSetProvider;
    tBanco: TClientDataSet;
    dsBanco: TDataSource;
    tBancoID: TIntegerField;
    tBancoNOME: TStringField;
    tBancoSALDO: TFloatField;
    tBancoTIPOBANCO: TStringField;
    tBancoAGENCIA: TStringField;
    NotaEntradaVLRTOTALMOBRAS: TFloatField;
    NotaEntradaVLRTOTALITENS: TFloatField;
    NotaEntradaSOMAPRODDUPL: TStringField;
    NotaEntradaSOMAMOBRADUPL: TStringField;
    NotaEntradaCODNATOPERMOBRA: TStringField;
    tNotaEntradaVLRTOTALMOBRAS: TFloatField;
    tNotaEntradaVLRTOTALITENS: TFloatField;
    tNotaEntradaSOMAPRODDUPL: TStringField;
    tNotaEntradaSOMAMOBRADUPL: TStringField;
    tNotaEntradaCODNATOPERMOBRA: TStringField;
    NotaEntradaItBAIXAESTOQUE: TStringField;
    tNotaEntradaItBAIXAESTOQUE: TStringField;
    tProdutoCLASFISCAL: TStringField;
    tCondPgtoPERCDESCONTO: TFloatField;
    tPessoaTRANSPORTADORA: TStringField;
    tPessoaPERCCOMISSAO: TFloatField;
    tPessoaTIPOCOMISSAO: TStringField;
    EstoqueMov: TSQLDataSet;
    EstoqueMovP: TDataSetProvider;
    tEstoqueMov: TClientDataSet;
    dsEstoqueMov: TDataSource;
    tEstoqueMovNUMMOV: TIntegerField;
    tEstoqueMovCODPRODUTO: TIntegerField;
    tEstoqueMovTAMANHO: TStringField;
    tEstoqueMovDTMOV: TDateField;
    tEstoqueMovES: TStringField;
    tEstoqueMovTIPOMOV: TStringField;
    tEstoqueMovNUMDOCTO: TIntegerField;
    tEstoqueMovCODPESSOA: TIntegerField;
    tEstoqueMovPRECOCUSTO: TFloatField;
    tEstoqueMovPRECOVC: TFloatField;
    tEstoqueMovQTD: TFloatField;
    tEstoqueMovPERCICMS: TFloatField;
    tEstoqueMovPERCIPI: TFloatField;
    tEstoqueMovUNIDADE: TStringField;
    tEstoqueMovVLRDESCONTO: TFloatField;
    tEstoqueMovVLRADICIONAL: TFloatField;
    tParametroQTDDIASPROTESTO: TIntegerField;
    CReceberParc: TSQLDataSet;
    CReceberParcP: TDataSetProvider;
    tCReceberParc: TClientDataSet;
    dsCReceberParc: TDataSource;
    tCReceberParcNUMCRECEBER: TIntegerField;
    tCReceberParcPARCELA: TStringField;
    tCReceberParcVLRVENCIMENTO: TFloatField;
    tCReceberParcDTVENCIMENTO: TDateField;
    tCReceberParcQUITADO: TStringField;
    tCReceberParcJUROSCALC: TFloatField;
    tCReceberParcDTPAGTO: TDateField;
    tCReceberParcCODCLIENTE: TIntegerField;
    tCReceberParcNUMNOTA: TIntegerField;
    tCReceberParcVLRDESCONTO: TFloatField;
    tCReceberParcVLRPAGTO: TFloatField;
    tCReceberParcVLRRESTANTE: TFloatField;
    tCReceberParcCODVENDEDOR: TIntegerField;
    tCReceberParcPERCCOMISSAO: TFloatField;
    tCReceberParcAGENCIA: TStringField;
    tCReceberParcTITPORTADOR: TStringField;
    tCReceberParcCODTIPOCOBRANCA: TIntegerField;
    tCReceberParcVLRDESPESA: TFloatField;
    tCReceberParcCODBANCO: TIntegerField;
    tCReceberParcPGCARTORIO: TStringField;
    tCReceberParcTITPROTESTADO: TStringField;
    tCReceberParcQTDDIASPROT: TIntegerField;
    tCReceberParcDTMOVIMENTO: TDateField;
    tCReceberParcDIASATRASO: TIntegerField;
    tCReceberParcJUROSPAGOS: TFloatField;
    tCReceberParcCANCELADO: TStringField;
    tCReceberParcTIPODOC: TStringField;
    tCReceberParcVLRDEVOLUCAO: TFloatField;
    CPagarParc: TSQLDataSet;
    CPagarParcP: TDataSetProvider;
    tCPagarParc: TClientDataSet;
    dsCPagarParc: TDataSource;
    tCPagarParcPARCELA: TStringField;
    tCPagarParcNUMDUPLICATA: TIntegerField;
    tCPagarParcVLRVENCIMENTO: TFloatField;
    tCPagarParcDTVENCIMENTO: TDateField;
    tCPagarParcQUITADO: TStringField;
    tCPagarParcVLRJUROS: TFloatField;
    tCPagarParcDTPAGTO: TDateField;
    tCPagarParcCODFORNECEDOR: TIntegerField;
    tCPagarParcNUMNOTA: TIntegerField;
    tCPagarParcVLRDESCONTO: TFloatField;
    tCPagarParcVLRPAGTO: TFloatField;
    tCPagarParcVLRRESTANTE: TFloatField;
    tCPagarParcCODTIPOCOBRANCA: TIntegerField;
    tCPagarParcVLRDESPESA: TFloatField;
    tCPagarParcCODBANCO: TIntegerField;
    tCPagarParcPGCARTORIO: TStringField;
    tCPagarParcTITPROTESTADO: TStringField;
    tCPagarParcQTDDIASPROT: TIntegerField;
    tCPagarParcDTMOVIMENTO: TDateField;
    tCPagarParcDIASATRASO: TIntegerField;
    tCPagarParcJUROSPAGOS: TFloatField;
    tCPagarParcCANCELADO: TStringField;
    tCPagarParcTIPODOC: TStringField;
    tCPagarParcVLRDEVOLUCAO: TFloatField;
    tCPagarParcDTRECTO: TDateField;
    tProdutoTIPO: TStringField;
    CPagarHist: TSQLDataSet;
    CPagarHistP: TDataSetProvider;
    tCPagarHist: TClientDataSet;
    dsCPagarHist: TDataSource;
    tCPagarHistNUMCPAGAR: TIntegerField;
    tCPagarHistPARCELA: TStringField;
    tCPagarHistITEM: TIntegerField;
    tCPagarHistHISTORICO: TStringField;
    tCPagarHistDTHISTORICO: TDateField;
    tCPagarHistDTULTPGTO: TDateField;
    tCPagarHistVLRULTPGTO: TFloatField;
    tCPagarHistVLRULTJUROSPAGO: TFloatField;
    tCPagarHistVLRULTDESCONTO: TFloatField;
    tCPagarHistVLRULTDESPESA: TFloatField;
    tCPagarHistTIPOHIST: TStringField;
    tCPagarHistNUMMOVFINANC: TIntegerField;
    tCPagarHistNUMMOVJUROS: TIntegerField;
    tCPagarHistVLRULTDEVOLUCAO: TFloatField;
    MovFinanceiro: TSQLDataSet;
    MovFinanceiroP: TDataSetProvider;
    tMovFinanceiro: TClientDataSet;
    dsMovFinanceiro: TDataSource;
    tCPagarParcNUMCPAGAR: TIntegerField;
    CPagarParcNUMCPAGAR: TIntegerField;
    CPagarParcPARCELA: TStringField;
    CPagarParcNUMDUPLICATA: TIntegerField;
    CPagarParcVLRVENCIMENTO: TFloatField;
    CPagarParcDTVENCIMENTO: TDateField;
    CPagarParcQUITADO: TStringField;
    CPagarParcVLRJUROS: TFloatField;
    CPagarParcDTPAGTO: TDateField;
    CPagarParcCODFORNECEDOR: TIntegerField;
    CPagarParcNUMNOTA: TIntegerField;
    CPagarParcVLRDESCONTO: TFloatField;
    CPagarParcVLRPAGTO: TFloatField;
    CPagarParcVLRRESTANTE: TFloatField;
    CPagarParcCODTIPOCOBRANCA: TIntegerField;
    CPagarParcVLRDESPESA: TFloatField;
    CPagarParcCODBANCO: TIntegerField;
    CPagarParcPGCARTORIO: TStringField;
    CPagarParcTITPROTESTADO: TStringField;
    CPagarParcQTDDIASPROT: TIntegerField;
    CPagarParcDTMOVIMENTO: TDateField;
    CPagarParcDIASATRASO: TIntegerField;
    CPagarParcJUROSPAGOS: TFloatField;
    CPagarParcCANCELADO: TStringField;
    CPagarParcTIPODOC: TStringField;
    CPagarParcVLRDEVOLUCAO: TFloatField;
    CPagarParcDTRECTO: TDateField;
    CPagarParcNOME: TStringField;
    tCPagarParcNOME: TStringField;
    tMovFinanceiroNUMMOVTO: TIntegerField;
    tMovFinanceiroCODBANCO: TIntegerField;
    tMovFinanceiroDTMOVIMENTO: TDateField;
    tMovFinanceiroVLRENTRADA: TFloatField;
    tMovFinanceiroVLRSAIDA: TFloatField;
    tMovFinanceiroHISTORICO: TStringField;
    tMovFinanceiroTIPOMOV: TStringField;
    tBancoEMPCLI: TStringField;
    CReceberHist: TSQLDataSet;
    CReceberHistP: TDataSetProvider;
    tCReceberHist: TClientDataSet;
    dsCReceberHist: TDataSource;
    tCReceberHistNUMCRECEBER: TIntegerField;
    tCReceberHistPARCELA: TStringField;
    tCReceberHistITEM: TIntegerField;
    tCReceberHistHISTORICO: TStringField;
    tCReceberHistDTHISTORICO: TDateField;
    tCReceberHistDTULTPGTO: TDateField;
    tCReceberHistVLRULTPGTO: TFloatField;
    tCReceberHistVLRULTJUROSPAGO: TFloatField;
    tCReceberHistVLRULTDESCONTO: TFloatField;
    tCReceberHistVLRULTDESPESA: TFloatField;
    tCReceberHistTIPOHIST: TStringField;
    tCReceberHistNUMMOVFINANC: TIntegerField;
    tCReceberHistNUMMOVJUROS: TIntegerField;
    tCReceberHistVLRULTDEVOLUCAO: TFloatField;
    tCReceberHistNUMEXTCOMISSAO: TIntegerField;
    tCondPgtoFIXARDIA: TStringField;
    tCondPgtoQTDPARCELAS: TIntegerField;
    CPagarParcCODCONDPGTO: TIntegerField;
    tCPagarParcCODCONDPGTO: TIntegerField;
    tCReceberParcCODCONDPGTO: TIntegerField;
    tCReceberParcNOMECLIENTE: TStringField;
    CReceberParcNUMCRECEBER: TIntegerField;
    CReceberParcPARCELA: TStringField;
    CReceberParcVLRVENCIMENTO: TFloatField;
    CReceberParcDTVENCIMENTO: TDateField;
    CReceberParcQUITADO: TStringField;
    CReceberParcJUROSCALC: TFloatField;
    CReceberParcDTPAGTO: TDateField;
    CReceberParcCODCLIENTE: TIntegerField;
    CReceberParcNUMNOTA: TIntegerField;
    CReceberParcVLRDESCONTO: TFloatField;
    CReceberParcVLRPAGTO: TFloatField;
    CReceberParcVLRRESTANTE: TFloatField;
    CReceberParcCODVENDEDOR: TIntegerField;
    CReceberParcPERCCOMISSAO: TFloatField;
    CReceberParcAGENCIA: TStringField;
    CReceberParcTITPORTADOR: TStringField;
    CReceberParcCODTIPOCOBRANCA: TIntegerField;
    CReceberParcVLRDESPESA: TFloatField;
    CReceberParcCODBANCO: TIntegerField;
    CReceberParcPGCARTORIO: TStringField;
    CReceberParcTITPROTESTADO: TStringField;
    CReceberParcQTDDIASPROT: TIntegerField;
    CReceberParcDTMOVIMENTO: TDateField;
    CReceberParcDIASATRASO: TIntegerField;
    CReceberParcJUROSPAGOS: TFloatField;
    CReceberParcCANCELADO: TStringField;
    CReceberParcTIPODOC: TStringField;
    CReceberParcVLRDEVOLUCAO: TFloatField;
    CReceberParcCODCONDPGTO: TIntegerField;
    CReceberParcNOMECLIENTE: TStringField;
    CReceberParcDTDEVOLUCAO: TDateField;
    tCReceberParcDTDEVOLUCAO: TDateField;
    CPagarParcDTDEVOLUCAO: TDateField;
    tCPagarParcDTDEVOLUCAO: TDateField;
    tCPagarHistCODFORNECEDOR: TIntegerField;
    tCPagarHistNUMDUPLICATA: TIntegerField;
    tCReceberHistCODCLIENTE: TIntegerField;
    tCReceberHistNUMNOTA: TIntegerField;
    tParametroECF: TIntegerField;
    tParametroCOM: TStringField;
    SitTribCF: TSQLDataSet;
    SitTribCFP: TDataSetProvider;
    tSitTribCF: TClientDataSet;
    dsSitTribCF: TDataSource;
    tSitTribCFECF: TIntegerField;
    tSitTribCFCODIGO: TIntegerField;
    tSitTribCFCOMANDO: TStringField;
    tSitTribCFDESCRICAO: TStringField;
    tProdutoCODSITTRIBCF: TIntegerField;
    NotaEntradaItCODNATOPER: TIntegerField;
    tNotaEntradaItCODNATOPER: TIntegerField;
    tPessoaSTATUS: TStringField;
    tPessoaDTCONTRATOINI: TDateField;
    tPessoaDTCONTRATOFIM: TDateField;
    tPessoaCONTRATODEVOLVIDO: TDateField;
    tPessoaCOBENDERECO: TStringField;
    tPessoaCOBNUMERO: TIntegerField;
    tPessoaCOBCOMPLEMENTO: TStringField;
    tPessoaCOBBAIRRO: TStringField;
    tPessoaCOBCIDADE: TIntegerField;
    tPessoaCOBUF: TStringField;
    tPessoaCOBCONTATO: TStringField;
    tPessoaENDCOMPLEMENTO: TStringField;
    tPessoaIDUSUARIO: TIntegerField;
    tPessoaCODBANCO: TIntegerField;
    tPessoaAGENCIA: TStringField;
    tPessoaNUMCONTACORRENTE: TStringField;
    Pedido: TSQLDataSet;
    PedidoP: TDataSetProvider;
    tPedido: TClientDataSet;
    dsPedido: TDataSource;
    PedidoIt: TSQLDataSet;
    PedidoItP: TDataSetProvider;
    tPedidoIt: TClientDataSet;
    dsPedidoIt: TDataSource;
    tPedidoNUMLACTO: TIntegerField;
    tPedidoTIPO: TStringField;
    tPedidoNUMORCAMENTO: TIntegerField;
    tPedidoNUMPEDIDO: TIntegerField;
    tPedidoCODCLIENTE: TIntegerField;
    tPedidoDTPEDIDO: TDateField;
    tPedidoDTPREVENTREGA: TDateField;
    tPedidoCODNATOPER: TIntegerField;
    tPedidoCODCONDPGTO: TIntegerField;
    tPedidoINFCONDPGTO: TStringField;
    tPedidoCODVENDEDOR: TIntegerField;
    tPedidoDTENTREGA: TDateField;
    tPedidoCANCELADO: TStringField;
    tPedidoMOTIVOCANC: TStringField;
    tPedidoNUMORCAMENTOCOP: TIntegerField;
    tPedidoNUMPEDCOP: TIntegerField;
    tPedidoQTDDIASVALIDADE: TIntegerField;
    PedidoItNUMLACTO: TIntegerField;
    PedidoItITEM: TIntegerField;
    PedidoItCODPRODUTO: TIntegerField;
    PedidoItTAMANHO: TStringField;
    PedidoItNUMNOTA: TIntegerField;
    PedidoItNUMCUPOM: TIntegerField;
    PedidoItPRODUTO: TStringField;
    tPedidoItNUMLACTO: TIntegerField;
    tPedidoItITEM: TIntegerField;
    tPedidoItCODPRODUTO: TIntegerField;
    tPedidoItTAMANHO: TStringField;
    tPedidoItNUMNOTA: TIntegerField;
    tPedidoItNUMCUPOM: TIntegerField;
    tPedidoItPRODUTO: TStringField;
    PedidoItUNIDADE: TStringField;
    PedidoItCODSITTRIB: TIntegerField;
    tPedidoItUNIDADE: TStringField;
    tPedidoItCODSITTRIB: TIntegerField;
    tPessoaDIAPAGAMENTO: TIntegerField;
    Telefone: TSQLDataSet;
    TelefoneP: TDataSetProvider;
    tTelefone: TClientDataSet;
    dsTelefone: TDataSource;
    tEmpresaSERVICO: TStringField;
    tTelefoneCODPESSOA: TIntegerField;
    tTelefoneITEM: TIntegerField;
    tTelefoneTELEFONE: TStringField;
    tTelefoneCONTATO: TStringField;
    tTelefoneSETOR: TStringField;
    tTelefoneEMAIL: TStringField;
    tTelefoneRAMAL: TIntegerField;
    tPedidoItSELECIONADO: TStringField;
    tPedidoSELECIONADO: TStringField;
    tPessoaLOGIN: TStringField;
    tPessoaCODVENDEDOR: TIntegerField;
    tProdutoLOTEECONOMICO: TIntegerField;
    tPessoaFORMAPGTO: TIntegerField;
    tPedidoCOPIADO: TStringField;
    PedidoItCOPIADO: TStringField;
    PedidoItSELECIONADO: TStringField;
    tPedidoItCOPIADO: TStringField;
    PedidoItNUMLANCORCCOP: TIntegerField;
    tPedidoItNUMLANCORCCOP: TIntegerField;
    OS: TSQLDataSet;
    dspOS: TDataSetProvider;
    tOS: TClientDataSet;
    dsOS: TDataSource;
    OSID: TIntegerField;
    OSIDCLIENTE: TIntegerField;
    OSDATA: TDateField;
    OSDATAPREVISAO: TDateField;
    OSDATAENTREGA: TDateField;
    OSSTATUS: TStringField;
    OSVALOR: TIntegerField;
    OSEQUIPAMENTO: TIntegerField;
    OSPROBLEMARELATADO: TMemoField;
    OSPROBLEMADETECTADO: TMemoField;
    OSSERIAL: TStringField;
    OSNOME: TStringField;
    tOSID: TIntegerField;
    tOSIDCLIENTE: TIntegerField;
    tOSDATA: TDateField;
    tOSDATAPREVISAO: TDateField;
    tOSDATAENTREGA: TDateField;
    tOSSTATUS: TStringField;
    tOSVALOR: TIntegerField;
    tOSEQUIPAMENTO: TIntegerField;
    tOSPROBLEMARELATADO: TMemoField;
    tOSPROBLEMADETECTADO: TMemoField;
    tOSSERIAL: TStringField;
    tOSNOME: TStringField;
    tEmpresaCIDADE: TStringField;
    tPessoaEMAIL: TStringField;
    tPessoaHOMEPAGE: TStringField;
    tPessoaSELECIONADO: TStringField;
    EmpresaNOME: TStringField;
    EmpresaFANTASIA: TStringField;
    EmpresaENDERECO: TStringField;
    EmpresaBAIRRO: TStringField;
    EmpresaCEP: TStringField;
    EmpresaCODCIDADE: TIntegerField;
    EmpresaUF: TStringField;
    EmpresaDDD: TStringField;
    EmpresaFONE: TStringField;
    EmpresaFAX: TStringField;
    EmpresaDOCUMENTO: TStringField;
    EmpresaINSCREST: TStringField;
    EmpresaCODACESSO: TIntegerField;
    EmpresaAUTORIZACAO: TStringField;
    EmpresaDATA: TDateField;
    EmpresaSERVICO: TStringField;
    EmpresaCIDADE: TStringField;
    Juros: TSQLDataSet;
    JurosP: TDataSetProvider;
    tJuros: TClientDataSet;
    dsJuros: TDataSource;
    tJurosANO: TIntegerField;
    tJurosMES: TIntegerField;
    tJurosJURO: TFloatField;
    tCReceberHistCODBANCO: TIntegerField;
    tEstoqueMovQTD2: TFloatField;
    DctoEstoque: TSQLDataSet;
    DctoEstoqueP: TDataSetProvider;
    tDctoEstoque: TClientDataSet;
    dsDctoEstoque: TDataSource;
    tDctoEstoqueNUMDOCTO: TIntegerField;
    tDctoEstoqueDTMOV: TDateField;
    tDctoEstoqueES: TStringField;
    tDctoEstoqueVLRTOTAL: TFloatField;
    DctoEstoqueIt: TSQLDataSet;
    DctoEstoqueItP: TDataSetProvider;
    tDctoEstoqueIt: TClientDataSet;
    dsDctoEstoqueIt: TDataSource;
    tDctoEstoqueItNUMDOCTO: TIntegerField;
    tDctoEstoqueItCODPRODUTO: TIntegerField;
    tDctoEstoqueItTAMANHO: TStringField;
    tDctoEstoqueItUM: TStringField;
    tDctoEstoqueItQTD: TFloatField;
    tDctoEstoqueItPRECO: TFloatField;
    tDctoEstoqueItPRECOTOTAL: TFloatField;
    tDctoEstoqueItNUMMOVEST: TIntegerField;
    DctoEstoqueItNUMDOCTO: TIntegerField;
    DctoEstoqueItCODPRODUTO: TIntegerField;
    DctoEstoqueItTAMANHO: TStringField;
    DctoEstoqueItUM: TStringField;
    DctoEstoqueItQTD: TFloatField;
    DctoEstoqueItPRECO: TFloatField;
    DctoEstoqueItPRECOTOTAL: TFloatField;
    DctoEstoqueItNUMMOVEST: TIntegerField;
    DctoEstoqueItNOMEPRODUTO: TStringField;
    tDctoEstoqueItNOMEPRODUTO: TStringField;
    tDctoEstoqueMOTIVO: TStringField;
    Niveis: TSQLDataSet;
    pNiveis: TDataSetProvider;
    tNiveis: TClientDataSet;
    dsNiveis: TDataSource;
    Ususario: TSQLDataSet;
    pUsuario: TDataSetProvider;
    tUsuario: TClientDataSet;
    dsUsuario: TDataSource;
    tUsuarioID: TIntegerField;
    tUsuarioNOME: TStringField;
    tUsuarioLOGIN: TStringField;
    tUsuarioSENHA: TStringField;
    tUsuarioEMAIL: TStringField;
    tUsuarioFONE: TStringField;
    tUsuarioEMPRESA: TStringField;
    tUsuarioESTADO: TStringField;
    tUsuarioCIDADE: TStringField;
    tUsuarioENDERECO: TStringField;
    tUsuarioCEP: TStringField;
    tUsuarioPROFISSAO: TStringField;
    tUsuarioNIVEL: TIntegerField;
    tNiveisNUMCUPOM: TIntegerField;
    tNiveisDTEMISSAO: TDateField;
    tNiveisHREMISSAO: TTimeField;
    tNiveisCODCLIENTE: TIntegerField;
    tNiveisTIPOPAGTO: TStringField;
    tNiveisCODCONDPGTO: TIntegerField;
    tNiveisCODVENDEDOR: TIntegerField;
    tNiveisBASEICMS: TFloatField;
    tNiveisVLRICMS: TFloatField;
    tNiveisVLRPRODUTOS: TFloatField;
    tNiveisVLRDESCONTO: TFloatField;
    tNiveisVLRACRESCIMO: TFloatField;
    tNiveisVLRTOTAL: TFloatField;
    tNiveisCANCELADO: TStringField;
    tNiveisPERCCOMISSAO: TFloatField;
    tNiveisVLRTROCO: TFloatField;
    tNiveisNUMMOVFINANCEIRO: TIntegerField;
    DctoEstoqueItITEM: TIntegerField;
    tDctoEstoqueItITEM: TIntegerField;
    ProdutoFoto: TSQLDataSet;
    ProdutoFotoP: TDataSetProvider;
    tProdutoFoto: TClientDataSet;
    dsProdutoFoto: TDataSource;
    tProdutoFotoCODPRODUTO: TIntegerField;
    tProdutoFotoITEM: TIntegerField;
    tProdutoFotoNOME: TStringField;
    tProdutoFotoCAMINHO: TStringField;
    EmpresaLOGOEMPRESA: TStringField;
    tEmpresaLOGOEMPRESA: TStringField;
    tPessoaCONJUGE: TStringField;
    tPessoaDTNASCIMENTO: TDateField;
    tPessoaCEL: TStringField;
    tPedidoPEDIDOCLIENTE: TIntegerField;
    ExtComissao: TSQLDataSet;
    ExtComissaoP: TDataSetProvider;
    tExtComissao: TClientDataSet;
    dsExtComissao: TDataSource;
    tExtComissaoNUMMOV: TIntegerField;
    tExtComissaoCODVENDEDOR: TIntegerField;
    tExtComissaoDTREFERENCIA: TDateField;
    tExtComissaoNUMNOTA: TIntegerField;
    tExtComissaoPARCELA: TStringField;
    tExtComissaoCODCLIENTE: TIntegerField;
    tExtComissaoFUNCAO: TStringField;
    tExtComissaoVLRBASE: TFloatField;
    tExtComissaoPERCENTUAL: TFloatField;
    tExtComissaoVLRCOMISSAO: TFloatField;
    tExtComissaoTIPO: TStringField;
    tPedidoOBSERVACAO: TBlobField;
    tPedidoSITUACAO: TStringField;
    tCPagarHistCODBANCO: TIntegerField;
    tPessoaPLANOSAUDE_ID: TIntegerField;
    PlanoSaude: TSQLDataSet;
    pPlanoSaude: TDataSetProvider;
    tPlanoSaude: TClientDataSet;
    dsPlanoSaude: TDataSource;
    tPlanoSaudeID: TIntegerField;
    tPlanoSaudeNOME: TStringField;
    tPlanoSaudeFONE: TStringField;
    Servico: TSQLDataSet;
    pServico: TDataSetProvider;
    tServico: TClientDataSet;
    dsServico: TDataSource;
    tServicoID: TIntegerField;
    tServicoNOME: TStringField;
    Anamnese: TSQLDataSet;
    pAnamnese: TDataSetProvider;
    tAnamnese: TClientDataSet;
    dsAnamnese: TDataSource;
    tAnamneseID: TIntegerField;
    tAnamneseNOME: TStringField;
    FormaPgto: TSQLDataSet;
    pFormaPgto: TDataSetProvider;
    tFormaPgto: TClientDataSet;
    dsFormaPgto: TDataSource;
    tFormaPgtoID: TIntegerField;
    tFormaPgtoDESCRICAO: TStringField;
    tPessoaCOBCEP: TStringField;
    InstrCobranca: TSQLDataSet;
    pInstrCobranca: TDataSetProvider;
    tInstrCobranca: TClientDataSet;
    dsInstrCobranca: TDataSource;
    tInstrCobrancaID: TIntegerField;
    tInstrCobrancaDESCRICAO: TStringField;
    tParametroLINHASBOLETO: TIntegerField;
    tPessoaVLRPGTO: TFloatField;
    tParametroLINHASPULOBOLETO: TIntegerField;
    Conection: TADOConnection;
    tClienteAcc: TADOTable;
    tClienteAccIdCliente: TAutoIncField;
    tClienteAccIdTipo: TIntegerField;
    tClienteAccCodigo: TWideStringField;
    tClienteAccNome: TWideStringField;
    tClienteAccEndereco: TWideStringField;
    tClienteAccBairro: TWideStringField;
    tClienteAccIdCidade: TIntegerField;
    tClienteAccCEP: TWideStringField;
    tClienteAccUF: TWideStringField;
    tClienteAccFone: TWideStringField;
    tClienteAccCelular: TWideStringField;
    tClienteAccFax: TWideStringField;
    tClienteAccCPFCNPJ: TWideStringField;
    tClienteAccDataNasc: TDateTimeField;
    tClienteAccConjuge: TWideStringField;
    tClienteAccEmail: TWideStringField;
    tClienteAccContato: TWideStringField;
    tClienteAccFoneContato: TWideStringField;
    tClienteAccObservacao: TMemoField;
    tClienteAccDataContrato: TDateTimeField;
    tClienteAccIdFormaPagamento: TIntegerField;
    tClienteAccValor: TBCDField;
    tClienteAccDiaVencimento: TIntegerField;
    tClienteAccAtivo: TBooleanField;
    tClienteAccIdentificacao: TWideStringField;
    tClienteAccsenha: TWideStringField;
    tClienteAcclkCidade: TStringField;
    dsClienteAcc: TDataSource;
    tFormaPgtoAcc: TADOTable;
    tFormaPgtoAccIdFormaPagamento: TAutoIncField;
    tFormaPgtoAccNome: TWideStringField;
    tCidadeAcc: TADOTable;
    tCidadeAccIdCidade: TAutoIncField;
    tCidadeAccNome: TWideStringField;
    PessoaAnamnese: TSQLDataSet;
    pPessoaAnamnese: TDataSetProvider;
    tPessoaAnamnese: TClientDataSet;
    dsPessoaAnamnese: TDataSource;
    PessoaAnamnesePESSOA_ID: TIntegerField;
    PessoaAnamneseANAMNESE_ID: TIntegerField;
    PessoaAnamneseNOME: TStringField;
    tPessoaAnamnesePESSOA_ID: TIntegerField;
    tPessoaAnamneseANAMNESE_ID: TIntegerField;
    tPessoaAnamneseNOME: TStringField;
    PessoaServico: TSQLDataSet;
    pPessoaServico: TDataSetProvider;
    tPessoaServico: TClientDataSet;
    dsPessoaServico: TDataSource;
    PessoaAtendimento: TSQLDataSet;
    pPessoaAtendimento: TDataSetProvider;
    tPessoaAtendimento: TClientDataSet;
    dsPessoaAtendimento: TDataSource;
    tPessoaAtendimentoPESSOA_ID: TIntegerField;
    tPessoaAtendimentoID: TIntegerField;
    tPessoaAtendimentoDATA: TDateField;
    tPessoaAtendimentoMEDICACAO: TStringField;
    tPessoaAtendimentoPARECERMEDICO: TStringField;
    tPessoaAtendimentoPARECERENFERMEIRA: TStringField;
    tPessoaAtendimentoOBS: TBlobField;
    tPessoaServicoPESSOA_ID: TIntegerField;
    tPessoaServicoSERVICO_ID: TIntegerField;
    tPessoaServicoDATAINI: TDateField;
    tPessoaServicoDATAFIM: TDateField;
    tPessoaServicoNOME: TStringField;
    PessoaServicoPESSOA_ID: TIntegerField;
    PessoaServicoSERVICO_ID: TIntegerField;
    PessoaServicoDATAINI: TDateField;
    PessoaServicoDATAFIM: TDateField;
    PessoaServicoNOME: TStringField;
    tServicoVALORHORA: TStringField;
    tServicoDESLOCAMENTO: TStringField;
    tPedidoNOME: TStringField;
    PedidoNUMLACTO: TIntegerField;
    PedidoTIPO: TStringField;
    PedidoNUMORCAMENTO: TIntegerField;
    PedidoNUMPEDIDO: TIntegerField;
    PedidoCODCLIENTE: TIntegerField;
    PedidoDTPEDIDO: TDateField;
    PedidoDTPREVENTREGA: TDateField;
    PedidoCODNATOPER: TIntegerField;
    PedidoCODCONDPGTO: TIntegerField;
    PedidoINFCONDPGTO: TStringField;
    PedidoCODVENDEDOR: TIntegerField;
    PedidoDTENTREGA: TDateField;
    PedidoCANCELADO: TStringField;
    PedidoMOTIVOCANC: TStringField;
    PedidoNUMORCAMENTOCOP: TIntegerField;
    PedidoNUMPEDCOP: TIntegerField;
    PedidoQTDDIASVALIDADE: TIntegerField;
    PedidoCOPIADO: TStringField;
    PedidoSELECIONADO: TStringField;
    PedidoPEDIDOCLIENTE: TIntegerField;
    PedidoOBSERVACAO: TMemoField;
    PedidoNOME: TStringField;
    tProdutoNOME: TStringField;
    PedidoSITUACAO: TStringField;
    PedidoServico: TSQLDataSet;
    pPedidoServico: TDataSetProvider;
    tPedidoServico: TClientDataSet;
    dsPedidoServico: TDataSource;
    tPedidoServicoPEDIDO_ID: TIntegerField;
    tPedidoServicoDATAINI: TDateField;
    tPedidoServicoDATAFIM: TDateField;
    tPedidoServicoHRINI: TTimeField;
    tPedidoServicoHRFIM: TTimeField;
    tPedidoServicoEFETIVO: TSmallintField;
    tPedidoServicoDURACAO: TSmallintField;
    tPedidoServicoRONDASDIA: TIntegerField;
    tPedidoServicoVALORMES: TFMTBCDField;
    tPedidoServicoVALORSERVICO: TFMTBCDField;
    tServicoPERMANENTE: TStringField;
    tServicoAVULSO: TStringField;
    PedidoServicoPermanente: TSQLDataSet;
    pPedidoServicoPermanente: TDataSetProvider;
    tPedidoServicoPermanente: TClientDataSet;
    dsPedidoServicoPermanente: TDataSource;
    tPedidoServicoPermanentePEDIDO_ID: TIntegerField;
    tPedidoServicoPermanenteITEM: TIntegerField;
    tPedidoServicoPermanenteSERVICO_ID: TIntegerField;
    tPedidoServicoPermanenteQTD: TIntegerField;
    tPedidoServicoPermanenteSEG_HR_INI: TTimeField;
    tPedidoServicoPermanenteSEG_HR_FIM: TTimeField;
    tPedidoServicoPermanenteTER_HR_INI: TTimeField;
    tPedidoServicoPermanenteTER_HR_FIM: TTimeField;
    tPedidoServicoPermanenteQUA_HR_INI: TTimeField;
    tPedidoServicoPermanenteQUA_HR_FIM: TTimeField;
    tPedidoServicoPermanenteQUI_HR_INI: TTimeField;
    tPedidoServicoPermanenteQUI_HR_FIM: TTimeField;
    tPedidoServicoPermanenteSEX_HR_INI: TTimeField;
    tPedidoServicoPermanenteSEX_HR_FIM: TTimeField;
    tPedidoServicoPermanenteSAB_HR_INI: TTimeField;
    tPedidoServicoPermanenteSAB_HR_FIM: TTimeField;
    tPedidoServicoPermanenteDOM_HR_INI: TTimeField;
    tPedidoServicoPermanenteDOM_HR_FIM: TTimeField;
    tPedidoServicoPermanenteVLR: TFMTBCDField;
    PedidoSERVICO2: TStringField;
    tPedidoSERVICO2: TStringField;
    PedidoCONDPGTO: TStringField;
    tPedidoCONDPGTO: TStringField;
    tPedidoServicoPermanenteSERVICO: TStringField;
    PedidoServicoPermanentePEDIDO_ID: TIntegerField;
    PedidoServicoPermanenteITEM: TIntegerField;
    PedidoServicoPermanenteSERVICO_ID: TIntegerField;
    PedidoServicoPermanenteQTD: TIntegerField;
    PedidoServicoPermanenteSEG_HR_INI: TTimeField;
    PedidoServicoPermanenteSEG_HR_FIM: TTimeField;
    PedidoServicoPermanenteTER_HR_INI: TTimeField;
    PedidoServicoPermanenteTER_HR_FIM: TTimeField;
    PedidoServicoPermanenteQUA_HR_INI: TTimeField;
    PedidoServicoPermanenteQUA_HR_FIM: TTimeField;
    PedidoServicoPermanenteQUI_HR_INI: TTimeField;
    PedidoServicoPermanenteQUI_HR_FIM: TTimeField;
    PedidoServicoPermanenteSEX_HR_INI: TTimeField;
    PedidoServicoPermanenteSEX_HR_FIM: TTimeField;
    PedidoServicoPermanenteSAB_HR_INI: TTimeField;
    PedidoServicoPermanenteSAB_HR_FIM: TTimeField;
    PedidoServicoPermanenteDOM_HR_INI: TTimeField;
    PedidoServicoPermanenteDOM_HR_FIM: TTimeField;
    PedidoServicoPermanenteVLR: TFMTBCDField;
    PedidoServicoPermanenteSERVICO: TStringField;
    tPedidoclTipo: TStringField;
    PedidoCLIENTE_NOME: TStringField;
    PedidoCLIENTE_FONE: TStringField;
    tPedidoCLIENTE_NOME: TStringField;
    tPedidoCLIENTE_FONE: TStringField;
    PedidoVLRMO: TFMTBCDField;
    tPedidoVLRMO: TFMTBCDField;
    tProdutoVLRMO: TFMTBCDField;
    PedidoItVLRMO: TFMTBCDField;
    tPedidoItVLRMO: TFMTBCDField;
    Alarme: TSQLDataSet;
    pAlarme: TDataSetProvider;
    tAlarme: TClientDataSet;
    dsAlarme: TDataSource;
    tAlarmeCLIENTE_ID: TIntegerField;
    tAlarmeID: TIntegerField;
    tAlarmeFONE1: TStringField;
    tAlarmeFONE2: TStringField;
    tAlarmeFONE3: TStringField;
    tAlarmeNOME_EXIBICAO: TStringField;
    tAlarmeENDERECO: TStringField;
    tAlarmeBAIRRO: TStringField;
    tAlarmeCIDADE_ID: TIntegerField;
    tAlarmeMELHOR_TRAJETO: TStringField;
    tAlarmeSENHA: TStringField;
    tAlarmeCONTRASENHA: TStringField;
    CriaCampos: TSQLQuery;
    CustoHomem: TSQLDataSet;
    pCustoHomem: TDataSetProvider;
    tCustoHomem: TClientDataSet;
    dsCustoHomem: TDataSource;
    tCustoHomemID: TIntegerField;
    tCustoHomemNOME: TStringField;
    tCustoHomemVALOR: TFMTBCDField;
    tCustoHomemPERCENTUAL: TStringField;
    tCustoHomemPERIODICIDADE: TStringField;
    EmpresaFONE2: TStringField;
    EmpresaFONE3: TStringField;
    tEmpresaFONE2: TStringField;
    tEmpresaFONE3: TStringField;
    PedidoLUCRO: TFMTBCDField;
    PedidoIMPOSTO: TFMTBCDField;
    tPedidoLUCRO: TFMTBCDField;
    tPedidoIMPOSTO: TFMTBCDField;
    Escala: TSQLDataSet;
    pEscala: TDataSetProvider;
    tEscala: TClientDataSet;
    dsEscala: TDataSource;
    tEscalaID: TIntegerField;
    tEscalaNOME: TStringField;
    tEscalaQTD_HORAS: TIntegerField;
    PedidoServicoPermanenteESCALA_ID: TIntegerField;
    tPedidoServicoPermanenteESCALA_ID: TIntegerField;
    tParametroCUSTOKM: TFMTBCDField;
    tParametroVLRHOMEMHR: TFMTBCDField;
    dsAlarmeAcc: TDataSource;
    tAlarmeAcc: TADOTable;
    tAlarmeAccIdAlarme: TAutoIncField;
    tAlarmeAccCodigo: TWideStringField;
    tAlarmeAccIdCliente: TIntegerField;
    tAlarmeAccNomeLocal: TWideStringField;
    tAlarmeAccEndereco: TWideStringField;
    tAlarmeAccBairro: TWideStringField;
    tAlarmeAccIdCidade: TIntegerField;
    tAlarmeAccCEP: TWideStringField;
    tAlarmeAccUF: TWideStringField;
    tAlarmeAccFone1: TWideStringField;
    tAlarmeAccFone2: TWideStringField;
    tAlarmeAccFone3: TWideStringField;
    tAlarmeAccMelhorTrajeto: TMemoField;
    tAlarmeAccChave: TWideStringField;
    tAlarmeAccAutorizados: TMemoField;
    tAlarmeAccEntrada: TWideStringField;
    tAlarmeAccCaseiro: TWideStringField;
    tAlarmeAccSenha: TWideStringField;
    tAlarmeAccContraSenha: TWideStringField;
    tAlarmeAccDataInstalacao: TDateTimeField;
    tAlarmeAccInstalador: TWideStringField;
    tAlarmeAccFoneIdentificacao1: TWideStringField;
    tAlarmeAccFoneIdentificacao2: TWideStringField;
    tAlarmeAccMapa: TWideStringField;
    tParametroIMPOSTO_NF: TFMTBCDField;
    tPedidoServicoSERVICOAVULSO_ID: TIntegerField;
    PedidoMELHOR_VCTO: TStringField;
    PedidoFORMA_PGTO_ID: TIntegerField;
    tPedidoMELHOR_VCTO: TStringField;
    tPedidoFORMA_PGTO_ID: TIntegerField;
    PedidoFORMA_PGTO: TStringField;
    tPedidoFORMA_PGTO: TStringField;
    Clausula: TSQLDataSet;
    pClausula: TDataSetProvider;
    tClausula: TClientDataSet;
    dsClausula: TDataSource;
    tClausulaID: TIntegerField;
    tClausulaNOME: TStringField;
    tClausulaDESCRICAO: TMemoField;
    Pedido_Clausula: TSQLDataSet;
    pPedido_Clausula: TDataSetProvider;
    tPedido_Clausula: TClientDataSet;
    dsPedido_Clausula: TDataSource;
    tPedido_ClausulaPEDIDO_ID: TIntegerField;
    tPedido_ClausulaCLAUSULA_ID: TIntegerField;
    Pedido_ClausulaPEDIDO_ID: TIntegerField;
    Pedido_ClausulaCLAUSULA_ID: TIntegerField;
    Pedido_ClausulaNOME: TStringField;
    tPedido_ClausulaNOME: TStringField;
    Pedido_ClausulaDESCRICAO: TMemoField;
    tPedido_ClausulaDESCRICAO: TMemoField;
    PedidoENDERECO: TStringField;
    PedidoCIDADE_ID: TIntegerField;
    tPedidoENDERECO: TStringField;
    tPedidoCIDADE_ID: TIntegerField;
    PedidoENDERECO_NUM: TStringField;
    PedidoENDERECO_COMPL: TStringField;
    tPedidoENDERECO_NUM: TStringField;
    tPedidoENDERECO_COMPL: TStringField;
    PedidoItQTD: TFMTBCDField;
    PedidoItVLRUNITARIO: TFMTBCDField;
    PedidoItVLRTOTAL: TFMTBCDField;
    PedidoItPERCDESCONTO: TFMTBCDField;
    PedidoItVLRDESCONTO: TFMTBCDField;
    tPedidoItQTD: TFMTBCDField;
    tPedidoItVLRUNITARIO: TFMTBCDField;
    tPedidoItVLRTOTAL: TFMTBCDField;
    tPedidoItPERCDESCONTO: TFMTBCDField;
    tPedidoItVLRDESCONTO: TFMTBCDField;
    tProdutoPRECOVENDA: TFMTBCDField;
    PedidoPERCDESCONTO: TFMTBCDField;
    PedidoVLRDESCONTO: TFMTBCDField;
    PedidoPERCCOMISSAO: TFMTBCDField;
    PedidoVLRTOTAL: TFMTBCDField;
    tPedidoPERCDESCONTO: TFMTBCDField;
    tPedidoVLRDESCONTO: TFMTBCDField;
    tPedidoPERCCOMISSAO: TFMTBCDField;
    tPedidoVLRTOTAL: TFMTBCDField;
    PedidoServicoPermanenteHORAS: TFMTBCDField;
    tPedidoServicoPermanenteHORAS: TFMTBCDField;
    BcoItau: TSQLDataSet;
    BcoItauP: TDataSetProvider;
    tBcoItau: TClientDataSet;
    dsBcoItau: TDataSource;
    MovAvulso: TSQLDataSet;
    MovAvulsoP: TDataSetProvider;
    tMovAvulso: TClientDataSet;
    dsMovAvulso: TDataSource;
    MovAvulsoItens: TSQLDataSet;
    MovAvulsoItensP: TDataSetProvider;
    tMovAvulsoItens: TClientDataSet;
    dsMovAvulsoItens: TDataSource;
    MovAvulsoParc: TSQLDataSet;
    MovAvulsoParcP: TDataSetProvider;
    tMovAvulsoParc: TClientDataSet;
    dsMovAvulsoParc: TDataSource;
    tMovAvulsoCODIGO: TIntegerField;
    tMovAvulsoCODCLIENTE: TIntegerField;
    tMovAvulsoVLRTOTAL: TFMTBCDField;
    tMovAvulsoItensCODIGO: TIntegerField;
    tMovAvulsoItensITENS: TIntegerField;
    tMovAvulsoItensDESCRICAO: TStringField;
    tMovAvulsoItensVLRUNIT: TFMTBCDField;
    tMovAvulsoItensQTD: TFloatField;
    tMovAvulsoItensTIPO: TStringField;
    tMovAvulsoParcCODIGO: TIntegerField;
    tMovAvulsoParcPARCELA: TIntegerField;
    tMovAvulsoParcNUMCRECEBER: TIntegerField;
    tMovAvulsoParcDTVENC: TDateField;
    tMovAvulsoParcVALOR: TFMTBCDField;
    tMovAvulsoItensVLRTOTAL: TFMTBCDField;
    tMovAvulsoVLRTOTALITENS: TFMTBCDField;
    tMovAvulsoCONDPGTO: TIntegerField;
    tMovAvulsoDTEMISSAO: TDateField;
    PessoaServicoVALOR: TFMTBCDField;
    tPessoaServicoVALOR: TFMTBCDField;
    tBancoNUMCONTA: TStringField;
    tBancoDIGCONTA: TStringField;
    tBcoItauCODCEDENTE: TStringField;
    tBcoItauCARTEIRA: TStringField;
    tBcoItauACEITE: TStringField;
    tBcoItauINSTRUCAO: TStringField;
    tBcoItauDIASPROTESTO: TIntegerField;
    tBcoItauCAMINHO: TStringField;
    tBcoItauNOME: TStringField;
    tBcoItauEXTENSAO: TStringField;
    tBcoItauVLRDESCONTO: TFMTBCDField;
    tBcoItauVLRJUROSPORDIA: TFMTBCDField;
    tBcoItauCODCONTA: TIntegerField;
    tBcoItauNUMCARTEIRA: TStringField;
    tBcoItauESPECIEDOC: TStringField;
    tBcoItauINSTRCOBRANCA1: TStringField;
    tBcoItauINSTRCOBRANCA2: TStringField;
    tBcoItauAGENCIA: TStringField;
    tBcoItauNUMCONTA: TStringField;
    tBcoItauDIGCONTA: TStringField;
    CReceberParcCOBRANCAEMITIDA: TStringField;
    tCReceberParcCOBRANCAEMITIDA: TStringField;
    BcoItauCODCEDENTE: TStringField;
    BcoItauCARTEIRA: TStringField;
    BcoItauACEITE: TStringField;
    BcoItauINSTRUCAO: TStringField;
    BcoItauDIASPROTESTO: TIntegerField;
    BcoItauCAMINHO: TStringField;
    BcoItauNOME: TStringField;
    BcoItauEXTENSAO: TStringField;
    BcoItauVLRDESCONTO: TFMTBCDField;
    BcoItauVLRJUROSPORDIA: TFMTBCDField;
    BcoItauCODCONTA: TIntegerField;
    BcoItauNUMCARTEIRA: TStringField;
    BcoItauESPECIEDOC: TStringField;
    BcoItauINSTRCOBRANCA1: TStringField;
    BcoItauINSTRCOBRANCA2: TStringField;
    BcoItauAGENCIA: TStringField;
    BcoItauNUMCONTA: TStringField;
    BcoItauDIGCONTA: TStringField;
    CReceberParcNUMCARTEIRA: TStringField;
    CReceberParcNOSSONUMERO: TStringField;
    tCReceberParcNUMCARTEIRA: TStringField;
    tCReceberParcNOSSONUMERO: TStringField;
    tPessoaNUMCARTEIRA: TStringField;
    BcoItauSEQNOSSONUMERO: TIntegerField;
    tBcoItauSEQNOSSONUMERO: TIntegerField;
    BcoItauDTLIMITEDESCONTO: TDateField;
    tBcoItauDTLIMITEDESCONTO: TDateField;
    PessoaID: TIntegerField;
    PessoaFANTASIA: TStringField;
    PessoaPESSOA: TStringField;
    PessoaDOCUMENTO: TStringField;
    PessoaENDERECO: TStringField;
    PessoaBAIRRO: TStringField;
    PessoaCEP: TStringField;
    PessoaESTADO: TStringField;
    PessoaFONE: TStringField;
    PessoaFAX: TStringField;
    PessoaINSCESTADUAL: TStringField;
    PessoaIDENTIDADE: TStringField;
    PessoaESTCIVIL: TStringField;
    PessoaPROFISSAO: TStringField;
    PessoaNACIONALIDADE: TStringField;
    PessoaDTCADASTRO: TDateField;
    PessoaOBSERVACAO: TMemoField;
    PessoaFORNECEDOR: TStringField;
    PessoaCLIENTE: TStringField;
    PessoaVENDEDOR: TStringField;
    PessoaREFPESSOAL1: TStringField;
    PessoaREFPESSOAL2: TStringField;
    PessoaREFPESSOALEND1: TStringField;
    PessoaREFPESSOALEND2: TStringField;
    PessoaREFPESSOALFONE1: TStringField;
    PessoaREFPESSOALFONE2: TStringField;
    PessoaREFCOMERCIAL1: TStringField;
    PessoaREFCOMERCIAL2: TStringField;
    PessoaREFCOMERCIALEND1: TStringField;
    PessoaREFCOMERCIALEND2: TStringField;
    PessoaREFCOMERCIALFONE1: TStringField;
    PessoaREFCOMERCIALFONE2: TStringField;
    PessoaCIDADE: TIntegerField;
    PessoaTRANSPORTADORA: TStringField;
    PessoaPERCCOMISSAO: TFloatField;
    PessoaTIPOCOMISSAO: TStringField;
    PessoaSTATUS: TStringField;
    PessoaDTCONTRATOINI: TDateField;
    PessoaDTCONTRATOFIM: TDateField;
    PessoaCONTRATODEVOLVIDO: TDateField;
    PessoaCOBENDERECO: TStringField;
    PessoaCOBNUMERO: TIntegerField;
    PessoaCOBCOMPLEMENTO: TStringField;
    PessoaCOBBAIRRO: TStringField;
    PessoaCOBCIDADE: TIntegerField;
    PessoaCOBUF: TStringField;
    PessoaCOBCONTATO: TStringField;
    PessoaENDCOMPLEMENTO: TStringField;
    PessoaIDUSUARIO: TIntegerField;
    PessoaCODBANCO: TIntegerField;
    PessoaAGENCIA: TStringField;
    PessoaNUMCONTACORRENTE: TStringField;
    PessoaLOGIN: TStringField;
    PessoaDIAPAGAMENTO: TIntegerField;
    PessoaCODVENDEDOR: TIntegerField;
    PessoaFORMAPGTO: TIntegerField;
    PessoaEMAIL: TStringField;
    PessoaHOMEPAGE: TStringField;
    PessoaSELECIONADO: TStringField;
    PessoaCONJUGE: TStringField;
    PessoaDTNASCIMENTO: TDateField;
    PessoaCEL: TStringField;
    PessoaPLANOSAUDE_ID: TIntegerField;
    PessoaCOBCEP: TStringField;
    PessoaVLRPGTO: TFloatField;
    PessoaNUMCARTEIRA: TStringField;
    PessoaFUNCIONARIO: TStringField;
    tPessoaFUNCIONARIO: TStringField;
    CentroCusto: TSQLDataSet;
    CentroCustoP: TDataSetProvider;
    tCentroCusto: TClientDataSet;
    dsCentroCusto: TDataSource;
    tCentroCustoID: TIntegerField;
    tCentroCustoNOME: TStringField;
    PessoaCODCENTROCUSTO: TIntegerField;
    tPessoaCODCENTROCUSTO: TIntegerField;
    tParametroTITULO1: TStringField;
    tParametroTITULO2: TStringField;
    tParametroCABECALHO1: TBlobField;
    tParametroCABECALHO2: TBlobField;
    tMovFinanceiroCODCENTROCUSTO: TIntegerField;
    CReceberParcIMPRIMIR: TStringField;
    CReceberParcCODCENTROCUSTO: TIntegerField;
    tCReceberParcIMPRIMIR: TStringField;
    tCReceberParcCODCENTROCUSTO: TIntegerField;
    CPagarParcCODCENTROCUSTO: TIntegerField;
    tCPagarParcCODCENTROCUSTO: TIntegerField;
    tMovFinanceiroTIPOPESSOA: TStringField;
    PrevCentroCusto: TSQLDataSet;
    PrevCentroCustoP: TDataSetProvider;
    tPrevCentroCusto: TClientDataSet;
    tPrevCentroCustoCODCENTROCUSTO: TIntegerField;
    tPrevCentroCustoANO: TIntegerField;
    tPrevCentroCustoMES: TIntegerField;
    tPrevCentroCustoVALOR: TFloatField;
    dsPrevCentroCusto: TDataSource;
    tTipoCobrancaTIPO: TIntegerField;
    tTipoCobrancaclTipo: TStringField;
    PessoaCODTIPOCOBRANCA: TIntegerField;
    tPessoaCODTIPOCOBRANCA: TIntegerField;
    qPessoa: TADOQuery;
    tOcorrenciaAcc: TADOTable;
    tOcorrenciaAccIdOcorrencia: TAutoIncField;
    tOcorrenciaAccNumero: TIntegerField;
    tOcorrenciaAccIdAlarme: TIntegerField;
    tOcorrenciaAccData: TDateTimeField;
    tOcorrenciaAccHora: TDateTimeField;
    tOcorrenciaAccTipo: TIntegerField;
    tOcorrenciaAccSituacao: TIntegerField;
    tOcorrenciaAccIdOperador: TIntegerField;
    EmpresaLOGOEMPRESA2: TStringField;
    tEmpresaLOGOEMPRESA2: TStringField;
    tMovFinanceiroNOMEPESSOA: TStringField;
    tPedidoServicoSERVICO_ID: TIntegerField;
    tPedidoServicoSERVICOPERM_ID: TIntegerField;
    tPedidoServicoQTD: TFloatField;
    tPedidoServicoITEM: TIntegerField;
    PedidoPROBLEMAS: TMemoField;
    PedidoSOLUCOES: TMemoField;
    tPedidoPROBLEMAS: TMemoField;
    tPedidoSOLUCOES: TMemoField;
    PedidoServicoPEDIDO_ID: TIntegerField;
    PedidoServicoITEM: TIntegerField;
    PedidoServicoSERVICO_ID: TIntegerField;
    PedidoServicoDATAINI: TDateField;
    PedidoServicoDATAFIM: TDateField;
    PedidoServicoHRINI: TTimeField;
    PedidoServicoHRFIM: TTimeField;
    PedidoServicoEFETIVO: TSmallintField;
    PedidoServicoDURACAO: TSmallintField;
    PedidoServicoRONDASDIA: TIntegerField;
    PedidoServicoVALORMES: TFMTBCDField;
    PedidoServicoVALORSERVICO: TFMTBCDField;
    PedidoServicoSERVICOAVULSO_ID: TIntegerField;
    PedidoServicoSERVICOPERM_ID: TIntegerField;
    PedidoServicoQTD: TFloatField;
    PedidoServicoSERVICO: TStringField;
    tPedidoServicoSERVICO: TStringField;
    PedidoVLRLUCRO: TFMTBCDField;
    tPedidoVLRLUCRO: TFMTBCDField;
    CReceberParcOBS: TBlobField;
    tCReceberParcOBS: TBlobField;
    PessoaTIPOSALARIO: TStringField;
    PessoaVALORSALARIO: TFloatField;
    tPessoaTIPOSALARIO: TStringField;
    tPessoaVALORSALARIO: TFloatField;
    Eventos: TSQLDataSet;
    EventosP: TDataSetProvider;
    tEventos: TClientDataSet;
    dsEventos: TDataSource;
    Valores: TSQLDataSet;
    ValoresP: TDataSetProvider;
    tValores: TClientDataSet;
    dsValores: TDataSource;
    tValoresID: TIntegerField;
    tValoresFUNCIONARIO: TIntegerField;
    tValoresDTMOV: TDateField;
    tValoresVALOR: TFloatField;
    tValoresIDEVENTO: TIntegerField;
    tValoresHORA: TFloatField;
    tValoresNOMEFUNCIONARIO: TStringField;
    tValoresEVENTO: TStringField;
    tEventosID: TIntegerField;
    tEventosNOME: TStringField;
    tEventosES: TStringField;
    tEventosPERCENTUAL: TFloatField;
    tEventosHORAEXTRA: TStringField;
    ValoresID: TIntegerField;
    ValoresFUNCIONARIO: TIntegerField;
    ValoresDTMOV: TDateField;
    ValoresVALOR: TFloatField;
    ValoresIDEVENTO: TIntegerField;
    ValoresHORA: TFloatField;
    ValoresNOMEFUNCIONARIO: TStringField;
    ValoresEVENTO: TStringField;
    tParametroPERCFOLHA: TFMTBCDField;
    tParametroPERCLUCRO: TFMTBCDField;
    PedidoVLRFOLHA: TFMTBCDField;
    tPedidoVLRFOLHA: TFMTBCDField;
    PedidoVLRSUGERIDO: TFMTBCDField;
    tPedidoVLRSUGERIDO: TFMTBCDField;
    PessoaRG: TStringField;
    tPessoaRG: TStringField;
    PessoaServicoExtra: TSQLDataSet;
    PessoaServicoExtraP: TDataSetProvider;
    tPessoaServicoExtra: TClientDataSet;
    dsPessoaServicoExtra: TDataSource;
    PessoaServicoExtraPESSOA_ID: TIntegerField;
    PessoaServicoExtraID: TIntegerField;
    PessoaServicoExtraDTEMISSAO: TDateField;
    PessoaServicoExtraDESCRICAO: TStringField;
    PessoaServicoExtraVALOR: TFMTBCDField;
    PessoaServicoExtraGERADO: TStringField;
    PessoaServicoExtraDTGERADO: TDateField;
    tPessoaServicoExtraPESSOA_ID: TIntegerField;
    tPessoaServicoExtraID: TIntegerField;
    tPessoaServicoExtraDTEMISSAO: TDateField;
    tPessoaServicoExtraDESCRICAO: TStringField;
    tPessoaServicoExtraVALOR: TFMTBCDField;
    tPessoaServicoExtraGERADO: TStringField;
    tPessoaServicoExtraDTGERADO: TDateField;
    PessoaNOMEPAI: TStringField;
    PessoaNOMEMAE: TStringField;
    tPessoaNOMEPAI: TStringField;
    tPessoaNOMEMAE: TStringField;
    Curso: TSQLDataSet;
    CursoP: TDataSetProvider;
    tCurso: TClientDataSet;
    dsCurso: TDataSource;
    tCursoID: TIntegerField;
    tCursoNOME: TStringField;
    Pessoa_Curso: TSQLDataSet;
    Pessoa_CursoP: TDataSetProvider;
    tPessoa_Curso: TClientDataSet;
    tPessoa_CursoPESSOA_ID: TIntegerField;
    tPessoa_CursoCURSO_ID: TIntegerField;
    tPessoa_CursoDTINICIO: TDateField;
    tPessoa_CursoDTFINAL: TDateField;
    tPessoa_CursoCARGAHORARIA: TIntegerField;
    dsPessoa_Curso: TDataSource;
    tPessoa_CursoNOME: TStringField;
    Pessoa_CursoPESSOA_ID: TIntegerField;
    Pessoa_CursoCURSO_ID: TIntegerField;
    Pessoa_CursoDTINICIO: TDateField;
    Pessoa_CursoDTFINAL: TDateField;
    Pessoa_CursoCARGAHORARIA: TIntegerField;
    Pessoa_CursoNOME: TStringField;
    EmpresaSTRETCH: TStringField;
    tEmpresaSTRETCH: TStringField;
    PessoaCODCLAUSULA: TIntegerField;
    tPessoaCODCLAUSULA: TIntegerField;
    PessoaDESCCLAUSULA: TBlobField;
    tPessoaDESCCLAUSULA: TBlobField;
    Pessoa_CursoVLRCURSO: TFloatField;
    tPessoa_CursoVLRCURSO: TFloatField;
    CReceberDiscrim: TSQLDataSet;
    pCReceberDiscrim: TDataSetProvider;
    tCReceberDiscrim: TClientDataSet;
    dsCReceberDiscrim: TDataSource;
    tCReceberDiscrimNUMCRECEBER: TIntegerField;
    tCReceberDiscrimPARCELA: TStringField;
    tCReceberDiscrimDISCRIMINACAO: TStringField;
    tCReceberDiscrimVALOR: TFMTBCDField;
    CReceberDiscrimNUMCRECEBER: TIntegerField;
    CReceberDiscrimPARCELA: TStringField;
    CReceberDiscrimDISCRIMINACAO: TStringField;
    CReceberDiscrimVALOR: TFMTBCDField;
    CReceberDiscrimNOME: TStringField;
    tCReceberDiscrimNOME: TStringField;
    CReceberDiscrimID: TIntegerField;
    tCReceberDiscrimID: TIntegerField;
    CReceberDiscrimCC: TIntegerField;
    tCReceberDiscrimCC: TIntegerField;
    PessoaEmpresas: TSQLDataSet;
    pPessoaEmpresas: TDataSetProvider;
    tPessoaEmpresas: TClientDataSet;
    dsPessoaEmpresas: TDataSource;
    tPessoaEmpresasEMPRESA_ID: TIntegerField;
    tPessoaEmpresasDATAINI: TDateField;
    tPessoaEmpresasDATAFIM: TDateField;
    PessoaALUNO: TStringField;
    tPessoaALUNO: TStringField;
    PessoaEmpresasEMPRESA_ID: TIntegerField;
    PessoaEmpresasDATAINI: TDateField;
    PessoaEmpresasDATAFIM: TDateField;
    PessoaEmpresasNOME: TStringField;
    tPessoaEmpresasNOME: TStringField;
    PessoaEmpresasPESSOA_ID: TIntegerField;
    tPessoaEmpresasPESSOA_ID: TIntegerField;
    PessoaNATURALIDADE_CID: TIntegerField;
    PessoaNATURALIDADE_UF: TStringField;
    tPessoaNATURALIDADE_CID: TIntegerField;
    tPessoaNATURALIDADE_UF: TStringField;
    EmpresaALVARA: TStringField;
    EmpresaCERTIFICADO: TStringField;
    tEmpresaALVARA: TStringField;
    tEmpresaCERTIFICADO: TStringField;
    Pessoa_CursoTURMA: TStringField;
    tPessoa_CursoTURMA: TStringField;
    PessoaINFO_ADICIONAIS: TBlobField;
    tPessoaINFO_ADICIONAIS: TBlobField;
    PessoaFOTO_CAMINHO: TStringField;
    PessoaFOTO: TBlobField;
    tPessoaFOTO_CAMINHO: TStringField;
    tPessoaFOTO: TBlobField;
    Disciplina: TSQLDataSet;
    pDisciplina: TDataSetProvider;
    tDisciplina: TClientDataSet;
    dsDisciplina: TDataSource;
    tDisciplinaID: TIntegerField;
    tDisciplinaDESCRICAO: TStringField;
    tDisciplinaSIGLA: TStringField;
    tDisciplinaCARGA_HORARIA: TStringField;
    CursoDisciplina: TSQLDataSet;
    pCursoDisciplina: TDataSetProvider;
    tCursoDisciplina: TClientDataSet;
    dsCursoDisciplina: TDataSource;
    tCursoDisciplinaCURSO_ID: TIntegerField;
    tCursoDisciplinaDISCIPLINA_ID: TIntegerField;
    CursoDisciplinaCURSO_ID: TIntegerField;
    CursoDisciplinaDISCIPLINA_ID: TIntegerField;
    CursoDisciplinaDESCRICAO: TStringField;
    tCursoDisciplinaDESCRICAO: TStringField;
    PessoaCursoNota: TSQLDataSet;
    pPessoaCursoNota: TDataSetProvider;
    tPessoaCursoNota: TClientDataSet;
    dsPessoaCursoNota: TDataSource;
    PessoaCursoNotaID: TIntegerField;
    PessoaCursoNotaPESSOA_ID: TIntegerField;
    PessoaCursoNotaCURSO_ID: TIntegerField;
    PessoaCursoNotaDISCIPLINA_ID: TIntegerField;
    PessoaCursoNotaNOTA: TFMTBCDField;
    PessoaCursoNotaSIGLA: TStringField;
    tPessoaCursoNotaID: TIntegerField;
    tPessoaCursoNotaPESSOA_ID: TIntegerField;
    tPessoaCursoNotaCURSO_ID: TIntegerField;
    tPessoaCursoNotaDISCIPLINA_ID: TIntegerField;
    tPessoaCursoNotaNOTA: TFMTBCDField;
    tPessoaCursoNotaSIGLA: TStringField;
    PessoaCursoNotaDESCRICAO: TStringField;
    tPessoaCursoNotaDESCRICAO: TStringField;
    PessoaSEXO: TStringField;
    tPessoaSEXO: TStringField;
    CursoDisciplinaSIGLA: TStringField;
    tCursoDisciplinaSIGLA: TStringField;
    Pessoa_CursoMEDIA: TFMTBCDField;
    tPessoa_CursoMEDIA: TFMTBCDField;
    tCursoTIPO: TStringField;
    PessoaREGISTRO_DPF: TStringField;
    PessoaEXP_REGISTRO_DPF: TStringField;
    PessoaDT_FORMACAO: TDateField;
    tPessoaREGISTRO_DPF: TStringField;
    tPessoaEXP_REGISTRO_DPF: TStringField;
    tPessoaDT_FORMACAO: TDateField;
    tCursoRECICLAGEM_COD: TStringField;
    BcoItauTIPOJURO: TStringField;
    tBcoItauTIPOJURO: TStringField;
    PessoaCIDADENOME: TStringField;
    tPessoaCIDADENOME: TStringField;
    PessoaCONTRASENHA: TStringField;
    PessoaSENHA: TStringField;
    tPessoaCONTRASENHA: TStringField;
    tPessoaSENHA: TStringField;
    PessoaCHAVE: TStringField;
    PessoaCONTROLE: TStringField;
    tPessoaCHAVE: TStringField;
    tPessoaCONTROLE: TStringField;
    BcoItauTARIFACOBRANCA: TFMTBCDField;
    tBcoItauTARIFACOBRANCA: TFMTBCDField;
    BcoSicredi: TSQLDataSet;
    BcoSicrediP: TDataSetProvider;
    tSicred: TClientDataSet;
    dsBcoSicredi: TDataSource;
    tSicredCODCEDENTE: TStringField;
    tSicredCARTEIRA: TStringField;
    tSicredACEITE: TStringField;
    tSicredINSTRUCAO: TStringField;
    tSicredDIASPROTESTO: TIntegerField;
    tSicredCAMINHO: TStringField;
    tSicredNOME: TStringField;
    tSicredEXTENSAO: TStringField;
    tSicredVLRDESCONTO: TFMTBCDField;
    tSicredVLRJUROSPORDIA: TFMTBCDField;
    tSicredCODCONTA: TIntegerField;
    tSicredESPECIEDOC: TStringField;
    tSicredINSTRCOBRANCA1: TStringField;
    tSicredINSTRCOBRANCA2: TStringField;
    tSicredNUMCARTEIRA: TStringField;
    tSicredDTLIMITEDESCONTO: TDateField;
    tSicredTARIFACOBRANCA: TFMTBCDField;
    tSicredTIPOJURO: TStringField;
    tSicredCAMPOALTERADO: TStringField;
    tSicredTAXAMULTA: TFMTBCDField;
    tSicredINSTPROTESTO: TStringField;
    tSicredNUMREMESSA: TIntegerField;
    tSicredTIPODESCONTO: TStringField;
    dsContasParametros: TDataSource;
    tContasParametros: TClientDataSet;
    ContasParametrosP: TDataSetProvider;
    ContasParametros: TSQLDataSet;
    tContasParametrosCODCONTA: TIntegerField;
    tContasParametrosANO: TIntegerField;
    tContasParametrosITEM: TIntegerField;
    tContasParametrosNUMSEQNOSSONUM: TIntegerField;
    CReceberParcARQGERADO: TStringField;
    tCReceberParcARQGERADO: TStringField;
    CReceberParcIMPBOLETOSICREDICEDENTE: TStringField;
    tCReceberParcIMPBOLETOSICREDICEDENTE: TStringField;
    CReceberParcNUMTITBANCO: TStringField;
    CReceberParcNUMSEQNOSSONUM: TIntegerField;
    CReceberParcITEMSEQNOSSONUM: TIntegerField;
    tCReceberParcNUMTITBANCO: TStringField;
    tCReceberParcNUMSEQNOSSONUM: TIntegerField;
    tCReceberParcITEMSEQNOSSONUM: TIntegerField;
    tCidadeCODPRACASICREDI: TIntegerField;
    tCidadeSITSICREDI: TStringField;
    tCidadeTIPOCOBSICREDI: TStringField;
    tCidadeCOOPERATIVASICREDI: TStringField;
    tCidadePOSTOSICREDI: TStringField;
    tCidadeDTALTSICREDI: TDateField;
    CReceberParcDUPLICATAIMP: TStringField;
    tCReceberParcDUPLICATAIMP: TStringField;
    tClausulaTIPO: TStringField;
    tClausulaclTipo: TStringField;
    PessoaServicoCONTRATO: TBlobField;
    tPessoaServicoCONTRATO: TBlobField;
    Vincendo: TSQLDataSet;
    pVincendo: TDataSetProvider;
    tVincendo: TClientDataSet;
    dsVincendo: TDataSource;
    PessoaServicoReajuste: TSQLDataSet;
    tPessoaServicoReajuste: TClientDataSet;
    dsPessoaServicoReajuste: TDataSource;
    Viatura: TSQLDataSet;
    pViatura: TDataSetProvider;
    tViatura: TClientDataSet;
    dsViatura: TDataSource;
    ViaturaID: TIntegerField;
    ViaturaATIVA: TStringField;
    tViaturaID: TIntegerField;
    tViaturaATIVA: TStringField;
    Bairro: TSQLDataSet;
    pBairro: TDataSetProvider;
    tBairro: TClientDataSet;
    dsBairro: TDataSource;
    BairroID: TIntegerField;
    BairroNOME: TStringField;
    BairroCIDADE: TIntegerField;
    tBairroID: TIntegerField;
    tBairroNOME: TStringField;
    tBairroCIDADE: TIntegerField;
    ViaturaPLACA: TStringField;
    tViaturaPLACA: TStringField;
    PessoaAGENTE: TStringField;
    tPessoaAGENTE: TStringField;
    BairroCIDADENOME: TStringField;
    tBairroCIDADENOME: TStringField;
    tServicoRONDA: TStringField;
    tServicoALARME: TStringField;
    tServicoCAMERA: TStringField;
    tServicoPORTARIA: TStringField;
    tServicoMONITORAMENTO: TStringField;
    Celular: TSQLDataSet;
    pCelular: TDataSetProvider;
    tCelular: TClientDataSet;
    dsCelular: TDataSource;
    CelularID: TIntegerField;
    CelularOPERADORA: TStringField;
    CelularNUMERO: TStringField;
    tCelularID: TIntegerField;
    tCelularOPERADORA: TStringField;
    tCelularNUMERO: TStringField;
    PessoaCODIGO: TStringField;
    tPessoaCODIGO: TStringField;
    ServicoID: TIntegerField;
    ServicoNOME: TStringField;
    ServicoVALORHORA: TStringField;
    ServicoDESLOCAMENTO: TStringField;
    ServicoPERMANENTE: TStringField;
    ServicoAVULSO: TStringField;
    ServicoRONDA: TStringField;
    ServicoALARME: TStringField;
    ServicoCAMERA: TStringField;
    ServicoPORTARIA: TStringField;
    ServicoMONITORAMENTO: TStringField;
    ServicoABERTURA: TStringField;
    tServicoABERTURA: TStringField;
    PessoaServicoSEG_HR_INI: TTimeField;
    PessoaServicoSEG_HR_FIM: TTimeField;
    PessoaServicoTER_HR_INI: TTimeField;
    PessoaServicoTER_HR_FIM: TTimeField;
    PessoaServicoQUA_HR_INI: TTimeField;
    PessoaServicoQUA_HR_FIM: TTimeField;
    PessoaServicoQUI_HR_INI: TTimeField;
    PessoaServicoQUI_HR_FIM: TTimeField;
    PessoaServicoSEX_HR_INI: TTimeField;
    PessoaServicoSEX_HR_FIM: TTimeField;
    PessoaServicoSAB_HR_INI: TTimeField;
    PessoaServicoSAB_HR_FIM: TTimeField;
    PessoaServicoDOM_HR_INI: TTimeField;
    PessoaServicoDOM_HR_FIM: TTimeField;
    tPessoaServicoSEG_HR_INI: TTimeField;
    tPessoaServicoSEG_HR_FIM: TTimeField;
    tPessoaServicoTER_HR_INI: TTimeField;
    tPessoaServicoTER_HR_FIM: TTimeField;
    tPessoaServicoQUA_HR_INI: TTimeField;
    tPessoaServicoQUA_HR_FIM: TTimeField;
    tPessoaServicoQUI_HR_INI: TTimeField;
    tPessoaServicoQUI_HR_FIM: TTimeField;
    tPessoaServicoSEX_HR_INI: TTimeField;
    tPessoaServicoSEX_HR_FIM: TTimeField;
    tPessoaServicoSAB_HR_INI: TTimeField;
    tPessoaServicoSAB_HR_FIM: TTimeField;
    tPessoaServicoDOM_HR_INI: TTimeField;
    tPessoaServicoDOM_HR_FIM: TTimeField;
    PedidoCNPJ: TStringField;
    tPedidoCNPJ: TStringField;
    tParametroUSUARIODIARIO: TStringField;
    Pessoa_CursoID: TIntegerField;
    tPessoa_CursoID: TIntegerField;
    tCursoVALOR: TFMTBCDField;
    CursoID: TIntegerField;
    CursoNOME: TStringField;
    CursoTIPO: TStringField;
    CursoRECICLAGEM_COD: TStringField;
    CursoVALOR: TFMTBCDField;
    CursoCARGA_HORARIA: TSmallintField;
    tCursoCARGA_HORARIA: TSmallintField;
    Pessoa_CursoFORMAPGTO_ID: TIntegerField;
    Pessoa_CursoCONDPGTO_ID: TIntegerField;
    tPessoa_CursoFORMAPGTO_ID: TIntegerField;
    tPessoa_CursoCONDPGTO_ID: TIntegerField;
    Pessoa_CursoENTRADA: TFMTBCDField;
    tPessoa_CursoENTRADA: TFMTBCDField;
    Pessoa_CursoFORMAPGTO: TStringField;
    Pessoa_CursoCONDPGTO: TStringField;
    tPessoa_CursoFORMAPGTO: TStringField;
    tPessoa_CursoCONDPGTO: TStringField;
    Pessoa_CursoVLRDESCONTO: TFMTBCDField;
    tPessoa_CursoVLRDESCONTO: TFMTBCDField;
    PessoaCID_NATURAL: TStringField;
    tPessoaCID_NATURAL: TStringField;
    PessoaESCOLARIDADE: TStringField;
    PessoaPESO: TFMTBCDField;
    PessoaALTURA: TFMTBCDField;
    PessoaFILHOS: TStringField;
    PessoaCARGO_PRETENDIDO: TStringField;
    PessoaSALARIO_PRETENDIDO: TFMTBCDField;
    tPessoaESCOLARIDADE: TStringField;
    tPessoaPESO: TFMTBCDField;
    tPessoaALTURA: TFMTBCDField;
    tPessoaFILHOS: TStringField;
    tPessoaCARGO_PRETENDIDO: TStringField;
    tPessoaSALARIO_PRETENDIDO: TFMTBCDField;
    tParametroREVISOR_EMAIL: TStringField;
    sdsPessoaFoto: TSQLDataSet;
    dspPessoaFoto: TDataSetProvider;
    cdsPessoaFoto: TClientDataSet;
    dsPessoaFoto: TDataSource;
    sdsPessoaFotoID: TIntegerField;
    sdsPessoaFotoFOTO: TBlobField;
    cdsPessoaFotoID: TIntegerField;
    cdsPessoaFotoFOTO: TBlobField;
    tParametroFOTOS_PASTA: TStringField;
    PessoaOBJETIVOS: TMemoField;
    PessoaCURSOS_ANT: TMemoField;
    PessoaEMPREGOS_ANT: TMemoField;
    tPessoaOBJETIVOS: TMemoField;
    tPessoaCURSOS_ANT: TMemoField;
    tPessoaEMPREGOS_ANT: TMemoField;
    CursoDisciplinaCARGA_HORARIA: TStringField;
    tCursoDisciplinaCARGA_HORARIA: TStringField;
    PessoaCursoNotaCARGA_HORARIA: TStringField;
    tPessoaCursoNotaCARGA_HORARIA: TStringField;
    PessoaID_INTERNET: TIntegerField;
    PessoaJAQUETA: TStringField;
    PessoaSAPATO: TStringField;
    PessoaCOLETE: TStringField;
    PessoaCAMISA: TStringField;
    PessoaOUTRA_LINGUA: TStringField;
    PessoaOUTRA_LINGUA_NIVEL: TStringField;
    PessoaHORARIO_DISPONIVEL: TStringField;
    PessoaFDS_DISPONIVEL: TStringField;
    PessoaFUMANTE: TStringField;
    PessoaAP: TStringField;
    PessoaVERB: TStringField;
    PessoaCOD: TStringField;
    PessoaCONTA: TStringField;
    tPessoaID_INTERNET: TIntegerField;
    tPessoaJAQUETA: TStringField;
    tPessoaSAPATO: TStringField;
    tPessoaCOLETE: TStringField;
    tPessoaCAMISA: TStringField;
    tPessoaOUTRA_LINGUA: TStringField;
    tPessoaOUTRA_LINGUA_NIVEL: TStringField;
    tPessoaHORARIO_DISPONIVEL: TStringField;
    tPessoaFDS_DISPONIVEL: TStringField;
    tPessoaFUMANTE: TStringField;
    tPessoaAP: TStringField;
    tPessoaVERB: TStringField;
    tPessoaCOD: TStringField;
    tPessoaCONTA: TStringField;
    PessoaCALCA: TStringField;
    tPessoaCALCA: TStringField;
    PessoaENDNUMERO: TStringField;
    tPessoaENDNUMERO: TStringField;
    PessoaTURMA_INTERNET: TStringField;
    tPessoaTURMA_INTERNET: TStringField;
    PessoaNOME: TStringField;
    tPessoaNOME: TStringField;
    MovFinanceiroNUMMOVTO: TIntegerField;
    MovFinanceiroCODBANCO: TIntegerField;
    MovFinanceiroDTMOVIMENTO: TDateField;
    MovFinanceiroVLRENTRADA: TFloatField;
    MovFinanceiroVLRSAIDA: TFloatField;
    MovFinanceiroHISTORICO: TStringField;
    MovFinanceiroTIPOMOV: TStringField;
    MovFinanceiroCODCENTROCUSTO: TIntegerField;
    MovFinanceiroTIPOPESSOA: TStringField;
    MovFinanceiroNOMEPESSOA: TStringField;
    tParametroMODELO_CONTRATO: TStringField;
    CursoARQUIVO_CONTRATO: TStringField;
    tCursoARQUIVO_CONTRATO: TStringField;
    Pessoa_CursoARQUIVO_CONTRATO: TStringField;
    tPessoa_CursoARQUIVO_CONTRATO: TStringField;
    tParametroESCOLA: TStringField;
    PessoaVALIDADE_CMA: TDateField;
    tPessoaVALIDADE_CMA: TDateField;
    Pessoa_CursoSITUACAO: TStringField;
    tPessoa_CursoSITUACAO: TStringField;
    EmpresaCOD_ESCOLA: TStringField;
    EmpresaCCT: TStringField;
    tEmpresaCOD_ESCOLA: TStringField;
    tEmpresaCCT: TStringField;
    tParametroASSINATURA: TBlobField;
    tParametroJUROS_MES_PERCENT: TFMTBCDField;
    tParametroMULTA_PERCENT: TFMTBCDField;
    tBancoACBR_BANCO: TStringField;
    tBancoACBR_LAYOUT: TStringField;
    tBancoACBR_LOGO_BANCO: TStringField;
    tBancoDIG_AGENCIA: TStringField;
    tBancoCEDENTE: TStringField;
    tBancoJUROS_MES: TFMTBCDField;
    tBancoMULTA: TFMTBCDField;
    tBancoDIAS_PROTESTO: TSmallintField;
    tBancoCARTEIRA: TIntegerField;
    tBancoNUM_REMESSA: TSmallintField;
    tBancoCOD_FEBRABAN: TStringField;
    tBancoCOD_TRANSMISSAO: TStringField;
    tBancoOCORRENCIA: TStringField;
    tBancoINSTRUCAO1: TStringField;
    tBancoINSTRUCAO2: TStringField;
    tBancoESPECIE: TStringField;
    tBancoEND_ARQ_REMESSA: TStringField;
    tBancoEXT_ARQ_REMESSA: TStringField;
    sdsContas_Calculo: TSQLDataSet;
    dspContas_calculo: TDataSetProvider;
    cdsContas_calculo: TClientDataSet;
    cdsContas_calculoID: TIntegerField;
    cdsContas_calculoANO: TIntegerField;
    cdsContas_calculoITEM: TIntegerField;
    cdsContas_calculoSEQ_NOSSONUMERO: TFMTBCDField;
    dsContas_calculo: TDataSource;
    sdsContas_CalculoID: TIntegerField;
    sdsContas_CalculoANO: TIntegerField;
    sdsContas_CalculoITEM: TIntegerField;
    sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField;
    tBancoNOSSONUMERO_POR_ANO: TStringField;
    tBancoTIPO_IMPRESSAO: TStringField;
    tBancoVARIACAO_CARTEIRA: TStringField;
    tBancoLOCAL_PAGAMENTO: TStringField;
    tBancoMENSAGEM: TStringField;
    sdsPessoaReajuste: TSQLDataSet;
    dspPessoaReajuste: TDataSetProvider;
    cdsPessoaReajuste: TClientDataSet;
    dsPessoaReajuste: TDataSource;
    sdsPessoaReajusteID: TIntegerField;
    sdsPessoaReajusteITEM: TIntegerField;
    sdsPessoaReajusteDATA: TDateField;
    sdsPessoaReajusteVALOR: TFloatField;
    cdsPessoaReajusteID: TIntegerField;
    cdsPessoaReajusteITEM: TIntegerField;
    cdsPessoaReajusteDATA: TDateField;
    cdsPessoaReajusteVALOR: TFloatField;
    sdsPessoaCons: TSQLDataSet;
    dspPessoaCons: TDataSetProvider;
    cdsPessoaCons: TClientDataSet;
    dsPessoaCons: TDataSource;
    cdsPessoaConsID: TIntegerField;
    cdsPessoaConsNOME: TStringField;
    cdsPessoaConsFANTASIA: TStringField;
    cdsPessoaConsFONE: TStringField;
    cdsPessoaConsCEL: TStringField;
    cdsPessoaConsENDERECO: TStringField;
    cdsPessoaConsENDNUMERO: TStringField;
    cdsPessoaConsBAIRRO: TStringField;
    cdsPessoaConsCIDADENOME: TStringField;
    cdsPessoaConsENDCOMPLEMENTO: TStringField;
    cdsPessoaConsPESSOA: TStringField;
    cdsPessoaConsDOCUMENTO: TStringField;
    cdsPessoaConsIDENTIDADE: TStringField;
    cdsPessoaConsDTCADASTRO: TDateField;
    cdsPessoaConsDTNASCIMENTO: TDateField;
    cdsPessoaConsNUMCARTEIRA: TStringField;
    cdsPessoaConsSTATUS: TStringField;
    cdsPessoaConsID_INTERNET: TIntegerField;
    cdsPessoaConsDIAPAGAMENTO: TIntegerField;
    Pessoa_CursoVENDEDOR_ID: TIntegerField;
    Pessoa_CursoDTVENDA: TDateField;
    tPessoa_CursoVENDEDOR_ID: TIntegerField;
    tPessoa_CursoDTVENDA: TDateField;
    Pessoa_CursoMOTIVO_DESISTENCIA: TStringField;
    tPessoa_CursoMOTIVO_DESISTENCIA: TStringField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dsVendedor: TDataSource;
    procedure tProdutoNewRecord(DataSet: TDataSet);
    procedure tCondPgtoNewRecord(DataSet: TDataSet);
    procedure tCidadeNewRecord(DataSet: TDataSet);
    procedure tNatOperacaoNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaItNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaParcNewRecord(DataSet: TDataSet);
    procedure tNotaEntradaMObraNewRecord(DataSet: TDataSet);
    procedure tBancoNewRecord(DataSet: TDataSet);
    procedure tCondPgtoItNewRecord(DataSet: TDataSet);
    procedure tProdutoTamNewRecord(DataSet: TDataSet);
    procedure tMovFinanceiroNewRecord(DataSet: TDataSet);
    procedure tCPagarParcNewRecord(DataSet: TDataSet);
    procedure tCPagarHistNewRecord(DataSet: TDataSet);
    procedure tCReceberHistNewRecord(DataSet: TDataSet);
    procedure tPedidoNewRecord(DataSet: TDataSet);
    procedure ConexaoBeforeConnect(Sender: TObject);
    procedure tPedidoItNewRecord(DataSet: TDataSet);
    procedure tProdutoFotoAfterScroll(DataSet: TDataSet);
    procedure tCReceberParcNewRecord(DataSet: TDataSet);
    procedure tPedidoCalcFields(DataSet: TDataSet);
    procedure tMovAvulsoItensNewRecord(DataSet: TDataSet);
    procedure tMovAvulsoParcNewRecord(DataSet: TDataSet);
    procedure tMovAvulsoNewRecord(DataSet: TDataSet);
    procedure PessoaPUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure tPrevCentroCustoNewRecord(DataSet: TDataSet);
    procedure tTipoCobrancaCalcFields(DataSet: TDataSet);
    procedure tTipoCobrancaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tPessoaServicoExtraNewRecord(DataSet: TDataSet);
    procedure tPessoaServicoExtraBeforeInsert(DataSet: TDataSet);
    procedure tPessoaServicoExtraBeforeDelete(DataSet: TDataSet);
    procedure tPessoaServicoExtraAfterInsert(DataSet: TDataSet);
    procedure tPessoaServicoExtraBeforePost(DataSet: TDataSet);
    procedure tCursoAfterInsert(DataSet: TDataSet);
    procedure tCursoBeforePost(DataSet: TDataSet);
    procedure tPessoa_CursoBeforePost(DataSet: TDataSet);
    procedure tPessoa_CursoAfterInsert(DataSet: TDataSet);
    procedure ConectionBeforeConnect(Sender: TObject);
    procedure tPessoaAfterInsert(DataSet: TDataSet);
    procedure tClausulaCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    vItemExtra: Integer;
    FDataSetError: TrsDataSetError;

    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);

    function OriginalCommandTextPREVCENTROCUSTO: String;
    function OriginalCommandTextCurso: String;

  public
    { Public declarations }
    vUsuario: String;
    ctPessoa, ctPessoaC: String;
    function Incrementa(Campo, Tabela: String): Integer;
    function MontaBoletoItau(tipo, nDoc, carteira, DigNossoNum: String; data: TDateTime; valor: Currency): String;
    function ProximaSequencia(NomeTabela: String): Integer;

    procedure Gravar(id: Integer);

    procedure MontaSQL_PREVCENTROCUSTO(CodCentroCusto, Ano: Integer);
    procedure MontaSQL_CURSO(Busca, ColunaOrdenada: String);

    procedure Gravar_Curso;
    procedure Excluir_Curso;
    function trataString(vStr: String; tipo: Byte): String;
    function MontaBoletoSicredi(tipo, nDoc: string; data: TDateTime; valor: Currency): string;
  end;

var
  vTabSheet: String;
  vAltera: String; //I= Inserir Item     A= Alterar Item    C=Consultar Item
  usu: Integer;
  TD: TTransactionDesc;

implementation

uses UDmCons, UProduto, SendMailOptions, LogProvider;

{$R *.dfm}

function TDM1.MontaBoletoSicredi(tipo, nDoc: string; data: TDateTime; valor: Currency): string;
var
  fatVcto, vlr, vCodBarra, vLinha, dv: string;
  i: Byte;
  vAux, vAux2, vSoma: Integer;
  vCampo1, vCampo2, vCampo3, vCampo4, vCampo5: string;
  //Função para calcular o digito verificador no módulo 11
  function CalculaDigMod11(Campo: string): string;
  var
    i: Byte;
  begin
    vSoma := 0;
    vAux := 1;
    for i := length(campo) downto 1 do
    begin
      inc(vAux);
      if vAux > 9 then
        vAux := 2;
      vSoma := vSoma + (StrToInt(Copy(campo, i, 1)) * vAux);
    end;
    vAux := vSoma div 11;
    vAux2 := vAux * 11;
    vAux := vSoma - vAux2;
    if (Length(Campo) = 24) and ((vAux = 0) or (vAux = 1)) then
      vAux := 0
    else
      vAux := 11 - vAux;
    CalculaDigMod11 := IntToStr(vAux);
  end;

  //Função para calcular o digito verificador no módulo 10
  function CalculaDigMod10(Campo: string): string;
  var
    i: Byte;
    v: string;
  begin
    v := '2';
    vSoma := 0;
    for i := length(campo) downto 1 do
    begin
      dv := IntToStr(StrToInt(Copy(campo, i, 1)) * StrToInt(v));
      if StrToInt(dv) >= 10 then
        dv := IntToStr(StrToInt(copy(dv, 1, 1)) + StrToInt(copy(dv, 2, 1)));
      vSoma := vSoma + StrToInt(dv);
      if v = '2' then
        v := '1'
      else
        v := '2';
    end;
    dv := IntToStr(vSoma + 9);
    dv := IntToStr(StrToInt(dv) div 10);
    dv := IntToStr(StrToInt(dv) * 10);
    vSoma := StrToInt(dv) - vSoma;
    if vSoma = 10 then
      vSoma := 0;
    CalculaDigMod10 := IntToStr(vSoma);
  end;

begin
  fatVcto := FormatFloat('0', data - StrToDate('07/10/1997'));
  vlr := FormatFloat('0', valor * 100);
  for i := 1 to 10 - Length(vlr) do
    vlr := '0' + vlr;

  //vCalc := '7489' + ;

  vCodBarra := '748'; //01 a 03 Identificação do banco
  vCodBarra := vCodBarra + '9'; //04 a 04 Código da moeda
  vCodBarra := vCodBarra + fatVcto; //06 a 09
  vCodBarra := vCodBarra + vlr; //10 a 19

  vCodBarra := vCodBarra + '1'; //20 a 20 Tipo de cobrança
  vCodBarra := vCodBarra + '1'; //21 a 21 Tipo de carteira
  vCodBarra := vCodBarra + nDoc; //22 a 30 Nosso número
  vCodBarra := vCodBarra + '0109'; //31 a 34 Cooperativa/agência do cedente
  vCodBarra := vCodBarra + '08'; //35 a 36 Posto da cooperativa do cedente
  vCodBarra := vCodBarra + tSicredCodCedente.AsString; //37 a 41 Código do cedente
  vCodBarra := vCodBarra + '1'; //42 a 42 Zero (Obs: Será 1 quando houver valor expresso no campo "Valor do documento"
  vCodBarra := vCodBarra + '0'; //43 a 43 Zero

  //Cálcula o digito verificar do campo livre calculado (posição 44 do código de barras)
  //Calculo este digito verificar pegando as 42 posições do código de barras até o momento
  vAux := StrToInt(CalculaDigMod11(copy(vCodBarra, 19, 24)));
  //Cleomar
  //if (vAux = 0) or (vAux = 1) then
  //  vAux := 0;
  vCodBarra := vCodBarra + IntToStr(vAux); //44 a 44 DV do campo livre calculado por módulo 11

  //Cálcula o digito verificador geral (posição 5 do código de barras)
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  if (vAux > 9) or (vAux = 0) then
    vAux := 1;
  vCodBarra := copy(vCodBarra, 1, 4) + IntToStr(vAux) + copy(vCodBarra, 5, 39);

  //Código de barras
  if tipo = 'B' then //B = código Barra
    result := vCodBarra
  else if tipo = 'L' then //L = Linha digitável
  begin
    vCampo1 := '7489' + Copy(vCodBarra, 20, 5);
    vCampo1 := vCampo1 + CalculaDigMod10(vCampo1);
    vCampo2 := copy(vCodBarra, 25, 10);
    vCampo2 := vCampo2 + CalculaDigMod10(vCampo2);
    vCampo3 := copy(vCodBarra, 35, 10);
    vCampo3 := vCampo3 + CalculaDigMod10(vCampo3);
    vCampo4 := copy(vCodBarra, 5, 1);
    vCampo5 := fatVcto + vlr;

    vLinha := copy(vCampo1, 1, 5) + '.' + copy(vCampo1, 6, 5) + '   ';
    vLinha := vLinha + copy(vCampo2, 1, 5) + '.' + copy(vCampo2, 6, 6) + '   ';
    vLinha := vLinha + copy(vCampo3, 1, 5) + '.' + copy(vCampo3, 6, 6) + '   ';
    vLinha := vLinha + vCampo4 + '   ' + vCampo5;

      {vLinha := Copy(vCodBarra,1,4);
      vLinha := vLinha + Copy(vCodBarra,20,1) + '.';
      vLinha := vLinha + Copy(vCodBarra,21,4);
      vLinha := vLinha + CalculaDigMod10(Copy(vLinha,1,5) + Copy(vLinha,7,4)) + ' ';
      vLinha := vLinha + Copy(vCodBarra,25,5) + '.' + Copy(vCodBarra,30,5);
      vLinha := vLinha + CalculaDigMod10(Copy(vLinha,13,5) + Copy(vLinha,19,5)) + ' ';
      vLinha := vLinha + Copy(vCodBarra,35,5) + '.' + Copy(vCodBarra,40,5);
      vLinha := vLinha + CalculaDigMod10(Copy(vLinha,26,5) + Copy(vLinha,32,5)) + ' ';
      vLinha := vLinha + Copy(vCodBarra,5,1) + ' ';
      vLinha := vLinha + Copy(vCodBarra,6,4);
      vLinha := vLinha + Copy(vCodBarra,10,10);}
    result := vLinha;
  end;
end;

function TDM1.ProximaSequencia(NomeTabela: String): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
begin
  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    Conexao.StartTransaction(ID);
    try
      sds.SQLConnection := Conexao;
      sds.NoMetadata    := True;
      sds.GetMetadata   := False;
      sds.CommandText   := 'SELECT SEQUENCIA FROM SEQUENCIA WHERE NOMETABELA = :NOMETABELA';
      sds.ParamByName('NOMETABELA').AsString := NomeTabela;
      sds.Open;

      iSeq := sds.FieldByName('SEQUENCIA').AsInteger+1;

      if iSeq = 1 then
        Conexao.ExecuteDirect('INSERT INTO SEQUENCIA(NOMETABELA,SEQUENCIA) VALUES( ''' + NomeTabela + ''' , ''' + IntToStr(iSeq) + ''' ) ')
      else
        Conexao.ExecuteDirect('UPDATE SEQUENCIA SET SEQUENCIA = ''' + IntToStr(iSeq) + '''WHERE NOMETABELA = ''' + NomeTabela+'''');

      Conexao.Commit(ID);

      Result := iSeq;

    except
      Conexao.Rollback(ID);
      raise;
    end;

  finally
    FreeAndNil(sds);
  end;
end;

function TDM1.OriginalCommandTextCurso: String;
begin
  Result := 'SELECT * ' +
            'FROM CURSO ' +
            'WHERE 0=0 ';
end;

procedure TDM1.Gravar_Curso;
begin
  if tCurso.State in [dsInsert] then
    Incrementa('ID','CURSO');
  tCurso.Post;
  if tCurso.ChangeCount > 0 then
    tCurso.ApplyUpdates(0);
end;

procedure TDM1.Excluir_Curso;
begin
  tCurso.Delete;
  if tCurso.ChangeCount > 0 then
    tCurso.ApplyUpdates(0);
end;

procedure TDM1.MontaSQL_CURSO(Busca, ColunaOrdenada: String);
begin
  tCurso.Close;
  Curso.CommandText := OriginalCommandTextCurso;
  if Busca = '[DIGITE A BUSCA E PRESSIONE <ENTER>]' then
    Busca := '';
  if Busca <> '' then
    Curso.CommandText := Curso.CommandText + ' AND ('+ ColunaOrdenada + ' LIKE ''%' + Busca + '%'')';
  tCurso.Open;
end;

procedure TDM1.MontaSQL_PREVCENTROCUSTO(CodCentroCusto, Ano: Integer);
begin
  tPrevCentroCusto.Close;
  PrevCentroCusto.CommandText := OriginalCommandTextPREVCENTROCUSTO;
  if CodCentroCusto > 0 then
    PrevCentroCusto.CommandText := PrevCentroCusto.CommandText + ' AND (PREVCENTROCUSTO.CODCENTROCUSTO = ' + IntToStr(CodCentroCusto) + ')';
  if Ano > 0 then
    PrevCentroCusto.CommandText := PrevCentroCusto.CommandText + ' AND (PREVCENTROCUSTO.ANO = ' + IntToStr(Ano) + ')';
  tPrevCentroCusto.Open;
end;

function TDM1.OriginalCommandTextPREVCENTROCUSTO: String;
begin
  Result := 'SELECT * ' +
            'FROM PREVCENTROCUSTO ' +
            'WHERE (0=0) ';
end;                                      

function TDM1.MontaBoletoItau(tipo, nDoc, Carteira, DigNossoNum: String; data: TDateTime; valor: Currency): String;
var
  fatVcto, vlr, vCodBarra, vLinha, dv: String;
  i: Byte;
  vAux, vAux2, vSoma: Integer;
  vCampo1, vCampo2, vCampo3, vCampo4, vCampo5: String;
//Função para calcular o digito verificador no módulo 11
function CalculaDigMod11(Campo: String): String;
var
  i: Byte;
begin
  vSoma := 0;
  vAux  := 1;
  for i := length(campo) Downto 1 do
    begin
      inc(vAux);
      if vAux > 9 then
        vAux := 2;
      vSoma := vSoma + (StrToInt(Copy(vCodBarra,i,1)) * vAux);
    end;
  vAux  := vSoma div 11;
  vAux2 := vAux * 11;
  vAux  := vSoma - vAux2;
  vAux := 11 - vAux;
  CalculaDigMod11 := IntToStr(vAux);
end;
//Função para calcular o digito verificador no módulo 10
function CalculaDigMod10(Campo: String): String;
var
  i: Byte;
  v: String;
begin
  v   := '2';
  vSoma := 0;
  for i := length(campo) downto 1 do
  begin
    dv := IntToStr(StrToInt(Copy(campo,i,1)) * StrToInt(v));
    if StrToInt(dv) >= 10 then
      dv := IntToStr(StrToInt(copy(dv,1,1)) + StrToInt(copy(dv,2,1)));
    vSoma := vSoma + StrToInt(dv);
    if v = '2' then
      v := '1'
    else
      v := '2';
  end;
  //dv := IntToStr(vSoma + 9);
  //dv := IntToStr(StrToInt(dv) div 10);
  dv := IntToStr(vSoma div 10);
  dv := IntToStr(StrToInt(dv) * 10);
  vSoma := vSoma - StrToInt(dv);
  if vSoma = 10 then
    vSoma := 0
  else
    vSoma := 10 - vSoma;
  CalculaDigMod10 := IntToStr(vSoma);
end;

begin
  fatVcto := FormatFloat('0',data - StrToDate('07/10/1997'));
  vlr   := FormatFloat('0',valor * 100);
  for i := 1 to 10 - Length(vlr) do
    vlr := '0' + vlr;

  //vCalc := '7489' + ;

  vCodBarra := '341'; //01 a 03 Identificação do banco
  vCodBarra := vCodBarra + '9'; //04 a 04 Código da moeda
  vCodBarra := vCodBarra + fatVcto; //06 a 09
  vCodBarra := vCodBarra + vlr;   //10 a 19
  vCodBarra := vCodBarra + carteira; //20 a 22 Tipo de carteira
  vCodBarra := vCodBarra + nDoc; //23 a 30 Nosso número
  vCodBarra := vCodBarra + DigNossoNum; //31 a 31 DAC [Agência /Conta/Carteira/Nosso Número
  vCodBarra := vCodBarra + Copy(tBcoItauAGENCIA.AsString,1,4); //32 a 35 Agência
  vCodBarra := vCodBarra + Copy(tBcoItauNUMCONTA.AsString,1,5); //36 a 40 Número da conta
  vCodBarra := vCodBarra + tBcoItauDIGCONTA.AsString; //41 a 41 Digito da conta
  vCodBarra := vCodBarra + '000'; //42 a 44 Zero

  {//Cálcula o digito verificar do campo livre calculado (posição 44 do código de barras)
  //Calculo este digito verificar pegando as 42 posições do código de barras até o momento
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  if (vAux > 9) or (vAux = 1) then
    vAux := 0;
  vCodBarra := vCodBarra + IntToStr(vAux); //44 a 44 DV do campo livre calculado por módulo 11}

  //Cálcula o digito verificador geral (posição 5 do código de barras)
  vAux := StrToInt(CalculaDigMod11(vCodBarra));
  if (vAux > 9) or (vAux = 0) then
    vAux := 1;
  vCodBarra := copy(vCodBarra,1,4) + IntToStr(vAux) + copy(vCodBarra,5,39);

  //Código de barras
  if tipo = 'B' then //B = código Barra
    result := vCodBarra
  else
  //Linha digitável
  if tipo = 'L' then //L = Linha digitável
  begin
    vCampo1 := '3419' + carteira + copy(nDoc,1,2);
    vCampo1 := vCampo1 + CalculaDigMod10(vCampo1);
    vCampo2 := copy(nDoc,3,6) + DigNossoNum + copy(tBcoItauAGENCIA.AsString,1,3);
    vCampo2 := vCampo2 + CalculaDigMod10(vCampo2);
    vCampo3 := copy(tBcoItauAGENCIA.AsString,4,1) + Copy(tBcoItauNUMCONTA.AsString,1,5) + tBcoItauDIGCONTA.AsString + '000';
    vCampo3 := vCampo3 + CalculaDigMod10(vCampo3);
    vCampo4 := copy(vCodBarra,5,1);
    vCampo5 := FormatFloat('0000',StrToFloat(fatVcto)) + vlr;

    vLinha := copy(vCampo1,1,5) + '.' + copy(vCampo1,6,5) + ' ';
    vLinha := vLinha + copy(vCampo2,1,5) + '.' + copy(vCampo2,6,6) + ' ';
    vLinha := vLinha + copy(vCampo3,1,5) + '.' + copy(vCampo3,6,6) + ' ' + vCampo4 + ' ' + vCampo5;

    result := vLinha;
  end;
end;

function TDm1.Incrementa(Campo, Tabela: String): Integer;
var
  ID: TTransactionDesc;
begin
  try
    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;
    Conexao.StartTransaction(ID);
    qInc.Close;
    qInc.SQL.Clear;
  	qInc.SQL.Add('SELECT MAX(' + Campo + ') ULT FROM ' + Tabela);
    qInc.Open;
   	Result := qInc.FieldByName('ULT').AsInteger + 1;
    Conexao.Commit(ID);
  except
    Conexao.Rollback(ID);
    raise;
  end;
end;

procedure TDm1.tProdutoNewRecord(DataSet: TDataSet);
begin
  tProdutoPOSSUITAMANHO.AsString := 'N';
  tProdutoINATIVO.AsString       := 'N';
  tProdutoOPCAOPRECO.AsString    := 'U';
  tProdutoATUALIZAPRECO.AsString := 'N';
  tProdutoDTCADASTRO.AsDateTime  := Now;
  tProdutoDTREAJUSTE.AsDateTime  := Now;
end;

procedure TDm1.tCondPgtoNewRecord(DataSet: TDataSet);
begin
  tCondPgtoPRAZOVISTA.AsString := 'P';
  tCondPgtoENTRADA.AsString    := 'N';
  tCondPgtoFIXARDIA.AsString   := 'N';
end;

procedure TDm1.tCidadeNewRecord(DataSet: TDataSet);
begin
  tParametro.Open;
  tCidadeCODPAIS.AsInteger := tParametroCODPAIS.AsInteger;
end;

procedure TDm1.tNatOperacaoNewRecord(DataSet: TDataSet);
begin
  tNatOperacaoCALCICMS.AsString := 'N';
  tNatOperacaoCALCIPI.AsString  := 'N';
  tNatOperacaoGERADUPL.AsString := 'N';
  tNatOperacaoES.AsString       := 'S';
end;

procedure TDm1.tNotaEntradaNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaINFCONDPGTO.AsString   := 'S';
  tNotaEntradaICMSIPI.AsString       := 'N';
  tNotaEntradaSOMAPRODDUPL.AsString  := 'S';
  tNotaEntradaSOMAMOBRADUPL.AsString := 'S';
  tNotaEntradaBASEICMS.AsFloat       := 0;
  tNotaEntradaVLRICMS.AsFloat        := 0;
  tNotaEntradaBASEIPI.AsFloat        := 0;
  tNotaEntradaVLRIPI.AsFloat         := 0;
  tNotaEntradaVLRTOTAL.AsFloat       := 0;
  tNotaEntradaVLRTOTALMOBRAS.AsFloat := 0;
  tNotaEntradaVLRTOTALITENS.AsFloat  := 0;
end;

procedure TDm1.tNotaEntradaItNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaItNUMNOTA.AsInteger       := tNotaEntradaNUMNOTA.AsInteger;
  tNotaEntradaItCODFORNECEDOR.AsInteger := tNotaEntradaCODFORNECEDOR.AsInteger;
  tNotaEntradaItBAIXAESTOQUE.AsString   := 'S';
end;

procedure TDm1.tNotaEntradaParcNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaParcNUMNOTA.AsInteger       := tNotaEntradaNUMNOTA.AsInteger;
  tNotaEntradaParcCODFORNECEDOR.AsInteger := tNotaEntradaCODFORNECEDOR.AsInteger;
end;

procedure TDm1.tNotaEntradaMObraNewRecord(DataSet: TDataSet);
begin
  tNotaEntradaMObraNUMNOTA.AsInteger       := tNotaEntradaNUMNOTA.AsInteger;
  tNotaEntradaMObraCODFORNECEDOR.AsInteger := tNotaEntradaCODFORNECEDOR.AsInteger;
end;

procedure TDm1.tBancoNewRecord(DataSet: TDataSet);
begin
  tBancoTIPOBANCO.AsString := 'C';
end;

procedure TDm1.tCondPgtoItNewRecord(DataSet: TDataSet);
begin
  tCondPgtoItCODCONDPGTO.AsInteger := tCondPgtoID.AsInteger;
end;

procedure TDm1.tProdutoTamNewRecord(DataSet: TDataSet);
begin
  tProdutoTamCODPRODUTO.AsInteger := tProdutoID.AsInteger; 
end;

procedure TDm1.tMovFinanceiroNewRecord(DataSet: TDataSet);
begin
  tMovFinanceiroVLRENTRADA.AsFloat  := 0;
  tMovFinanceiroVLRSAIDA.AsFloat    := 0;
  tMovFinanceiroTIPOPESSOA.AsString := '';
end;

procedure TDm1.tCPagarParcNewRecord(DataSet: TDataSet);
begin
  tCPagarParcQUITADO.AsString       := 'N';
  tCPagarParcVLRJUROS.AsFloat       := 0;
  tCPagarParcVLRDESCONTO.AsFloat    := 0;
  tCPagarParcVLRPAGTO.AsFloat       := 0;
  tCPagarParcVLRRESTANTE.AsFloat    := 0;
  tCPagarParcVLRDESPESA.AsFloat     := 0;
  tCPagarParcPGCARTORIO.AsString    := 'N';
  tCPagarParcTITPROTESTADO.AsString := 'N';
  tCPagarParcQTDDIASPROT.AsInteger  := 0;
  tCPagarParcDIASATRASO.AsInteger   := 0;
  tCPagarParcJUROSPAGOS.AsFloat     := 0;
  tCPagarParcCANCELADO.AsString     := 'N';
  tCPagarParcVLRDEVOLUCAO.AsFloat   := 0;
end;

procedure TDm1.tCPagarHistNewRecord(DataSet: TDataSet);
begin
  tCPagarHistNUMDUPLICATA.AsInteger  := tCPagarParcNUMDUPLICATA.AsInteger;
  tCPagarHistCODFORNECEDOR.AsInteger := tCPagarParcCODFORNECEDOR.AsInteger;
end;

procedure TDm1.tCReceberHistNewRecord(DataSet: TDataSet);
begin
  tCReceberHistCODCLIENTE.AsInteger := tCReceberParcCODCLIENTE.AsInteger;
  tCReceberHistNUMNOTA.AsInteger    := tCReceberParcNUMNOTA.AsInteger;
end;

procedure TDm1.tPedidoNewRecord(DataSet: TDataSet);
begin
  tPedidoDTPEDIDO.AsDateTime  := Date;
  tPedidoCOPIADO.AsString     := 'N';
  tPedidoSELECIONADO.AsString := 'S';
  tPedidoSITUACAO.AsString    := '1';
  tPedidoTIPO.AsString        := '1';
  tPedidoQTDDIASVALIDADE.AsInteger := 10;
end;

procedure TDm1.ConexaoBeforeConnect(Sender: TObject);
var
  caminho: String;
begin
  caminho := ExtractFilePath(ParamStr(0));
  Conexao.LoadParamsFromIniFile(caminho + '/dbxconnections.ini')
end;

procedure TDm1.tPedidoItNewRecord(DataSet: TDataSet);
begin
  tPedidoItCOPIADO.AsString := 'N';
  tPedidoItSELECIONADO.AsString := 'N';
end;

procedure TDm1.tProdutoFotoAfterScroll(DataSet: TDataSet);
begin
  if tProdutoFotoCAMINHO.AsString <> '' then
    fProduto.Image1.Picture.LoadFromFile(tProdutoFotoCAMINHO.AsString);
end;

procedure TDm1.tCReceberParcNewRecord(DataSet: TDataSet);
begin
  tCReceberParcQUITADO.AsString   := 'N';
  tCReceberParcCANCELADO.AsString := 'N';
end;

procedure TDm1.tPedidoCalcFields(DataSet: TDataSet);
begin
  if not tPedidoTIPO.IsNull then
  case tPedidoTIPO.AsInteger of
    1: tPedidoclTipo.AsString := 'Instalação';
    2: tPedidoclTipo.AsString := 'Serviço avulso (evento)';
    3: tPedidoclTipo.AsString := 'Serviço permanente';
    4: tPedidoclTipo.AsString := 'Odem de serviço';
    5: tPedidoclTipo.AsString := 'Reclamação';
  end;
end;

procedure TDm1.Gravar(id: Integer);
begin
  TD.TransactionID  := Id;
  TD.IsolationLevel := xilREADCOMMITTED;
  Conexao.StartTransaction(TD);
end;                                                    

procedure TDm1.tMovAvulsoItensNewRecord(DataSet: TDataSet);
begin
  tMovAvulsoItensCODIGO.Value := tMovAvulsoCODIGO.Value;
end;

procedure TDm1.tMovAvulsoParcNewRecord(DataSet: TDataSet);
begin
  tMovAvulsoParcCODIGO.Value := tMovAvulsoCODIGO.Value;
end;

procedure TDm1.tMovAvulsoNewRecord(DataSet: TDataSet);
begin
  tMovAvulsoDTEMISSAO.Value := Date;
end;

procedure TDm1.PessoaPUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  raise Exception.Create(E.Message);
end;

procedure TDm1.tPrevCentroCustoNewRecord(DataSet: TDataSet);
begin
  tPrevCentroCustoVALOR.AsFloat := 0;
end;

procedure TDm1.tTipoCobrancaCalcFields(DataSet: TDataSet);
begin
  case tTipoCobrancaTIPO.AsInteger of
    0: tTipoCobrancaclTipo.AsString := 'Boleto';
    1: tTipoCobrancaclTipo.AsString := 'Recibo';
  end;
end;

procedure TDm1.tTipoCobrancaNewRecord(DataSet: TDataSet);
begin
  tTipoCobrancaTIPO.AsInteger := 1;
end;

procedure TDm1.DataModuleCreate(Sender: TObject);
begin
  Conexao.Close;
  tEmpresa.Open;
  FDataSetError := TrsDataSetError.Create;
  FDataSetError.CreateError(Self);

  ctPessoa := Pessoa.CommandText;
  ctPessoaC := sdsPessoaCons.CommandText;
end;

procedure TDm1.tPessoaServicoExtraNewRecord(DataSet: TDataSet);
begin
  tPessoaServicoExtraGERADO.AsString := 'N';
end;

procedure TDm1.tPessoaServicoExtraBeforeInsert(DataSet: TDataSet);
begin
  tPessoaServicoExtra.Last;
  vItemExtra := tPessoaServicoExtraID.AsInteger;
end;

procedure TDm1.tPessoaServicoExtraBeforeDelete(DataSet: TDataSet);
begin
  if (tPessoaServicoExtra.RecordCount > 0) and (tPessoaServicoExtraGERADO.AsString = 'S') then
    Abort;
end;

procedure TDm1.tPessoaServicoExtraAfterInsert(DataSet: TDataSet);
begin
  vItemExtra := vItemExtra + 1;
  tPessoaServicoExtraID.AsInteger        := vItemExtra;
  tPessoaServicoExtraPESSOA_ID.AsInteger := tPessoaID.AsInteger;
end;

procedure TDm1.tPessoaServicoExtraBeforePost(DataSet: TDataSet);
begin
  if (tPessoaServicoExtraDESCRICAO.AsString = '') or (tPessoaServicoExtraVALOR.AsFloat <= 0) then
    Abort;
end;

procedure TDm1.tCursoAfterInsert(DataSet: TDataSet);
begin
  tCursoID.AsInteger := ProximaSequencia('CIDADE');
end;

procedure TDm1.tCursoBeforePost(DataSet: TDataSet);
begin
  if tCursoNOME.AsString = '' then
    raise exception.Create('É obrigatório informar o nome!');
end;

procedure TDm1.tPessoa_CursoBeforePost(DataSet: TDataSet);
begin
 if tPessoa_CursoDTINICIO.AsDateTime < 1 then
   tPessoa_CursoDTINICIO.Clear;
 if tPessoa_CursoDTFINAL.AsDateTime < 1 then
   tPessoa_CursoDTFINAL.Clear;
end;

procedure TDm1.tPessoa_CursoAfterInsert(DataSet: TDataSet);
begin
  tPessoa_CursoPESSOA_ID.AsInteger := tPessoaID.AsInteger;
  tPessoa_CursoENTRADA.AsCurrency     := 0;
  tPessoa_CursoVLRDESCONTO.AsCurrency := 0;
  tPessoa_CursoMEDIA.AsFloat          := 0;
end;

procedure TDm1.ConectionBeforeConnect(Sender: TObject);
begin
 try
 except
 end;
end;

procedure TDm1.tPessoaAfterInsert(DataSet: TDataSet);
begin
  tPessoaPESSOA.AsString         := 'F';
  tPessoaVENDEDOR.AsString       := '0';
  tPessoaCLIENTE.AsString        := '0';
  tPessoaFORNECEDOR.AsString     := '0';
  tPessoaTRANSPORTADORA.AsString := '0';
  tPessoaFUNCIONARIO.AsString    := '0';
  tPessoaTIPOCOMISSAO.AsString   := 'N';
  tPessoaSTATUS.AsString         := '1';
  tPessoaDTCADASTRO.AsDateTime   := Date;
  tPessoaDESCCLAUSULA.AsString   := '';
  tPessoaALUNO.AsString          := '0';
  tPessoaNACIONALIDADE.AsString  := 'BRASILEIRA';
  tPessoaCHAVE.AsInteger         := 0;
  tPessoaCONTROLE.AsInteger      := 0;  
end;


function TDm1.trataString(vStr: String; tipo: Byte): String;
var
  i: Word;
  s1, s2: String;
begin
  if tipo = 1 then //remove acentos
  begin
    s1 := 'ÁÂÃÉÊÍÓÕÔÚÜÛÇÑáâãéêëíóõôöúüçñº';
    s2 := 'AAAEEIOOOUUUCNaaaeeeioooouucno';
    if Length(vStr) <> 0 then
      for i := 1 to Length(s1) do
        StrReplace(vStr,Copy(s1,i,1),copy(s2,i,1),[rfIgnoreCase, rfReplaceAll]);
    trataString := vStr;
  end;
  if tipo = 2 then  //remove pontuação
  begin
    s1 := '.,;/-';
    s2 := '';
    if Length(vStr) <> 0 then
      for i := 1 to Length(s1) do
        StrReplace(vStr,Copy(s1,i,1),copy(s2,i,1),[rfIgnoreCase, rfReplaceAll]);
    trataString := vStr;
  end;
end;

procedure TDm1.tClausulaCalcFields(DataSet: TDataSet);
begin
  if not tClausulaTIPO.IsNull then
    if tClausulaTIPO.AsString = '1' then
      tClausulaclTipo.AsString := 'PARTES'
    else
    if tClausulaTIPO.AsString = '2' then
      tClausulaclTipo.AsString := 'OBJETO'
    else
    if tClausulaTIPO.AsString = '2.1' then
      tClausulaclTipo.AsString := 'PERÍODO'
    else
    if tClausulaTIPO.AsString = '2.2' then
      tClausulaclTipo.AsString := 'PREÇO'
    else
    if tClausulaTIPO.AsString = '3' then
      tClausulaclTipo.AsString := 'RESPONSABILIDADES DA CONTRATADA'
    else
    if tClausulaTIPO.AsString = '4' then
      tClausulaclTipo.AsString := 'RESPONSABILIDADES DA CONTRATANTE'
    else
    if tClausulaTIPO.AsString = '5' then
      tClausulaclTipo.AsString := 'OBRIGAÇÕES'
    else
    if tClausulaTIPO.AsString = '6' then
      tClausulaclTipo.AsString := 'DISPOSIÇÕES GERAIS';
end;

procedure TDM1.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDm1.DataModuleDestroy(Sender: TObject);
begin
  FDataSetError.Free;
end;

end.
