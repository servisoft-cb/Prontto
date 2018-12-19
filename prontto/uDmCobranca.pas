unit uDmCobranca;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, uDm1;

type
  TdmCobranca = class(TDataModule)
    sdsCReceber: TSQLDataSet;
    dspCReceber: TDataSetProvider;
    cdsCReceber: TClientDataSet;
    dsCReceber: TDataSource;
    cdsCReceberNUMCRECEBER: TIntegerField;
    cdsCReceberPARCELA: TStringField;
    cdsCReceberVLRVENCIMENTO: TFloatField;
    cdsCReceberDTVENCIMENTO: TDateField;
    cdsCReceberNUMNOTA: TIntegerField;
    cdsCReceberVLRRESTANTE: TFloatField;
    cdsCReceberVLRDESPESA: TFloatField;
    cdsCReceberTIPODOC: TStringField;
    cdsCReceberCOBRANCAEMITIDA: TStringField;
    cdsCReceberNOSSONUMERO: TStringField;
    cdsCReceberARQGERADO: TStringField;
    cdsCReceberNUMTITBANCO: TStringField;
    cdsCReceberNUMSEQNOSSONUM: TIntegerField;
    cdsCReceberITEMSEQNOSSONUM: TIntegerField;
    cdsCReceberDUPLICATAIMP: TStringField;
    sdsBanco: TSQLDataSet;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;
    dsBanco: TDataSource;
    cdsBancoID: TIntegerField;
    cdsBancoNOME: TStringField;
    cdsBancoSALDO: TFloatField;
    cdsBancoTIPOBANCO: TStringField;
    cdsBancoAGENCIA: TStringField;
    cdsBancoEMPCLI: TStringField;
    cdsBancoNUMCONTA: TStringField;
    cdsBancoDIGCONTA: TStringField;
    cdsCReceberNOME: TStringField;
    cdsBancoACBR_BANCO: TStringField;
    cdsBancoACBR_LAYOUT: TStringField;
    cdsBancoACBR_LOGO_BANCO: TStringField;
    cdsBancoDIG_AGENCIA: TStringField;
    cdsBancoCEDENTE: TStringField;
    cdsBancoJUROS_MES: TFMTBCDField;
    cdsBancoMULTA: TFMTBCDField;
    cdsBancoDIAS_PROTESTO: TSmallintField;
    cdsBancoCARTEIRA: TIntegerField;
    cdsBancoNUM_REMESSA: TSmallintField;
    cdsBancoCOD_FEBRABAN: TStringField;
    cdsBancoCOD_TRANSMISSAO: TStringField;
    cdsBancoOCORRENCIA: TStringField;
    cdsBancoINSTRUCAO1: TStringField;
    cdsBancoINSTRUCAO2: TStringField;
    cdsBancoESPECIE: TStringField;
    cdsBancoEND_ARQ_REMESSA: TStringField;
    cdsBancoEXT_ARQ_REMESSA: TStringField;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaFANTASIA: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaCODCIDADE: TIntegerField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaDDD: TStringField;
    cdsEmpresaFONE: TStringField;
    cdsEmpresaDOCUMENTO: TStringField;
    sdsContas_Calculo: TSQLDataSet;
    dspContas_calculo: TDataSetProvider;
    cdsContas_calculo: TClientDataSet;
    cdsContas_calculoID: TIntegerField;
    cdsContas_calculoANO: TIntegerField;
    cdsContas_calculoITEM: TIntegerField;
    cdsContas_calculoSEQ_NOSSONUMERO: TFMTBCDField;
    dsContas_calculo: TDataSource;
    cdsBancoNOSSONUMERO_POR_ANO: TStringField;
    cdsCReceberNOSSONUMERO_SEQ: TStringField;
    cdsCReceberNOSSONUMERO_GERADO: TStringField;
    cdsCReceberCOD_CARTEIRA: TStringField;
    cdsCReceberID_BANCO_BOLETO: TIntegerField;
    cdsCReceberNUM_REMESSA: TIntegerField;
    cdsCReceberPROTESTADO: TStringField;
    cdsBancoTIPO_IMPRESSAO: TStringField;
    cdsCReceberDTMOVIMENTO: TDateField;
    cdsEmpresaCIDADE: TStringField;
    cdsCReceberCOBENDERECO: TStringField;
    cdsCReceberCOBNUMERO: TIntegerField;
    cdsCReceberCOBCOMPLEMENTO: TStringField;
    cdsCReceberCOBUF: TStringField;
    cdsCReceberDOCUMENTO: TStringField;
    cdsCReceberCOBCEP: TStringField;
    cdsCReceberCOBBAIRRO: TStringField;
    cdsCReceberCOBCIDADE: TStringField;
    cdsCReceberPESSOA_PGTO: TStringField;
    cdsCReceberENDERECO: TStringField;
    cdsCReceberENDNUMERO: TStringField;
    cdsCReceberBAIRRO: TStringField;
    cdsCReceberCEP: TStringField;
    cdsCReceberESTADO: TStringField;
    cdsCReceberCIDADE: TStringField;
    cdsBancoVARIACAO_CARTEIRA: TStringField;
    cdsBancoLOCAL_PAGAMENTO: TStringField;
    cdsBancoMENSAGEM: TStringField;
    cdsCReceberJUROSCALC: TFloatField;
    sdsContas_CalculoID: TIntegerField;
    sdsContas_CalculoANO: TIntegerField;
    sdsContas_CalculoITEM: TIntegerField;
    sdsContas_CalculoSEQ_NOSSONUMERO: TFMTBCDField;
    sdsCReceberNUMCRECEBER: TIntegerField;
    sdsCReceberPARCELA: TStringField;
    sdsCReceberVLRVENCIMENTO: TFloatField;
    sdsCReceberDTVENCIMENTO: TDateField;
    sdsCReceberQUITADO: TStringField;
    sdsCReceberJUROSCALC: TFloatField;
    sdsCReceberDTPAGTO: TDateField;
    sdsCReceberCODCLIENTE: TIntegerField;
    sdsCReceberNUMNOTA: TIntegerField;
    sdsCReceberVLRDESCONTO: TFloatField;
    sdsCReceberVLRPAGTO: TFloatField;
    sdsCReceberVLRRESTANTE: TFloatField;
    sdsCReceberCODVENDEDOR: TIntegerField;
    sdsCReceberPERCCOMISSAO: TFloatField;
    sdsCReceberAGENCIA: TStringField;
    sdsCReceberTITPORTADOR: TStringField;
    sdsCReceberCODTIPOCOBRANCA: TIntegerField;
    sdsCReceberVLRDESPESA: TFloatField;
    sdsCReceberCODBANCO: TIntegerField;
    sdsCReceberPGCARTORIO: TStringField;
    sdsCReceberTITPROTESTADO: TStringField;
    sdsCReceberQTDDIASPROT: TIntegerField;
    sdsCReceberDTMOVIMENTO: TDateField;
    sdsCReceberDIASATRASO: TIntegerField;
    sdsCReceberJUROSPAGOS: TFloatField;
    sdsCReceberCANCELADO: TStringField;
    sdsCReceberTIPODOC: TStringField;
    sdsCReceberVLRDEVOLUCAO: TFloatField;
    sdsCReceberCODCONDPGTO: TIntegerField;
    sdsCReceberDTDEVOLUCAO: TDateField;
    sdsCReceberCOBRANCAEMITIDA: TStringField;
    sdsCReceberNUMCARTEIRA: TStringField;
    sdsCReceberNOSSONUMERO: TStringField;
    sdsCReceberIMPRIMIR: TStringField;
    sdsCReceberCODCENTROCUSTO: TIntegerField;
    sdsCReceberARQGERADO: TStringField;
    sdsCReceberIMPBOLETOSICREDICEDENTE: TStringField;
    sdsCReceberNUMTITBANCO: TStringField;
    sdsCReceberNUMSEQNOSSONUM: TIntegerField;
    sdsCReceberITEMSEQNOSSONUM: TIntegerField;
    sdsCReceberDUPLICATAIMP: TStringField;
    sdsCReceberNOSSONUMERO_SEQ: TStringField;
    sdsCReceberNOSSONUMERO_GERADO: TStringField;
    sdsCReceberCOD_CARTEIRA: TStringField;
    sdsCReceberID_BANCO_BOLETO: TIntegerField;
    sdsCReceberNUM_REMESSA: TIntegerField;
    sdsCReceberPROTESTADO: TStringField;
    sdsCReceberNOME: TStringField;
    sdsCReceberCOBENDERECO: TStringField;
    sdsCReceberCOBNUMERO: TIntegerField;
    sdsCReceberCOBCOMPLEMENTO: TStringField;
    sdsCReceberCOBUF: TStringField;
    sdsCReceberCOBCIDADE: TStringField;
    sdsCReceberDOCUMENTO: TStringField;
    sdsCReceberCOBCEP: TStringField;
    sdsCReceberCOBBAIRRO: TStringField;
    sdsCReceberPESSOA_PGTO: TStringField;
    sdsCReceberENDERECO: TStringField;
    sdsCReceberENDNUMERO: TStringField;
    sdsCReceberBAIRRO: TStringField;
    sdsCReceberCEP: TStringField;
    sdsCReceberESTADO: TStringField;
    sdsCReceberCIDADE: TStringField;
    cdsBancoNUM_ARQ_REMESSA: TIntegerField;
    cdsBancoDT_REMESSA: TDateField;
    cdsBancoSEQ_REMESSA_DIA: TIntegerField;
    mRetorno: TClientDataSet;
    mRetornoCodCarteira: TStringField;
    mRetornoCodOcorrenciaRet: TStringField;
    mRetornoNomeOcorrenciaRet: TStringField;
    mRetornoDtOcorrencia: TStringField;
    mRetornoNumNota: TStringField;
    mRetornoDtVenc: TStringField;
    mRetornoVlrTitulo: TFloatField;
    mRetornoEspecieDoc: TStringField;
    mRetornoVlrDespesaCobranca: TFloatField;
    mRetornoVlrIOF: TFloatField;
    mRetornoVlrAbatimento: TFloatField;
    mRetornoVlrDesconto: TFloatField;
    mRetornoVlrPago: TFloatField;
    mRetornoVlrJurosPagos: TFloatField;
    mRetornoDtLiquidacao: TStringField;
    mRetornoInstrCancelada: TStringField;
    mRetornoNomeCliente: TStringField;
    mRetornoErros: TStringField;
    mRetornoCodLiquidacao: TStringField;
    mRetornoDescLiquidacao: TStringField;
    mRetornoAtualizado: TStringField;
    mRetornoCodCliente: TIntegerField;
    mRetornoParcela: TStringField;
    mRetornoDescErro1: TStringField;
    mRetornoDescErro2: TStringField;
    mRetornoDescErro3: TStringField;
    mRetornoDescErro4: TStringField;
    mRetornoDescErro5: TStringField;
    mRetornoDescErro6: TStringField;
    mRetornoCodInstrCancelada: TStringField;
    mRetornoConfNossoNumero: TStringField;
    mRetornoNossoNumero: TStringField;
    mRetornoSeuNumero: TStringField;
    mRetornoID_Duplicata: TStringField;
    mRetornoTitulo_OK: TBooleanField;
    mRetornoUsa_NumConta_Cedente: TStringField;
    mRetornoTipo_Ret: TStringField;
    mRetornoFilial: TIntegerField;
    mRetornoAtualizar: TStringField;
    mRetornoID_Duplicata_Ant: TIntegerField;
    mRetornoVlrJurosdeMora: TFloatField;
    mRetornoCodMotivo: TStringField;
    mRetornoDescMotivo: TWideStringField;
    dsmRetorno: TDataSource;
    sdsCReceberHist: TSQLDataSet;
    dspCReceberHist: TDataSetProvider;
    cdsCReceberHist: TClientDataSet;
    dsCReceberHist: TDataSource;
    cdsCReceberHistNUMCRECEBER: TIntegerField;
    cdsCReceberHistPARCELA: TStringField;
    cdsCReceberHistITEM: TIntegerField;
    cdsCReceberHistHISTORICO: TStringField;
    cdsCReceberHistDTHISTORICO: TDateField;
    cdsCReceberHistDTULTPGTO: TDateField;
    cdsCReceberHistVLRULTPGTO: TFloatField;
    cdsCReceberHistVLRULTJUROSPAGO: TFloatField;
    cdsCReceberHistVLRULTDESCONTO: TFloatField;
    cdsCReceberHistVLRULTDESPESA: TFloatField;
    cdsCReceberHistTIPOHIST: TStringField;
    cdsCReceberHistNUMMOVFINANC: TIntegerField;
    cdsCReceberHistNUMMOVJUROS: TIntegerField;
    cdsCReceberHistVLRULTDEVOLUCAO: TFloatField;
    cdsCReceberHistNUMEXTCOMISSAO: TIntegerField;
    cdsCReceberHistCODCLIENTE: TIntegerField;
    cdsCReceberHistNUMNOTA: TIntegerField;
    cdsCReceberHistCODBANCO: TIntegerField;
    cdsCReceberHistCOMPLEMENTO: TStringField;
    cdsCReceberCODCLIENTE: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vSeq_Remessa_Dia: Byte;
    xNossoNum: Int64;
    vSeparadorParc: String;
    vCod_Carteira, vCod_Carteira_Red: String;
    fDm1: TDm1;
    ctCReceber: String;

    vNossoNumero: String;
    vNossoNumero_Montado: String;
    vNum_Remessa: Integer;
    vAceite: String;
    vGera_NossoNumero: String;

    procedure buscaNossoNumero;
    procedure prc_Gravar_Duplicata(Tipo: String); //I= Impressão Boleto   R= Remessa
    function Monta_Numero(Campo: String; Tamanho: Integer): String;
    function fnc_Busca_Num_Arquivo_Rem: Integer;
    procedure prc_Localizar(vId: Integer);
    procedure prc_Gravar_Historico(Tipo: String; Historico: String = '');
  end;

