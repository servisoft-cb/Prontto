unit uCobRetorno; //ABCR Novo

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls,
  StdCtrls, Buttons, Mask, ACBrBase, ACBrBoleto, NxCollection, uDmCobranca, rsDBUtils, db, ComCtrls, Math, JvLookup, JvToolEdit;

type
  TfCobRetorno = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    Panel3: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Shape1: TShape;
    Label33: TLabel;
    Shape2: TShape;
    Label2: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    btnLocalizar: TNxButton;
    NxButton1: TNxButton;
    Shape5: TShape;
    Label5: TLabel;
    Shape6: TShape;
    Label7: TLabel;
    btnEnviarEmail: TNxButton;
    NxButton2: TNxButton;
    ProgressBar1: TProgressBar;
    Shape7: TShape;
    Label8: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDirectoryEdit2: TJvDirectoryEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo3Enter(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure prc_ConfiguraACBR;
    procedure btnLocalizarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure FilenameEdit1Change(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    fDmCobranca: TDmCobranca;
    vQtd_Sem_Email: Integer;
    procedure prc_Monta_Ocorrencia;
    procedure prc_Monta_Erro_Liq(Codigo, Tipo: String);
    procedure prc_Posiciona_Duplicata;
    procedure prc_Liquidacao;
    procedure prc_mRetorno_Atualizado;
    procedure prc_Duplicata(ID_Nota, ID_Duplicata, NumNota, Filial, ID_Nota_Servico: Integer;
      Serie, NossoNumero: String; ID_Duplicata_Ant, Parcela: Integer);
    //procedure prc_Gerar_mEmail(ID_Filial: Integer);
  public
    { Public declarations }
  end;

var
  fCobRetorno: TfCobRetorno;

implementation

{$R *.dfm}

procedure TfCobRetorno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCobRetorno.FormShow(Sender: TObject);
begin
  fDmCobranca := TDmCobranca.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmCobranca);
  if (fDmCobranca.cdsBanco.RecordCount < 2) and (fDmCobranca.cdsBancoID.AsInteger > 0) then
    JvDBLookupCombo1.KeyValue := fDmCobranca.cdsBancoID.AsInteger;

  fDmCobranca.cdsBanco.Open;  
end;

procedure TfCobRetorno.RxDBLookupCombo3Enter(Sender: TObject);
begin
  fDmCobranca.cdsBanco.IndexFieldNames := 'NOME';
end;

procedure TfCobRetorno.NxButton1Click(Sender: TObject);
begin
  if fDmCobranca.mRetorno.IsEmpty then
  begin
    MessageDlg('*** Não existe título para atualizar!', mtInformation, [mbOk], 0);
    exit;
  end;

  fDmCobranca := TdmCobranca.Create(Self);
  ProgressBar1.Visible  := True;
  ProgressBar1.Max      := fDmCobranca.mRetorno.RecordCount;
  ProgressBar1.Position := 0;

  fDmCobranca.mRetorno.First;
  while not fDmCobranca.mRetorno.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    ProgressBar1.Refresh;
    Refresh;
    fDmCobranca.vNossoNumero         := '';
    fDmCobranca.vNossoNumero_Montado := '';
    fDmCobranca.xNossoNum            := 0;

    if ((fDmCobranca.mRetornoTipo_Ret.AsString = 'LIQ') or
       (fDmCobranca.mRetornoTipo_Ret.AsString = 'LNO') or
       (fDmCobranca.mRetornoTipo_Ret.AsString = 'LCA') or
       (trim(fDmCobranca.mRetornoDescLiquidacao.AsString) <> '')) then
    begin
      prc_Posiciona_Duplicata;
      if not (fDmCobranca.cdsCReceber.IsEmpty) and ((fDmCobranca.mRetornoTipo_Ret.AsString = 'LIQ') or
             (fDmCobranca.mRetornoTipo_Ret.AsString = 'LNO') or
             (fDmCobranca.mRetornoTipo_Ret.AsString = 'LCA') or
             (trim(fDmCobranca.mRetornoDescLiquidacao.AsString) <> '')) and
             (StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLRRESTANTE.AsFloat)) > 0) then
        prc_Liquidacao
    end
    else
    begin
      if fDmCobranca.mRetornoAtualizar.AsString = 'S' then
      begin
        try
          fDmCobranca.prc_Localizar(fDmCobranca.mRetornoID_Duplicata.AsInteger);
          if not fDmCobranca.cdsCReceber.IsEmpty then
          begin
            if fDmCobranca.mRetornoTipo_Ret.AsString = 'PRO' then
            begin
              fDmCobranca.prc_Gravar_Duplicata('PRO');
              prc_mRetorno_Atualizado;
            end
            else
            if fDmCobranca.mRetornoTipo_Ret.AsString = 'OCF' then
            begin
              fDmCobranca.vNossoNumero := fDmCobranca.mRetornoNossoNumero.AsString;
              if fDmCobranca.cdsBancoCOD_FEBRABAN.AsString <> '748' then
                fDmCobranca.xNossoNum := fDmCobranca.mRetornoNossoNumero.AsVariant
              else
                fDmCobranca.xNossoNum := 0;
              fDmCobranca.prc_Gravar_Duplicata('NNU');
              prc_mRetorno_Atualizado;
            end
            else
            if StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLRRESTANTE.AsFloat)) > 0 then
            begin
              fDmCobranca.prc_Gravar_Historico('OUT',fDmCobranca.mRetornoCodOcorrenciaRet.AsString + ' - ' +
                                               fDmCobranca.mRetornoNomeOcorrenciaRet.AsString + '  ' +
                                               fDmCobranca.mRetornoDescMotivo.AsString);
              prc_mRetorno_Atualizado;
            end;
          end;
        except
        end;
      end;
    end;
    fDmCobranca.mRetorno.Next;
  end;
  FreeAndNil(fDmCobranca);
  ProgressBar1.Refresh;
  Refresh;
  MessageDlg('*** Concluído!', mtInformation, [mbOk], 0);
  ProgressBar1.Visible  := False;
