unit UArqRetornoSicred;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Mask, Buttons, Menus, Grids,
  DBGrids, Db, DBTables, ALed, Variants, DBClient, FMTBcd, SqlExpr, JvDBCtrl, UDM1, JvSpeedButton, dbxpress, rsDBUtils,
  JvToolEdit;

type
  TfArqRetornoSicred = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Imprimir1: TMenuItem;
    Visualizar1: TMenuItem;
    BitBtn3: TBitBtn;
    ALed1: TALed;
    Label8: TLabel;
    ALed2: TALed;
    Label2: TLabel;
    ALed3: TALed;
    Label3: TLabel;
    dsmArquivo: TDataSource;
    Label4: TLabel;
    ALed4: TALed;
    ALed5: TALed;
    Label6: TLabel;
    mArquivo: TClientDataSet;
    mArquivoNumTitBanco: TStringField;
    mArquivoNomeMotRejeicao: TStringField;
    mArquivoCodOcorrenciaRet: TIntegerField;
    mArquivoNomeOcorrenciaRet: TStringField;
    mArquivoDtOcorrencia: TStringField;
    mArquivoNumTitEmpresa: TStringField;
    mArquivoDtVecto: TStringField;
    mArquivoVlrTitulo: TFloatField;
    mArquivoVlrAbatimento: TFloatField;
    mArquivoVlrDesconto: TFloatField;
    mArquivoVlrPago: TFloatField;
    mArquivoVlrJurosPago: TFloatField;
    mArquivoAtualizado: TBooleanField;
    mArquivoNomeCliente: TStringField;
    mArquivoNumNota: TStringField;
    mArquivoParcela: TStringField;
    mArquivoCodCliente: TIntegerField;
    mArquivoCodMotRejeicao: TStringField;
    mArquivoTipoCobranca: TStringField;
    mArquivoEspecieDoc: TStringField;
    mArquivoVlrDespesaCobranca: TFloatField;
    mArquivoVlrDespesaProtesto: TFloatField;
    mArquivoProtesto: TStringField;
    mArquivoDtPrevistaCCorrente: TStringField;
    mArquivoVlrMulta: TFloatField;
    tCReceber: TSQLTable;
    tCliente: TSQLTable;
    tCReceberNUMCRECEBER: TIntegerField;
    tCReceberPARCELA: TStringField;
    tCReceberVLRVENCIMENTO: TFloatField;
    tCReceberDTVENCIMENTO: TDateField;
    tCReceberQUITADO: TStringField;
    tCReceberJUROSCALC: TFloatField;
    tCReceberDTPAGTO: TDateField;
    tCReceberCODCLIENTE: TIntegerField;
    tCReceberNUMNOTA: TIntegerField;
    tCReceberVLRDESCONTO: TFloatField;
    tCReceberVLRPAGTO: TFloatField;
    tCReceberVLRRESTANTE: TFloatField;
    tCReceberCODVENDEDOR: TIntegerField;
    tCReceberPERCCOMISSAO: TFloatField;
    tCReceberAGENCIA: TStringField;
    tCReceberTITPORTADOR: TStringField;
    tCReceberCODTIPOCOBRANCA: TIntegerField;
    tCReceberVLRDESPESA: TFloatField;
    tCReceberCODBANCO: TIntegerField;
    tCReceberPGCARTORIO: TStringField;
    tCReceberTITPROTESTADO: TStringField;
    tCReceberQTDDIASPROT: TIntegerField;
    tCReceberDTMOVIMENTO: TDateField;
    tCReceberDIASATRASO: TIntegerField;
    tCReceberJUROSPAGOS: TFloatField;
    tCReceberCANCELADO: TStringField;
    tCReceberTIPODOC: TStringField;
    tCReceberVLRDEVOLUCAO: TFloatField;
    tCReceberCODCONDPGTO: TIntegerField;
    tCReceberDTDEVOLUCAO: TDateField;
    tCReceberCOBRANCAEMITIDA: TStringField;
    tCReceberNUMCARTEIRA: TStringField;
    tCReceberNOSSONUMERO: TStringField;
    tCReceberIMPRIMIR: TStringField;
    tCReceberCODCENTROCUSTO: TIntegerField;
    tCReceberOBS: TBlobField;
    tCReceberARQGERADO: TStringField;
    tCReceberIMPBOLETOSICREDICEDENTE: TStringField;
    tCReceberNUMTITBANCO: TStringField;
    tCReceberNUMSEQNOSSONUM: TIntegerField;
    tCReceberITEMSEQNOSSONUM: TIntegerField;
    tCReceberlkNomeCliente: TStringField;
    tClienteID: TIntegerField;
    tClienteNOME: TStringField;
    tClienteFANTASIA: TStringField;
    tClientePESSOA: TStringField;
    tClienteDOCUMENTO: TStringField;
    tClienteENDERECO: TStringField;
    tClienteBAIRRO: TStringField;
    tClienteCEP: TStringField;
    tClienteESTADO: TStringField;
    tClienteFONE: TStringField;
    tClienteFAX: TStringField;
    tClienteINSCESTADUAL: TStringField;
    tClienteIDENTIDADE: TStringField;
    tClienteESTCIVIL: TStringField;
    tClientePROFISSAO: TStringField;
    tClienteNACIONALIDADE: TStringField;
    tClienteDTCADASTRO: TDateField;
    tClienteOBSERVACAO: TMemoField;
    tClienteFORNECEDOR: TStringField;
    tClienteCLIENTE: TStringField;
    tClienteVENDEDOR: TStringField;
    tClienteREFPESSOAL1: TStringField;
    tClienteREFPESSOAL2: TStringField;
    tClienteREFPESSOALEND1: TStringField;
    tClienteREFPESSOALEND2: TStringField;
    tClienteREFPESSOALFONE1: TStringField;
    tClienteREFPESSOALFONE2: TStringField;
    tClienteREFCOMERCIAL1: TStringField;
    tClienteREFCOMERCIAL2: TStringField;
    tClienteREFCOMERCIALEND1: TStringField;
    tClienteREFCOMERCIALEND2: TStringField;
    tClienteREFCOMERCIALFONE1: TStringField;
    tClienteREFCOMERCIALFONE2: TStringField;
    tClienteCIDADE: TIntegerField;
    tClienteTRANSPORTADORA: TStringField;
    tClientePERCCOMISSAO: TFloatField;
    tClienteTIPOCOMISSAO: TStringField;
    tClienteSTATUS: TStringField;
    tClienteDTCONTRATOINI: TDateField;
    tClienteDTCONTRATOFIM: TDateField;
    tClienteCONTRATODEVOLVIDO: TDateField;
    tClienteCOBENDERECO: TStringField;
    tClienteCOBNUMERO: TIntegerField;
    tClienteCOBCOMPLEMENTO: TStringField;
    tClienteCOBBAIRRO: TStringField;
    tClienteCOBCIDADE: TIntegerField;
    tClienteCOBUF: TStringField;
    tClienteCOBCONTATO: TStringField;
    tClienteENDNUMERO: TIntegerField;
    tClienteENDCOMPLEMENTO: TStringField;
    tClienteIDUSUARIO: TIntegerField;
    tClienteCODBANCO: TIntegerField;
    tClienteAGENCIA: TStringField;
    tClienteNUMCONTACORRENTE: TStringField;
    tClienteLOGIN: TStringField;
    tClienteSENHA: TStringField;
    tClienteDIAPAGAMENTO: TIntegerField;
    tClienteCODVENDEDOR: TIntegerField;
    tClienteFORMAPGTO: TIntegerField;
    tClienteEMAIL: TStringField;
    tClienteHOMEPAGE: TStringField;
    tClienteSELECIONADO: TStringField;
    tClienteCONJUGE: TStringField;
    tClienteDTNASCIMENTO: TDateField;
    tClienteCEL: TStringField;
    tClientePLANOSAUDE_ID: TIntegerField;
    tClienteCOBCEP: TStringField;
    tClienteVLRPGTO: TFloatField;
    tClienteNUMCARTEIRA: TStringField;
    tClienteFUNCIONARIO: TStringField;
    tClienteCODCENTROCUSTO: TIntegerField;
    tClienteCODTIPOCOBRANCA: TIntegerField;
    tClienteTIPOSALARIO: TStringField;
    tClienteVALORSALARIO: TFloatField;
    tClienteRG: TStringField;
    tClienteNOMEPAI: TStringField;
    tClienteNOMEMAE: TStringField;
    tClienteCODCLAUSULA: TIntegerField;
    tClienteDESCCLAUSULA: TBlobField;
    tClienteALUNO: TStringField;
    tClienteNATURALIDADE_CID: TIntegerField;
    tClienteNATURALIDADE_UF: TStringField;
    tClienteEMPREGOS_ANT: TBlobField;
    tClienteCURSOS_ANT: TBlobField;
    tClienteINFO_ADICIONAIS: TBlobField;
    tClienteFOTO: TBlobField;
    tClienteFOTO_CAMINHO: TStringField;
    tClienteSEXO: TStringField;
    tClienteREGISTRO_DPF: TStringField;
    tClienteEXP_REGISTRO_DPF: TStringField;
    tClienteDT_FORMACAO: TDateField;
    tClienteCONTRASENHA: TStringField;
    tClienteCHAVE: TStringField;
    tClienteCONTROLE: TStringField;
    tExtComissaoIns: TSQLTable;
    tExtComissaoInsNUMMOV: TIntegerField;
    tExtComissaoInsCODVENDEDOR2: TIntegerField;
    tExtComissaoInsDTREFERENCIA: TDateField;
    tExtComissaoInsNUMNOTA: TIntegerField;
    tExtComissaoInsPARCELA: TStringField;
    tExtComissaoInsCODCLIENTE: TIntegerField;
    tExtComissaoInsFUNCAO: TStringField;
    tExtComissaoInsVLRBASE: TFloatField;
    tExtComissaoInsPERCENTUAL: TFloatField;
    tExtComissaoInsVLRCOMISSAO: TFloatField;
    tExtComissaoInsTIPO: TStringField;
    tMovimentos2: TSQLTable;
    JvDBGrid1: TJvDBGrid;
    tMovimentos2NUMMOVTO: TIntegerField;
    tMovimentos2CODBANCO: TIntegerField;
    tMovimentos2DTMOVIMENTO: TDateField;
    tMovimentos2VLRENTRADA: TFloatField;
    tMovimentos2VLRSAIDA: TFloatField;
    tMovimentos2HISTORICO: TStringField;
    tMovimentos2TIPOMOV: TStringField;
    tMovimentos2CODCENTROCUSTO: TIntegerField;
    tMovimentos2TIPOPESSOA: TStringField;
    tMovimentos2NOMEPESSOA: TStringField;
    FilenameEdit1: TJvFilenameEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    vHistorico: String;
    vFilial: Integer;
    vMotivo: String;
    procedure Grava_NumBanco;
    procedure Grava_Historico;
    procedure Grava_MovFinanceiro(Tipo: String);