var
  dmCobranca: TdmCobranca;

implementation

{$R *.dfm}

{ TdmCobranca }

procedure TdmCobranca.buscaNossoNumero;
begin
  cdsContas_calculo.Close;
  sdsContas_Calculo.ParamByName('ID').AsInteger := cdsBancoID.AsInteger;
  if cdsBAncoNOSSONUMERO_POR_ANO.AsString = 'S' then
    sdsContas_Calculo.ParamByName('ANO').AsInteger := StrToInt(FormatDateTime('YYYY',Date))
  else
    sdsContas_Calculo.ParamByName('ANO').AsInteger := 9999;
  sdsContas_Calculo.ParamByName('ITEM').AsInteger := 99;
  cdsContas_calculo.Open;

  if cdsContas_calculo.IsEmpty then
  begin
    cdsContas_calculo.Insert;
    cdsContas_calculoID.AsInteger   := cdsBancoID.AsInteger;
    if cdsBancoNOSSONUMERO_POR_ANO.AsString = 'S' then
      cdsContas_calculoANO.AsInteger := StrToInt(FormatDateTime('YYYY',Date))
    else
      cdsContas_calculoANO.AsInteger := 9999;
    cdsContas_calculoITEM.AsInteger  := 99;
    cdsContas_calculoSEQ_NOSSONUMERO.AsInteger := 0;
    cdsContas_calculo.Post;
    cdsContas_calculo.ApplyUpdates(0);

    cdsContas_calculo.Close;
    sdsContas_Calculo.ParamByName('ID').AsInteger := cdsBancoID.AsInteger;
    if cdsBancoNOSSONUMERO_POR_ANO.AsString = 'S' then
      sdsContas_Calculo.ParamByName('ANO').AsInteger := StrToInt(FormatDateTime('YYYY',Date))
    else
      sdsContas_Calculo.ParamByName('ANO').AsInteger := 9999;
    sdsContas_Calculo.ParamByName('ITEM').AsInteger := 99;
    cdsContas_calculo.Open;
  end;
  //xNossoNum := StrToInt(cdsContas_calculoSEQ_NOSSONUMERO.AsString);
  xNossoNum := StrToInt64(FormatFloat('0',cdsContas_calculoSEQ_NOSSONUMERO.AsFloat));