end;

procedure TfCobRetorno.prc_ConfiguraACBR;
begin
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
  ACBrBoleto1.Cedente.Nome          := fDmCobranca.cdsEmpresaNOME.AsString;
  ACBrBoleto1.Cedente.CodigoCedente := fDmCobranca.cdsBancoCEDENTE.AsString;
  ACBrBoleto1.Cedente.Agencia       := fDmCobranca.cdsBancoAGENCIA.AsString;
  ACBrBoleto1.Cedente.AgenciaDigito := fDmCobranca.cdsBancoDIG_AGENCIA.AsString;
  ACBrBoleto1.Cedente.Conta         := fDmCobranca.cdsBancoNUMCONTA.AsString;
  ACBrBoleto1.Cedente.ContaDigito   := fDmCobranca.cdsBancoDIGCONTA.AsString;
  ACBrBoleto1.Cedente.UF            := fDmCobranca.cdsEmpresaUF.AsString;
  ACBrBoleto1.DirArqRemessa         := fDmCobranca.cdsBancoEND_ARQ_REMESSA.AsString;
  ACBrBoleto1.NomeArqRemessa        := 'COB_' + FormatDateTime('YYYYMMDD_HHMMSS',Now)+'.TXT';
end;

procedure TfCobRetorno.btnLocalizarClick(Sender: TObject);
var
  i: Integer;
  vDir: String;
  vNomeArq: String;
  i2: Integer;
  vTexto, vTexto2: String;
  vNumAux, vParAux: Integer;
begin
  if JvDBLookupCombo1.Text = '' then
  begin
    MessageDlg('*** Banco não informado!', mtInformation, [mbOk], 0);
    exit;
  end;
  if JvDBLookupCombo1.KeyValue <> fDmCobranca.cdsBancoID.AsInteger then
    fDmCobranca.cdsBanco.Locate('ID',JvDBLookupCombo1.KeyValue,[loCaseInsensitive]);

  fDmCobranca.mRetorno.EmptyDataSet;
  fDmCobranca.mRetorno.IndexFieldNames := '';
  prc_ConfiguraACBR;

  ACBrBoleto1.Banco.Numero := fDmCobranca.cdsBancoACBR_BANCO.AsInteger;
  ACBrBoleto1.Banco.Nome   := fDmCobranca.cdsBancoNOME.AsString;// 'Banco do Estado do Rio Grande do Sul S.A.';
  vNomeArq := JvDirectoryEdit2.Text;
  if copy(vNomeArq,1,1) = '"' then
  begin
    delete(vNomeArq,1,1);
    delete(vNomeArq,Length(vDir),1);
  end;
  //vDir := ExtractFilePath(FilenameEdit1.Text);
  vDir := ExtractFilePath(vNomeArq);
  delete(vDir,Length(vDir),1);
  ACBrBoleto1.DirArqRetorno  := vDir;
  ACBrBoleto1.NomeArqRetorno := Copy(vNomeArq,Length(ACBrBoleto1.DirArqRetorno) + 2,
                                     Length(vNomeArq) + 1 - Length(ACBrBoleto1.DirArqRetorno));
  vNomeArq := ACBrBoleto1.NomeArqRetorno;
  if copy(vNomeArq,Length(vNomeArq),1) = '"' then
    delete(vNomeArq,Length(vNomeArq),1);

  SMDBGrid1.DisableScroll;
  ACBrBoleto1.NomeArqRetorno := vNomeArq;

  ACBrBoleto1.LerRetorno;