//    procedure Grava_Liquidacao;
//    procedure Grava_Historico(Tipo, Historico: String); //E- Entrada  L- Liquidação  P-Protestado
//    procedure Pagamento;
//    procedure Grava_Protesto;
    procedure Grava_Vencimento;
    procedure Motivo_Rejeicao(Codigo: String);
    procedure Motivo_Ocorrencia28(Codigo: String);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fArqRetornoSicred: TfArqRetornoSicred;

implementation

uses URelArqRetSicred;

{$R *.DFM}

procedure TfArqRetornoSicred.Grava_MovFinanceiro(Tipo: String);
begin
  Fdm1.tMovFinanceiro.Close;
  Fdm1.MovFinanceiro.Params[0].AsInteger := 0;
  Fdm1.tMovFinanceiro.Open;

  Fdm1.tMovFinanceiro.Insert;
  Fdm1.tMovFinanceiroNUMMOVTO.AsInteger := Fdm1.Incrementa('NUMMOVTO','MOVFINANCEIRO');
  Fdm1.tMovFinanceiroCODBANCO.AsInteger := Fdm1.tCReceberParcCODBANCO.AsInteger;
  Fdm1.tMovFinanceiroTIPOMOV.AsString   := 'REC';
  Fdm1.tMovFinanceiroDTMOVIMENTO.AsDateTime := Fdm1.tCReceberParcDTPAGTO.AsDateTime;
  if Tipo = 'D' then
    begin
      Fdm1.tMovFinanceiroVLRENTRADA.AsFloat   := Fdm1.tCReceberParcVLRPAGTO.AsFloat;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Recto. Dupl. ' + Fdm1.tCReceberHistNUMCRECEBER.AsString + ' parcela ' + Fdm1.tCReceberHistPARCELA.AsString + ' de ' + Fdm1.tCReceberParcNOMECLIENTE.AsString;
    end
  else
  if Tipo = 'J' then
    begin
      Fdm1.tMovFinanceiroVLRENTRADA.AsFloat := Fdm1.tCReceberParcJUROSPAGOS.AsFloat;
      Fdm1.tMovFinanceiroHISTORICO.AsString := 'Recto. Juros da Dupl. ' + Fdm1.tCReceberHistNUMCRECEBER.AsString + ' parcela ' + Fdm1.tCReceberHistPARCELA.AsString + ' de ' + Fdm1.tCReceberParcNOMECLIENTE.AsString;
    end;
{  if DmCons.qCliente.Locate('ID',Fdm1.tCReceberParcCODCLIENTE.AsInteger,([LocaseInsensitive])) then
    Fdm1.tMovFinanceiroTIPOPESSOA.AsString := DmCons.qClientePESSOA.AsString;}
  Fdm1.tMovFinanceiro.Post;
  Fdm1.tMovFinanceiro.ApplyUpdates(0);
end;


procedure TfArqRetornoSicred.Grava_Historico;
var
  vAux: Integer;
begin
  Fdm1.tCReceberHist.Close;
  Fdm1.CReceberHist.Params[0].AsInteger := mArquivoNumNota.AsInteger;
  Fdm1.CReceberHist.Params[1].AsString  := mArquivoParcela.AsString;
  Fdm1.tCReceberHist.Open;
  Fdm1.tCReceberHist.Last;
  vAux := Fdm1.tCReceberHistITEM.AsInteger + 1;

  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHistNUMCRECEBER.AsInteger   := mArquivoNumNota.AsInteger;
  Fdm1.tCReceberHistPARCELA.AsString        := mArquivoParcela.AsString;
  Fdm1.tCReceberHistITEM.AsInteger          := vAux;
  Fdm1.tCReceberHistDTHISTORICO.AsDateTime  := Date;
  Fdm1.tCReceberHistCODBANCO.AsInteger      := Fdm1.tCReceberParcCODBANCO.AsInteger;
  if (mArquivoCodOcorrenciaRet.AsString = '06') or (mArquivoCodOcorrenciaRet.AsString = '08')
  or (mArquivoCodOcorrenciaRet.AsString = '09') or (mArquivoCodOcorrenciaRet.AsString = '10') then
    begin
      Fdm1.tCReceberHistDTULTPGTO.AsDateTime    := Fdm1.tCReceberParcDTPAGTO.AsDateTime;
      Fdm1.tCReceberHistVLRULTPGTO.AsFloat      := StrToFloat(FormatFloat('0.00',FDM1.tCReceberParcVLRRESTANTE.AsFloat));
      Fdm1.tCReceberHistVLRULTJUROSPAGO.AsFloat := mArquivoVlrJurosPago.AsFloat;
      Fdm1.tCReceberHistVLRULTDESCONTO.AsFloat  := mArquivoVlrDesconto.AsFloat;
      Fdm1.tCReceberHistVLRULTDESPESA.AsFloat   := mArquivoVlrDespesaCobranca.AsFloat;
      Fdm1.tCReceberHistTIPOHIST.AsString       := 'P';
      if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
        Fdm1.tCReceberHistHISTORICO.AsString  := 'PAGAMENTO PARCIAL - Sistema Itaú'
      else
        Fdm1.tCReceberHistHISTORICO.AsString  := 'PAGAMENTO TOTAL - Sistema Itaú';
      Grava_MovFinanceiro('D');
      Fdm1.tCReceberHistNUMMOVFINANC.AsInteger := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
      if mArquivoVlrJurosPago.AsFloat > 0 then
        begin
          Grava_MovFinanceiro('J');
          Fdm1.tCReceberHistNUMMOVJUROS.AsInteger  := Fdm1.tMovFinanceiroNUMMOVTO.AsInteger;
        end;
    end
  else
  if mArquivoCodOcorrenciaRet.AsString = '23' then
    Fdm1.tCReceberHistHISTORICO.AsString  := 'PROTESTO ENVIADO A CARTÓRIO/TARIFA';
  Fdm1.tCReceberHist.Post;
  Fdm1.tCReceberHist.ApplyUpdates(0);