end;

procedure TdmCobranca.prc_Gravar_Duplicata(Tipo: String);
var
  vItemAux: Integer;
  ID: TTransactionDesc;
  sds: TSQLDataSet;
begin
//  vGravou_Hist := False;
  if (Tipo <> 'R') and (Tipo <> 'LIQ')  and (Tipo <> 'LCA') and (Tipo <> 'PRO') then
  begin
    if (trim(cdsCReceberNOSSONUMERO.AsString) <> '') then
    begin
      exit;
    end;
  end;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 11;
  ID.IsolationLevel := xilREADCOMMITTED;
  fdm1.Conexao.StartTransaction(ID);

  try
    cdsCReceber.Edit;
    if (trim(cdsCReceberNOSSONUMERO.AsString) = '') or (cdsCReceberNOSSONUMERO.IsNull) and (trim(vNossoNumero) <> '') then
    begin
      cdsCReceberNOSSONUMERO_SEQ.AsVariant := xNossoNum;
      cdsCReceberNOSSONUMERO.AsString      := vNossoNumero_Montado;
      if (Tipo = 'R') or (Tipo = 'I') or (Tipo = 'E') then
        cdsCReceberNOSSONUMERO_GERADO.AsString := 'S'
      else
        cdsCReceberNOSSONUMERO_GERADO.AsString := 'B';

      cdsContas_calculo.Edit;
      cdsContas_calculoSEQ_NOSSONUMERO.AsString := IntToStr(xNossoNum);
      cdsContas_calculo.Post;
      cdsContas_calculo.ApplyUpdates(0);
    end;
    if (Tipo <> 'LIQ') AND (Tipo <> 'LCA') and (Tipo <> 'PRO') and (Tipo <> 'NNU') then
    begin
      cdsCReceberCOD_CARTEIRA.AsString     := vCod_Carteira;
      cdsCReceberID_BANCO_BOLETO.AsInteger := cdsBancoID.AsInteger;
    end;
    if Tipo = 'R' then
    begin
      cdsCReceberNUM_REMESSA.AsInteger := vNum_Remessa;
      cdsCReceberARQGERADO.AsString    := 'S';
    end
    else
    if (Tipo = 'I') or (Tipo = 'E') then
      cdsCReceberDUPLICATAIMP.AsString := 'S'
    else
    if Tipo = 'PRO' then
      cdsCReceberPROTESTADO.AsString := 'S';
    cdsCReceber.Post;
    cdsCReceber.ApplyUpdates(0);

    fDm1.Conexao.Commit(ID);
  except
    fDm1.Conexao.Rollback(ID);
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TdmCobranca.DataModuleCreate(Sender: TObject);
begin
  cdsBanco.Open;
  cdsContas_calculo.Open;
  cdsEmpresa.Open;

  ctCReceber := sdsCReceber.CommandText;
