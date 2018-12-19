unit uCobRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Grids, DBGrids,
  ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, JvLookup, NxCollection, ExtCtrls, uDm1, rsDBUtils, uDmCobranca, uDmRel,
  dateUtils, ACBRUtil, strUtils, SMDBGrid, NxEdit, Mask, JvEdit, JvTypedEdit,
  Menus;

type
  TfCobRemessa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    SMDBGrid1: TSMDBGrid;
    NxLabel1: TNxLabel;
    NxDatePicker1: TNxDatePicker;
    NxLabel2: TNxLabel;
    NxDatePicker2: TNxDatePicker;
    ckReenviar: TCheckBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    JvIntegerEdit2: TJvIntegerEdit;
    ckCarne: TCheckBox;
    NxButton1: TNxButton;
    PopupMenu1: TPopupMenu;
    Selecionado2: TMenuItem;
    odos2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Selecionado2Click(Sender: TObject);
    procedure odos2Click(Sender: TObject);
  private
    { Private declarations }
    fDm1: TDm1;
    fDmRel: TDmRel;
    fDmCobranca: TDmCobranca;

    vEmail_Fortes, vEmail_Assunto_Fortes: String;
    vEmail_Envio_Rem, vAssunto_Email_Rem: String;
    procedure prc_ConfiguraACBR;
  public
    { Public declarations }
    procedure geraCabecalhoAcbr;
    function geraRegistroAcbr: String;
  end;

var
  fCobRemessa: TfCobRemessa;

implementation

uses URelPessoas, URelRemessa;

{$R *.dfm}

procedure TfCobRemessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCobRemessa.FormCreate(Sender: TObject);
begin
  fDm1 := TDm1.Create(Self);
  fDmCobranca := TDmCobranca.Create(Self);
  fDmCobranca.fDm1 := fDm1;

  oDBUtils.SetDataSourceProperties(Self, fDmCobranca);
  NxDatePicker2.Date := Date;
  NxDatePicker1.Date := Date - 30;
end;

procedure TfCobRemessa.BitBtn1Click(Sender: TObject);
begin
  fDmCobranca.cdsCReceber.Close;
  fDmCobranca.sdsCReceber.ParamByName('D1').AsDate := NxDatePicker1.Date;
  fDmCobranca.sdsCReceber.ParamByName('D2').AsDate := NxDatePicker2.Date;
  fDmCobranca.sdsCReceber.ParamByName('B1').AsInteger := JvDBLookupCombo1.KeyValue;
  fDmCobranca.cdsCReceber.Open;
end;

procedure TfCobRemessa.BitBtn2Click(Sender: TObject);
var
  vContadorAux: Integer;
  vMsgAux: String;
  vMsgDt: String;
begin
{  if not fnc_Verificar then
    exit;}
{  if (cbImpressao.ItemIndex = 0) and (cbImpressao.Visible) then
    exit;}

{  vTipo_Config_Email := 3;}

  vEmail_Fortes         := vEmail_Envio_Rem;
  vEmail_Assunto_Fortes := vAssunto_Email_Rem;
  vMsgAux      := '';
  vMsgDt       := '';
  vContadorAux := 0;

  ACBrBoleto1.ListadeBoletos.Clear;
  fDmCobranca.buscaNossoNumero;
  fDmCobranca.cdsCReceber.First;
  while not fDmCobranca.cdsCReceber.Eof do
  begin
    if not SmDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fDmCobranca.cdsCReceber.Next;
      Continue;
    end;
    if (fDmCobranca.cdsCReceberDTVENCIMENTO.AsDateTime < Date) and
       ((fDmCobranca.cdsCReceberNOSSONUMERO.IsNull) or (fDmCobranca.cdsCReceberNOSSONUMERO.AsString = '')) then
    begin
      vMsgDt := vMsgDt + #13 + '*** Duplicta: ' + fDmCobranca.cdsCReceberNUMNOTA.AsString + fDmCobranca.vSeparadorParc +
                fDmCobranca.cdsCReceberPARCELA.AsString + ' vencida!';
      fDmCobranca.cdsCReceber.Next;
      Continue;
    end;
{    if (JvdBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDmCobranca.cdsCReceberENDERECO_PGTO.AsString) <> '') then
    begin
      if (trim(fDmCobranca.cdsCReceberCIDADE_PGTO.AsString) = '') or (trim(fDmCobranca.cdsCReceberUF_PGTO.AsString) = '') or
         (trim(fDmCobranca.cdsCReceberCEP_PGTO.AsString) = '') or (trim(fDmCobranca.cdsCReceberBAIRRO_PGTO.AsString) = '') or
         (trim(fDmCobranca.cdsCReceberNUM_END_PGTO.AsString) = '') then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCobranca.cdsCReceberNUMDUPLICATA.AsString +
                  fDmCobranca.vSeparadorParc + fDmCobranca.cdsCReceberPARCELA.AsString +
                  ' falta informação no dados do end. de cobrança!!';
        fDmCobranca.cdsCReceber.Next;
        Continue;
      end;
    end;}
{    if fDmCobranca.cdsCReceberFILIAL.AsInteger <> RxDBLookupCombo1.KeyValue then
    begin
      vMsgAux := '   3) Verifique se a Filial informada é a mesma do título;';
      fDmCobranca.cdsCReceber.Last;
      Continue;
    end;}