end;


procedure TfArqRetornoSicred.Motivo_Ocorrencia28(Codigo: String);
begin
  if Codigo = '03' then
    vMotivo := 'Tarifa de sustação'
  else
  if Codigo = '04' then
    vMotivo := 'Tarifa de protesto'
  else
  if Codigo = '08' then
    vMotivo := 'Tarifa de custas de protesto'
  else
  if Codigo = 'A9' then
    vMotivo := 'Tarifa de manutenção de título vencido'
  else
  if Codigo = 'B1' then
    vMotivo := 'Tarifa de baixa da carteira'
  else
  if Codigo = 'B2' then
    vMotivo := 'Tarifa de rateio dos custos de impressão completa de bloquetos'
  else
  if Codigo = 'B3' then
    vMotivo := 'Tarifa de registro de entrada do título'
  else
  if Codigo = 'F5' then
    vMotivo := 'Tarifa de entrada na rede SICREDI'
  else
  if Codigo = 'E1' then
    vMotivo := 'Tarifa de rateio impressão completa posta não';
end;

procedure TfArqRetornoSicred.Motivo_Rejeicao(Codigo: String);
begin
  if codigo = '01' then
    vMotivo := 'Código do banco inválido'
  else
  if codigo = '02' then
    vMotivo := 'Código do registro detalhe inválido'
  else
  if codigo = '03' then
    vMotivo := 'Código da ocorrência inválido'
  else
  if codigo = '04' then
    vMotivo := 'Código de ocorrência não permitida para a carteira'
  else
  if codigo = '05' then
    vMotivo := 'Código de ocorrência não númerico'
  else
  if codigo = '07' then
    vMotivo := 'Coopertativa/Agência/Conta/Dígito inválido'
  else
  if codigo = '09' then
    vMotivo := 'Nosso número duplicado'
  else
  if codigo = '10' then
    vMotivo := 'Carteira inválida'
  else
  if codigo = '14' then
    vMotivo := 'Título protestado'
  else
  if codigo = '15' then
    vMotivo := 'Cooperativa/carteira/agência/conta/nosso número inválidos'
  else
  if codigo = '16' then
    vMotivo := 'Data de vencimento inválida'
  else
  if codigo = '17' then
    vMotivo := 'Data de vencimento anterior à data de emissão'
  else
  if codigo = '18' then
    vMotivo := 'Vencimento fora do prazo de operação'
  else
  if codigo = '20' then
    vMotivo := 'Valor do título inválido'
  else
  if codigo = '21' then
    vMotivo := 'Espécie do título inválida'
  else
  if codigo = '22' then
    vMotivo := 'Espécie não permitida para a carteira'
  else
  if codigo = '24' then
    vMotivo := 'Data de emissão inválida'
  else
  if codigo = '29' then
    vMotivo := 'Valor do desconto maior/igual ao valor do título'
  else
  if codigo = '31' then
    vMotivo := 'Concessão de desconto - existe desconto anterior'
  else
  if codigo = '33' then
    vMotivo := 'Valor do abatimento inválido'
  else
  if codigo = '34' then
    vMotivo := 'Valor do abatimento maior/igual ao valor do título'
  else
  if codigo = '36' then
    vMotivo := 'Concessão de abatimento - existe abatimento anterior'
  else
  if codigo = '38' then
    vMotivo := 'Prazo para protesto inválido'
  else
  if codigo = '39' then
    vMotivo := 'Pedido para protesto não permitido para o título'
  else
  if codigo = '40' then
    vMotivo := 'Título com ordem de protesto emitida'
  else
  if codigo = '41' then
    vMotivo := 'Pedido cancelamento/sustação sem instrução de protesto'
  else
  if codigo = '44' then
    vMotivo := 'Cooperativa de crédito/agência cedente não prevista'
  else
  if codigo = '45' then
    vMotivo := 'Nome do sacado inválido'
  else
  if codigo = '46' then
    vMotivo := 'Tipo/número de inscrição do sacado inválido'
  else
  if codigo = '47' then
    vMotivo := 'Endereço do sacado não informado'
  else
  if codigo = '48' then
    vMotivo := 'Cep irregular'
  else
  if codigo = '49' then
    vMotivo := 'Número de inscrição do sacador/avalista inválido'
  else
  if codigo = '50' then
    vMotivo := 'Sacador/avalista não informado'
  else
  if codigo = '60' then
    vMotivo := 'Movimento para título não cadastrado'
  else
  if codigo = '63' then
    vMotivo := 'Entrada para título já cadastrado'
  else
  if codigo = 'A' then
    vMotivo := 'Aceito'
  else
  if codigo = 'D' then
    vMotivo := 'Desprezado'
  else
  if codigo = 'A1' then
    vMotivo := 'Praça do sacado não cadastrada'
  else
  if codigo = 'A2' then
    vMotivo := 'Tipo de cobrança do título divergente com a praça do sacado'
  else
  if codigo = 'A3' then
    vMotivo := 'Cooperativa/agência depositária divergente: atualiza o cadastro de praças da coop./agência cedente'
  else
  if codigo = 'A4' then
    vMotivo := 'Cedente não cadastrado ou possui CGC/CIC inválido'
  else
  if codigo = 'A5' then
    vMotivo := 'Sacado não cadastrado'
  else
  if codigo = 'A6' then
    vMotivo := 'Data da instrução/ocorrência inválida'
  else
  if codigo = 'A7' then
    vMotivo := 'Ocorrência não pode ser comandada'
  else
  if codigo = 'A8' then
    vMotivo := 'Recebimento da liquidação fora da rede SICREDI - via compensação eletrônica'
  else
  if codigo = 'B4' then
    vMotivo := 'Tipo de moeda inválido'
  else
  if codigo = 'B5' then
    vMotivo := 'Tipo de desconto/juros inválido'
  else
  if codigo = 'B6' then
    vMotivo := 'Mensagem padrão não cadastrada'
  else
  if codigo = 'C1' then
  else
  if codigo = 'B7' then
    vMotivo := 'Seu número inválido'
  else
  if codigo = 'B8' then
    vMotivo := 'Percentual de multa inválido'
  else
  if codigo = 'B9' then
    vMotivo := 'Valor ou percentual de juros inválido'
  else
  if codigo = 'C1' then
    vMotivo := 'Data limite para concessão de descotno inválida'
  else
  if codigo = 'C2' then
    vMotivo := 'Aceite do título inválido'
  else
  if codigo = 'C3' then
    vMotivo := 'Campo alterado na instrução "31- alteração de outros dados" inválido'
  else
  if codigo = 'C4' then
    vMotivo := 'Título ainda não foi confirmado pela centralizadora'
  else
  if codigo = 'C5' then
    vMotivo := 'Título rejeitado pela centralizadora'
  else
  if codigo = 'C6' then
    vMotivo := 'Título já liquidado'
  else
  if codigo = 'C7' then
    vMotivo := 'Título já baixado'
  else
  if codigo = 'C8' then
    vMotivo := 'Existe mesma instrução pendente de confirmação para este título'
  else
  if codigo = 'C9' then
    vMotivo := 'Instrução prévia de concessão de abatimento não existe ou não confirmada'
  else
  if codigo = 'D1' then
    vMotivo := 'Título dentro do prazo de vencimento (em dia)'
  else
  if codigo = 'D2' then
    vMotivo := 'Espécie de documento não permite protesto de título'
  else
  if codigo = 'D3' then
    vMotivo := 'Título possui instrução de baixa pendente de confirmação'
  else
  if codigo = 'D4' then
    vMotivo := 'Quantidade de mensagens padrão excede o limite permitido'
  else
  if codigo = 'D5' then
    vMotivo := 'Quantidade inválida no pedido de bloquetos pré-impressos de cobrança sem registro'
  else
  if codigo = 'D6' then
    vMotivo := 'Tipo de impressão inválida para cobrança sem registro'
  else
  if codigo = 'D7' then
    vMotivo := 'Cidade ou Estado do sacado não informados'
  else
  if codigo = 'D8' then
    vMotivo := 'Sequência para composição do nosso número do ano atual esgotada'
  else
  if codigo = 'D9' then
    vMotivo := 'Registro mensagem para título não cadastrado'
  else
  if codigo = 'E2' then
    vMotivo := 'Registro complementar ao cadastro do título da cobrança com e sem registro não cadastrado'
  else
  if codigo = 'E3' then
    vMotivo := 'Tipo de postagem inválido, diferente S, N e branco'
  else
  if codigo = 'E4' then
    vMotivo := 'Pedido de bloquetos pré-impressos'
  else
  if codigo = 'E5' then
    vMotivo := 'Confirmação/rejeição para pedidos de bloquetos não cadastrado'
  else
  if codigo = 'E6' then
    vMotivo := 'Sacador/avalista não cadastrado'
  else
  if codigo = 'E7' then
    vMotivo := 'Informação para atualização do valor do título para protesto inválido'
  else
  if codigo = 'E8' then
    vMotivo := 'Tipo de impressão inválido, diferente de A,B e branco'
  else
  if codigo = 'E9' then
    vMotivo := 'Código do sacado do título divergente com o código da cooperativa de crédito'
  else
  if codigo = 'F1' then
    vMotivo := 'Liquidado no sistema do cliente'
  else
  if codigo = 'F2' then
    vMotivo := 'Baixado no sistema do cliente'
  else
  if codigo = 'F3' then
    vMotivo := 'Instruação inválida, este título esta caucionado'
  else
  if codigo = 'F4' then
    vMotivo := 'Instrução fixa com caracteres inválidos'
  else
  if codigo = 'F6' then
    vMotivo := 'Nosso número/número da parcela fora de sequência - total de parcelas inválido'
  else
  if codigo = 'F7' then
    vMotivo := 'Falta de comprovante de prestação de serviço'
  else
  if codigo = 'F8' then
    vMotivo := 'Nome do cedente incompleto/incorreto'
  else
  if codigo = 'F9' then
    vMotivo := 'CNPJ/CPF incompatível com o nome do sacado/sacador avalista'
  else
  if codigo = 'G1' then
    vMotivo := 'CNPJ/CPF do sacador incompatível com a espécie'
  else
  if codigo = 'G2' then
    vMotivo := 'Título aceito: sem a assinatura do sacado'
  else
  if codigo = 'G3' then
    vMotivo := 'Título aceito: rasurado ou rasgado'
  else
  if codigo = 'G4' then
    vMotivo := 'Título aceito: falta título (cooperativa/ag.cedente deverá enviá-lo)'
  else
  if codigo = 'G5' then
    vMotivo := 'Praça de pagamento incompatível com o endereço'
  else
  if codigo = 'G6' then
    vMotivo := 'Título aceito: sem endosso ou cedente irregular'
  else
  if codigo = 'G7' then
    vMotivo := 'Título aceito: valor por extenso diferente do valor numérico'
  else
  if codigo = 'G8' then
    vMotivo := 'Saldo maior que o valor do título'
  else
  if codigo = 'G9' then
    vMotivo := 'Tipo de endosso inválido'
  else
  if codigo = 'H1' then
    vMotivo := 'Nome do sacador incompleto/incorreto'
  else
  if codigo = 'H2' then
    vMotivo := 'Sustação judicial'
  else
  if codigo = 'H3' then
    vMotivo := 'Sacado não encontrado'
  else
  if codigo = 'H4' then
    vMotivo := 'Alteração de carteira'
  else
  if codigo = 'H5' then
    vMotivo := 'Recebimento de liquidação fora da rede SICREDI - VLB Inferior - Via compensação'
  else
  if codigo = 'H6' then
    vMotivo := 'Recebimento de liquidação fora da rede SICREDI - VLB Superior - Via compensação'
  else
  if codigo = 'H7' then
    vMotivo := 'Espécie de documento necessita cedente ou avalista PJ'
  else
  if codigo = 'H8' then
    vMotivo := 'Recebimento de liquidação fora da rede SICREDI - Contingência Via Compe'
  else
  if codigo = 'H9' then
    vMotivo := 'Dados do título não conferem com disquete'
  else
  if codigo = 'I1' then
    vMotivo := 'Sacado e sacador avalista são a mesma pessoa'
  else
  if codigo = 'I2' then
    vMotivo := 'Aguardar um dia útil após o vencimento para protestar'
  else
  if codigo = 'I3' then
    vMotivo := 'Data do vencimento rasurada'
  else
  if codigo = 'I4' then
    vMotivo := 'Vencimento - extenso não confere com número'
  else
  if codigo = 'I5' then
    vMotivo := 'Falta data de vencimento no título'
  else
  if codigo = 'I6' then
    vMotivo := 'DM/DMI sem comprovante autenticado ou declaração'
  else
  if codigo = 'I7' then
    vMotivo := 'Comprovante ilegível para conferência e microfilmagem'
  else
  if codigo = 'I8' then
    vMotivo := 'Nome solicitado não confere com emitente ou sacado'
  else
  if codigo = 'I9' then
    vMotivo := 'Confirmar se são 2 emitentes. Se sim, indicar os dados do 2'
  else
  if codigo = 'J1' then
    vMotivo := 'Endereço do sacado igual ao do sacador ou do portador'
  else
  if codigo = 'J2' then
    vMotivo := 'Endereço do paresentante incompleto ou não informado'
  else
  if codigo = 'J3' then
    vMotivo := 'Rua/número inexistente no endereço'
  else
  if codigo = 'J4' then
    vMotivo := 'Falta endosso do favorecido para o apresentante'
  else
  if codigo = 'J5' then
    vMotivo := 'Data da emissão rasurada'
  else
  if codigo = 'J6' then
    vMotivo := 'Falta assinatura do sacador no título'
  else
  if codigo = 'J7' then
    vMotivo := 'Nome do apresentante não informado/incompleto/incorreto'
  else
  if codigo = 'J8' then
    vMotivo := 'Erro de preenchimento do título'
  else
  if codigo = 'J9' then
    vMotivo := 'Título com direito de regresso vencido'
  else
  if codigo = 'K1' then
    vMotivo := 'Título apresentado em duplicidade'
  else
  if codigo = 'K2' then
    vMotivo := 'Título já protestado'
  else
  if codigo = 'K3' then
    vMotivo := 'Letra de cambio vencida - falta aceite do sacador'
  else
  if codigo = 'K4' then
    vMotivo := 'Falta declaração de saldo assinada no título'
  else
  if codigo = 'K5' then
    vMotivo := 'Contrato de cambio - Falta conta gráfica'
  else
  if codigo = 'K6' then
    vMotivo := 'Ausência do documento físico'
  else
  if codigo = 'K7' then
    vMotivo := 'Sacado falecido'
  else
  if codigo = 'K8' then
    vMotivo := 'Sacado apresentou quitação do título'
  else
  if codigo = 'K9' then
    vMotivo := 'Título de outra jurisdição territorial'
  else
  if codigo = 'L1' then
    vMotivo := 'Título com emissão anterior a concordata do sacado'
  else
  if codigo = 'L2' then
    vMotivo := 'Sacado consta na lista de falência'
  else
  if codigo = 'L3' then
    vMotivo := 'Apresentante não aceita publicação de edital'
  else
  if codigo = 'L4' then
    vMotivo := 'Dados do Sacado em branco ou inválido'
  else
  if codigo = 'X1' then
    vMotivo := 'Regularização centralizadora - Rede SICREDI'
  else
  if codigo = 'X2' then
    vMotivo := 'Regularização centralizadora - Compensação'
  else
  if codigo = 'X3' then
    vMotivo := 'Regularização centralizadora - Banco correspondente'
  else
  if codigo = 'X4' then
    vMotivo := 'Regularização centralizadora - VLB Inferior - via compensação'
  else
  if codigo = 'X5' then
    vMotivo := 'Regularização centralizadora - VLB Superior - via compensação';