{27/06/16
  vTexto := Monta_Numero(ACBrBoleto1.Cedente.CNPJCPF,0);
  if Length(vTexto) >= 14 then
    vTexto := copy(vTexto,1,2) + '.' + copy(vTexto,3,3) + '.' + copy(vTexto,6,3) + '/' + copy(vTexto,9,4) + '-' + copy(vTexto,13,2)
  else
    vTexto := copy(vTexto,1,3) + '.' + copy(vTexto,4,3) + '.' + copy(vTexto,7,3) + '-' + copy(vTexto,10,2);
  if fDmCobranca.cdsFilialCNPJ_CPF.AsString <> vTexto then
  begin
    MessageDlg('*** Filial/Conta diferente do retorno!', mtInformation, [mbOk], 0);
    SMDBGrid1.EnableScroll;
    exit;
  end;
}

  for i := 0 to acbrboleto1.ListadeBoletos.Count - 1 do
  begin
    Refresh;
    with acbrboleto1.ListadeBoletos.Objects[I] do
    begin
      fDmCobranca.mRetorno.Insert;
      fDmCobranca.mRetornoNomeCliente.AsString := Sacado.NomeSacado;
      //19/05/2016
      fDmCobranca.mRetornoNossoNumero.AsString := NossoNumero;
      if (fDmCobranca.cdsBancoCOD_FEBRABAN.AsString = '748') then
        fDmCobranca.mRetornoNossoNumero.AsString := copy(NossoNumero,1,2) + '/' +
                                                    copy(NossoNumero,3,6) + '-' +
                                                    copy(NossoNumero,9,1) + '-';
      fDmCobranca.mRetornoSeuNumero.AsString   := SeuNumero;
      vTexto := trim(NumeroDocumento);
      i2 := pos('/',vTexto);
      if i2 > 0 then
      begin
        fDmCobranca.mRetornoNumNota.AsString := fDmCobranca.Monta_Numero(copy(vTexto,1,i2-1),0);
        fDmCobranca.mRetornoParcela.AsString := fDmCobranca.Monta_Numero(copy(vTexto,i2+1,Length(vTexto) - i2+1),0);
      end
      else
        fDmCobranca.mRetornoNumNota.AsString := NumeroDocumento;
      fDmCobranca.mRetornoDtOcorrencia.AsDateTime   := DataOcorrencia;
      fDmCobranca.mRetornoCodOcorrenciaRet.AsString := OcorrenciaOriginal.CodigoBanco;

      prc_Monta_Ocorrencia;
      if trim(fDmCobranca.mRetornoNomeOcorrenciaRet.AsString) = '' then
        fDmCobranca.mRetornoNomeOcorrenciaRet.AsString := OcorrenciaOriginal.Descricao;

      fDmCobranca.mRetornoVlrTitulo.AsCurrency     := ValorDocumento;
      fDmCobranca.mRetornoVlrPago.AsCurrency       := ValorRecebido;
      fDmCobranca.mRetornoNomeCliente.AsString     := Sacado.NomeSacado;
      if (fDmCobranca.mRetornoCodOcorrenciaRet.AsString = '02') or (fDmCobranca.mRetornoCodOcorrenciaRet.AsString = '75') then
        fDmCobranca.mRetornoVlrJurosdeMora.AsCurrency := ValorMoraJuros
      else
        fDmCobranca.mRetornoVlrJurosPagos.AsCurrency := ValorMoraJuros;
      fDmCobranca.mRetornoVlrAbatimento.AsCurrency := ValorAbatimento;
      fDmCobranca.mRetornoVlrDesconto.AsCurrency   := ValorDesconto;
      fDmCobranca.mRetornoNomeCliente.AsString     := Sacado.NomeSacado;

      fDmCobranca.mRetornoID_Duplicata.AsInteger   := 0;
      fDmCobranca.mRetornoVlrDespesaCobranca.AsCurrency := ValorDespesaCobranca;
      vTexto := trim(fDmCobranca.mRetornoSeuNumero.AsString);
      i2 := pos('.',vTexto);
      if i2 > 0 then
      begin
        fDmCobranca.mRetornoID_Duplicata.AsString := copy(vTexto,i2+1,Length(vTexto) - i2+1);
        fDmCobranca.mRetornoFilial.AsString       := copy(vTexto,1,i2-1);
      end
      else
      if (fDmCobranca.cdsBancoCOD_FEBRABAN.AsString <> '748') then
      begin
        //Buscar o ID do sistema anterior
        i2 := pos('-',vTexto);
        if i2 > 0 then
        begin
          fDmCobranca.mRetornoID_Duplicata_Ant.AsString := copy(vTexto,i2+1,Length(vTexto) - i2+1);
          fDmCobranca.mRetornoID_Duplicata.AsInteger    := 0;
          fDmCobranca.mRetornoFilial.AsInteger          := 1;
        end;
      end;

      if trim(vTexto) <> '' then
      begin
        if fDmCobranca.mRetornoID_Duplicata.AsInteger > 0 then
        begin
          prc_Duplicata(0,fDmCobranca.mRetornoID_Duplicata.AsInteger,0,0,0,'','',0,0);
          if not fDmCobranca.cdsCReceber.IsEmpty then
          begin
            fDmCobranca.mRetornoNomeCliente.AsString := fDmCobranca.cdsCReceberNOME.AsString;
            fDmCobranca.mRetornoDtVenc.AsString      := fDmCobranca.cdsCReceberDTVENCIMENTO.AsString;
            fDmCobranca.mRetornoCodCliente.AsInteger := fDmCobranca.cdsCReceberCODCLIENTE.AsInteger;
          end;
        end
        else //Busca a duplicata anterior
        if fDmCobranca.mRetornoID_Duplicata_Ant.AsInteger > 0 then
        begin
          prc_Duplicata(0,fDmCobranca.mRetornoID_Duplicata.AsInteger,0,0,0,'','',fDmCobranca.mRetornoID_Duplicata_Ant.AsInteger,0);
          if not fDmCobranca.cdsCReceber.IsEmpty then
          begin
            fDmCobranca.mRetornoNomeCliente.AsString := fDmCobranca.cdsCReceberNOME.AsString;
            fDmCobranca.mRetornoDtVenc.AsString      := fDmCobranca.cdsCReceberDTVENCIMENTO.AsString;
            fDmCobranca.mRetornoCodCliente.AsInteger := fDmCobranca.cdsCReceberCODCLIENTE.AsInteger;
            if fDmCobranca.mRetornoID_Duplicata.AsInteger <= 0 then
              fDmCobranca.mRetornoID_Duplicata.AsInteger := fDmCobranca.cdsCReceberNUMCRECEBER.AsInteger;
          end;
        end
        else
        begin
          //Preparado para o Sicredi  17/04/2016
          vTexto  := fDmCobranca.Monta_Numero(fDmCobranca.mRetornoNumNota.AsString,0);
          vTexto2 := fDmCobranca.Monta_Numero(fDmCobranca.mRetornoParcela.AsString,0);
          if (fDmCobranca.cdsBancoCOD_FEBRABAN.AsString = '748') and (trim(vTexto) <> '')  and (trim(vTexto2) <> '') then
          begin
            prc_Duplicata(0,0,StrToInt(vTexto),1,0,'','',0,StrToInt(vTexto2));
            if not fDmCobranca.cdsCReceber.IsEmpty then
            begin
              fDmCobranca.mRetornoNomeCliente.AsString := fDmCobranca.cdsCReceberNOME.AsString;
              fDmCobranca.mRetornoDtVenc.AsString      := fDmCobranca.cdsCReceberDTVENCIMENTO.AsString;
              fDmCobranca.mRetornoCodCliente.AsInteger := fDmCobranca.cdsCReceberCODCLIENTE.AsInteger;
              if fDmCobranca.mRetornoID_Duplicata.AsInteger <= 0 then
                fDmCobranca.mRetornoID_Duplicata.AsInteger := fDmCobranca.cdsCReceberNUMCRECEBER.AsInteger;
            end;
          end;
        end;
      end;
      fDmCobranca.mRetornoCodMotivo.AsString  := MotivoRejeicaoComando.Text;
      fDmCobranca.mRetornoDescMotivo.AsString := DescricaoMotivoRejeicaoComando.Text;
      fDmCobranca.mRetorno.Post;
    end;
  end;
  SMDBGrid1.EnableScroll;
  fDmCobranca.mRetorno.IndexFieldNames := 'CodOcorrenciaRet;NomeCliente;NumNota;Parcela';