//    fDmCobranca.prc_Verificar_Carteira;
//    if (fDmCobranca.cdsBancoCONTROLA_EMISSAO_BOLETO.AsString = 'S') and (cbImpressao.ItemIndex = 0) then
//      fDmCobranca.vGera_NossoNumero := 'N';

    vContadorAux := vContadorAux + 1;
    geraCabecalhoAcbr;
    fDmCobranca.vNossoNumero := geraRegistroAcbr;
    fDmCobranca.prc_Gravar_Duplicata('I');

    fDmCobranca.cdsCReceber.Next;
  end;
  if vContadorAux <= 0 then
  begin
    if trim(vMsgDt) <> '' then
      MessageDlg(vMsgDt, mtInformation, [mbOk], 0)
    else
      MessageDlg('*** Nenhum boleto impresso!' +#13 +
                 'Motivo: ' +#13 +
                 '   1) Verifique se foi selecionado algum título;' +#13 +
                 '   2) Verifique se a carteira está marcada para impressão na Empresa ou no Banco;' +#13 +
                 vMsgAux + #13, mtInformation, [mbOk], 0);
    exit;
  end;
  try
    try
      fDMRel := TDMRel.Create(DMRel);
      if ckCarne.Checked then
        ACBrBoleto1.ACBrBoletoFC.LayOut := lCarne
      else
        ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;
      ACBrBoleto1.Imprimir;
    finally
      FreeAndNil(fDMRel);
    end
  except
    MessageDlg('Erro ao imprimir os boletos. Verifique!',mtWarning,[mbOK],0);
  end;
end;

procedure TfCobRemessa.geraCabecalhoAcbr;
begin
  ACBrBoleto1.Banco.Numero := fDmCobranca.cdsBancoCOD_FEBRABAN.AsInteger;
  ACBrBoleto1.Banco.Nome   := fDmCobranca.cdsBancoNOME.AsString;// 'Banco do Estado do Rio Grande do Sul S.A.';

  if (ACBrBoleto1.Banco.Numero = 104) then
    ACBrBoleto1.ACBrBoletoFC.LayOut := lPadrao;

  ACBrBoleto1.Cedente.Agencia           := fDmCobranca.cdsBancoAGENCIA.AsString; // '0785';
  ACBrBoleto1.Cedente.AgenciaDigito     := fDmCobranca.cdsBancoDIG_AGENCIA.AsString;// '1';
  ACBrBoleto1.Cedente.Conta             := fDmCobranca.cdsBancoNUMCONTA.AsString;// '06.022038.0';
  ACBrBoleto1.Cedente.ContaDigito       := fDmCobranca.cdsBancoDIGCONTA.AsString;// '3';
  ACBrBoleto1.Cedente.CNPJCPF           := fDmCobranca.cdsEmpresaDOCUMENTO.AsString;// '09.348.462/0001-79';
  ACBrBoleto1.Cedente.CodigoCedente     := fDmCobranca.cdsBancoCEDENTE.AsString;// '0785022038017';
  ACBrBoleto1.Cedente.Logradouro        := fDmCobranca.cdsEmpresaENDERECO.AsString;
  ACBrBoleto1.Cedente.Nome              := fDmCobranca.cdsEmpresaNOME.AsString;
//  ACBrBoleto1.Cedente.NumeroRes         := fDmCobranca.cdsEmpresaNUM_END.AsString;
  ACBrBoleto1.Cedente.Telefone          := fDmCobranca.cdsEmpresaFONE.AsString;
  ACBrBoleto1.Cedente.TipoInscricao     := pJuridica;
  ACBrBoleto1.Cedente.UF                := fDmCobranca.cdsEmpresaUF.AsString;
  ACBrBoleto1.Cedente.Bairro            := fDmCobranca.cdsEmpresaBAIRRO.AsString;
  ACBrBoleto1.Cedente.CEP               := fDmCobranca.cdsEmpresaCEP.AsString;;
  ACBrBoleto1.Cedente.Cidade            := fDmCobranca.cdsEmpresaCIDADE.AsString;;
  ACBrBoleto1.Cedente.CodigoTransmissao := fDmCobranca.cdsBancoCOD_TRANSMISSAO.AsString;
//  ACBrBoleto1.Cedente.Complemento       := fDmCobranca.cdsEmpresaCOMPLEMENTO_END.AsString;
//  ACBrBoleto1.Cedente.Modalidade        := fDmCobranca.cdsBancoVARIACAO_CARTEIRA.AsString;

  if ACBrBoleto1.Banco.Numero = 33 then
  begin
    case fDmCobranca.cdsBancoCARTEIRA.AsInteger of
      1: ACBrBoleto1.Cedente.CaracTitulo := tcSimples; //simples com registro
      3: ACBrBoleto1.Cedente.CaracTitulo := tcCaucionada;
      5: ACBrBoleto1.Cedente.CaracTitulo := tcVinculada; //simples com registro
    end;
{    case fDmCobranca.cdsBancoTIPO_DOCUMENTO_SANTANDER.AsInteger of
      1: ACBrBoleto1.Cedente.TipoDocumento := Tradicional;
      2: ACBrBoleto1.Cedente.TipoDocumento := Escritural;
    end;}
  end;
end;

function TfCobRemessa.geraRegistroAcbr: String;
var
  Titulo: TACBrTitulo;
  vTamAux: Integer;
  vNossoNumAux: String;
begin
  fDmCobranca.vAceite := 'S';
  Titulo := ACBrBoleto1.CriarTituloNaLista;
  with Titulo do
  begin
    //05/12/2014
    if fDmCobranca.cdsBancoTIPO_IMPRESSAO.AsString = 'C' then
      TipoImpressao := tipCarne //se for carnê, tipCarne
    else
      TipoImpressao := tipNormal;//se for carnê, tipCarne

    Vencimento      := fDmCobranca.cdsCReceberDTVENCIMENTO.AsDateTime;
    DataDocumento   := fDmCobranca.cdsCReceberDTMOVIMENTO.AsDateTime;
    NumeroDocumento := fDmCobranca.cdsCReceberNUMCRECEBER.AsString + fDmCobranca.vSeparadorParc +
                       fDmCobranca.cdsCReceberPARCELA.AsString;
//    NumeroDocumento := fDmCobranca.cdsCReceberNUMNOTA.AsString + fDmCobranca.vSeparadorParc +
//                       fDmCobranca.cdsCReceberPARCELA.AsString;
    EspecieDoc      := fDmCobranca.cdsBancoESPECIE.AsString;
    Aceite          := atNao;

{    if (ACBrBoleto1.Banco.Numero = 104) and (fDmCobranca.cdsBancoTIPO_IMPRESSAO.AsString = 'C') then //CEF
    begin
      //11/05/2016
      fDmCobranca.qQtdParcelas.Close;
      fDmCobranca.qQtdParcelas.ParamByName('NUMDUPLICATA').AsString := fDmCobranca.cdsCReceberNUMDUPLICATA.AsString;
      fDmCobranca.qQtdParcelas.ParamByName('ID_PESSOA').AsInteger   := fDmCobranca.cdsCReceberID_PESSOA.AsInteger;
      fDmCobranca.qQtdParcelas.ParamByName('DTEMISSAO').AsDate      := fDmCobranca.cdsCReceberDTEMISSAO.AsDateTime;
      fDmCobranca.qQtdParcelas.Open;
      TotalParcelas := fDmCobranca.qQtdParcelasCONTADOR.AsInteger;
      fDmCobranca.qQtdParcelas.Close;
    end;
}
    DataProcessamento := Now;

// juca 30/05/16
    fDmCobranca.vGera_NossoNumero := 'S';
    fDmCobranca.vCod_Carteira     := fDmCobranca.cdsBancoCARTEIRA.AsString;

    if trim(fDmCobranca.vCod_Carteira_Red) <> '' then
      Carteira := fDmCobranca.vCod_Carteira_Red
    else
      Carteira := fDmCobranca.vCod_Carteira;
    fDmCobranca.vGera_NossoNumero := 'S';

    if ((fDmCobranca.cdsCReceberNOSSONUMERO.IsNull) or
       (fDmCobranca.cdsCReceberNOSSONUMERO.AsString = '')) and (fDmCobranca.vGera_NossoNumero = 'S')  then
    begin
      fDmCobranca.xNossoNum := fDmCobranca.xNossoNum + 1;
      vNossoNumAux := IntToStr(fDmCobranca.xNossoNum);
      vTamAux := ACBrBoleto.Banco.CalcularTamMaximoNossoNumero(Carteira,vNossoNumAux);
      NossoNumero := IntToStrZero(fDmCobranca.xNossoNum,vTamAux);
      fDmCobranca.vNossoNumero_Montado := ACBrBoleto.Banco.MontarCampoNossoNumero(Titulo)
    end
    else
    begin
      if (fDmCobranca.cdsCReceberNOSSONUMERO_SEQ.AsInteger > 0) and not(fDmCobranca.cdsCReceberNOSSONUMERO_SEQ.IsNull) then
      begin
        if (fDmCobranca.cdsBancoACBR_BANCO.AsString = 'cobSicred') then //se for cobrança SICREDI
          NossoNumero := FormatFloat('00000000',(fDmCobranca.cdsCReceberNOSSONUMERO_SEQ.AsInteger))
        else
          NossoNumero := fDmCobranca.cdsCReceberNOSSONUMERO_SEQ.AsString
      end
      else
      if (fDmCobranca.cdsCReceberNOSSONUMERO.AsString <> '') and not(fDmCobranca.cdsCReceberNOSSONUMERO.IsNull) then
        NossoNumero := fDmCobranca.cdsCReceberNOSSONUMERO.AsString
      else
        NossoNumero := '';
      fDmCobranca.vNossoNumero_Montado := fDmCobranca.cdsCReceberNOSSONUMERO.AsString;
      NossoNumero := fDmCobranca.Monta_Numero(NossoNumero,0);
      if (NossoNumero <> '') and (StrToInt(NossoNumero) = 0) then
        NossoNumero := '';
    end;

    SeuNumero := '1' + '.' + fDmCobranca.cdsCReceberNUMCRECEBER.AsString;
    EmissaoBoleto := '2';

    ValorDocumento := fDmCobranca.cdsCReceberVLRVENCIMENTO.AsFloat;
    Sacado.NomeSacado := fDmCobranca.cdsCReceberNOME.AsString;
    if (trim(fDmCobranca.cdsCReceberCOBENDERECO.AsString) <> '') and (fDmCobranca.cdsCReceberCOBCIDADE.AsString <> '') then
    begin
      Sacado.CNPJCPF    := fDmCobranca.cdsCReceberDOCUMENTO.AsString;
      Sacado.Logradouro := fDmCobranca.cdsCReceberCOBENDERECO.AsString;
      Sacado.Numero     := fDmCobranca.cdsCReceberCOBNUMERO.AsString;
      Sacado.Bairro     := fDmCobranca.cdsCReceberCOBBAIRRO.AsString;
      Sacado.Cidade     := fDmCobranca.cdsCReceberCOBCIDADE.AsString;
      Sacado.UF         := fDmCobranca.cdsCReceberCOBUF.AsString;
      Sacado.CEP        := fDmCobranca.cdsCReceberCOBCEP.AsString;
    end
    else
    begin
      Sacado.CNPJCPF    := fDmCobranca.cdsCReceberDOCUMENTO.AsString;
      Sacado.Logradouro := fDmCobranca.cdsCReceberENDERECO.AsString;
      Sacado.Numero     := fDmCobranca.cdsCReceberENDNUMERO.AsString;
      Sacado.Bairro     := fDmCobranca.cdsCReceberBAIRRO.AsString;
      Sacado.Cidade     := fDmCobranca.cdsCReceberCIDADE.AsString;
      Sacado.UF         := fDmCobranca.cdsCReceberESTADO.AsString;
      Sacado.CEP        := fDmCobranca.cdsCReceberCEP.AsString;
    end;
    case AnsiIndexStr(fDmCobranca.cdsCReceberPESSOA_PGTO.AsString,['F','J']) of
      0: Sacado.Pessoa := pFisica;
      1: Sacado.Pessoa := pJuridica;
    end;
    ValorAbatimento   := 0;
    LocalPagamento    := fDmCobranca.cdsBancoLOCAL_PAGAMENTO.AsString;
    ValorMoraJuros    := fDmCobranca.cdsBancoJUROS_MES.AsCurrency / 100 *
                         fDmCobranca.cdsCReceberVLRVENCIMENTO.AsFloat;
    ValorDesconto     := 0;
    ValorAbatimento   := 0;
    DataDesconto      := 0;
    DataAbatimento    := 0;
    DataProtesto      := fDmCobranca.cdsCReceberDTVENCIMENTO.AsDateTime +
                         fDmCobranca.cdsBancoDIAS_PROTESTO.AsInteger;
    QtdDiaProtesto    := fDmCobranca.cdsBancoDIAS_PROTESTO.AsInteger;

    PercentualMulta   := fDmCobranca.cdsBancoMULTA.AsCurrency;
    Mensagem.Text     := fDmCobranca.cdsBancoMENSAGEM.AsString;

{   juca 30/5/2016
    fDmCobranca.cdsCob_Tipo_Cadastro.Close;
    fDmCobranca.sdsCob_Tipo_Cadastro.CommandText := fDmCobranca.ctCobTpCadastro +
                                                    ' WHERE ID_BANCO = ' + IntToStr(vIdBanco);
    fDmCobranca.cdsCob_Tipo_Cadastro.Open;

    fDmCobranca.cdsCob_Tipo_Cadastro.IndexFieldNames := 'ID';
    if fDmCobranca.cdsBancoID_INSTRUCAO1.AsInteger > 0 then
    begin
      fDmCobranca.cdsCob_Tipo_Cadastro.FindKey([fDmCobranca.cdsBancoID_INSTRUCAO1.AsInteger]);
      if ACBrBoleto1.Banco.Numero = 33 then
        Instrucao1 := trim(fDmCobranca.cdsCob_Tipo_CadastroCODIGO.AsString)
      else
        Instrucao1 := padL(trim(fDmCobranca.cdsCob_Tipo_CadastroCODIGO.AsString),2,'0');
    end;
    if fDmCobranca.cdsBancoID_INSTRUCAO2.AsInteger > 0 then
    begin
      fDmCobranca.cdsCob_Tipo_Cadastro.FindKey([fDmCobranca.cdsBancoID_INSTRUCAO2.AsInteger]);
      if ACBrBoleto1.Banco.Numero = 33 then
        Instrucao2 := trim(fDmCobranca.cdsCob_Tipo_CadastroCODIGO.AsString)
      else
        Instrucao2 := padL(trim(fDmCobranca.cdsCob_Tipo_CadastroCODIGO.AsString),2,'0');
    end;}
    //05/12/2014
    Parcela := 0;

    OcorrenciaOriginal.Tipo := toRemessaRegistrar;
  end;
  Result := Titulo.NossoNumero;
end;

procedure TfCobRemessa.JvDBLookupCombo1Change(Sender: TObject);
begin
  prc_ConfiguraACBR;
end;

procedure TfCobRemessa.prc_ConfiguraACBR;
var
  vExtensao: String;
begin
  if fDmCobranca.cdsBancoACBR_BANCO.IsNull then
  begin
    ShowMessage('Nenhum banco configurado para a cobrança (ACBR)!');
    Exit;
  end;

  if fDmCobranca.cdsBancoACBR_LAYOUT.AsString = 'C240' then
    ACBrBoleto1.LayoutRemessa := C240
  else
    ACBrBoleto1.LayoutRemessa := C400;

  case fDmCobranca.cdsBancoACBR_BANCO.AsInteger of
     1: ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
     2: ACBrBoleto1.Banco.TipoCobranca := cobBancoDoNordeste;
     3: ACBrBoleto1.Banco.TipoCobranca := cobBancoMercantil;
     4: ACBrBoleto1.Banco.TipoCobranca := cobBancoob;
     5: ACBrBoleto1.Banco.TipoCobranca := cobBanestes;
     6: ACBrBoleto1.Banco.TipoCobranca := cobBanrisul;
     7: ACBrBoleto1.Banco.TipoCobranca := cobBicBanco;
     8: ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
     9: ACBrBoleto1.Banco.TipoCobranca := cobBradescoSICOOB;
    10: ACBrBoleto1.Banco.TipoCobranca := cobBRB;
    11: ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
    12: ACBrBoleto1.Banco.TipoCobranca := cobCaixaSicob;
    13: ACBrBoleto1.Banco.TipoCobranca := cobHSBC;
    14: ACBrBoleto1.Banco.TipoCobranca := cobItau;
    15: ACBrBoleto1.Banco.TipoCobranca := cobNenhum;
    16: ACBrBoleto1.Banco.TipoCobranca := cobSantander;
    17: ACBrBoleto1.Banco.TipoCobranca := cobSicred;
  end;

  ACBrBoleto1.ACBrBoletoFC.DirLogo  := fDmCobranca.cdsBancoACBR_LOGO_BANCO.AsString;
  ACBrBoleto1.ACBrBoletoFC.Filtro   := fiNenhum;
  ACBrBoleto1.Cedente.Nome          := fDmCobranca.cdsEmpresaNOME.AsString;
  ACBrBoleto1.Cedente.CodigoCedente := fDmCobranca.cdsBancoCEDENTE.AsString;
  ACBrBoleto1.Cedente.Agencia       := fDmCobranca.cdsBancoAGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := fDmCobranca.cdsBancoDIG_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta         := fDmCobranca.cdsBancoNUMCONTA.AsString;
  ACBrBoleto1.Cedente.ContaDigito   := fDmCobranca.cdsBancoDIGCONTA.AsString;
  ACBrBoleto1.Cedente.Convenio      := fDmCobranca.cdsBancoCOD_TRANSMISSAO.AsString;
  ACBrBoleto1.Cedente.UF            := fDmCobranca.cdsEmpresaUF.AsString;
  ACBrBoleto1.DirArqRemessa         := fDmCobranca.cdsBancoEND_ARQ_REMESSA.AsString;
  //ACBrBoleto1.NomeArqRemessa        := 'COB_' + FormatDateTime('YYYYMMDD_HHMMSS',Now)+'.TXT';
  vExtensao := fDmCobranca.cdsBancoEXT_ARQ_REMESSA.AsString;
{  if fDmCobranca.cdsBancoACBR_BANCO.AsInteger = 17 then //se for cobrança SICREDI
  begin
    ACBrBoleto1.NomeArqRemessa := fDmCobranca.Monta_NomeSicredi('',
                                  fDmCobranca.cdsBancoCOD_CEDENTE.AsString);
    if fDmCobranca.vSeq_Remessa_Dia > 1 then
      vExtensao := 'REM'
    else
      vExtensao := fDmCobranca.cdsBancoEXTENSAO_ARQ_REM.AsString;
  end
  else
  begin}

  ACBrBoleto1.NomeArqRemessa := 'BA' +
                                '01' + //FormatFloat('00',fDmCobranca.cdsBancoFILIAL.AsInteger) +
                                FormatFloat('00',MonthOf(Date)) + FormatFloat('00',DayOf(Date));
  if trim(fDmCobranca.cdsBancoEXT_ARQ_REMESSA.AsString) = '' then
    vExtensao := 'REM'
  else
    vExtensao := fDmCobranca.cdsBancoEXT_ARQ_REMESSA.AsString;
  if fDmCobranca.vSeq_Remessa_Dia = 1 then
    ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + vExtensao
  else
  if fDmCobranca.vSeq_Remessa_Dia < 100 then
    ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' + Copy(vExtensao,1,1) +
                                  FormatFloat('00',fDmCobranca.vSeq_Remessa_Dia)
  else
    ACBrBoleto1.NomeArqRemessa := ACBrBoleto1.NomeArqRemessa + '.' +
                                  FormatFloat('000',fDmCobranca.vSeq_Remessa_Dia);
end;

procedure TfCobRemessa.BitBtn3Click(Sender: TObject);
var
  vTitulo: TACBrTitulo;
  vGerar: Boolean;
  vContadorAux: Integer;
  vMsgAux: String;
  vMsgDt: String;
  vFlag: Boolean;
  i: Integer;
  vTexto1: String;
begin
  fDmCobranca.cdsBanco.Close;
  fDmCobranca.cdsBanco.Open;
{  if not fnc_Verificar then
    exit;
}
  //27/08/2014
  vMsgDt  := '';
  vMsgAux := '';
  vGerar := False;
  vFlag  := False;
  ACBrBoleto1.ListadeBoletos.Clear;
  fDmCobranca.cdsCReceber.First;
  while not fDmCobranca.cdsCReceber.Eof do
  begin
    if not(SMDBGrid1.SelectedRows.CurrentRowSelected) or (fDmCobranca.cdsCReceberDTVENCIMENTO.AsDateTime < Date) then
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCobranca.cdsCReceberNOSSONUMERO.AsString +
        fDmCobranca.vSeparadorParc + fDmCobranca.cdsCReceberPARCELA.AsString + ' vencida!';
      fDmCobranca.cdsCReceber.Next;
      Continue;
    end;
    //aqui 16/05/2016
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) and (trim(fDmCobranca.cdsCReceberCOBUF.AsString) <> '') then
    begin
      if (trim(fDmCobranca.cdsCReceberCOBCIDADE.AsString) = '') or (trim(fDmCobranca.cdsCReceberCOBUF.AsString) = '') or
         (trim(fDmCobranca.cdsCReceberCOBCEP.AsString) = '') or (trim(fDmCobranca.cdsCReceberCOBBAIRRO.AsString) = '') or
         (trim(fDmCobranca.cdsCReceberCOBNUMERO.AsString) = '') then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCobranca.cdsCReceberNUMNOTA.AsString +
                  fDmCobranca.vSeparadorParc + fDmCobranca.cdsCReceberPARCELA.AsString +
                  ' falta informação no dados do end. de cobrança!';
        fDmCobranca.cdsCReceber.Next;
        Continue;
      end
      else
      begin
        vTexto1 := fDmCobranca.cdsCReceberCOBENDERECO.AsString + ',' + fDmCobranca.cdsCReceberCOBNUMERO.AsString;
        if Length(vTexto1) > 40 then
        begin
          vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCobranca.cdsCReceberNUMNOTA.AsString +
                    fDmCobranca.vSeparadorParc + fDmCobranca.cdsCReceberPARCELA.AsString +
                    ' Endereço e número ultrapassam os 40 caracteres, logradouro incompleto!';
          fDmCobranca.cdsCReceber.Next;
          Continue;
        end
      end;
    end
    else
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      vGerar := True;
      vTexto1 := fDmCobranca.cdsCReceberENDERECO.AsString + ',' + fDmCobranca.cdsCReceberENDNUMERO.AsString;
      if Length(vTexto1) > 40 then
      begin
        vMsgDt := vMsgDt + #13 + '*** Duplicata: ' + fDmCobranca.cdsCReceberNUMNOTA.AsString +
                  fDmCobranca.vSeparadorParc + fDmCobranca.cdsCReceberPARCELA.AsString +
                  ' Endereço e número ultrapassam os 40 caracteres, logradouro incompleto!';
        fDmCobranca.cdsCReceber.Next;
        Continue;
      end;
    end;

    if not(fDmCobranca.cdsCReceberNUM_REMESSA.IsNull) and not(ckReenviar.Checked) then
    begin
      SMDBGrid1.SelectedRows.CurrentRowSelected := False;
      fDmCobranca.cdsCReceber.Next;
      Continue;
    end;
    fDmCobranca.cdsCReceber.Next;
  end;

  if not vGerar then
  begin
    MessageDlg('Não há títulos selecionados ou carteira não corresponde' + #13 +
               'à cobrança do banco definido para gerar remessa!' + vMsgDt, mtWarning, [mbOk], 0);
    Exit;
  end;

  //05/04/2016
  //fDmCobranca.vNum_Remessa := fDmCobranca.fnc_Busca_Num_Arquivo_Rem;
  if (GroupBox1.Visible) and (JvIntegerEdit1.Value > 0) then
    fDmCobranca.vNum_Remessa := JvIntegerEdit1.Value
  else
  begin
    fDmCobranca.vNum_Remessa := fDmCobranca.fnc_Busca_Num_Arquivo_Rem;
    if JvIntegerEdit2.Value <= 0 then
      JvIntegerEdit2.Value := fDmCobranca.vSeq_Remessa_Dia;
  end;
  if (GroupBox1.Visible) and (JvIntegerEdit2.Value > 0) then
    fDmCobranca.vSeq_Remessa_Dia := JvIntegerEdit2.Value
  else
  begin
    i := fDmCobranca.fnc_Busca_Num_Arquivo_Rem;
    JvIntegerEdit2.Value := fDmCobranca.vSeq_Remessa_Dia;
  end;
  //***************

  prc_ConfiguraACBR;

  fDmCobranca.buscaNossoNumero;
{  if (cbImpressao.ItemIndex = 0) and (fDmCobranca.cdsBancoCONTROLA_EMISSAO_BOLETO.AsString = 'S') then
    fDmCobranca.xNossoNum := 0;}

  vContadorAux := 0;
  geraCabecalhoAcbr;
  fDmCobranca.cdsCReceber.First;
  while not fDmCobranca.cdsCReceber.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin

      if not(fDmCobranca.cdsCReceberNUM_REMESSA.IsNull) and not(ckReenviar.Checked) then
      begin
        SMDBGrid1.SelectedRows.CurrentRowSelected := False;
        fDmCobranca.cdsCReceber.Next;
        Continue;
      end;

      if fDmCobranca.cdsCReceberDTVENCIMENTO.AsDateTime < Date then
      begin
        SMDBGrid1.SelectedRows.CurrentRowSelected := False;
        fDmCobranca.cdsCReceber.Next;
        Continue;
      end;