end;

{procedure TfArqRetornoSicred.Grava_Protesto;
begin
  Fdm1.tCReceberParc.Edit;
  Fdm1.tCReceberParcTitProtestado.AsBoolean := True;
  Fdm1.tCReceberParc.Post;

//  Grava_Historico('P','TITULO PROTESTADO');
//  Fdm1.tCReceberParcHist.Post;

  mArquivo.Edit;
  mArquivoAtualizado.AsBoolean := True;
  mArquivo.Post;
end;
}
procedure TfArqRetornoSicred.Grava_Vencimento;
begin
  Fdm1.tCReceberParc.Edit;
  vHistorico := 'DT.VECTO. ALTERADA DE ' + Fdm1.tCReceberParcDTVENCIMENTO.AsString + '  PARA ' + mArquivoDtVecto.AsString;
  Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime := mArquivoDtVecto.AsDateTime;
  Fdm1.tCReceberParc.Post;

//  Grava_Historico('V',vHistorico);
//  Fdm1.tCReceberParcHist.Post;

  mArquivo.Edit;
  mArquivoAtualizado.AsBoolean := True;
  mArquivo.Post;
end;

{procedure TfArqRetornoSicred.Grava_ExtComissao;
var
  vAux, vPercentual, vPercentual2: Real;
begin
  tExtComissaoIns.Refresh;
  tExtComissaoIns.Last;
  Fdm1.tExtComissao.Insert;
  Fdm1.tExtComissaoNroLancamento.AsInteger := tExtComissaoInsNroLancamento.AsInteger + 1;
  Fdm1.tExtComissaoCodVendedor.AsInteger   := Fdm1.tCReceberParcCodVendedor.AsInteger;
  Fdm1.tExtComissaoDtReferencia.AsDateTime := mArquivoDtOcorrencia.AsDateTime;
  Fdm1.tExtComissaoParcDoc.AsInteger       := Fdm1.tCReceberParcParcCReceber.AsInteger;
  Fdm1.tExtComissaoCodCliente.AsInteger    := Fdm1.tCReceberParcCodCli.AsInteger;
  Fdm1.tExtComissaoFuncao.AsString         := 'E';
  Fdm1.tExtComissaoNroDoc.AsInteger        := Fdm1.tCReceberParcNumNota.AsInteger;
  Fdm1.tExtComissaoVlrBase.AsCurrency      := mArquivoVlrPago.AsFloat;
  Fdm1.tExtComissaoPercDescDupl.AsFloat    := Fdm1.tCReceberParcDesconto.AsFloat;
  Fdm1.tExtComissaoPercComissao.AsFloat    := Fdm1.tCReceberParcPercComissao.AsFloat;
  if Fdm1.tCReceberParcPercComissao.AsFloat > 0 then
    begin
      vAux := 0;
      Fdm1.tNotaFiscal.IndexFieldNames := 'Filial;NumNota';
      Fdm1.tNotaFiscal.SetKey;
      Fdm1.tNotaFiscalFilial.AsInteger  := Fdm1.tCReceberFilial.AsInteger;
      Fdm1.tNotaFiscalNumNota.AsInteger := Fdm1.tCReceberParcNumNota.AsInteger;
      if Fdm1.tNotaFiscal.GotoKey then
        begin
          if Fdm1.tNotaFiscalVlrIpi.AsFloat > 0 then
            begin
              if Fdm1.tCReceberParc.RecordCount = 1 then
                begin
                  vPercentual  := StrToFloat(FormatFloat('0.0000',(Fdm1.tExtComissaoVlrBase.AsFloat / Fdm1.tCReceberParcVlrParcCReceber.AsFloat) * 100));
                  vAux         := StrToFloat(FormatFloat('0.00',(Fdm1.tNotaFiscalVlrIpi.AsFloat * vPercentual) / 100));
                  Fdm1.tExtComissaoVlrBase.AsCurrency := Fdm1.tExtComissaoVlrBase.AsCurrency - vAux;
                end
              else
                begin
                  vPercentual  := StrToFloat(FormatFloat('0.0000',(Fdm1.tExtComissaoVlrBase.AsFloat / Fdm1.tCReceberParcVlrParcCReceber.AsFloat) * 100));
                  vPercentual2 := StrToFloat(FormatFloat('0.0000',(Fdm1.tCReceberParcVlrParcCReceber.AsFloat / Fdm1.tCReceberVlrTotal.AsFloat) * 100));
                  vAux         := StrToFloat(FormatFloat('0.00',(Fdm1.tNotaFiscalVlrIpi.AsFloat * vPercentual2) / 100));
                  vAux         := StrToFloat(FormatFloat('0.00',(vAux * vPercentual) / 100));
                  Fdm1.tExtComissaoVlrBase.AsCurrency := Fdm1.tExtComissaoVlrBase.AsCurrency - vAux;
                end;
            end;
        end;
      Fdm1.tExtComissaoVlrComissao.AsFloat := StrToFloat(FormatFloat('0.00',(Fdm1.tExtComissaoVlrBase.AsFloat * Fdm1.tExtComissaoPercComissao.AsFloat) / 100));
    end
  else
  if Fdm1.tCReceberParcVlrComissao.AsFloat > 0 then
    begin
      if Fdm1.tCReceberParcQuitParcCReceber.AsBoolean then
        begin
          Fdm1.tExtComissaoVlrComissao.AsFloat          := Fdm1.tCReceberParcVlrComissaoRestante.AsFloat;
          Fdm1.tCReceberParcVlrComissaoRestante.AsFloat := 0;
        end
      else
        begin
          vPercentual := StrToFloat(FormatFloat('0.0000',(Fdm1.tExtComissaoVlrBase.AsFloat / Fdm1.tCReceberParcVlrParcCReceber.AsFloat) * 100));
          vAux        := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVlrComissao.AsFloat * vPercentual / 100));
          Fdm1.tExtComissaoVlrComissao.AsFloat          := StrToFloat(FormatFloat('0.00',vAux));
          Fdm1.tCReceberParcVlrComissaoRestante.AsFloat := Fdm1.tCReceberParcVlrComissaoRestante.AsFloat - Fdm1.tExtComissaoVlrComissao.AsFloat;
          if Fdm1.tCReceberParcVlrComissaoRestante.AsFloat < 0 then
            Fdm1.tCReceberParcVlrComissaoRestante.AsFloat := 0;
        end;
    end;
  Fdm1.tExtComissaoTipo.AsString           := 'D';
  Fdm1.tExtComissaoSuspensa.AsBoolean      := False;
  Fdm1.tExtComissao.Post;
  Fdm1.tCReceberParcHistNroLancExtComissao.AsInteger := Fdm1.tExtComissaoNroLancamento.AsInteger;