end;

procedure TfCobRetorno.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDmCobranca.mRetorno.IsEmpty then
    exit;
  if (fDmCobranca.mRetornoCodOcorrenciaRet.AsString = '74') or (fDmCobranca.mRetornoCodOcorrenciaRet.AsString = '24') then
    Background := $008080FF
  else
  if (fDmCobranca.mRetornoAtualizado.AsString = 'S') then
    Background := $00D7D7D7
  else
  if fDmCobranca.mRetornoCodCliente.AsInteger <= 0 then
  begin
    Background  := clMaroon;
    AFont.Color := clWhite;
  end
  else
  if fDmCobranca.mRetornoTipo_Ret.AsString = 'ERR' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if (fDmCobranca.mRetornoTipo_Ret.AsString = 'LIQ') or
     (fDmCobranca.mRetornoTipo_Ret.AsString = 'LCA') or
     (fDmCobranca.mRetornoTipo_Ret.AsString = 'LNO') then
    Background := clMoneyGreen
  else
  if (fDmCobranca.mRetornoTipo_Ret.AsString = 'PRO') then
    Background := clYellow
  else
  if (fDmCobranca.mRetornoAtualizar.AsString = 'S') then
    Background := $00FFCB97;
end;

procedure TfCobRetorno.prc_Monta_Ocorrencia;
begin
{  if (fDmCobranca.cdsRet_Cadastro.Locate('CODIGO;TIPO_REG',
      VarArrayOf([fDmCobranca.mRetornoCodOcorrenciaRet.AsString,'OCO']),
      [locaseinsensitive])) then
  begin
    fDmCobranca.mRetornoNomeOcorrenciaRet.AsString := fDmCobranca.cdsRet_CadastroNOME.AsString;
    if fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'ORJ' then
      prc_Monta_Erro_Liq(fDmCobranca.mRetornoErros.AsString,'ERR')
    else
    if fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'LIQ' then
      prc_Monta_Erro_Liq(fDmCobranca.mRetornoCodLiquidacao.AsString,'LIQ');
    if (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') or
       (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'OCF') then
    begin
      if (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'OCF') and (fDmCobranca.cdsBancoCOD_BANCO.AsString = '748') then
        fDmCobranca.mRetornoTipo_Ret.AsString := 'OCF';
      fDmCobranca.mRetornoAtualizar.AsString := 'S';
    end;
    if (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') and
       (fDmCobranca.cdsRet_CadastroTIPO_LIQ.AsString = 'LCA') then
      fDmCobranca.mRetornoTipo_Ret.AsString := 'LCA';
    if fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'PRO' then
      fDmCobranca.mRetornoTipo_Ret.AsString := 'PRO';
    fDmCobranca.mRetornoAtualizar.AsString := 'S';
  end
  else
  begin
    if trim(fDmCobranca.mRetornoCodLiquidacao.AsString) <> '' then
    begin
      prc_Monta_Erro_Liq(fDmCobranca.mRetornoCodLiquidacao.AsString,'LIQ');
      if (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') or
         (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'OCF') then
        fDmCobranca.mRetornoAtualizar.AsString := 'S';
      if (fDmCobranca.cdsRet_CadastroTIPO_RET.AsString = 'LIQ') and
         (fDmCobranca.cdsRet_CadastroTIPO_LIQ.AsString = 'LCA') then
        fDmCobranca.mRetornoTipo_Ret.AsString := 'LCA';
    end;
    fDmCobranca.mRetornoAtualizar.AsString := 'S';
  end;}
end;

procedure TfCobRetorno.prc_Monta_Erro_Liq(Codigo, Tipo: String);
var
  vCodErro: array[1..4] of String;
  i: Integer;
  vIndiceErro: Integer;
  vIErro: Integer;
begin
  vIndiceErro := 0;
{  vIErro      := fDmCobranca.qBanco_RetornoQTD_ERRO_CADASTRO.AsInteger;
  if vIErro <= 0 then
    vIErro := 2;
  for i := 1 to 4 do
    vCodErro[i] := '';
  i := vIErro;
  if copy(Codigo,1,vIErro) <> '' then
    vCodErro[1] := copy(Codigo,1,vIErro);
  i := i + 1;
  if copy(Codigo,i,vIErro) <> '' then
    vCodErro[2] := copy(Codigo,i,vIErro);
  i := i + vIErro;
  if copy(Codigo,i,vIErro) <> '' then
    vCodErro[3] := copy(Codigo,i,vIErro);
  i := i + vIErro;
  if copy(Codigo,i,vIErro) <> '' then
    vCodErro[4] := copy(Codigo,i,vIErro);
  fDmCobranca.mRetornoTipo_Ret.AsString := Tipo;
  for i := 1 to 4 do
  begin
    if trim(vCodErro[i]) <> '' then
    begin
      vIndiceErro := vIndiceErro + 1;
      fDmCobranca.qRet_Erro.Close;
      fDmCobranca.qRet_Erro.ParamByName('CODIGO').AsString   := vCodErro[i];
      fDmCobranca.qRet_Erro.ParamByName('TIPO_REG').AsString := Tipo;
      fDmCobranca.qRet_Erro.Open;
      if not fDmCobranca.qRet_Erro.IsEmpty then
      begin
        if Tipo = 'LIQ' then
          fDmCobranca.mRetornoDescLiquidacao.AsString := fDmCobranca.qRet_ErroNOME.AsString
        else
          fDmCobranca.mRetorno.FieldByName('DescErro'+IntToStr(vIndiceErro)).AsString := fDmCobranca.qRet_ErroNOME.AsString;
      end;
    end;
  end;}
end;

procedure TfCobRetorno.prc_Posiciona_Duplicata;
var
  vIDAux: Integer;
begin
  vIDAux := 0;
  if trim(fDmCobranca.mRetornoID_Duplicata.AsString) <> '' then
    vIDAux := fDmCobranca.mRetornoID_Duplicata.AsInteger;
  fDmCobranca.prc_Localizar(vIDAux);
  fDmCobranca.cdsCReceberHist.Close;
  fDmCobranca.cdsCReceberHist.Open;
//  vFilial := 1;
end;

procedure TfCobRetorno.prc_Liquidacao;
var
  vHistAux, vComDesconto: String;
begin
  if StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLRRESTANTE.AsFloat)) > 0 then
  begin
    fDmCobranca.cdsCReceber.Edit;
    if (JvDBLookupCombo1.Text <> '') and (fDmCobranca.cdsCReceberID_BANCO_BOLETO.AsInteger <= 0) then
      fDmCobranca.cdsCReceberID_BANCO_BOLETO.AsInteger := JvDBLookupCombo1.KeyValue;

    fDmCobranca.cdsCReceberVLRDESPESA.AsFloat   := StrToFloat(FormatFloat('0.00',0));
//    fDmCobranca.cdsCReceberVLR_PAGO.AsFloat       := StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLR_RESTANTE.AsFloat));
//    fDmCobranca.cdsCReceberVLRDESCONTO.AsFloat   := StrToFloat(FormatFloat('0.00',fDmCobranca.mRetornoVlrDesconto.AsFloat));
//    fDmCobranca.cdsCReceberVLR_JUROSPAGOS.AsFloat := StrToFloat(FormatFloat('0.00',fDmCobranca.mRetornoVlrJurosPagos.AsFloat));
//    fDmCobranca.cdsCReceberVLR_PAGO.AsFloat       := StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLR_PAGO.AsFloat -
//                                                                fDmCobranca.mRetornoVlrDesconto.AsFloat));
//    fDmCobranca.cdsCReceberVLR_TAXA_BANCARIA.AsFloat := StrToFloat(FormatFloat('0.00',fDmCobranca.mRetornoVlrDespesaCobranca.AsFloat));

{    if trim(fDmCobranca.mRetornoDtLiquidacao.AsString) = '' then
      fDmCobranca.cdsCReceberDTULTPAGAMENTO.AsDateTime := fDmCobranca.mRetornoDtOcorrencia.AsDateTime
    else
      fDmCobranca.cdsCReceberDTULTPAGAMENTO.AsDateTime := fDmCobranca.mRetornoDtLiquidacao.AsDateTime;
    vHistAux := '';
    if fDmCobranca.mRetornoTipo_Ret.AsString = 'LCA' then
    begin
      vHistAux := 'LCA ';
      fDmCobranca.cdsCReceberPAGO_CARTORIO.AsString := 'S';
    end;
    fDmCobranca.prc_Gravar_Dupicata_Hist('PAG',vHistAux + 'PAGAMENTO DE TITULO (via ret)',fDmCobranca.cdsCReceberVLR_PAGO.AsFloat,
                                             fDmCobranca.mRetornoVlrJurosPagos.AsFloat,fDmCobranca.mRetornoVlrDesconto.AsFloat,
                                             fDmCobranca.cdsCReceberVLR_DESPESAS.AsFloat,fDmCobranca.cdsCReceberVLR_TAXA_BANCARIA.AsFloat,fDmCobranca.cdsCReceberID_TIPOCOBRANCA.AsInteger);
    vComDesconto := '';
    if StrToFloat(FormatFloat('0.00',fDmCobranca.mRetornoVlrDesconto.AsFloat)) > 0 then
      vComDesconto := 'S';
    if StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLR_PAGO.AsFloat)) > 0 then
      fDmCobranca.prc_Gravar_Financeiro(fDmCobranca.cdsCReceberVLR_PAGO.AsFloat,'P',fDmCobranca.cdsCReceberID_TIPOCOBRANCA.AsInteger,vComDesconto);
    if StrToFloat(FormatFloat('0.00',fDmCobranca.mRetornoVlrJurosPagos.AsFloat)) > 0 then
      fDmCobranca.prc_Gravar_Financeiro(fDmCobranca.mRetornoVlrJurosPagos.AsFloat,'J',fDmCobranca.cdsCReceberID_TIPOCOBRANCA.AsInteger);
    if StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLR_DESPESAS.AsFloat)) > 0 then
      fDmCobranca.prc_Gravar_Financeiro(fDmCobranca.cdsCReceberVLR_DESPESAS.AsFloat,'D',fDmCobranca.cdsCReceberID_TIPOCOBRANCA.AsInteger);
    if StrToFloat(FormatFloat('0.00',fDmCobranca.cdsCReceberVLR_TAXA_BANCARIA.AsFloat)) > 0 then
      fDmCobranca.prc_Gravar_Financeiro(fDmCobranca.cdsCReceberVLR_TAXA_BANCARIA.AsFloat,'T',fDmCobranca.cdsCReceberID_TIPOCOBRANCA.AsInteger);

    fDmCobranca.cdsCReceberVLR_RESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',0));

    fDmCobranca.cdsCReceber.Post;

    if fDmCobranca.cdsCReceber.State in [dsEdit,dsInsert] then
      fDmCobranca.cdsCReceber.Post;
    fDmCobranca.cdsCReceber.ApplyUpdates(0);

}    prc_mRetorno_Atualizado;
  end;
