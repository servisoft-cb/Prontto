unit UCobSicred;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, FMTBcd, Grids, JvDBCtrl, ComCtrls, JvLookup, DB, SqlExpr,
  DBClient, StdCtrls, Buttons, ALed, ExtCtrls, UDm1, rsDBUtils, DBGrids, Provider, SMDBGrid, VerificaCPF, VerificaCGC;

type
  TfCobSicred = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    msBoletos: TDataSource;
    Label5: TLabel;
    BitBtn6: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label3: TLabel;
    ALed1: TALed;
    Label4: TLabel;
    ALed2: TALed;
    StaticText1: TStaticText;
    ALed3: TALed;
    Label6: TLabel;
    ALed4: TALed;
    Label7: TLabel;
    BitBtn7: TBitBtn;
    Label8: TLabel;
    BitBtn8: TBitBtn;
    ComboBox1: TComboBox;
    qBoletos: TSQLQuery;
    mBoletos: TClientDataSet;
    mBoletosNumCReceber: TIntegerField;
    mBoletosParcela: TIntegerField;
    mBoletosNumNota: TIntegerField;
    mBoletosVlrParcela: TFloatField;
    mBoletosPessoa: TStringField;
    mBoletosCNPJCPF: TStringField;
    mBoletosEndereco: TStringField;
    mBoletosBairro: TStringField;
    mBoletosCep: TStringField;
    mBoletosCidade: TStringField;
    mBoletosUf: TStringField;
    mBoletosArqGerado: TBooleanField;
    mBoletosCliente: TStringField;
    mBoletosNossoNumero: TStringField;
    mBoletosInstrucao: TStringField;
    mBoletosCampoAlterado: TStringField;
    mBoletosTipoDesconto: TStringField;
    mBoletosTipoJuro: TStringField;
    mBoletosVlrDescontoDiaAntecipacao: TFloatField;
    mBoletosTaxaMulta: TFloatField;
    mBoletosEspecieDoc: TStringField;
    mBoletosAceite: TStringField;
    mBoletosDiasProtesto: TIntegerField;
    mBoletosVlrJurosPorDia: TFloatField;
    mBoletosVlrDesconto: TFloatField;
    mBoletosVlrAbatimento: TFloatField;
    mBoletosCpfCnpjAvalista: TStringField;
    mBoletosNomeAvalista: TStringField;
    mBoletosEndAvalista: TStringField;
    mBoletosCidAvalista: TStringField;
    mBoletosCepAvalista: TStringField;
    mBoletosUFAvalista: TStringField;
    mBoletosInstProtesto: TStringField;
    mBoletosDtGerado: TStringField;
    mBoletosDtVencto: TStringField;
    mBoletosDtLimiteDesc: TStringField;
    mBoletosCodPraca: TIntegerField;
    mBoletosSituacaoPraca: TStringField;
    mBoletosImpBoleto: TStringField;
    mBoletosCnpjCpfEditado: TStringField;
    mBoletosSerie: TStringField;
    qBoletosNUMCRECEBER: TIntegerField;
    qBoletosPARCCRECEBER: TStringField;
    qBoletosVLRPARCCRECEBER: TFloatField;
    qBoletosDTVENCCRECEBER: TDateField;
    qBoletosCODCLI: TIntegerField;
    qBoletosNUMNOTA: TIntegerField;
    qBoletosDTGERADO: TDateField;
    qBoletosNOME: TStringField;
    qBoletosENDERECO: TStringField;
    qBoletosBAIRRO: TStringField;
    qBoletosUF: TStringField;
    qBoletosCEP: TStringField;
    qBoletosPESSOA: TStringField;
    qBoletosCGCCPF: TStringField;
    qBoletosINSCREST: TStringField;
    qBoletosENDPGTO: TStringField;
    qBoletosBAIRROPGTO: TStringField;
    qBoletosCEPPGTO: TStringField;
    qBoletosUFPGTO: TStringField;
    qBoletosCODCIDADE: TIntegerField;
    qBoletosCODCIDADEP: TIntegerField;
    qBoletosARQGERADO: TStringField;
    qBoletosRESTPARCELA: TFloatField;
    qBoletosNUMEND: TIntegerField;
    qBoletosSERIE: TStringField;
    qBoletoslkCidadePgto: TStringField;
    qBoletoslkCidade: TStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DateEdit1: TDateTimePicker;
    DateEdit2: TDateTimePicker;
    dsPessoa: TDataSource;
    tPessoa: TClientDataSet;
    tPessoaID: TIntegerField;
    tPessoaNOME: TStringField;
    tPessoaFANTASIA: TStringField;
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
    tPessoaCIDADE: TIntegerField;
    tPessoaTRANSPORTADORA: TStringField;
    tPessoaPERCCOMISSAO: TFloatField;
    tPessoaTIPOCOMISSAO: TStringField;
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
    tPessoaENDNUMERO: TIntegerField;
    tPessoaENDCOMPLEMENTO: TStringField;
    tPessoaIDUSUARIO: TIntegerField;
    tPessoaCODBANCO: TIntegerField;
    tPessoaAGENCIA: TStringField;
    tPessoaNUMCONTACORRENTE: TStringField;
    tPessoaDIAPAGAMENTO: TIntegerField;
    tPessoaLOGIN: TStringField;
    tPessoaCODVENDEDOR: TIntegerField;
    tPessoaFORMAPGTO: TIntegerField;
    tPessoaEMAIL: TStringField;
    tPessoaHOMEPAGE: TStringField;
    tPessoaSELECIONADO: TStringField;
    tPessoaCONJUGE: TStringField;
    tPessoaDTNASCIMENTO: TDateField;
    tPessoaCEL: TStringField;
    tPessoaPLANOSAUDE_ID: TIntegerField;
    tPessoaCOBCEP: TStringField;
    tPessoaVLRPGTO: TFloatField;
    tPessoaNUMCARTEIRA: TStringField;
    tPessoaFUNCIONARIO: TStringField;
    tPessoaCODCENTROCUSTO: TIntegerField;
    tPessoaCODTIPOCOBRANCA: TIntegerField;
    tPessoaTIPOSALARIO: TStringField;
    tPessoaVALORSALARIO: TFloatField;
    tPessoaRG: TStringField;
    tPessoaNOMEPAI: TStringField;
    tPessoaNOMEMAE: TStringField;
    tPessoaCODCLAUSULA: TIntegerField;
    tPessoaDESCCLAUSULA: TBlobField;
    tPessoaALUNO: TStringField;
    tPessoaNATURALIDADE_CID: TIntegerField;
    tPessoaNATURALIDADE_UF: TStringField;
    tPessoaEMPREGOS_ANT: TBlobField;
    tPessoaCURSOS_ANT: TBlobField;
    tPessoaINFO_ADICIONAIS: TBlobField;
    tPessoaFOTO_CAMINHO: TStringField;
    tPessoaFOTO: TBlobField;
    tPessoaSEXO: TStringField;
    tPessoaREGISTRO_DPF: TStringField;
    tPessoaEXP_REGISTRO_DPF: TStringField;
    tPessoaDT_FORMACAO: TDateField;
    tPessoaCIDADENOME: TStringField;
    tPessoaCONTRASENHA: TStringField;
    tPessoaSENHA: TStringField;
    tPessoaCHAVE: TStringField;
    tPessoaCONTROLE: TStringField;
    PessoaP: TDataSetProvider;
    Pessoa: TSQLDataSet;
    PessoaID: TIntegerField;
    PessoaNOME: TStringField;
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
    PessoaENDNUMERO: TIntegerField;
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
    PessoaCODCENTROCUSTO: TIntegerField;
    PessoaCODTIPOCOBRANCA: TIntegerField;
    PessoaTIPOSALARIO: TStringField;
    PessoaVALORSALARIO: TFloatField;
    PessoaRG: TStringField;
    PessoaNOMEPAI: TStringField;
    PessoaNOMEMAE: TStringField;
    PessoaCODCLAUSULA: TIntegerField;
    PessoaDESCCLAUSULA: TBlobField;
    PessoaALUNO: TStringField;
    PessoaNATURALIDADE_CID: TIntegerField;
    PessoaNATURALIDADE_UF: TStringField;
    PessoaEMPREGOS_ANT: TBlobField;
    PessoaCURSOS_ANT: TBlobField;
    PessoaINFO_ADICIONAIS: TBlobField;
    PessoaFOTO_CAMINHO: TStringField;
    PessoaFOTO: TBlobField;
    PessoaSEXO: TStringField;
    PessoaREGISTRO_DPF: TStringField;
    PessoaEXP_REGISTRO_DPF: TStringField;
    PessoaDT_FORMACAO: TDateField;
    PessoaCIDADENOME: TStringField;
    PessoaCONTRASENHA: TStringField;
    PessoaSENHA: TStringField;
    PessoaCHAVE: TStringField;
    PessoaCONTROLE: TStringField;
    dsCidade: TDataSource;
    tCidade: TClientDataSet;
    tCidadeID: TIntegerField;
    tCidadeNOME: TStringField;
    tCidadeUF: TStringField;
    tCidadeCODPAIS: TIntegerField;
    tCidadePERISSQN: TFloatField;
    tCidadeCODPRACASICREDI: TIntegerField;
    tCidadeSITSICREDI: TStringField;
    tCidadeTIPOCOBSICREDI: TStringField;
    tCidadeCOOPERATIVASICREDI: TStringField;
    tCidadePOSTOSICREDI: TStringField;
    tCidadeDTALTSICREDI: TDateField;
    CidadeP: TDataSetProvider;
    Cidade: TSQLDataSet;
    mBoletosSelecionado: TBooleanField;
    SMDBGrid1: TSMDBGrid;
    qBoletosCODPRACASICREDI: TIntegerField;
    qBoletosNUMSEQNOSSONUM: TIntegerField;
    qBoletosNOSSONUMERO: TStringField;
    qBoletosIMPBOLETOSICREDICEDENTE: TStringField;
    qBoletosCIDADE: TStringField;
    VerificaCGC1: TVerificaCGC;
    VerificaCPF1: TVerificaCPF;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    F: TextFile;
    vContador: Integer;
    vVlrTotal: Real;
    ano, mes, dia: Word;
    vNumRemessa: Integer;
    vNumSeq: Integer;
    vItemSeq: Integer;
    vNossoNumero: string;
    vGerouNossoNum: Boolean;
    procedure Habilita;
    procedure Header;
    procedure Detalhe;
    procedure Reg_Avalista;
    procedure Trailler;
    procedure Monta_SQL;
    procedure Monta_MBoleto;
    procedure Grava_Historico(Obs: string);
    procedure Calcula_NossoNumero;
    function TirarAcento(Texto: string): string;
    function Mascara_Doc(Documento: string): string;
    function Numeros(Documento: string): string;


    procedure Le_mBoleto(Tipo: string); //A= Gera Arquivo   N=Gera Nosso Número

  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
    function passou_cpfcgc(CPFCGC: string): Boolean;
  end;