end;       }

{procedure TfArqRetornoSicred.Grava_Historico(Tipo, Historico: String);
begin
  DM2.tCReceberParcHist2.Refresh;
  DM2.tCReceberParcHist2.Last;
  Fdm1.tCReceberParcHist.Insert;
  Fdm1.tCReceberParcHistNumCReceber.AsInteger   := Fdm1.tCReceberParcNumCReceber.AsInteger;
  Fdm1.tCReceberParcHistParcCReceber.AsInteger  := Fdm1.tCReceberParcParcCReceber.AsInteger;
  Fdm1.tCReceberParcHistItem.AsInteger          := DM2.tCReceberParcHist2Item.AsInteger + 1;
  Fdm1.tCReceberParcHistDtHistorico.AsDateTime  := Date;
  Fdm1.tCReceberParcHistCodHistorico.AsCurrency := 0;
  Fdm1.tCReceberParcHistHistorico.AsString      := Historico;
  if Tipo = 'L' then
    begin
      Fdm1.tCReceberParcHistDtUltPgto.AsDateTime      := mArquivoDtOcorrencia.AsDateTime;
      Fdm1.tCReceberParcHistVlrUltPgto.AsCurrency     := mArquivoVlrPago.AsFloat;
      Fdm1.tCReceberParcHistVlrUltJuros.AsFloat       := mArquivoVlrJurosPago.AsFloat;
      Fdm1.tCReceberParcHistVlrUltDescontos.AsFloat   := mArquivoVlrDesconto.AsFloat;
      Fdm1.tCReceberParcHistVlrUltDespesas.AsFloat    := 0;
      Fdm1.tCReceberParcHistVlrUltAbatimentos.AsFloat := mArquivoVlrAbatimento.AsFloat;
      Fdm1.tCReceberParcHistJurosPagos.AsFloat        := mArquivoVlrJurosPago.AsFloat;
      Fdm1.tCReceberParcHistPgto.AsBoolean            := True;
      Fdm1.tCReceberParcHistNumMov.AsInteger          := vNumMov;
      Fdm1.tCReceberParcHistNumMovJuros.AsInteger     := vNumMovJuros;
      Fdm1.tCReceberParcHistJurosCalc.AsFloat         := mArquivoVlrJurosPago.AsFloat;
    end
  else
    Fdm1.tCReceberParcHistPgto.AsBoolean              := False;
end;}

