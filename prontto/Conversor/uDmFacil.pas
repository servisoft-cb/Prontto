unit uDmFacil;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TdmFacil = class(TDataModule)
    Conexao: TSQLConnection;
    sdsPessoa: TSQLDataSet;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCOMPLEMENTO_END: TStringField;
    sdsPessoaNUM_END: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaID_CIDADE: TIntegerField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaDDDFONE1: TIntegerField;
    sdsPessoaTELEFONE1: TStringField;
    sdsPessoaDDDFONE2: TIntegerField;
    sdsPessoaTELEFONE2: TStringField;
    sdsPessoaDDDFAX: TIntegerField;
    sdsPessoaFAX: TStringField;
    sdsPessoaPESSOA: TStringField;
    sdsPessoaCNPJ_CPF: TStringField;
    sdsPessoaINSCR_EST: TStringField;
    sdsPessoaENDERECO_ENT: TStringField;
    sdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    sdsPessoaNUM_END_ENT: TStringField;
    sdsPessoaBAIRRO_ENT: TStringField;
    sdsPessoaID_CIDADE_ENT: TIntegerField;
    sdsPessoaCIDADE_ENT: TStringField;
    sdsPessoaCEP_ENT: TStringField;
    sdsPessoaUF_ENT: TStringField;
    sdsPessoaPESSOA_ENT: TStringField;
    sdsPessoaCNPJ_CPF_ENT: TStringField;
    sdsPessoaINSC_EST_ENT: TStringField;
    sdsPessoaENDERECO_PGTO: TStringField;
    sdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    sdsPessoaNUM_END_PGTO: TStringField;
    sdsPessoaBAIRRO_PGTO: TStringField;
    sdsPessoaID_CIDADE_PGTO: TIntegerField;
    sdsPessoaCIDADE_PGTO: TStringField;
    sdsPessoaCEP_PGTO: TStringField;
    sdsPessoaUF_PGTO: TStringField;
    sdsPessoaUSUARIO: TStringField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaHRCADASTRO: TTimeField;
    sdsPessoaID_VENDEDOR: TIntegerField;
    sdsPessoaOBS: TMemoField;
    sdsPessoaCAIXAPOSTAL: TStringField;
    sdsPessoaRG: TStringField;
    sdsPessoaID_CONDPGTO: TIntegerField;
    sdsPessoaID_CONTABOLETO: TIntegerField;
    sdsPessoaID_TRANSPORTADORA: TIntegerField;
    sdsPessoaID_TIPOCOBRANCA: TIntegerField;
    sdsPessoaPERC_COMISSAO: TFloatField;
    sdsPessoaID_REDESPACHO: TIntegerField;
    sdsPessoaDDD_ENT: TIntegerField;
    sdsPessoaFONE_ENT: TStringField;
    sdsPessoaDDD_PGTO: TIntegerField;
    sdsPessoaFONE_PGTO: TStringField;
    sdsPessoaINATIVO: TStringField;
    sdsPessoaHOMEPAGE: TStringField;
    sdsPessoaNOME_ENTREGA: TStringField;
    sdsPessoaEMAIL_NFE: TStringField;
    sdsPessoaID_PAIS: TIntegerField;
    sdsPessoaEMAIL_PGTO: TStringField;
    sdsPessoaEMAIL_NFE2: TStringField;
    sdsPessoaPESSOA_PGTO: TStringField;
    sdsPessoaCNPJ_CPG_PGTO: TStringField;
    sdsPessoaINSC_EST_PGTO: TStringField;
    sdsPessoaUF_PLACA: TStringField;
    sdsPessoaPLACA: TStringField;
    sdsPessoaTP_CLIENTE: TStringField;
    sdsPessoaTP_FORNECEDOR: TStringField;
    sdsPessoaTP_TRANSPORTADORA: TStringField;
    sdsPessoaTP_VENDEDOR: TStringField;
    sdsPessoaTIPO_FRETE: TStringField;
    sdsPessoaID_REGIME_TRIB: TIntegerField;
    sdsPessoaTIPO_ICMS: TStringField;
    sdsPessoaID_TAB_PRECO: TIntegerField;
    sdsPessoaTP_ATELIER: TStringField;
    sdsPessoaTIPO_COMISSAO: TStringField;
    sdsPessoaPERC_COMISSAO_VEND: TFloatField;
    sdsPessoaNOME_CONTATO: TStringField;
    sdsPessoaINSC_MUNICIPAL: TStringField;
    sdsPessoaDT_CONTRATO_INI: TDateField;
    sdsPessoaDT_CONTRATO_FIN: TDateField;
    sdsPessoaID_SERVICO: TIntegerField;
    sdsPessoaID_SERVICO_INT: TIntegerField;
    sdsPessoaVLR_SERVICO: TFloatField;
    sdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    sdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    sdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    sdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    sdsPessoaATELIER_CONTA_ID: TIntegerField;
    sdsPessoaRETEM_ISS: TStringField;
    sdsPessoaRETEM_CSLL: TStringField;
    sdsPessoaRETEM_PISCOFINS: TStringField;
    sdsPessoaRETEM_INSS: TStringField;
    sdsPessoaEMAIL_COMPRAS: TStringField;
    sdsPessoaCONTATO_COMPRAS: TStringField;
    sdsPessoaORGAO_PUBLICO: TStringField;
    sdsPessoaID_NATUREZA: TIntegerField;
    sdsPessoaDIMINUIR_RETENCAO: TStringField;
    sdsPessoaPERC_REDUCAO_INSS: TFloatField;
    sdsPessoaUSA_TRANSFICMS: TStringField;
    sdsPessoaCLIENTE_ESTOQUE: TStringField;
    sdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    sdsPessoaCOD_ANT: TIntegerField;
    sdsPessoaID_EDI: TIntegerField;
    sdsPessoaPAI_NOME: TStringField;
    sdsPessoaMAE_NOME: TStringField;
    sdsPessoaTP_ALUNO: TStringField;
    sdsPessoaCOBRAR_TAXA_BANCO: TStringField;
    sdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    sdsPessoaINSC_EST_ST: TStringField;
    sdsPessoaUF_ST: TStringField;
    sdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    sdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    sdsPessoaINSC_SUFRAMA: TStringField;
    sdsPessoaCOD_ALFA: TStringField;
    sdsPessoaTP_PREPOSTO: TStringField;
    sdsPessoaTP_EXPORTACAO: TStringField;
    sdsPessoaCARIMBO: TStringField;
    sdsPessoaDTPEDIDO: TDateField;
    sdsPessoaDTNOTA: TDateField;
    sdsPessoaPERC_DESC_SUFRAMA: TFloatField;
    sdsPessoaVLR_LIMITE_COMPRA: TFloatField;
    sdsPessoaID_GRUPO: TIntegerField;
    sdsPessoaTP_FUNCIONARIO: TStringField;
    sdsPessoaIMP_COD_PRODUTO_CLI: TStringField;
    sdsPessoaFILIAL: TIntegerField;
    sdsPessoaVLR_ULT_FATURAMENTO: TFloatField;
    sdsPessoaQTD_ULT_FATURAMENTO: TFloatField;
    sdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    sdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE2: TIntegerField;
    cdsPessoaTELEFONE2: TStringField;
    cdsPessoaDDDFAX: TIntegerField;
    cdsPessoaFAX: TStringField;
    cdsPessoaPESSOA: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaENDERECO_ENT: TStringField;
    cdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoaNUM_END_ENT: TStringField;
    cdsPessoaBAIRRO_ENT: TStringField;
    cdsPessoaID_CIDADE_ENT: TIntegerField;
    cdsPessoaCIDADE_ENT: TStringField;
    cdsPessoaCEP_ENT: TStringField;
    cdsPessoaUF_ENT: TStringField;
    cdsPessoaPESSOA_ENT: TStringField;
    cdsPessoaCNPJ_CPF_ENT: TStringField;
    cdsPessoaINSC_EST_ENT: TStringField;
    cdsPessoaENDERECO_PGTO: TStringField;
    cdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    cdsPessoaNUM_END_PGTO: TStringField;
    cdsPessoaBAIRRO_PGTO: TStringField;
    cdsPessoaID_CIDADE_PGTO: TIntegerField;
    cdsPessoaCIDADE_PGTO: TStringField;
    cdsPessoaCEP_PGTO: TStringField;
    cdsPessoaUF_PGTO: TStringField;
    cdsPessoaUSUARIO: TStringField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaHRCADASTRO: TTimeField;
    cdsPessoaID_VENDEDOR: TIntegerField;
    cdsPessoaOBS: TMemoField;
    cdsPessoaCAIXAPOSTAL: TStringField;
    cdsPessoaRG: TStringField;
    cdsPessoaID_CONDPGTO: TIntegerField;
    cdsPessoaID_CONTABOLETO: TIntegerField;
    cdsPessoaID_TRANSPORTADORA: TIntegerField;
    cdsPessoaID_TIPOCOBRANCA: TIntegerField;
    cdsPessoaPERC_COMISSAO: TFloatField;
    cdsPessoaID_REDESPACHO: TIntegerField;
    cdsPessoaDDD_ENT: TIntegerField;
    cdsPessoaFONE_ENT: TStringField;
    cdsPessoaDDD_PGTO: TIntegerField;
    cdsPessoaFONE_PGTO: TStringField;
    cdsPessoaINATIVO: TStringField;
    cdsPessoaHOMEPAGE: TStringField;
    cdsPessoaNOME_ENTREGA: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaEMAIL_PGTO: TStringField;
    cdsPessoaEMAIL_NFE2: TStringField;
    cdsPessoaPESSOA_PGTO: TStringField;
    cdsPessoaCNPJ_CPG_PGTO: TStringField;
    cdsPessoaINSC_EST_PGTO: TStringField;
    cdsPessoaUF_PLACA: TStringField;
    cdsPessoaPLACA: TStringField;
    cdsPessoaTP_CLIENTE: TStringField;
    cdsPessoaTP_FORNECEDOR: TStringField;
    cdsPessoaTP_TRANSPORTADORA: TStringField;
    cdsPessoaTP_VENDEDOR: TStringField;
    cdsPessoaTIPO_FRETE: TStringField;
    cdsPessoaID_REGIME_TRIB: TIntegerField;
    cdsPessoaTIPO_ICMS: TStringField;
    cdsPessoaID_TAB_PRECO: TIntegerField;
    cdsPessoaTP_ATELIER: TStringField;
    cdsPessoaTIPO_COMISSAO: TStringField;
    cdsPessoaNOME_CONTATO: TStringField;
    cdsPessoaINSC_MUNICIPAL: TStringField;
    cdsPessoaDT_CONTRATO_INI: TDateField;
    cdsPessoaDT_CONTRATO_FIN: TDateField;
    cdsPessoaID_SERVICO: TIntegerField;
    cdsPessoaID_SERVICO_INT: TIntegerField;
    cdsPessoaVLR_SERVICO: TFloatField;
    cdsPessoaCLIENTE_CONTA_ID: TIntegerField;
    cdsPessoaFORNECEDOR_CONTA_ID: TIntegerField;
    cdsPessoaVENDEDOR_CONTA_ID: TIntegerField;
    cdsPessoaTRANSPORTADORA_CONTA_ID: TIntegerField;
    cdsPessoaATELIER_CONTA_ID: TIntegerField;
    cdsPessoaRETEM_ISS: TStringField;
    cdsPessoaRETEM_CSLL: TStringField;
    cdsPessoaRETEM_PISCOFINS: TStringField;
    cdsPessoaRETEM_INSS: TStringField;
    cdsPessoaEMAIL_COMPRAS: TStringField;
    cdsPessoaCONTATO_COMPRAS: TStringField;
    cdsPessoaORGAO_PUBLICO: TStringField;
    cdsPessoaID_NATUREZA: TIntegerField;
    cdsPessoaDIMINUIR_RETENCAO: TStringField;
    cdsPessoaPERC_REDUCAO_INSS: TFloatField;
    cdsPessoaUSA_TRANSFICMS: TStringField;
    cdsPessoaCLIENTE_ESTOQUE: TStringField;
    cdsPessoaUSA_TAMANHO_AGRUPADO_NFE: TStringField;
    cdsPessoaCOD_ANT: TIntegerField;
    cdsPessoaID_EDI: TIntegerField;
    cdsPessoaPAI_NOME: TStringField;
    cdsPessoaMAE_NOME: TStringField;
    cdsPessoaTP_ALUNO: TStringField;
    cdsPessoaCOBRAR_TAXA_BANCO: TStringField;
    cdsPessoaVLR_LIMITE_CREDITO: TFloatField;
    cdsPessoaINSC_EST_ST: TStringField;
    cdsPessoaUF_ST: TStringField;
    cdsPessoaTIPO_CONSUMIDOR: TSmallintField;
    cdsPessoaTIPO_CONTRIBUINTE: TSmallintField;
    cdsPessoaINSC_SUFRAMA: TStringField;
    cdsPessoaCOD_ALFA: TStringField;
    cdsPessoaTP_PREPOSTO: TStringField;
    cdsPessoaTP_EXPORTACAO: TStringField;
    cdsPessoaCARIMBO: TStringField;
    cdsPessoaDTPEDIDO: TDateField;
    cdsPessoaDTNOTA: TDateField;
    cdsPessoaPERC_COMISSAO_VEND: TFloatField;
    cdsPessoaPERC_DESC_SUFRAMA: TFloatField;
    cdsPessoaVLR_LIMITE_COMPRA: TFloatField;
    cdsPessoaID_GRUPO: TIntegerField;
    cdsPessoaTP_FUNCIONARIO: TStringField;
    cdsPessoaIMP_COD_PRODUTO_CLI: TStringField;
    cdsPessoaFILIAL: TIntegerField;
    cdsPessoaVLR_ULT_FATURAMENTO: TFloatField;
    cdsPessoaQTD_ULT_FATURAMENTO: TFloatField;
    cdsPessoaCOD_CONTABIL_CLIENTE: TIntegerField;
    cdsPessoaCOD_CONTABIL_FORNECEDOR: TIntegerField;
    dsPessoa: TDataSource;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    sdsDuplica: TSQLDataSet;
    dspDuplica: TDataSetProvider;
    cdsDuplicata: TClientDataSet;
    dsDuplicata: TDataSource;
    cdsDuplicataID: TIntegerField;
    cdsDuplicataTIPO_ES: TStringField;
    cdsDuplicataFILIAL: TIntegerField;
    cdsDuplicataID_NOTA: TIntegerField;
    cdsDuplicataPARCELA: TIntegerField;
    cdsDuplicataNUMDUPLICATA: TStringField;
    cdsDuplicataNUMNOTA: TIntegerField;
    cdsDuplicataSERIE: TStringField;
    cdsDuplicataDTVENCIMENTO: TDateField;
    cdsDuplicataVLR_PARCELA: TFloatField;
    cdsDuplicataVLR_RESTANTE: TFloatField;
    cdsDuplicataVLR_PAGO: TFloatField;
    cdsDuplicataVLR_DEVOLUCAO: TFloatField;
    cdsDuplicataVLR_DESPESAS: TFloatField;
    cdsDuplicataVLR_DESCONTO: TFloatField;
    cdsDuplicataVLR_JUROSPAGOS: TFloatField;
    cdsDuplicataVLR_COMISSAO: TFloatField;
    cdsDuplicataPERC_COMISSAO: TFloatField;
    cdsDuplicataDTULTPAGAMENTO: TDateField;
    cdsDuplicataID_PESSOA: TIntegerField;
    cdsDuplicataID_CONTA: TIntegerField;
    cdsDuplicataID_TIPOCOBRANCA: TIntegerField;
    cdsDuplicataID_VENDEDOR: TIntegerField;
    cdsDuplicataID_CONTA_BOLETO: TIntegerField;
    cdsDuplicataID_COMISSAO: TIntegerField;
    cdsDuplicataQTD_DIASATRASO: TIntegerField;
    cdsDuplicataDTRECEBIMENTO_TITULO: TDateField;
    cdsDuplicataDTEMISSAO: TDateField;
    cdsDuplicataPAGO_CARTORIO: TStringField;
    cdsDuplicataPROTESTADO: TStringField;
    cdsDuplicataTIPO_LANCAMENTO: TStringField;
    cdsDuplicataARQUIVO_GERADO: TStringField;
    cdsDuplicataTRANSFERENCIA_ICMS: TStringField;
    cdsDuplicataNOSSONUMERO: TStringField;
    cdsDuplicataDTFINANCEIRO: TDateField;
    cdsDuplicataNUMCHEQUE: TIntegerField;
    cdsDuplicataACEITE: TStringField;
    cdsDuplicataID_COB_ELETRONICA: TIntegerField;
    cdsDuplicataBOLETO_IMP: TStringField;
    cdsDuplicataID_CARTEIRA: TIntegerField;
    cdsDuplicataID_BANCO: TIntegerField;
    cdsDuplicataIMP_BOLETO: TStringField;
    cdsDuplicataNUM_REMESSA: TIntegerField;
    cdsDuplicataID_NOTA_SERVICO: TIntegerField;
    cdsDuplicataDESCRICAO: TStringField;
    cdsDuplicataNUMRPS: TIntegerField;
    cdsDuplicataANO_REF: TIntegerField;
    cdsDuplicataMES_REF: TIntegerField;
    cdsDuplicataNUM_CONTRATO: TIntegerField;
    cdsDuplicataID_CONTA_ORCAMENTO: TIntegerField;
    cdsDuplicataID_CUPOM: TIntegerField;
    cdsDuplicataVLR_TAXA_BANCARIA: TFloatField;
    cdsDuplicataCOBRAR_TAXA: TStringField;
    cdsDuplicataID_TERMINAL: TIntegerField;
    cdsDuplicataID_FECHAMENTO: TIntegerField;
    cdsDuplicataTIPO_MOV: TStringField;
    cdsDuplicataNOSSONUMERO_SEQ: TFMTBCDField;
    cdsDuplicataNOSSONUMERO_GERADO: TStringField;
    cdsDuplicataNUMDUPLICATA_SEQ: TIntegerField;
    cdsDuplicataID_RECIBO: TIntegerField;
    cdsDuplicataID_PEDIDO: TIntegerField;
    cdsDuplicataPERC_COMISSAO_PAGAR_NOTA: TFloatField;
    cdsDuplicataUSUARIO: TStringField;
    cdsDuplicataTITULO_CARTORIO: TStringField;
    cdsDuplicataID_DESCONTADA: TIntegerField;
    cdsDuplicataCONFIRMA_PGTO: TStringField;
    cdsDuplicataCOD_ANT: TIntegerField;
    cdsDuplicataPERC_BASE_COMISSAO: TFloatField;
    cdsDuplicataEMISSAO_BOLETO: TStringField;
    cdsDuplicataDESCRICAO2: TStringField;
    cdsDuplicataID_CONTRATO: TIntegerField;
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function ProximaSequencia(NomeTabela: string; Filial: Integer): Integer;
  end;