var
  fCobSicred: TfCobSicred;

implementation

uses uRelBoletoSicred, UCobSicredAlt, UArqRetornoSicred;

{$R *.DFM}

function TfCobSicred.Mascara_Doc(Documento: string): string;
var
  vTexto1: string;
begin
  if Fdm1.tPessoaPESSOA.AsString = 'J' then
    vTexto1 := copy(Documento, 1, 2) + '.' + copy(Documento, 3, 3) + '.' + copy(Documento, 6, 3)
      + '/' + copy(Documento, 9, 4) + '-' + copy(Documento, 13, 2)
  else
    if Fdm1.tPessoaPESSOA.AsString = 'F' then
      vTexto1 := copy(Documento, 1, 3) + '.' + copy(Documento, 4, 3) + '.' + copy(Documento, 7, 3)
        + '-' + copy(Documento, 10, 2);
  Result := vTexto1;
end;

procedure TfCobSicred.Calcula_NossoNumero;
var
  Texto1, Texto2: string;
  i: Integer;
  vAux, vAux2: Integer;
  vSoma: Integer;
begin
  Fdm1.tContasParametros.Open;
  //Busca o número sequencial do nosso número
  DecodeDate(mBoletosDtGerado.AsDateTime, ano, mes, dia);
  vNumSeq := 1;
  vItemSeq := 2;
  if Fdm1.tContasParametros.Locate('Ano', Ano, [loCaseInsensitive]) then
  begin
    vNumSeq := Fdm1.tContasParametrosNumSeqNossoNum.AsInteger;
    vItemSeq := Fdm1.tContasParametrosItem.AsInteger;
    vNumSeq := vNumSeq + 1;
    if vNumSeq > 99999 then
    begin
      vItemSeq := vItemSeq + 1;
      vNumSeq := 1;
    end;
    Fdm1.tContasParametros.Edit;
    Fdm1.tContasParametrosItem.AsInteger := vItemSeq;
    Fdm1.tContasParametrosNumSeqNossoNum.AsInteger := vNumSeq;
    Fdm1.tContasParametros.Post;
    Fdm1.tContasParametros.ApplyUpdates(0);
  end
  else
  begin
    Fdm1.tContasParametros.Insert;
    Fdm1.tContasParametrosCodConta.AsInteger := Fdm1.tSicredCODCONTA.AsInteger;
    Fdm1.tContasParametrosAno.AsInteger := Ano;
    Fdm1.tContasParametrosItem.AsInteger := vItemSeq;
    Fdm1.tContasParametrosNumSeqNossoNum.AsInteger := vNumSeq;
    Fdm1.tContasParametros.Post;
    Fdm1.tContasParametros.ApplyUpdates(0);
  end;

  //Cálcula o digito verificador do nosso número
  Texto1 := '0109' + '06';
  Texto2 := Trim(copy(Fdm1.tSicredCodCedente.AsString, 1, 5));
  for i := 1 to 5 - Length(Texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2 + copy(IntToStr(Ano), 3, 2) + IntToStr(vItemSeq) +
    FormatFloat('00000', vNumSeq);

  vSoma := 0;
  vAux := 1;
  for i := Length(texto1) downto 1 do
  begin
    inc(vAux);
    if vAux > 9 then
      vAux := 2;
    vSoma := vSoma + (StrToInt(Copy(texto1, i, 1)) * vAux);
  end;
  vAux := vSoma div 11;
  vAux2 := vAux * 11;
  vAux := vSoma - vAux2;
  vAux := 11 - vAux;
  if vAux > 9 then
    vAux := 0;
  Texto1 := copy(IntToStr(Ano), 3, 2) + IntToStr(vItemSeq) + FormatFloat('00000', vNumSeq) +
    FormatFloat('0', vAux);
  vNossoNumero := Texto1;
end;

procedure TfCobSicred.Grava_Historico(Obs: string);
var
  vAux: Integer;
begin
  //Grava o histórico
  Fdm1.tCReceberHist.Close;
  Fdm1.CReceberHist.ParamByName('Codigo').AsInteger := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
  Fdm1.CReceberHist.ParamByName('Parcela').AsString := Fdm1.tCReceberParcPARCELA.AsString;
  Fdm1.tCReceberHist.Open;
  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHist.Last;
  vAux := Fdm1.tCReceberHistITEM.AsInteger + 1;

  Fdm1.tCReceberHist.Insert;
  Fdm1.tCReceberHistNUMCRECEBER.AsInteger := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
  Fdm1.tCReceberHistPARCELA.AsString := Fdm1.tCReceberParcPARCELA.AsString;
  Fdm1.tCReceberHistITEM.AsInteger := vAux;
  Fdm1.tCReceberHistDTHISTORICO.AsDateTime := Date;
  Fdm1.tCReceberHistCODBANCO.AsInteger := Fdm1.tCReceberParcCODBANCO.AsInteger;
  Fdm1.tCReceberHistDTULTPGTO.Clear;
  Fdm1.tCReceberHistVLRULTPGTO.AsFloat := 0;
  Fdm1.tCReceberHistVLRULTJUROSPAGO.AsFloat := 0;
  Fdm1.tCReceberHistVLRULTDESCONTO.AsFloat := 0;
  Fdm1.tCReceberHistVLRULTDESPESA.AsFloat := 0;
  Fdm1.tCReceberHistTIPOHIST.AsString := 'O';
  Fdm1.tCReceberHistHISTORICO.AsString := 'Boleto emitido para o Banco Sicredi';
  Fdm1.tCReceberHistHISTORICO.AsString := Obs;
  Fdm1.tCReceberHistCODCLIENTE.AsInteger := Fdm1.tCReceberParcCODCLIENTE.AsInteger;
  Fdm1.tCReceberHistNUMNOTA.AsInteger := Fdm1.tCReceberParcNUMNOTA.AsInteger;
  Fdm1.tCReceberHist.Post;
  Fdm1.tCReceberHist.ApplyUpdates(0);
end;

procedure TfCobSicred.Reg_Avalista;
var
  texto1, texto2, vAux: string;
  i: Integer;
begin
//Posição 1/1 Tamanho 1 - Identificação do registro sacador avalista
  Texto1 := '6';

//Posição 2/16 Tamanho 15 - Nosso número SICRED sem edição

  Texto2 := Trim(StringReplace(mBoletosNossoNumero.AsString, '-', '', [rfReplaceAll]));
  for i := 1 to 15 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 17/26 Tamanho 10 - Seu número (nunca repetir este número)
  texto2 := mBoletosNumNota.AsString + '/' + mBoletosParcela.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 27/31 Tamanho 5 - Código do sacado junto ao cliente
  for i := 1 to 5 do
    texto1 := texto1 + '0';

//Posição 32/45 Tamanho 14 - CIC/CNPJ do sacador avalista
  texto2 := mBoletosCpfCnpjAvalista.AsString;
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 46/86 Tamanho 41 - Nome do sacador avalista
  texto2 := mBoletosNomeAvalista.AsString;
  for i := 1 to 41 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 87/131 Tamanho 45 - Endereco do sacador avalista
  texto2 := mBoletosEndAvalista.AsString;
  for i := 1 to 45 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 132/151 Tamanho 20 - Cidade do sacador avalista
  texto2 := mBoletosEndAvalista.AsString;
  for i := 1 to 20 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 152/159 Tamanho 80 - Cep do sacador avalista
  texto2 := mBoletosCepAvalista.AsString;
  for i := 1 to 8 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 160/161 Tamanho 2 - UF do sacador avalista
  texto2 := mBoletosUFAvalista.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 162/394 Tamanho 233 - Filler (espaço em branco)
  for i := 1 to 233 do
    texto1 := texto1 + ' ';

//Posição 395/400 Tamanho 6 - Número sequencial do registro
  inc(vContador);
  texto2 := IntToStr(vContador);
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  Writeln(F, TirarAcento(texto1));

end;

procedure TfCobSicred.Monta_MBoleto;
var
  i: Integer;
begin
  qBoletos.First;
  while not qBoletos.Eof do
  begin
    mBoletos.Insert;
    mBoletosArqGerado.AsBoolean := qBoletosArqGerado.AsBoolean;
    if qBoletosEndPgto.AsString <> '' then
    begin
      mBoletosBairro.AsString := Copy(qBoletosBairroPgto.AsString, 1, 10);
      for i := 1 to 9 do
      begin
        if (Copy(qBoletosCepPgto.AsString, i, 1) = '0') or (Copy(qBoletosCepPgto.AsString, i, 1) = '1') or (Copy(qBoletosCepPgto.AsString, i, 1) = '2') or
          (Copy(qBoletosCepPgto.AsString, i, 1) = '3') or (Copy(qBoletosCepPgto.AsString, i, 1) = '4') or (Copy(qBoletosCepPgto.AsString, i, 1) = '5') or
          (Copy(qBoletosCepPgto.AsString, i, 1) = '6') or (Copy(qBoletosCepPgto.AsString, i, 1) = '7') or (Copy(qBoletosCepPgto.AsString, i, 1) = '8') or
          (Copy(qBoletosCepPgto.AsString, i, 1) = '9') then
          mBoletosCep.AsString := mBoletosCep.AsString + Copy(qBoletosCepPgto.AsString, i, 1);
      end;
      mBoletosCidade.AsString := Copy(qBoletosCIDADE.AsString, 1, 15);
      mBoletosEndereco.AsString := qBoletosEndPgto.AsString;
      mBoletosUf.AsString := qBoletosUfPgto.AsString;
    end
    else
    begin
      mBoletosBairro.AsString := Copy(qBoletosBairro.AsString, 1, 10);
      for i := 1 to 9 do
      begin
        if (Copy(qBoletosCep.AsString, i, 1) = '0') or (Copy(qBoletosCep.AsString, i, 1) = '1') or (Copy(qBoletosCep.AsString, i, 1) = '2') or
          (Copy(qBoletosCep.AsString, i, 1) = '3') or (Copy(qBoletosCep.AsString, i, 1) = '4') or (Copy(qBoletosCep.AsString, i, 1) = '5') or
          (Copy(qBoletosCep.AsString, i, 1) = '6') or (Copy(qBoletosCep.AsString, i, 1) = '7') or (Copy(qBoletosCep.AsString, i, 1) = '8') or
          (Copy(qBoletosCep.AsString, i, 1) = '9') then
          mBoletosCep.AsString := mBoletosCep.AsString + Copy(qBoletosCep.AsString, i, 1);
      end;
      mBoletosCidade.AsString := Copy(qBoletosCIDADE.AsString, 1, 15);
      mBoletosEndereco.AsString := qBoletosEndereco.AsString + ', ' + qBoletosNumEnd.AsString;
      mBoletosUf.AsString := qBoletosUf.AsString;
    end;
    mBoletosCliente.AsString := qBoletosNome.AsString;
    mBoletosCnpjCpfEditado.AsString := qBoletosCgcCpf.AsString;
    if qBoletosPessoa.AsString = 'F' then
    begin
      mBoletosPessoa.AsString := '1';
      mBoletosCNPJCPF.AsString := Copy(qBoletosCgcCpf.AsString, 1, 3) +
        Copy(qBoletosCgcCpf.AsString, 5, 3) +
        Copy(qBoletosCgcCpf.AsString, 9, 3) +
        Copy(qBoletosCgcCpf.AsString, 13, 2);
    end
    else
      if qBoletosPessoa.AsString = 'J' then
      begin
        mBoletosPessoa.AsString := '2';
        mBoletosCNPJCPF.AsString := Copy(qBoletosCgcCpf.AsString, 1, 2) +
          Copy(qBoletosCgcCpf.AsString, 4, 3) +
          Copy(qBoletosCgcCpf.AsString, 8, 3) +
          Copy(qBoletosCgcCpf.AsString, 12, 4) +
          Copy(qBoletosCgcCpf.AsString, 17, 2);
      end;
    mBoletosDtGerado.AsString := qBoletosDtGerado.AsString;
    mBoletosDtVencto.AsString := qBoletosDtVencCReceber.AsString;
    mBoletosNumCReceber.AsInteger := qBoletosNumCReceber.AsInteger;
    if qBoletosNumNota.AsInteger > 0 then
      mBoletosNumNota.AsInteger := qBoletosNumNota.AsInteger;
    mBoletosSerie.AsString := qBoletosSerie.AsString;
    mBoletosParcela.AsInteger := qBoletosParcCReceber.AsInteger;
    mBoletosVlrParcela.AsFloat := qBoletosVlrParcCReceber.AsFloat;
    mBoletosVlrParcela.AsFloat := qBoletosRestParcela.AsFloat;
    mBoletosNossoNumero.AsString := Copy(Trim(StringReplace(qBoletosNOSSONUMERO.AsString, '-', '', [rfReplaceAll])), 1, 9);
    mBoletosInstrucao.AsString := Fdm1.tSicredINSTRUCAO.AsString;
    mBoletosCampoAlterado.AsString := Fdm1.tSicredCampoAlterado.AsString;
    mBoletosTipoDesconto.AsString := Fdm1.tSicredTipoDesconto.AsString;
    mBoletosTipoJuro.AsString := Fdm1.tSicredTipoJuro.AsString;
    mBoletosVlrDescontoDiaAntecipacao.AsFloat := Fdm1.tSicredVLRDESCONTO.AsFloat;
    mBoletosTaxaMulta.AsFloat := Fdm1.tSicredTaxaMulta.AsFloat;
    mBoletosEspecieDoc.AsString := Fdm1.tSicredEspecieDoc.AsString;
    mBoletosAceite.AsString := Fdm1.tSicredAceite.AsString;
    mBoletosInstProtesto.AsString := Fdm1.tSicredInstProtesto.AsString;
    mBoletosDiasProtesto.AsInteger := Fdm1.tSicredDiasProtesto.AsInteger;
    mBoletosVlrJurosPorDia.AsFloat := Fdm1.tSicredVlrJurosPorDia.AsFloat;
    mBoletosVlrDesconto.AsFloat := Fdm1.tSicredVlrDesconto.AsFloat;
    mBoletosCodPraca.AsInteger := qBoletosCodPracaSicredi.AsInteger;
    mBoletosSituacaoPraca.AsString := '';
    mBoletosSelecionado.AsBoolean := True;
    if qBoletosCodPracaSicredi.AsInteger > 0 then
      if tCidade.Locate('CodPracaSicredi', qBoletosCodPracaSicredi.AsInteger, [loCaseInsensitive]) then
        mBoletosSituacaoPraca.AsString := tCidadeSitSicredi.AsString;
    case ComboBox1.ItemIndex of
      0: mBoletosImpBoleto.AsString := 'A';
      1: mBoletosImpBoleto.AsString := 'B';
      2: mBoletosImpBoleto.AsString := qBoletosImpBoletoSicrediCedente.AsString;
    end;
    if mBoletosImpBoleto.AsString = '' then
      mBoletosImpBoleto.AsString := 'A';
    mBoletos.Post;

    qBoletos.Next;
  end;
end;

procedure TfCobSicred.Monta_SQL;
begin
  qBoletos.Close;
  qBoletos.SQL.Clear;
  qBoletos.SQL.Add(' SELECT Dbcreceberparc.NumCReceber, Dbcreceberparc.PARCELA ParcCReceber, ');
  qBoletos.SQL.Add(' Dbcreceberparc.VLRVENCIMENTO VlrParcCReceber, Dbcreceberparc.DTVENCIMENTO DtVencCReceber, ');
  qBoletos.SQL.Add(' Dbcreceberparc.CodCliente CodCli, Dbcreceberparc.NumNota, Dbcreceberparc.DTMOVIMENTO DtGerado, ');
  qBoletos.SQL.Add(' Dbcliente.Nome, Dbcliente.Endereco, Dbcliente.Bairro, Dbcliente.Estado Uf, ');
  qBoletos.SQL.Add(' Dbcliente.Cep, Dbcliente.Pessoa, Dbcliente.DOCUMENTO CgcCpf, Dbcliente.INSCESTADUAL InscrEst, Dbcliente.COBENDERECO EndPgto, Dbcliente.COBBAIRRO BairroPgto, ');
  qBoletos.SQL.Add(' Dbcliente.COBCEP CepPgto, Dbcliente.COBUF UfPgto, Dbcliente.CIDADE CodCidade, Dbcliente.COBCIDADE CodCidadeP, Dbcreceberparc.ArqGerado, ');
  qBoletos.SQL.Add(' Dbcreceberparc.NossoNumero, CIDADE.CodPracaSicredi, dbCReceberParc.NumSeqNossoNum, Dbcreceberparc.VLRRESTANTE RestParcela,  cidade.Nome as Cidade,');
  qBoletos.SQL.Add(' Dbcreceberparc.ImpBoletoSicrediCedente, dbCliente.ENDNUMERO NumEnd, '' '' Serie /*dbCReceberParc.serie*/ ');
  qBoletos.SQL.Add('FROM CRECEBERPARC Dbcreceberparc ');
  qBoletos.SQL.Add('   INNER JOIN PESSOA Dbcliente ');
  qBoletos.SQL.Add('   ON  (Dbcreceberparc.CODCLIENTE = Dbcliente.ID) ');
  qBoletos.SQL.Add('        INNER JOIN CIDADE ON (Dbcliente.CIDADE = cidade.ID)');
  qBoletos.SQL.Add('WHERE ((Dbcreceberparc.cancelado = ''N'') OR (Dbcreceberparc.Cancelado IS NULL)) ');
  qBoletos.SQL.Add('  AND (Dbcreceberparc.DTVENCIMENTO BETWEEN :D1 AND :D2) ');
  qBoletos.SQL.Add('  AND ((Dbcreceberparc.CodBanco = :CodConta) OR (Dbcreceberparc.CodBanco IS NULL))  AND (Dbcreceberparc.VLRRESTANTE > 0) ');
  qBoletos.ParamByName('D1').AsDate := DateEdit1.Date;
  qBoletos.ParamByName('D2').AsDate := DateEdit2.Date;
  qBoletos.ParamByName('CodConta').AsInteger := Fdm1.tSicredCodConta.AsInteger;
  if JvDBLookupCombo1.Text <> '' then
  begin
    qBoletos.SQL.Add('  AND (Dbcreceberparc.CodCliente = :CodCli)');
    qBoletos.ParamByName('CodCli').AsInteger := JvDBLookupCombo1.KeyValue;
  end;
  qBoletos.SQL.Add('ORDER BY Dbcreceberparc.DTMOVIMENTO, Dbcreceberparc.NumCReceber, Dbcreceberparc.Parcela, Dbcreceberparc.DTVENCIMENTO');
//  ShowMessage(qBoletos.SQL.Text);
  qBoletos.Open;
end;

procedure TfCobSicred.Header;
var
  texto1, texto2: string;
  i: Integer;
begin
//Posição 1/1  Tamanho 1 - Identificação do registro header
  texto1 := '0';

//Posição 2/2  Tamanho 1 - Identificação do arquivo remessa
  texto1 := texto1 + '1';

//Posição 3/9  Tamanho 7 - Literal remessa
  texto1 := texto1 + 'REMESSA';

//Posição 10/11 Tamanho 2 - Código do serviço de cobrança
  texto1 := texto1 + '01';

//Posição 12/26 Tamanho 15 - Literal cobrança
  texto2 := texto2 + 'COBRANCA';
  for i := 1 to 15 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 27/31 Tamanho 5 - Código do cedente
  texto2 := Fdm1.tSicredCodCedente.AsString;
  for i := 1 to 5 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 32/45 Tamanho 14 - CIC/CGC do cedente
 { texto2 := copy(Fdm1.tFilialCNPJ.AsString,1,2) + copy(Fdm1.tFilialCNPJ.AsString,4,3) +
            copy(Fdm1.tFilialCNPJ.AsString,8,3) + copy(Fdm1.tFilialCNPJ.AsString,12,4) +
            copy(Fdm1.tFilialCNPJ.AsString,17,2);}
  texto2 := '11400178000146';
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 46/76 Tamanho 31 - Filler (espaço em branco)
  for i := 1 to 31 do
    texto1 := texto1 + ' ';

//Posição 77/79 Tamanho 3 - Número do SICREDI
  texto1 := texto1 + '748';

//Posição 80/94 Tamanho 15 - Literal SICREDI
  texto2 := 'SICREDI';
  for i := 1 to 15 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 95/102 Tamanho 8 - Data de gravação do arquivo
  DecodeDate(Date, ano, mes, dia);
  texto1 := texto1 + FormatFloat('0000', Ano) + FormatFloat('00', Mes) + FormatFloat('00', Dia);

//Posição 103/110 Tamanho 8 - Filler (espaço em branco)
  for i := 1 to 8 do
    texto1 := texto1 + ' ';

//Posição 111/117 Tamanho 7 - Número de remessa
  vNumRemessa := Fdm1.tSicredNumRemessa.AsInteger;
  vNumRemessa := vNumRemessa + 1;
  texto2 := IntToStr(vNumRemessa);
  for i := 1 to 7 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 118/390 Tamanho 273 - Filler (espaço em branco)
  for i := 1 to 273 do
    texto1 := texto1 + ' ';

//Posição 391/394 Tamanho 4 - Versão do sistema
  texto1 := texto1 + '2.00';

//Posição 395/400 Tamanho 6 - Número sequencial do registro
  texto2 := IntToStr(vContador);
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  Writeln(F, TirarAcento(texto1));
end;

procedure TfCobSicred.Detalhe;
var
  texto1, texto2, vAux: string;
  i: Integer;
begin
//Posição 1/1 Tamanho 1 - Identificação do registro detalhe
  Texto1 := '1';

//Posição 2/2 Tamanho 1 - Tipo de cobrança
  Texto1 := Texto1 + 'A';

//Posição 3/3 Tamanho 1 - Tipo de carteira
  Texto1 := Texto1 + Fdm1.tSicredCarteira.AsString;
//Posição 4/16 Tamanho 13 - Filler (espaço em branco)
  texto1 := texto1 + 'A';
  for i := 1 to 12 do
    texto1 := texto1 + ' ';

//Posição 17/17 Tamanho 1 - Tipo de moeda
  Texto1 := Texto1 + 'A';

//Posição 18/18 Tamanho 1 - Tipo de desconto
  texto2 := mBoletosTipoDesconto.AsString;
  for i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  Texto1 := Texto1 + Texto2;

//Posição 19/19 Tamanho 1 - Tipo de Juros
  texto2 := mBoletosTipoJuro.AsString;
  for i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  Texto1 := Texto1 + Texto2;

//Posição 20/47 Tamanho 28 - Filler (espaço em branco) no layout esta 16
  for i := 1 to 28 do
    texto1 := texto1 + ' ';

//Posição 48/56 Tamanho 9 - Nosso número SICREDI sem edição
  //texto2 := vNossoNumero;
  texto2 := Copy(Trim(StringReplace(mBoletosNossoNumero.AsString, '-', '', [rfReplaceAll])), 1, 9); //mBoletosNossoNumero.AsString;

  for i := 1 to 9 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 57/62 Tamanho 6 - Filler (espaço em branco)
  for i := 1 to 6 do
    texto1 := texto1 + ' ';

//Posição 63/70 Tamanho 8 - Data da instrução
  DecodeDate(mBoletosDtGerado.AsDateTime, ano, mes, dia);
  texto1 := texto1 + FormatFloat('0000', ano) + FormatFloat('00', mes) + FormatFloat('00', dia);

//Posição 71/71 Tamanho 1 - Campo alterado, quando ocorrência "31"
  texto2 := '';
  if mBoletosInstrucao.AsString = '31' then
    texto2 := mBoletosCampoAlterado.AsString;
  for i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 72/72 Tamanho 1 - Postagem do título
  texto1 := texto1 + 'N';

//Posição 73/73 Tamanho 1 - Filler (espaço em branco)
  texto1 := texto1 + ' ';

//Posição 74/74 Tamanho 1 - Impressão do bloqueto
  texto1 := texto1 + 'B';

//Posição 75/76 Tamanho 2 - Número da parcela do carnê
  texto1 := texto1 + '  ';

//Posição 77/78 Tamanho 2 - Número total de parcelas do carnê
  texto1 := texto1 + '  ';

//Posição 79/82 Tamanho 4 - Filler (espaço em branco)
  texto1 := texto1 + '    ';

//Posição 83/92 Tamanho 10 - Valor de desconto por dia de antecipação
  texto2 := FormatFloat('00000000.00', mBoletosVlrDescontoDiaAntecipacao.AsFloat);
  Delete(texto2, 9, 1);
  texto1 := texto1 + texto2;

//Posição 93/96 Tamanho 4 - % de multa por pagamento em atraso
  texto2 := FormatFloat('00.00', mBoletosTaxaMulta.AsFloat);
  Delete(texto2, 3, 1);
  texto1 := texto1 + texto2;

//Posição 97/108 Tamanho 12 - Filler (espaço em branco)
  for i := 1 to 12 do
    texto1 := texto1 + ' ';

//Posição 109/110 Tamanho 2 - Instrução
  texto2 := mBoletosInstrucao.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 111/120 Tamanho 10 - Seu número (nunca repetir este número)
  texto2 := mBoletosNumNota.AsString + '/' + mBoletosParcela.AsString;
  for i := 1 to 10 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 121/126 Tamanho 6 - Data do vencimento
  DecodeDate(mBoletosDtVencto.AsDateTime, ano, mes, dia);
  texto2 := IntToStr(ano);
  texto1 := texto1 + FormatFloat('00', dia) + FormatFloat('00', mes) + copy(texto2, 3, 2);

//Posição 127/139 Tamanho 13 - Valor do título
  texto2 := FormatFloat('00000000000.00', mBoletosVlrParcela.AsFloat);
  Delete(texto2, 12, 1);
  texto1 := texto1 + texto2;

//Posição 140/148 Tamanho 9 - Filler (espaço em branco)
  for i := 1 to 9 do
    texto1 := texto1 + ' ';

//Posição 149/149 Tamanho 1 - Espécia de documento
  texto2 := mBoletosEspecieDoc.AsString;
  for i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 150/150 Tamanho 1 - Aceite do título
  texto2 := mBoletosAceite.AsString;
  for i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 151/156 Tamanho 6 - Data de emissão
  DecodeDate(mBoletosDtGerado.AsDateTime, ano, mes, dia);
  texto2 := IntToStr(ano);
  texto1 := texto1 + FormatFloat('00', dia) + FormatFloat('00', mes) + copy(texto2, 3, 2);

//Posição 157/158 Tamanho 2 - instrução de protesto
  texto2 := mBoletosInstProtesto.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 159/160 Tamanho 2 - número de dias para protesto automático (mínimo 3 dias)
  texto2 := ''; //mBoletosDiasProtesto.AsString;
  for i := 1 to 2 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 161/173 Tamanho 13 - Valor/% de juros por dia de atraso
  texto2 := FormatFloat('00000000000.00', mBoletosVlrJurosPorDia.AsFloat);
  Delete(texto2, 12, 1);
  texto1 := texto1 + texto2;

//Posição 174/179 Tamanho 6 - Data limite para concessão de desconto
  if (mBoletosDtLimiteDesc.AsString = '  /  /    ') or (mBoletosDtLimiteDesc.AsString = '') then
    texto1 := texto1 + '000000'
  else
  begin
    DecodeDate(mBoletosDtLimiteDesc.AsDateTime, ano, mes, dia);
    texto2 := IntToStr(ano);
    texto1 := texto1 + FormatFloat('00', dia) + FormatFloat('00', mes) + copy(texto2, 3, 2);
  end;

//Posição 180/192 Tamanho 13 - Valor/% do desconto
  texto2 := FormatFloat('00000000000.00', mBoletosVlrDesconto.AsFloat);
  Delete(texto2, 12, 1);
  texto1 := texto1 + texto2;

//Posição 193/205 Tamanho 13 - Filler (Zeros)
  for i := 1 to 13 do
    texto1 := texto1 + '0';

//Posição 206/218 Tamanho 13 - Valor abatimento
  for i := 1 to 13 do
    texto1 := texto1 + '0';

//Posição 219/219 Tamanho 1 - Tipo de pessoa do sacado: Física ou Júrica
  texto2 := mBoletosPessoa.AsString;
  for i := 1 to 1 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 220/220 Tamanho 1 - Filler (Zeros)
  texto1 := texto1 + '0';

//Posição 221/234 Tamanho 14 - CIC/CGC do sacado
  texto2 := StringReplace(StringReplace(StringReplace(mBoletosCNPJCPF.AsString, '-', '', [rfReplaceAll]), '/', '', [rfReplaceAll]), '.', '', [rfReplaceAll]);
  for i := 1 to 14 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 235/274 Tamanho 40 - Nome do sacado
  texto2 := mBoletosCliente.AsString;
  for i := 1 to 40 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 275/314 Tamanho 40 - Endereço do sacado
  texto2 := mBoletosEndereco.AsString;
  for i := 1 to 40 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 315/319 Tamanho 5 - Código do sacado na cooperativa cedente
  for i := 1 to 5 do
    texto1 := texto1 + '0';

//Posição 320/325 Tamanho 6 - Código da praça do sacado
  texto2 := '';
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 326/326 Tamanho 1 - Filler (espaço em branco)
  texto1 := texto1 + ' ';

//Posição 327/334 Tamanho 8 - CEP do sacado
  texto2 := mBoletosCep.AsString;
  for i := 1 to 8 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 335/339 Tamanho 5 - Código do sacado junto ao cliente
  for i := 1 to 5 do
    texto1 := texto1 + '0';

//Posição 340/353 Tamanho 14 - CIC/CGC do sacador avalista
  texto2 := mBoletosCpfCnpjAvalista.AsString;
  for i := 1 to 14 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 354/394 Tamanho 41 - Nome do sacador avalita
  texto2 := mBoletosNomeAvalista.AsString;
  for i := 1 to 41 - Length(texto2) do
    texto2 := texto2 + ' ';
  texto1 := texto1 + texto2;

//Posição 395/400 Tamanho 6 - Número sequencial do registro
  inc(vContador);
  texto2 := IntToStr(vContador);
  for i := 1 to 6 - Length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  writeln(F, TirarAcento(texto1));
end;

function TfCobSicred.TirarAcento(Texto: string): string;
var
  i: Integer;
begin
  texto := UpperCase(texto);
  for i := 1 to Length(texto) do
  begin
    if (Texto[i] = 'Á') or
      (Texto[i] = 'À') or
      (Texto[i] = 'Â') or
      (Texto[i] = 'Ä') or
      (Texto[i] = 'Ã') then
      Texto[i] := 'A'
    else
      if (Texto[i] = 'É') or
        (Texto[i] = 'È') or
        (Texto[i] = 'Ê') or
        (Texto[i] = 'Ë') then
        Texto[i] := 'E'
      else
        if (Texto[i] = 'Í') or
          (Texto[i] = 'Ì') or
          (Texto[i] = 'Î') or
          (Texto[i] = 'Ï') then
          Texto[i] := 'I'
        else
          if (Texto[i] = 'Ó') or
            (Texto[i] = 'Ò') or
            (Texto[i] = 'Ô') or
            (Texto[i] = 'Ö') or
            (Texto[i] = 'Õ') then
            Texto[i] := 'O'
          else
            if (Texto[i] = 'Ú') or
              (Texto[i] = 'Ù') or
              (Texto[i] = 'Û') or
              (Texto[i] = 'Ü') then
              Texto[i] := 'U'
            else
              if (Texto[i] = 'Ç') then
                Texto[i] := 'C'
              else
                if (Texto[i] = 'Ñ') then
                  Texto[i] := 'N'
                else
                  if (Texto[i] = '&') then
                    Texto[i] := 'e';
  end;
  Result := AnsiUpperCase(Texto);
end;


procedure TfCobSicred.Trailler;
var
  texto1, texto2: string;
  i: Integer;
begin
//Posição 1/1 tamanho 1 - Identificação do registro trailer
  texto1 := '9';

//Posição 2/2 tamanho 1 - Identificação do arquivo remessa
  texto1 := texto1 + '1';

//Posição 3/5 tamanho 3 - Número do SICREDI
  texto1 := texto1 + '748';

//Posição 6/10 tamanho 5 - Código do cedente
  texto2 := Fdm1.tSicredCodCedente.AsString;
  for i := 1 to 5 - length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

//Posição 11/394 tamanho 384 - Filler (espaço em branco)
  for i := 1 to 384 do
    texto1 := texto1 + ' ';

//Posição 395/400 tamanho 6 - Número sequencial do registro
  inc(vContador);
  texto2 := IntToStr(vContador);
  for i := 1 to 6 - length(texto2) do
    texto2 := '0' + texto2;
  texto1 := texto1 + texto2;

  writeln(F, texto1);
end;

procedure TfCobSicred.Habilita;
begin
//  DateEdit1.Enabled := not (DateEdit1.Enabled);
//  DateEdit2.Enabled := not (DateEdit2.Enabled);
//  BitBtn1.Enabled := not (BitBtn1.Enabled);
  BitBtn2.Enabled := not (BitBtn2.Enabled);
  BitBtn3.Enabled := not (BitBtn3.Enabled);
  BitBtn4.Enabled := not (BitBtn4.Enabled);
  BitBtn8.Enabled := not (BitBtn8.Enabled);
end;

procedure TfCobSicred.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qBoletos.Close;
  Action := Cafree;
end;

procedure TfCobSicred.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfCobSicred.BitBtn1Click(Sender: TObject);
var
  i: Integer;
begin
  Fdm1.tSicred.Open;
  if (DateEdit1.Date > 1) and (DateEdit2.Date > 1) then
  begin
    Screen.Cursor := crHourGlass;
    mBoletos.EmptyDataSet;
    Monta_SQL;
    Monta_MBoleto;
    Habilita;
    BitBtn2.SetFocus;
    Screen.Cursor := crDefault;
  end
  else
  begin
    ShowMessage('Você deve informar datas inicial, final e filial p/ gerar relação!');
    DateEdit1.SetFocus;
  end;
end;

procedure TfCobSicred.BitBtn3Click(Sender: TObject);
begin
  mBoletos.EmptyDataSet;
  Habilita;
end;

procedure TfCobSicred.BitBtn4Click(Sender: TObject);
begin
  if not mBoletos.IsEmpty then
  begin
    if MessageDlg('Deseja realmente excluir este título?', mtconfirmation, [mbok, mbno], 0) = mrok then
      mBoletos.Delete;
  end
  else
    ShowMessage('Não há título p/ ser excluído!');
end;

procedure TfCobSicred.BitBtn2Click(Sender: TObject);
begin
  if not mBoletos.IsEmpty then
  begin
    Screen.Cursor := crHourGlass;
    Le_mBoleto('A');
    BitBtn2.Enabled := False;
    BitBtn3.Enabled := False;
    BitBtn8.Enabled := False;
    Screen.Cursor := crDefault;
    ShowMessage('Arquivo gerado c/ sucesso!!!');
  end
  else
    ShowMessage('Não há títulos selecionados para gerar arquivo!');
  Habilita;
  DateEdit1.SetFocus;
end;

procedure TfCobSicred.BitBtn6Click(Sender: TObject);
begin
  fArqRetornoSicred := TfArqRetornoSicred.Create(Self);
  fArqRetornoSicred.ShowModal;
end;

procedure TfCobSicred.BitBtn7Click(Sender: TObject);
begin
  if mBoletos.RecordCount > 0 then
  begin
    Fdm1.tSicred.Open;
    fRelBoletoSicred := TfRelBoletoSicred.Create(Self);
    fRelBoletoSicred.RLReport1.Preview;
    fRelBoletoSicred.RLReport1.Free;
    fRelBoletoSicred.Destroy;
  end;
end;

procedure TfCobSicred.BitBtn8Click(Sender: TObject);
begin
  Le_mBoleto('N');
end;

procedure TfCobSicred.FormShow(Sender: TObject);
begin
  tPessoa.Open;
  tCidade.Open;
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DateEdit1.Date := Date();
  DateEdit2.Date := Date();
end;

procedure TfCobSicred.JvDBLookupCombo1Enter(Sender: TObject);
begin
  Fdm1.tPessoa.IndexFieldNames := 'Nome';
end;

procedure TfCobSicred.JvDBLookupCombo1Exit(Sender: TObject);
begin
  Fdm1.tPessoa.IndexFieldNames := 'ID';
end;

procedure TfCobSicred.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mBoletosArqGerado.AsBoolean then
  begin
    Background := clGreen;
    AFont.Color := clWhite;
  end
  else
    if mBoletosCodPraca.AsInteger < 1 then
    begin
      Background := clRed;
      AFont.Color := clBlack;
    end
    else
      if mBoletosSituacaoPraca.AsString = 'B' then
      begin
        Background := clAqua;
        AFont.Color := clBlack;
      end;
end;

procedure TfCobSicred.SMDBGrid1DblClick(Sender: TObject);
begin
  if mBoletosNumNota.AsInteger > 0 then
  begin
    mBoletos.Edit;
    fCobSicredAlt := TfCobSicredAlt.Create(Self);
    fCobSicredAlt.ShowModal;
  end;
end;

function TfCobSicred.Numeros(Documento: string): string;
var
  vTexto1: string;
  i: Integer;
begin
  vTexto1 := '';
  for i := 1 to Length(Documento) do
  begin
     //if TryStrToInt(copy(Documento,i,1)) then
    if (copy(Documento, i, 1) = '0') or (copy(Documento, i, 1) = '1') or (copy(Documento, i, 1) = '2') or
      (copy(Documento, i, 1) = '3') or (copy(Documento, i, 1) = '4') or (copy(Documento, i, 1) = '5') or
      (copy(Documento, i, 1) = '6') or (copy(Documento, i, 1) = '7') or (copy(Documento, i, 1) = '8') or
      (copy(Documento, i, 1) = '9') then
      vTexto1 := vTexto1 + copy(Documento, i, 1);
  end;
  Result := vTexto1;
end;


function TfCobSicred.passou_cpfcgc(CPFCGC: string): Boolean;
var vDocCliente: string;
begin
  if CPFCGC <> '' then
  begin
    Result := True;
    vDocCliente := Numeros(CPFCGC);
    if (Length(vDocCliente) <> 11) and (Length(vDocCliente) <> 14) then
      Result := False
    else
    begin
      vDocCliente := Mascara_Doc(vDocCliente);
      CPFCGC := vDocCliente;
      if Fdm1.tPessoaPESSOA.AsString = 'F' then
      begin
        VerificaCPF1.Entrada := vDocCliente;
        if not VerificaCPF1.Resultado then
          Result := False;
      end
      else
        if Fdm1.tPessoaPESSOA.AsString = 'J' then
        begin
          VerificaCGC1.Entrada := vDocCliente;
          if not VerificaCGC1.Resultado then
            Result := False;
        end;
    end;
  end;
end;

procedure TfCobSicred.Le_mBoleto(Tipo: string); //A= Gera Arquivo   N=Gera Nosso Número
var
  Texto1, Texto2: string;
  i, vSeq: Integer;
  vValor: Currency;
  vAux, CNPJ_CPF_Invalido : string;
begin
  CNPJ_CPF_Invalido := '';
  if Tipo = 'A' then
  begin
    Fdm1.tSicred.Open;
    DecodeDate(Date, ano, mes, dia);
    if mes > 9 then
    begin
      case mes of
        10: vAux := 'O';
        11: vAux := 'N';
        12: vAux := 'D';
      end;
    end
    else
      vAux := copy(FormatFloat('00', mes), 2, 1);
    if copy(Fdm1.tSicredCaminho.Text, Length(Fdm1.tSicredCaminho.AsString), 1) = '\' then
      AssignFile(F, Fdm1.tSicredCaminho.AsString + Fdm1.tSicredCodCedente.AsString + vAux + FormatFloat('00', Dia) + '.' + Fdm1.tSicredExtensao.AsString)
    else
      AssignFile(F, Fdm1.tSicredCaminho.AsString + '\' + Fdm1.tSicredCodCedente.AsString + vAux + FormatFloat('00', Dia) + '.' + Fdm1.tSicredExtensao.AsString);
    Rewrite(F);
    vContador := 1;
    vVlrTotal := 0;
    Header;
  end;

  mBoletos.First;
  while not mBoletos.Eof do
  begin
    if (StrToFloat(FormatFloat('0.00', mBoletosVlrParcela.AsFloat)) > 0) and (mBoletosSelecionado.AsBoolean) then
    begin
      if passou_cpfcgc(mBoletosCNPJCPF.AsString) then
      begin
        vGerouNossoNum := False;
        vNossoNumero := mBoletosNossoNumero.AsString;
        if mBoletosNossoNumero.AsString = '' then
        begin
          Calcula_NossoNumero;
          vGerouNossoNum := True;
          mBoletos.Edit;
          mBoletosNossoNumero.AsString := Trim(StringReplace(vNossoNumero, '-', '', [rfReplaceAll]));
          mBoletos.Post;
        end;

        Fdm1.tCReceberParc.Close;
        Fdm1.CReceberParc.ParamByName('Codigo').AsInteger := mBoletosNumCReceber.AsInteger;
        Fdm1.CReceberParc.ParamByName('Parcela').AsString := FormatFloat('00', mBoletosParcela.AsInteger);
        Fdm1.tCReceberParc.Open;

        if Fdm1.tCReceberParc.IsEmpty then
          ShowMessage('Não atualizou o nosso número na nota/parcela ' + mBoletosNumNota.AsString + '/' + mBoletosParcela.AsString)
        else
        begin
          Fdm1.tCReceberParc.Edit;
          if mBoletosCodPraca.AsInteger > 0 then
            Fdm1.tCReceberParcArqGerado.AsString := '1';
          Fdm1.tCReceberParcNOSSONUMERO.AsString := mBoletosNossoNumero.AsString;
          Fdm1.tCReceberParcNumSeqNossoNum.AsInteger := vNumSeq;
          Fdm1.tCReceberParcItemSeqNossoNum.AsInteger := vItemSeq;
          Fdm1.tCReceberParcImpBoletoSicrediCedente.AsString := mBoletosImpBoleto.AsString;
          Fdm1.tCReceberParc.Post;
          Fdm1.tCReceberParc.ApplyUpdates(0);

          if (Tipo = 'N') and (vGerouNossoNum) then
            Grava_Historico('Duplicata gerada o nosso nº banco SICREDI')
          else
            if (Tipo = 'A') and (vGerouNossoNum) then
              Grava_Historico('Duplicata gerada o nosso nº e enviada banco SICREDI')
            else
              if (Tipo = 'A') then
                Grava_Historico('Duplicata enviada para o banco SICRED');
        end;

        if (Tipo = 'A') and (mBoletosCodPraca.AsInteger > 0) then
        begin
          Detalhe;
          if mBoletosNomeAvalista.AsString <> '' then
            Reg_Avalista;
        end;
      end
      else
      begin
        CNPJ_CPF_Invalido := CNPJ_CPF_Invalido + #13 + mBoletosCNPJCPF.AsString + ' - ' + mBoletosCliente.AsString;
      end;
    end;
    mBoletos.Next;
  end;
  if Tipo = 'A' then
  begin
    Trailler;

    if vContador > 2 then
    begin
      Fdm1.tSicred.Edit;
      Fdm1.tSicredNumRemessa.AsInteger := vNumRemessa;
      Fdm1.tSicred.Post;
      Fdm1.tSicred.ApplyUpdates(0);
    end;

    CloseFile(F);
  end;
  if CNPJ_CPF_Invalido <> '' then
    ShowMessage('Clientes com CNPJ ou CPF invalidos' + #13 +  CNPJ_CPF_Invalido);


end;

end.