end;

procedure TfCobRetorno.prc_mRetorno_Atualizado;
begin
  fDmCobranca.mRetorno.Edit;
  fDmCobranca.mRetornoAtualizado.AsString := 'S';
  fDmCobranca.mRetorno.Post;
end;

procedure TfCobRetorno.FilenameEdit1Change(Sender: TObject);
begin
  if trim(JvDirectoryEdit2.Text) <> '' then
    btnLocalizarClick(Sender);
end;

procedure TfCobRetorno.btnEnviarEmailClick(Sender: TObject);
//var
//  ffrmEnviaEmailTitulos: TfrmEnviaEmailTitulos;
begin
  //if MessageDlg('Enviar email para clientes com títulos vencidos e com data de vencimento hoje?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
   // Exit;
  {vQtd_Sem_Email := 0;
  fDmCobranca.mEmail.EmptyDataSet;
  fDmCobranca.cdsFilial.First;
  while not fDmCobranca.cdsFilial.Eof do
  begin
    prc_Gerar_mEmail(fDmCobranca.cdsFilialID.AsInteger);
    fDmCobranca.cdsFilial.Next;
  end;}
  //if not fDmCobranca.mEmail.IsEmpty then
  //begin
//    ffrmEnviaEmailTitulos := TfrmEnviaEmailTitulos.Create(self);
//    ffrmEnviaEmailTitulos.fDmCobranca := fDmCobranca;
    {ffrmEnviaEmailTitulos.Label2.Visible := (vQtd_Sem_Email > 0);
    ffrmEnviaEmailTitulos.Label1.Visible := (vQtd_Sem_Email <= 0);
    ffrmEnviaEmailTitulos.btnEnviarEmail.Visible := (vQtd_Sem_Email > 0);
    if vQtd_Sem_Email > 0 then
      ffrmEnviaEmailTitulos.Label2.Caption := IntToStr(vQtd_Sem_Email) + '  Cliente(s) sem email';}