var
  dmFacil: TdmFacil;

implementation

{$R *.dfm}

procedure TdmFacil.cdsPessoaNewRecord(DataSet: TDataSet);
begin
  cdsPessoaINATIVO.AsString              := 'N';
  cdsPessoaTP_CLIENTE.AsString           := 'N';
  cdsPessoaTP_FORNECEDOR.AsString        := 'N';
  cdsPessoaTP_TRANSPORTADORA.AsString    := 'N';
  cdsPessoaTP_VENDEDOR.AsString          := 'N';
  cdsPessoaTP_ATELIER.AsString           := 'N';
  cdsPessoaPESSOA.AsString               := 'J';
  cdsPessoaCOMPLEMENTO_END.AsString      := '';
  cdsPessoaCOMPLEMENTO_END_ENT.AsString  := '';
  cdsPessoaCOMPLEMENTO_END_PGTO.AsString := '';
  cdsPessoaENDERECO_ENT.AsString         := '';
  cdsPessoaENDERECO_PGTO.AsString        := '';
  cdsPessoaCEP.AsString                  := '';
  cdsPessoaCEP_ENT.AsString              := '';
  cdsPessoaCEP_PGTO.AsString             := '';
  cdsPessoaTIPO_ICMS.AsString            := 'N';
  cdsPessoaORGAO_PUBLICO.AsString        := 'N';
  cdsPessoaUSA_TRANSFICMS.AsString       := 'N';
  cdsPessoaCLIENTE_ESTOQUE.AsString      := 'N';
  cdsPessoaUSA_TAMANHO_AGRUPADO_NFE.AsString := 'N';
  cdsPessoaCOBRAR_TAXA_BANCO.AsString := 'N';
  cdsPessoaORGAO_PUBLICO.AsString     := 'N';
  cdsPessoaTP_EXPORTACAO.AsString     := 'N';
  cdsPessoaTP_PREPOSTO.AsString       := 'N';
  cdsPessoaRETEM_ISS.AsString         := '2';
  cdsPessoaRETEM_CSLL.AsString        := 'N';
  cdsPessoaRETEM_INSS.AsString        := 'N';
  cdsPessoaRETEM_PISCOFINS.AsString   := 'N';
  cdsPessoaDIMINUIR_RETENCAO.AsString := 'N';
  cdsPessoaUSUARIO.AsString           := 'IMPORTADO';
  cdsPessoaHRCADASTRO.AsDateTime      := Now;
  cdsPessoaTP_FUNCIONARIO.AsString    := 'N';