//      if fDmCobranca.cdsCReceberFILIAL.AsInteger = RxDBLookupCombo1.KeyValue then
//      begin
//        fDmCobranca.prc_Verificar_Carteira;
//        if fDmCobranca.vGeraRemessa = 'S' then
//        begin
          vContadorAux := vContadorAux + 1;
          fDmCobranca.vNossoNumero := geraRegistroACBR;
          fDmCobranca.prc_Gravar_Duplicata('R');
//        end;
//      end;
    end;
    fDmCobranca.cdsCReceber.Next;
  end;

  if vContadorAux <= 0 then
  begin
    if trim(vMsgDt) <> '' then
      MessageDlg('Nenhum título gerado!' +#13 + #13 + vMsgDt + #13 + vMsgAux,  mtInformation, [mbOk], 0);
    FreeAndNil(vTitulo);
    exit;
  end
  else
  begin
    if (trim(vMsgAux) <> '') or (trim(vMsgDt) <> '') then
      MessageDlg(vMsgAux + #13 + #13 + vMsgDt, mtWarning, [mbOk], 0);
    FreeAndNil(vTitulo);
  end;

  fDmCobranca.cdsCReceber.ApplyUpdates(0);
  try //gera a remessa
    // captura o contador de remessa
    ACBrBoleto1.GerarRemessa(fDmCobranca.vNum_Remessa);

    // Atualiza o contador de remesa na tabela de configuração
    fDmCobranca.cdsBanco.Edit;
    fDmCobranca.cdsBancoNUM_ARQ_REMESSA.AsInteger := fDmCobranca.vNum_Remessa;
    fDmCobranca.cdsBancoDT_REMESSA.AsDateTime     := Date;
    fDmCobranca.cdsBancoSEQ_REMESSA_DIA.AsInteger := fDmCobranca.vSeq_Remessa_Dia;
    fDmCobranca.cdsBanco.Post;
    fDmCobranca.cdsBanco.ApplyUpdates(0);

    JvIntegerEdit1.Value := fDmCobranca.vNum_Remessa + 1;
    fDmCobranca.vSeq_Remessa_Dia := fDmCobranca.vSeq_Remessa_Dia + 1;
    JvIntegerEdit2.Value := fDmCobranca.vSeq_Remessa_Dia;

    MessageDlg('Geração concluída!' + #13, mtConfirmation, [mbOk], 0);

  except
    MessageDlg('Erro ao gerar arquivo de remessa!',mtWarning,[mbOK],0);
  end;
  SMDBGrid1.UnSelectAllClick(Sender);
end;

procedure TfCobRemessa.BitBtn4Click(Sender: TObject);
var
  vAux: String;
begin
  //if fDMCob_Eletronica.vNum_Remessa <= 0 then
  begin
    vAux := InputBox('Impressão da Remessa','Informe o número da remessa: ', IntToStr(fDmCobranca.vNum_Remessa));
    vAux := fDmCobranca.Monta_Numero(vAux,0);
    if Trim(vAux) = '' then
      exit;
    fDmCobranca.vNum_Remessa := StrToInt(vAux);
  end;

//  if not(fDmCobranca.cdsCReceber.Active) or (fDmCobranca.cdsCReceber.IsEmpty) then
//    ConsultarDuplicatas;

//  if RxDBLookupCombo1.Text <> '' then
//    vFilial := RxDBLookupCombo1.KeyValue;

  fDmCobranca.cdsCReceber.First;
  fRelRemessa                   := TfRelRemessa.Create(Self);
  fRelRemessa.vAcbr             := True;
  fRelRemessa.fDmCobranca       := fDmCobranca;
  fRelRemessa.vOpcaoImp         := '(Banco: ' + JvDBLookupCombo1.Text + ') ' +
                                   '(Nº Remessa: ' + IntToStr(fDmCobranca.vNum_Remessa) + ')';
  fRelRemessa.RLReport1.PreviewModal;
  fRelRemessa.RLReport1.Free;
  FreeAndNil(fRelRemessa);
end;

procedure TfCobRemessa.Selecionado2Click(Sender: TObject);
begin
  fRelPessoas := TfRelPessoas.Create(Self);
  fRelPessoas.fDm1 := fDm1;

  fRelPessoas.RLReport2.DataSource    := fdmCobranca.dsCReceber;
  fRelPessoas.RLSubDetail3.DataSource := fdmCobranca.dsCReceber;

  fdm1.tPessoa.Close;
  fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdmCobranca.cdsCReceberCODCLIENTE.AsString;
  fdm1.tPessoa.Open;

  fRelPessoas.rlReport2.PreviewModal;
  FreeAndNil(fRelPessoas);
end;

procedure TfCobRemessa.odos2Click(Sender: TObject);
begin
  fdmCobranca.cdsCReceber.First;

  While not fdmCobranca.cdsCReceber.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      fdm1.tPessoa.Close;
      fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdmCobranca.cdsCReceberCODCLIENTE.AsString;
      fdm1.tPessoa.Open;

      fRelPessoas := TfRelPessoas.Create(Self);
      fRelPessoas.fDm1 := fDm1;
      fRelPessoas.rlReport2.Print;
      FreeAndNil(fRelPessoas);
    end;
    fdmCobranca.cdsCReceber.Next;
  end;
end;

end.