procedure TfArqRetornoSicred.Grava_NumBanco;
begin
  Fdm1.tCReceberParc.Edit;
  Fdm1.tCReceberParcNumTitBanco.AsString := mArquivoNumTitBanco.AsString;
  Fdm1.tCReceberParc.Post;

//  Grava_Historico('E','ENTRADA CONFIRMADA');
//  Fdm1.tCReceberParcHist.Post;

  mArquivo.Edit;
  mArquivoAtualizado.AsBoolean := True;
  mArquivo.Post;
end;

{procedure TfArqRetornoSicred.Pagamento;
var
  vCodConta: Integer;
begin
  Fdm1.tCReceberParc.Edit;
  vNumMov      := 0;
  vNumMovJuros := 0;
  vCodConta    := Fdm1.tSicredCodConta.AsInteger;

//  Fdm1.tContas.IndexFieldNames := 'CodConta';
//  Fdm1.tContas.FindKey([vCodConta]);

  Fdm1.tCReceberParcDTPAGTO.AsDateTime := mArquivoDtOcorrencia.AsDateTime;
  Fdm1.tCReceberParcVLRPAGTO.AsFloat := Fdm1.tCReceberParcVLRPAGTO.AsFloat +
                                          mArquivoVlrPago.AsFloat;
  Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) -
                                          StrToFloat(FormatFloat('0.00',mArquivoVlrPago.AsFloat));
  Fdm1.tCReceberParcVLRDESCONTO.AsFloat    := Fdm1.tCReceberParcVLRDESCONTO.AsFloat +
                                          mArquivoVlrDesconto.AsFloat + mArquivoVlrAbatimento.AsFloat;
  Fdm1.tCReceberParcJUROSPAGOS.AsFloat  := Fdm1.tCReceberParcJUROSPAGOS.AsFloat + mArquivoVlrJurosPago.AsFloat;
  Fdm1.tCReceberParcJUROSCALC.AsFloat    := Fdm1.tCReceberParcJUROSCALC.AsFloat + mArquivoVlrJurosPago.AsFloat;

  Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) -
                                          StrToFloat(FormatFloat('0.00',mArquivoVlrDesconto.AsFloat)) -
                                          StrToFloat(FormatFloat('0.00',mArquivoVlrAbatimento.AsFloat));

  if Fdm1.tCReceberParcVLRRESTANTE.AsFloat < 0 then
    Fdm1.tCReceberParcVLRRESTANTE.AsFloat := 0;
  if Fdm1.tCReceberParcVLRRESTANTE.AsFloat = 0 then
    Fdm1.tCReceberParcQUITADO.AsBoolean := True;

  if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
    vHistorico          := 'PAGAMENTO PARCIAL'
  else
    vHistorico          := 'PAGAMENTO TOTAL';
  if mArquivoCodOcorrenciaRet.AsInteger = 15 then
    begin
      vHistorico          := vHistorico + ' EM CARTORIO';
      Fdm1.tCReceberParcPgCartorio.AsBoolean := True;
    end;