end;

function TdmCobranca.Monta_Numero(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function TdmCobranca.fnc_Busca_Num_Arquivo_Rem: Integer;
var
  sds: TSQLDataSet;
  i: Integer;
  vData: TDateTime;
begin
  i := cdsbancoNUM_ARQ_REMESSA.AsInteger + 1;
  Result := I;

  vSeq_Remessa_Dia := 0;
  if cdsBancoDT_REMESSA.AsDateTime = Date then
    vSeq_Remessa_Dia := cdsBancoSEQ_REMESSA_DIA.AsInteger;

  vSeq_Remessa_Dia := vSeq_Remessa_Dia + 1;
end;

procedure TdmCobranca.prc_Localizar(vId: Integer);
begin
  sdsCReceber.CommandText := '';
  cdsCReceber.Open;
end;

procedure TdmCobranca.prc_Gravar_Historico(Tipo, Historico: String);
var
  vItemAux: Integer;
begin
  cdsCReceberHist.Close;
  sdsCReceberHist.ParamByName('PCR1').AsInteger := cdsCReceberNUMCRECEBER.AsInteger;
  cdsCReceberHist.Open;
  cdsCReceberHist.Last;
  vItemAux := cdsCReceberHistITEM.AsInteger + 1;
  vItemAux := vItemAux;

  cdsCReceberHist.Insert;
  cdsCReceberHistNUMCRECEBER.AsInteger := cdsCReceberNUMCRECEBER.AsInteger;
  cdsCReceberHistITEM.AsInteger        := vItemAux;
  cdsCReceberHistTIPOHIST.AsString     := 'OUT';
//  cdsCReceberHistID_HISTORICO.AsInteger     := 0;
  if Tipo = 'R' then
    cdsCReceberHistCOMPLEMENTO.AsString := 'REMESSA ' + cdsBancoNOME.AsString + ' - Nosso Nº ' + vNossoNumero
  else
  if Tipo = 'PRO' then
    cdsCReceberHistCOMPLEMENTO.AsString := 'TITULO PROTESTADO'
  else
  if Tipo = 'E' then
    cdsCReceberHistCOMPLEMENTO.AsString := 'BOLETO ENVIADO POR EMAIL ' + cdsBancoNOME.AsString + ' - Nosso Nº ' + vNossoNumero
  else
  if Tipo = 'OUT' then
    cdsCReceberHistCOMPLEMENTO.AsString := Historico
  else
  if Tipo = 'NNU' then
    cdsCReceberHistCOMPLEMENTO.AsString := 'GRAVADO O NOSSO NÚMERO CONFORME RETORNO DO BANCO - Nosso Nº ' + vNossoNumero
  else
    cdsCReceberHistCOMPLEMENTO.AsString := 'BOLETO IMPRESSO ' + cdsBancoNOME.AsString + ' - Nosso Nº ' + vNossoNumero;

  cdsCReceberHistDTHISTORICO.AsDateTime  := Date;
  cdsCReceberHistDTULTPGTO.AsDateTime    := Date;
  cdsCReceberHistVLRULTPGTO.AsFloat      := StrToFloat(FormatFloat('0.00',0));
  cdsCReceberHistVLRULTJUROSPAGO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  cdsCReceberHistVLRULTDESCONTO.AsFloat  := StrToFloat(FormatFloat('0.00',0));
  cdsCReceberHistVLRULTDESPESA.AsFloat   := StrToFloat(FormatFloat('0.00',0));
  cdsCReceberHistVLRULTDEVOLUCAO.AsFloat := StrToFloat(FormatFloat('0.00',0));
  cdsCReceberHistCODBANCO.AsInteger      := cdsCReceberID_BANCO_BOLETO.AsInteger;
  cdsCReceberHistTIPOHIST.AsString       := 'P';
  cdsCReceberHist.Post;
  cdsCReceberHist.ApplyUpdates(0);
end;

end.