//    ffrmEnviaEmailTitulos.ShowModal;
//    FreeAndNil(ffrmEnviaEmailTitulos);
  //end;

{  if (fDmCobranca.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime = Date) and
     (fDmCobranca.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S') then
  begin
    btnEnviarEmail.Down := False;
    btnEnviarEmail.Color := clBtnFace;
    btnEnviarEmail.Font.Style := [];
  end;}
end;

{procedure TfCobRetorno.prc_Gerar_mEmail(ID_Filial: Integer);
var
  vID_Pessoa: Integer;
  vOBS: String;
  vTitulos: String;
  vDtAux: TDateTime;
begin
  fDmCobranca.cdsTitulos_atr.Close;
  fDmCobranca.sdsTitulos_atr.ParamByName('DTVENCIMENTO').AsDate := Date;
  fDmCobranca.sdsTitulos_atr.ParamByName('FILIAL').AsInteger    := ID_Filial;
  fDmCobranca.cdsTitulos_atr.Open;
  vID_Pessoa := 0;
  vOBS       := '';
  vTitulos   := '';
  vDtAux     := 0;
  fDmCobranca.cdsTitulos_atr.First;
  while not fDmCobranca.cdsTitulos_atr.Eof do
  begin
    if vID_Pessoa <> fDmCobranca.cdsTitulos_atrID_PESSOA.AsInteger then
    begin
      if fDmCobranca.mEmail.State in [dsEdit,dsInsert] then
      begin
        fDmCobranca.mEmailObs.Value        := vOBS;
        fDmCobranca.mEmailTitulos.AsString := vTitulos;
        fDmCobranca.mEmail.Post;
        vOBS     := '';
        vTitulos := '';
      end;
      fDmCobranca.mEmail.Insert;
      fDmCobranca.mEmailID_Cliente.AsInteger     := fDmCobranca.cdsTitulos_atrID_PESSOA.AsInteger;
      fDmCobranca.mEmailNome.AsString            := fDmCobranca.cdsTitulos_atrNOME_CLIENTE.AsString;
      fDmCobranca.mEmailCNPJ_CPF.AsString        := fDmCobranca.cdsTitulos_atrCNPJ_CPF_CLIENTE.AsString;
      fDmCobranca.mEmailEmail.AsString           := fDmCobranca.cdsTitulos_atrEMAIL_PGTO.AsString;
      fDmCobranca.mEmailNome_Filial.AsString     := fDmCobranca.cdsTitulos_atrNOME_FILIAL.AsString;
      fDmCobranca.mEmailCNPJ_CPF_Filial.AsString := fDmCobranca.cdsTitulos_atrCNPJ_CPF_FILIAL.AsString;
      fDmCobranca.mEmailFilial.AsInteger         := fDmCobranca.cdsTitulos_atrFILIAL.AsInteger;
      fDmCobranca.mEmailQtd_Titulos.AsInteger    := 0;
      fDmCobranca.mEmailEmailEnviado.AsString    := 'N';
      fDmCobranca.mEmailTituloVencido.AsBoolean  := False;
      fDmCobranca.mEmailTituloNoDia.AsBoolean    := False;
      if trim(fDmCobranca.mEmailEmail.AsString) = '' then
        vQtd_Sem_Email := vQtd_Sem_Email + 1;
    end;
    fDmCobranca.mEmailQtd_Titulos.AsInteger := fDmCobranca.mEmailQtd_Titulos.AsInteger + 1;
    vOBS := vOBS + #13 + '(Nº Titulo: ' + fDmCobranca.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDmCobranca.cdsTitulos_atrPARCELA.AsString
          + '   Nosso Nº: ' + fDmCobranca.cdsTitulos_atrNOSSONUMERO.AsString
          + '   Dt.Vencimento: ' + fDmCobranca.cdsTitulos_atrDTVENCIMENTO.AsString
          + '  Vlr.: ' + FormatFloat('###,###,##0.00',fDmCobranca.cdsTitulos_atrVLR_PARCELA.AsFloat) + ')';
    if vTitulos = '' then
      vTitulos := fDmCobranca.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDmCobranca.cdsTitulos_atrPARCELA.AsString
    else
      vTitulos := vTitulos + ', ' + fDmCobranca.cdsTitulos_atrNUMDUPLICATA.AsString + '/' + fDmCobranca.cdsTitulos_atrPARCELA.AsString;
    vID_Pessoa := fDmCobranca.cdsTitulos_atrID_PESSOA.AsInteger;
    if fDmCobranca.cdsTitulos_atrDTVENCIMENTO.AsDateTime < Date then
      fDmCobranca.mEmailTituloVencido.AsBoolean := True;
    if fDmCobranca.cdsTitulos_atrDTVENCIMENTO.AsDateTime = Date then
      fDmCobranca.mEmailTituloNoDia.AsBoolean := True;
    fDmCobranca.cdsTitulos_atr.Next;
  end;
  if fDmCobranca.mEmail.State in [dsEdit,dsInsert] then
  begin
    fDmCobranca.mEmailObs.Value := vOBS;
    fDmCobranca.mEmailTitulos.AsString := vTitulos;
    fDmCobranca.mEmail.Post;
  end;
end;}

procedure TfCobRetorno.NxButton2Click(Sender: TObject);
var
  vArq: String;
begin
  fDmCobranca.mRetorno.IndexFieldNames := 'CodOcorrenciaRet;NomeCliente;NumNota;Parcela';
  vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\Retorno_Banco.fr3';
  if FileExists(vArq) then
//    fDmCobranca.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
{  fDmCobranca.frxReport1.variables['ImpOpcao']      := QuotedStr('Nome Arq: ') + QuotedStr(FilenameEdit1.Text);
  fDmCobranca.frxReport1.variables['NomeBanco']     := QuotedStr(RxDBLookupCombo3.Text);
  fDmCobranca.frxReport1.variables['SeparadorParc'] := QuotedStr(fDmCobranca.vSeparadorParc);
  fDmCobranca.frxReport1.ShowReport;}
end;

procedure TfCobRetorno.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{  CanClose := True;
  if (fDmCobranca.cdsParametros_FinDTENVIO_EMAIL_TITULOS.AsDateTime < Date) and
     (fDmCobranca.cdsParametros_FinENVIAR_EMAIL_TITULOS_ATR.AsString = 'S') then
  begin
    if MessageDlg('Emails com títulos em atraso não foram enviados, confirma envio?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      CanClose := False;
      btnEnviarEmailClick(Sender);
    end;
  end;}
end;

procedure TfCobRetorno.prc_Duplicata(ID_Nota, ID_Duplicata, NumNota,
  Filial, ID_Nota_Servico: Integer; Serie, NossoNumero: String;
  ID_Duplicata_Ant, Parcela: Integer);
begin
  fDmCobranca.cdsCReceber.Close;
  fDmCobranca.sdsCReceber.CommandText := 'SELECT CRP.*, P.NOME, P.COBENDERECO, P.COBNUMERO, P.COBCOMPLEMENTO, P.COBUF, C1.NOME COBCIDADE, ' +
                                         'P.DOCUMENTO, P.COBCEP, P.COBBAIRRO, P.PESSOA PESSOA_PGTO, P.ENDERECO, P.ENDNUMERO, P.BAIRRO, P.CEP, ' +
                                         'P.ESTADO, C2.NOME CIDADE ' +
                                         'FROM CRECEBERPARC CRP ' +
                                         'INNER JOIN PESSOA P ON (CRP.CODCLIENTE = P.ID) ' +
                                         'INNER JOIN CIDADE C2 ON (P.CIDADE = C2.ID) ' +
                                         'LEFT JOIN CIDADE C1 ON (P.COBCIDADE = C1.ID) ' +
                                         'WHERE 0 = 0 ';
  if ID_Duplicata_Ant > 0 then
  begin
    fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND DUP.COD_ANT = ' + IntToStr(ID_Duplicata_Ant);
    if Filial > 0 then
      fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND DUP.FILIAL = ' + IntToStr(Filial);
  end
  else
  if trim(NossoNumero) <> '' then
  begin
    fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND NOSSONUMERO = ' + QuotedStr(NossoNumero);
    if Filial > 0 then
      fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND DUP.FILIAL = ' + IntToStr(Filial);
  end
  else
  if ID_Nota_Servico > 0 then
    fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND ID_NOTA_SERVICO = ' + IntToStr(ID_Nota_Servico)
  else
  if ID_Nota > 0 then
    fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND ID_NOTA = ' + IntToStr(ID_Nota)
  else
  if ID_Duplicata > 0 then
    fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND DUP.ID = ' + IntToStr(ID_Duplicata)
  else
  begin
    if NumNota > 0 then
      fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND NUMNOTA = ' + IntToStr(NumNota);
    if Filial > 0 then
      fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND DUP.FILIAL = ' + IntToStr(Filial);
    if trim(Serie) <> '' then
      fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND SERIE = ' + QuotedStr(Serie);
    if Parcela > 0 then
      fDmCobranca.sdsCReceber.CommandText := fDmCobranca.sdsCReceber.CommandText + ' AND PARCELA = ' + IntToStr(Parcela);
  end;
  fDmCobranca.cdsCReceber.Open;
end;

end.