//  Fdm1.tMovimentos.MasterSource.Enabled        := False;

  tMovimentos2.Refresh;
  tMovimentos2.Filtered                   := False;
  tMovimentos2.Filter                     := 'CodBanco = '''+IntToStr(vCodConta)+'''';
  tMovimentos2.Filtered                   := True;
  tMovimentos2.Last;
  Fdm1.tMovFinanceiro.Insert;
  Fdm1.tMovFinanceiroCODBANCO.AsInteger           := vCodConta;
  Fdm1.tMovFinanceiroNUMMOVTO.AsInteger       := tMovimentos2NUMMOVTO.AsInteger + 1;
  Fdm1.tMovFinanceironu.AsInteger        := Fdm1.tCReceberNumCReceber.AsInteger;
  Fdm1.tMovFinanceiroDtMovimento.AsDateTime       := mArquivoDtOcorrencia.AsDateTime;
  Fdm1.tMovFinanceiroNumNota.AsInteger            := Fdm1.tCReceberParcNumNota.AsInteger;
  Fdm1.tMovFinanceiroCodCli.AsInteger             := Fdm1.tCReceberParcCodCli.AsInteger;
  Fdm1.tMovFinanceiroPlanoContas.AsInteger        := Fdm1.tCReceberParcPlanoContas.AsInteger;
  Fdm1.tMovFinanceiroVlrMovCredito.AsCurrency := mArquivoVlrPago.AsFloat;
  Fdm1.tMovFinanceiroHistorico.AsString     := 'Rec.Parc.nº '+ Fdm1.tCReceberParcParcCReceber.AsString +
                                           ' nf.nº ' + Fdm1.tCReceberNumNota.AsString +
                                           ' de ' + Fdm1.tCReceberlkNomeCli.AsString;
  Fdm1.tContas.FindKey([vCodConta]);
  Fdm1.tContas.Edit;
  Fdm1.tContasSaldoConta.AsFloat               := Fdm1.tContasSaldoConta.AsFloat + mArquivoVlrPago.AsFloat;
  Fdm1.tContas.Post;
  Fdm1.tMovimentos.Post;
  vNumMov := Fdm1.tMovimentosNumMovimento.AsInteger;

  //Lança os Juros no movimento financeiro
  if mArquivoVlrJurosPago.AsFloat > 0 then
    begin
      tMovimentos2.Refresh;
      tMovimentos2.Filtered               := False;
      tMovimentos2.Filter                 := 'CodBanco = '''+IntToStr(vCodConta)+'''';
      tMovimentos2.Filtered               := True;
      tMovimentos2.Last;
      Fdm1.tMovimentos.Insert;
      Fdm1.tMovimentosCodConta.AsInteger       := vCodConta;
      Fdm1.tMovimentosNumMovimento.AsInteger   := tMovimentos2Num.AsInteger + 1;
      Fdm1.tMovimentosNumCReceber.AsInteger    := Fdm1.tCReceberNumCReceber.AsInteger;
      Fdm1.tMovimentosDtMovimento.AsDateTime   := mArquivoDtOcorrencia.AsDateTime;
      Fdm1.tMovimentosVlrMovCredito.AsFloat    := mArquivoVlrJurosPago.AsFloat;
      Fdm1.tMovimentosNumNota.AsInteger        := Fdm1.tCReceberParcNumNota.AsInteger;
      Fdm1.tMovimentosCodCli.AsInteger         := Fdm1.tCReceberParcCodCli.AsInteger;
      Fdm1.tMovimentosPlanoContas.AsInteger    := Fdm1.tCReceberParcPlanoContas.AsInteger;
      Fdm1.tMovimentosHistorico.AsString       := 'Rec.Juros s/Parc.nº '+ Fdm1.tCReceberParcParcCReceber.AsString +
                                                 ' nf.nº ' + Fdm1.tCReceberNumNota.AsString +
                                                 ' de ' + Fdm1.tCReceberlkNomeCli.AsString;
      Fdm1.tContas.FindKey([vCodConta]);
      Fdm1.tContas.Edit;
      Fdm1.tContasSaldoConta.AsFloat           := Fdm1.tContasSaldoConta.AsFloat
                                                 + mArquivoVlrJurosPago.AsFloat;
      Fdm1.tContas.Post;
      Fdm1.tMovimentos.Post;
      vNumMovJuros := Fdm1.tMovimentosNumMovimento.AsInteger;
    end;
  Fdm1.tCReceberParcCodConta.AsInteger           := vCodConta;
  if Fdm1.tCReceberParcDtPagParcCReceber.AsDateTime > Fdm1.tCReceberParcDtVencCReceber.AsDateTime then
    Fdm1.tCReceberParcDiasAtraso.AsFloat := Fdm1.tCReceberParcDtPagParcCReceber.AsDateTime - Fdm1.tCReceberParcDtVencCReceber.AsDateTime
  else
    Fdm1.tCReceberParcDiasAtraso.AsFloat := 0;
  //if Fdm1.tCReceberParcRestParcela.AsFloat > 0 then
  Grava_Historico('L',vHistorico);

  if (Fdm1.tCReceberParclkTipoComissao.AsString = 'D') and (Fdm1.tCReceberParcCodVendedor.AsInteger > 0) and
     (Fdm1.tCReceberParcPercComissao.AsFloat > 0) then
    Grava_ExtComissao;
  Fdm1.tCReceberParcHist.Post;
  Fdm1.tCReceberParc.Post;
  DM2.tMovimentos2.Filtered := False;
  Fdm1.tMovimentos.MasterSource.Enabled := True;
end;}

{procedure TfArqRetornoSicred.Grava_Liquidacao;
begin
  if Fdm1.tCReceberParcQuitParcCReceber.AsBoolean <> True then
    begin
      Pagamento;
      mArquivo.Edit;
      mArquivoAtualizado.AsBoolean := True;
      mArquivo.Post;
    end;
end;}

procedure TfArqRetornoSicred.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfArqRetornoSicred.BitBtn2Click(Sender: TObject);
begin
  mArquivo.EmptyDataSet;
end;

procedure TfArqRetornoSicred.BitBtn1Click(Sender: TObject);
var
  Txt: TextFile;
  Entrada, Arquivo, Texto1: String;
  i: Integer;
  vFlag: Boolean;
  vContinuar: Boolean;
begin
  if FilenameEdit1.Text <> '' then
    begin
      try
        vContinuar := True;
        mArquivo.EmptyDataSet;
        Arquivo := FileNameEdit1.Text;
        AssignFile(Txt,Arquivo);
        Reset(Txt);
        while not Eof(Txt) do
          begin
            ReadLn(Txt,Entrada);
            if (Copy(Entrada,2,1) = '2') and (Copy(Entrada,3,7) = 'RETORNO') then
              begin
                if Fdm1.tSicredCODCONTA.AsString <> Copy(Entrada,33,5) then
                  begin
                    vContinuar := False;
                    ShowMessage('Nº da conta diferente ' + Copy(Entrada,33,5));
                  end;
              end;
            if vContinuar then
              begin
                if Copy(Entrada,1,1) = '1' then
                  begin
                    mArquivo.Insert;
                    mArquivoAtualizado.AsBoolean      := False;
                    mArquivoNumTitBanco.AsString      := Copy(Entrada,48,15);
                    mArquivoCodOcorrenciaRet.AsString := Copy(Entrada,109,2);
                    Case mArquivoCodOcorrenciaRet.AsInteger of
                      2: mArquivoNomeOcorrenciaRet.AsString := 'ENTRADA CONFIRMADA';
                      3: mArquivoNomeOcorrenciaRet.AsString := 'ENTRADA REJEITADA';
                      6: mArquivoNomeOcorrenciaRet.AsString := 'LIQUIDAÇÃO NORMAL';
                      9: mArquivoNomeOcorrenciaRet.AsString := 'BAIXADO AUTOMATICAMENTE VIA ARQUIVO';
                     10: mArquivoNomeOcorrenciaRet.AsString := 'BAIXADO CONFORME INSTRUÇÕES DA COOPERATIVA DE CRÉDITO';
                     12: mArquivoNomeOcorrenciaRet.AsString := 'ABATIMENTO CONCEDIDO';
                     13: mArquivoNomeOcorrenciaRet.AsString := 'ABATIMENTO CANCELADO';
                     14: mArquivoNomeOcorrenciaRet.AsString := 'VENCIMENTO ALTERADO';
                     15: mArquivoNomeOcorrenciaRet.AsString := 'LIQUIDAÇÃO EM CARTÓRIO';
                     17: mArquivoNomeOcorrenciaRet.AsString := 'LIQUIDAÇÃO APÓS BAIXA';
                     19: mArquivoNomeOcorrenciaRet.AsString := 'CONFIRMAÇÃO DE RECEBIMENTO DE INSTRUÇÃO DE PROTESTO';
                     20: mArquivoNomeOcorrenciaRet.AsString := 'CONFIRMAÇÃO DE RECEBIMENTO DE INSTRUÇÃO DE SUSTAÇÃO DE PROTESTO';
                     23: mArquivoNomeOcorrenciaRet.AsString := 'ENTRADA DE TÍTULO EM CARTÓRIO';
                     24: mArquivoNomeOcorrenciaRet.AsString := 'ENTRADA REJEITADA POR CEP IRREGULAR';
                     27: mArquivoNomeOcorrenciaRet.AsString := 'BAIXA REJEITADA';
                     28: mArquivoNomeOcorrenciaRet.AsString := 'TARIFA';
                     30: mArquivoNomeOcorrenciaRet.AsString := 'ALTERAÇÃO REJEITADA';
                     32: mArquivoNomeOcorrenciaRet.AsString := 'INSTRUÇÃO REJEITADA';
                     33: mArquivoNomeOcorrenciaRet.AsString := 'CONFIRMAÇÃO DE PEDIDO DE ALTERAÇÃO DE OUTROS DADOS';
                     34: mArquivoNomeOcorrenciaRet.AsString := 'RETIRADO DE CARTÓRIO E MANUTENÇÃO EM CARTEIRA';
                    end;
                    mArquivoCodMotRejeicao.AsString    := Copy(Entrada,319,10);
                    vMotivo := '';
                    if mArquivoCodOcorrenciaRet.AsString <> '28' then
                      Motivo_Rejeicao(Copy(Entrada,319,10))
                    else
                      Motivo_Ocorrencia28(Copy(Entrada,319,10));
                    mArquivoNomeMotRejeicao.AsString := vMotivo;
                    mArquivoTipoCobranca.AsString    := Copy(Entrada,14,1);
                    mArquivoDtOcorrencia.AsString       := Copy(Entrada,111,2) + '/' + Copy(Entrada,113,2) + '/' + '20' + Copy(Entrada,115,2);
                    mArquivoNumTitEmpresa.AsString      := Copy(Entrada,117,10);
                    mArquivoDtVecto.AsString            := Copy(Entrada,147,2) + '/' + Copy(Entrada,149,2) + '/' + '20' + Copy(Entrada,151,2);
                    mArquivoVlrTitulo.AsString          := Copy(Entrada,153,11) + ',' + Copy(Entrada,164,2);
                    if Copy(Entrada,175,1) = 'A' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Duplicata mercantil por indicação'
                    else
                    if Copy(Entrada,175,1) = 'B' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Duplicata rural'
                    else
                    if Copy(Entrada,175,1) = 'C' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Nota promissória'
                    else
                    if Copy(Entrada,175,1) = 'D' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Nota promissória rural'
                    else
                    if Copy(Entrada,175,1) = 'E' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Nota de seguros'
                    else
                    if Copy(Entrada,175,1) = 'F' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Cobrança seriada - carnê'
                    else
                    if Copy(Entrada,175,1) = 'G' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Recibo'
                    else
                    if Copy(Entrada,175,1) = 'H' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Letra de câmbio'
                    else
                    if Copy(Entrada,175,1) = 'I' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Nota de débito'
                    else
                    if Copy(Entrada,175,1) = 'J' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Duplicata de serviço por indicação'
                    else
                    if Copy(Entrada,175,1) = 'K' then
                      mArquivoEspecieDoc.AsString := Copy(Entrada,175,1) + '-' + 'Outros';
                    mArquivoVlrDespesaCobranca.AsString  := Copy(Entrada,176,11) + ',' + Copy(Entrada,187,2);
                    mArquivoVlrDespesaProtesto.AsString  := Copy(Entrada,189,11) + ',' + Copy(Entrada,200,2);
                    mArquivoVlrAbatimento.AsString       := Copy(Entrada,228,11) + ',' + Copy(Entrada,239,2);
                    mArquivoVlrDesconto.AsString         := Copy(Entrada,241,11) + ',' + Copy(Entrada,252,2);
                    mArquivoVlrPago.AsString             := Copy(Entrada,254,11) + ',' + Copy(Entrada,265,2);
                    mArquivoVlrJurosPago.AsString        := Copy(Entrada,267,11) + ',' + Copy(Entrada,278,2);
                    mArquivoVlrMulta.AsString            := Copy(Entrada,280,11) + ',' + Copy(Entrada,291,2);
                    mArquivoProtesto.AsString            := Copy(Entrada,295,1);
                    mArquivoDtPrevistaCCorrente.AsString := Copy(Entrada,335,2) + '/' + Copy(Entrada,333,2) + '/' + Copy(Entrada,329,4);
                                                                         
                    mArquivoNumNota.AsString := '';
                    mArquivoParcela.AsString := '';
                    vFlag := False;
                    texto1 := Trim(Copy(Entrada,117,10));
                    for i := 1 to Length(texto1) do
                      begin
                        if (Copy(texto1,i,1) = '.') or (Copy(texto1,i,1) = '/') then
                          vFlag := True
                        else
                        if vFlag then
                          mArquivoParcela.AsString := mArquivoParcela.AsString + copy(texto1,i,1)
                        else
                          mArquivoNumNota.AsString := mArquivoNumNota.AsString + copy(texto1,i,1);
                      end;

                    if tCReceber.Locate('Filial;NumNota',VarArrayOf([vFilial,mArquivoNumNota.AsInteger]),[locaseinsensitive]) then
                      begin
                        mArquivoCodCliente.AsInteger := tCReceberCODCLIENTE.AsInteger;
                        mArquivoNomeCliente.AsString := tCReceberlkNomeCliente.AsString;
                      end
                    else
                      begin
                        mArquivoCodCliente.AsInteger := 0;
                        mArquivoNomeCliente.AsString := '...NÃO ACHOU TÍTULO, verificar...';
                      end;
                    mArquivo.Post;
                  end;
              end;
          end;
        CloseFile(Txt);
      except
      end;
    end
  else
    begin
      ShowMessage('Você deve informar um arquivo p/ gerar a busca!');
      FilenameEdit1.SetFocus;
    end;
end;

procedure TfArqRetornoSicred.BitBtn3Click(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  try
    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Fdm1.Conexao.StartTransaction(TD);
    mArquivo.First;
    while not mArquivo.Eof do
      begin
        if mArquivoNumNota.AsString <> '' then
          begin
            Fdm1.tCReceberParc.Close;
            Fdm1.CReceberParc.Params[0].AsInteger := mArquivoNumNota.AsInteger;
            Fdm1.CReceberParc.Params[1].AsString  := mArquivoParcela.AsString;
            Fdm1.tCReceberParc.Open;
            if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then
              begin
                Fdm1.tCReceberParc.Edit;

                Fdm1.tCReceberParcCODBANCO.AsInteger  := Fdm1.tBcoItauCODCONTA.AsInteger;
                Fdm1.tCReceberParcVLRDESPESA.AsFloat  := mArquivoVlrDespesaCobranca.AsFloat;
                Fdm1.tCReceberParcVLRDESCONTO.AsFloat := mArquivoVlrDesconto.AsFloat;
                if (mArquivoCodOcorrenciaRet.AsString = '06') or (mArquivoCodOcorrenciaRet.AsString = '08')
                or (mArquivoCodOcorrenciaRet.AsString = '09') or (mArquivoCodOcorrenciaRet.AsString = '10') then
                  begin
                    if mArquivoVlrPago.AsFloat > 0 then
                      begin
                        Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat - mArquivoVlrPago.AsFloat
                                                               - mArquivoVlrDespesaCobranca.AsFloat));
                        Fdm1.tCReceberParcVLRPAGTO.AsFloat    := StrToFloat(FormatFloat('0.00',mArquivoVlrPago.AsFloat));
                      end
                    else
                      begin
                        Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat - mArquivoVlrTitulo.AsFloat));
                        Fdm1.tCReceberParcVLRPAGTO.AsFloat    := mArquivoVlrTitulo.AsFloat;
                      end;
                    if (StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) <= 0) then
                      Fdm1.tCReceberParcVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',0));
                    Fdm1.tCReceberParcJUROSPAGOS.AsFloat := StrToFloat(FormatFloat('0.00',mArquivoVlrJurosPago.AsFloat));
                    if StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) > 0 then //juca - 25/02/10
                      Fdm1.tCReceberParcQUITADO.AsString := 'N'
                    else
                      Fdm1.tCReceberParcQUITADO.AsString := 'S';
                    if Fdm1.tCReceberParcDTPAGTO.AsDateTime > Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime then
                      Fdm1.tCReceberParcDIASATRASO.AsFloat := Fdm1.tCReceberParcDTPAGTO.AsDateTime - Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime;
                  end;
                Grava_Historico;
                Fdm1.tCReceberParc.Post;
                Fdm1.tCReceberParc.ApplyUpdates(0);
              end;
          end;
        mArquivo.Next;
      end;
    Fdm1.Conexao.Commit(TD);
  except
    on E:Exception do
      begin
        Fdm1.Conexao.Rollback(TD);
        ShowMessage('Erro ao tentar gravar o registro: ' + E.Message);
      end;
  end;

  if MessageDlg('Atualizar o contas a receber?',mtconfirmation,[mbok,mbno],0)=mrok then
    begin
      mArquivo.First;
      while not mArquivo.Eof do
        begin
          if mArquivoCodCliente.AsInteger > 0 then
            begin
            //  Abre_CReceber;
            end;
          mArquivo.Next;
        end;
    end;
end;

procedure TfArqRetornoSicred.FormShow(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  tCReceber.Close;
  tCReceber.Open;
  fdm1.tCReceberDiscrim.IndexFieldNames := 'NumCReceber';
end;

end.