end;

function TdmFacil.ProximaSequencia(NomeTabela: string;
  Filial: Integer): Integer;
var
  sds: TSQLDataSet;
  iSeq: Integer;
  ID: TTransactionDesc;
  Flag: Boolean;
begin
  Result := 0;
  iSeq   := 0;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    Conexao.StartTransaction(ID);
    try
      sds.SQLConnection := Conexao;
      sds.NoMetadata  := True;
      sds.GetMetadata := False;
      sds.CommandText := 'SELECT NUMREGISTRO FROM SEQUENCIAL WHERE TABELA = :TABELA AND FILIAL = :FILIAL';
      sds.ParamByName('TABELA').AsString := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger    := Filial;
      sds.Open;

      //iSeq := sds.FieldByName('NUMREGISTRO').AsInteger + 1;
      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;

      if (iSeq = 0) and (sds.IsEmpty) then
        Conexao.ExecuteDirect('INSERT INTO SEQUENCIAL(TABELA,FILIAL,NUMREGISTRO) VALUES(''' + NomeTabela +
                              ''', ''' + IntToStr(Filial) + ''', ''' + IntToStr(0) + ''' )');
      Conexao.Commit(ID);
    except
      Conexao.Rollback(ID);
      raise;
    end;
  finally
    FreeAndNil(sds);
  end;

  sds := TSQLDataSet.Create(nil);
  try
    ID.TransactionID  := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    Conexao.StartTransaction(ID);
    try //--
      sds.SQLConnection := Conexao;

      sds.NoMetadata  := True;
      sds.GetMetadata := False;

      sds.CommandText := 'UPDATE SEQUENCIAL SET NUMREGISTRO = (SELECT MAX(COALESCE(NUMREGISTRO,0)) + 1 ' +
                         'FROM SEQUENCIAL ' +
                         'WHERE TABELA = :TABELA' +
                         ' AND FILIAL = :FILIAL) ' +
                         'WHERE TABELA = :TABELA' +
                         ' AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;

      Flag := False;
      while not Flag do
      begin
        try
          sds.Close;
          sds.ExecSQL;
          Flag := True;
        except
          on E: Exception do
            Flag := False;
        end;
      end;

      sds.Close;
      sds.CommandText := 'SELECT MAX(COALESCE(NUMREGISTRO,0)) NUMREGISTRO  ' +
                         'FROM SEQUENCIAL ' +
                         'WHERE TABELA = :TABELA ' +
                         'AND FILIAL = :FILIAL';

      sds.ParamByName('TABELA').AsString  := NomeTabela;
      sds.ParamByName('FILIAL').AsInteger := Filial;
      sds.Open;

      iSeq := sds.FieldByName('NUMREGISTRO').AsInteger;

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

end.
