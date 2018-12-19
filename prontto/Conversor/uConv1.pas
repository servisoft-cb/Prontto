unit uConv1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, StdCtrls, Buttons,
  StrUtils, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses uDmProntto, uDmFacil, DB;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  DmProntto.cdsPessoa.Open;
  DmFacil.cdsPessoa.Open;
  DmFacil.cdsCidade.Open;
  dmFacil.cdsCidade.IndexFieldNames := 'NOME';

  while not DmProntto.cdsPessoa.Eof do
  begin
    if DmProntto.cdsPessoaID.AsInteger = 212 then
      ShowMessage(DmProntto.cdsPessoaID.AsString);
    dmFacil.cdsPessoa.IndexFieldNames := 'COD_ANT';
    if dmFacil.cdsPessoa.FindKey([DmProntto.cdsPessoaID.AsInteger]) then
      dmFacil.cdsPessoa.Edit
    else
    begin
      dmFacil.cdsPessoa.IndexFieldNames := 'CNPJ_CPF';
      if (DmProntto.cdsPessoaDOCUMENTO.AsString <> '') and
         (dmFacil.cdsPessoa.FindKey([DmProntto.cdsPessoaDOCUMENTO.AsString])) then
        dmFacil.cdsPessoa.Edit
      else
      begin
        dmFacil.cdsPessoa.Insert;
        dmFacil.cdsPessoaCODIGO.AsInteger := dmFacil.ProximaSequencia('PESSOA',0);
        if DmProntto.cdsPessoaID.AsInteger = 212 then
          ShowMessage(DmProntto.cdsPessoaID.AsString + '/' + dmFacil.cdsPessoaCODIGO.AsString);
      end;
    end;
    dmFacil.cdsPessoaBAIRRO.AsString := DmProntto.cdsPessoaBAIRRO.AsString;
    dmFacil.cdsPessoaCEP.AsString    := DmProntto.cdsPessoaCEP.AsString;

    dmFacil.cdsCidade.FindKey([DmProntto.cdsPessoaCIDADE.AsString]);
    dmFacil.cdsPessoaID_CIDADE.AsString := DmFacil.cdsCidadeID.AsString;

    dmFacil.cdsPessoaCNPJ_CPF.AsString        := DmProntto.cdsPessoaDOCUMENTO.AsString;
    dmFacil.cdsPessoaCOD_ANT.AsString         := DmProntto.cdsPessoaID.AsString;
    dmFacil.cdsPessoaCOMPLEMENTO_END.AsString := DmProntto.cdsPessoaENDCOMPLEMENTO.AsString;
//    dmFacil.cdsPessoaDDDFONE1.AsString      := cdsPessoaID.AsString;
    dmFacil.cdsPessoaDTCADASTRO.AsString      := DmProntto.cdsPessoaDTCADASTRO.AsString;
    dmFacil.cdsPessoaDT_CONTRATO_FIN.AsString := DmProntto.cdsPessoaDTCONTRATOFIM.AsString;
    dmFacil.cdsPessoaDT_CONTRATO_INI.AsString := DmProntto.cdsPessoaDTCONTRATOINI.AsString;
    dmFacil.cdsPessoaEMAIL_COMPRAS.AsString  := DmProntto.cdsPessoaEMAIL.AsString;
    dmFacil.cdsPessoaEMAIL_PGTO.AsString     := DmProntto.cdsPessoaEMAIL.AsString;
    dmFacil.cdsPessoaENDERECO.AsString       := DmProntto.cdsPessoaENDERECO.AsString;
    dmFacil.cdsPessoaFANTASIA.AsString       := DmProntto.cdsPessoaFANTASIA.AsString;
    dmFacil.cdsPessoaFONE_PGTO.AsString      := DmProntto.cdsPessoaFONE.AsString;
    dmFacil.cdsPessoaHOMEPAGE.AsString       := DmProntto.cdsPessoaHOMEPAGE.AsString;
    dmFacil.cdsPessoaID_CONTABOLETO.AsString := DmProntto.cdsPessoaCODBANCO.AsString;
    dmFacil.cdsPessoaID_PAIS.AsString        := '1';
    dmFacil.cdsPessoaID_REGIME_TRIB.AsString := '1';
    dmFacil.cdsPessoaINATIVO.AsString       := 'N';
    dmFacil.cdsPessoaINSCR_EST.AsString     := DmProntto.cdsPessoaINSCESTADUAL.AsString;
    dmFacil.cdsPessoaNOME.AsString          := DmProntto.cdsPessoaNOME.AsString;
    dmFacil.cdsPessoaNUM_END.AsString       := DmProntto.cdsPessoaENDNUMERO.AsString;
    dmFacil.cdsPessoaOBS.AsString           := DmProntto.cdsPessoaOBSERVACAO.AsString;
    dmFacil.cdsPessoaPESSOA.AsString        := DmProntto.cdsPessoaPESSOA.AsString;
    dmFacil.cdsPessoaRG.AsString            := DmProntto.cdsPessoaRG.AsString;
    dmFacil.cdsPessoaTELEFONE1.AsString     := DmProntto.cdsPessoaFONE.AsString;
    dmFacil.cdsPessoaTELEFONE2.AsString     := DmProntto.cdsPessoaCEL.AsString;
    dmFacil.cdsPessoaTIPO_CONTRIBUINTE.AsString := '1';
    case AnsiIndexStr(DmProntto.cdsPessoaCLIENTE.AsString,['0','1','']) of
      0: dmFacil.cdsPessoaTP_CLIENTE.AsString := 'N';
      1: dmFacil.cdsPessoaTP_CLIENTE.AsString := 'S';
      2: dmFacil.cdsPessoaTP_CLIENTE.AsString := 'N';
    end;
    case AnsiIndexStr(DmProntto.cdsPessoaFORNECEDOR.AsString,['0','1','']) of
      0: dmFacil.cdsPessoaTP_FORNECEDOR.AsString := 'N';
      1: dmFacil.cdsPessoaTP_FORNECEDOR.AsString := 'S';
      2: dmFacil.cdsPessoaTP_FORNECEDOR.AsString := 'N';
    end;
    case AnsiIndexStr(DmProntto.cdsPessoaFUNCIONARIO.AsString,['0','1','']) of
      0: dmFacil.cdsPessoaTP_FUNCIONARIO.AsString := 'N';
      1: dmFacil.cdsPessoaTP_FUNCIONARIO.AsString := 'S';
      2: dmFacil.cdsPessoaTP_FUNCIONARIO.AsString := 'N';
    end;
    case AnsiIndexStr(DmProntto.cdsPessoaVENDEDOR.AsString,['0','1','']) of
      0: dmFacil.cdsPessoaTP_VENDEDOR.AsString := 'N';
      1: dmFacil.cdsPessoaTP_VENDEDOR.AsString := 'S';
      2: dmFacil.cdsPessoaTP_VENDEDOR.AsString := 'N';
    end;
    case AnsiIndexStr(DmProntto.cdsPessoaTRANSPORTADORA.AsString,['0','1','']) of
      0: dmFacil.cdsPessoaTP_TRANSPORTADORA.AsString := 'N';
      1: dmFacil.cdsPessoaTP_TRANSPORTADORA.AsString := 'S';
      2: dmFacil.cdsPessoaTP_TRANSPORTADORA.AsString := 'N';
    end;
    dmFacil.cdsPessoaTP_EXPORTACAO.AsString := 'N';
    dmFacil.cdsPessoaTP_PREPOSTO.AsString   := 'N';
    dmFacil.cdsPessoaTP_ATELIER.AsString    := 'N';

    dmFacil.cdsPessoa.Post;
    dmFacil.cdsPessoa.ApplyUpdates(0);
    DmProntto.cdsPessoa.Next;
  end;

  ShowMessage('Concluído!');
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  dmProntto.cdsCPagar.Open;
  dmProntto.cdsCReceber.Open;
  dmFacil.cdsDuplicata.Open;
  DmFacil.cdsPessoa.Open;
  dmFacil.cdsPessoa.IndexFieldNames := 'COD_ANT';
  dmFacil.cdsDuplicata.IndexFieldNames := 'TIPO_ES;COD_ANT';
  while not dmProntto.cdsCPagar.Eof do
  begin
    if not dmFacil.cdsPessoa.FindKey([dmProntto.cdsCPagarCODFORNECEDOR.AsInteger]) then
    begin
      dmProntto.cdsCPagar.Next;
      Continue;
    end;
    if dmFacil.cdsDuplicata.FindKey(['S',dmProntto.cdsCPagarNUMCPAGAR.AsInteger]) then
      dmFAcil.cdsDuplicata.Edit
    else
    begin
      dmFacil.cdsDuplicata.Insert;
      dmFacil.cdsDuplicataID.AsInteger := dmFacil.ProximaSequencia('DUPLICATA',0);
    end;
    dmFacil.cdsDuplicataFILIAL.AsInteger          := 1;
    dmFacil.cdsDuplicataCOD_ANT.AsInteger         := dmProntto.cdsCPagarNUMCPAGAR.AsInteger;
//    dmFacil.cdsDuplicataDESCRICAO.AsInteger     := dmProntto.cdsCPagarNUMCPAGAR.AsInteger;
    dmFacil.cdsDuplicataDTEMISSAO.AsDateTime      := dmProntto.cdsCPagarDTMOVIMENTO.AsDateTime;
    dmFacil.cdsDuplicataDTFINANCEIRO.AsDateTime   := dmProntto.cdsCPagarDTPAGTO.AsDateTime;
    dmFacil.cdsDuplicataDTVENCIMENTO.AsDateTime   := dmProntto.cdsCPagarDTVENCIMENTO.AsDateTime;

    if (dmProntto.cdsCPagarCODBANCO.AsInteger = 0) or (dmProntto.cdsCPagarCODBANCO.IsNull) then
      dmFacil.cdsDuplicataID_CONTA.AsInteger := 1;
    case dmProntto.cdsCPagarCODBANCO.AsInteger of
      2: dmFacil.cdsDuplicataID_BANCO.AsInteger := 3;
      3: dmFacil.cdsDuplicataID_BANCO.AsInteger := 4;
      4: dmFacil.cdsDuplicataID_BANCO.AsInteger := 6;
    end;

    dmFacil.cdsDuplicataID_PESSOA.AsInteger       := dmFacil.cdsPessoaCODIGO.AsInteger;
    dmFacil.cdsDuplicataNUMDUPLICATA.AsString     := dmProntto.cdsCPagarNUMDUPLICATA.AsString;
    dmFacil.cdsDuplicataNUMNOTA.AsInteger         := dmProntto.cdsCPagarNUMNOTA.AsInteger;
    dmFacil.cdsDuplicataPARCELA.AsInteger         := dmProntto.cdsCPagarPARCELA.AsInteger;
    dmFacil.cdsDuplicataQTD_DIASATRASO.AsInteger  := dmProntto.cdsCPagarDIASATRASO.AsInteger;
    dmFacil.cdsDuplicataTIPO_ES.AsString          := 'S';
    dmFacil.cdsDuplicataTIPO_MOV.AsString         := 'D';
    dmFacil.cdsDuplicataTIPO_LANCAMENTO.AsString  := 'MAN';
    dmFacil.cdsDuplicataUSUARIO.AsString          := 'importado';
    dmFacil.cdsDuplicataVLR_DESCONTO.AsCurrency   := dmProntto.cdsCPagarVLRDESCONTO.AsCurrency;
    dmFacil.cdsDuplicataVLR_DESPESAS.AsCurrency   := dmProntto.cdsCPagarVLRDESPESA.AsCurrency;
    dmFacil.cdsDuplicataVLR_JUROSPAGOS.AsCurrency := dmProntto.cdsCPagarVLRJUROS.AsCurrency;
    dmFacil.cdsDuplicataVLR_PAGO.AsCurrency       := dmProntto.cdsCPagarVLRPAGTO.AsCurrency;
    dmFacil.cdsDuplicataVLR_PARCELA.AsCurrency    := dmProntto.cdsCPagarVLRVENCIMENTO.AsCurrency;
    dmFacil.cdsDuplicataVLR_TAXA_BANCARIA.AsCurrency := dmProntto.cdsCPagarVLRDESPESA.AsCurrency;
    dmFacil.cdsDuplicata.Post;
    dmProntto.cdsCPagar.Next;
  end;
  dmFacil.cdsDuplicata.ApplyUpdates(0);

{  while not dmProntto.cdsCReceber.Eof do
  begin
    if not dmFacil.cdsPessoa.FindKey([dmProntto.cdsCReceberCODCLIENTE.AsInteger]) then
    begin
      dmProntto.cdsCReceber.Next;
      Continue;
    end;
    dmFacil.cdsDuplicata.Insert;
    dmFacil.cdsDuplicataFILIAL.AsInteger        := 1;
    dmFacil.cdsDuplicataID.AsInteger            := dmFacil.ProximaSequencia('DUPLICATA',1);
    dmFacil.cdsDuplicataCOD_ANT.AsInteger       := dmProntto.cdsCReceberNUMCRECEBER.AsInteger;
    dmFacil.cdsDuplicataACEITE.AsString         := 'N';
    dmFacil.cdsDuplicataARQUIVO_GERADO.AsString := 'S';
    dmFacil.cdsDuplicataBOLETO_IMP.AsString     := 'B';
    dmFacil.cdsDuplicataDESCRICAO.AsString      := dmProntto.cdsCReceberOBS.AsString;
    dmFacil.cdsDuplicataDTEMISSAO.AsDateTime    := dmProntto.cdsCReceberDTMOVIMENTO.AsDateTime;
    dmFacil.cdsDuplicataDTVENCIMENTO.AsString   := dmProntto.cdsCReceberDTVENCIMENTO.AsString;
    dmFacil.cdsDuplicataID_CONTA.AsInteger      := dmProntto.cdsCReceberCODBANCO.AsInteger;
    if (dmProntto.cdsCReceberCODBANCO.AsInteger = 0) or (dmProntto.cdsCReceberCODBANCO.IsNull) then
      dmFacil.cdsDuplicataID_CONTA.AsInteger := 1;
    case dmProntto.cdsCReceberCODBANCO.AsInteger of
      2: dmFacil.cdsDuplicataID_BANCO.AsInteger := 3;
      3: dmFacil.cdsDuplicataID_BANCO.AsInteger := 4;
      4: dmFacil.cdsDuplicataID_BANCO.AsInteger := 6;
    end;
    dmFacil.cdsDuplicataID_PESSOA.AsInteger     := dmProntto.cdsCReceberCODCLIENTE.AsInteger;
//    dmFacil.cdsDuplicataID_VENDEDOR.AsInteger   := dmProntto.cdsCReceberCODVENDEDOR.AsInteger;
    dmFacil.cdsDuplicataNOSSONUMERO.AsString    := dmProntto.cdsCReceberNOSSONUMERO.AsString;
    dmFacil.cdsDuplicataNUMDUPLICATA.AsString   := dmProntto.cdsCReceberNUMNOTA.AsString;
    dmFacil.cdsDuplicataNUMNOTA.AsString        := dmProntto.cdsCReceberNUMNOTA.AsString;
    dmFacil.cdsDuplicataPARCELA.AsInteger       := dmProntto.cdsCReceberPARCELA.AsInteger;
//    dmFacil.cdsDuplicataID_CARTEIRA.AsInteger   := dmProntto.cdsCReceberCOD_CARTEIRA.AsInteger;
    dmFacil.cdsDuplicataQTD_DIASATRASO.AsInteger := dmProntto.cdsCReceberQTDDIASPROT.AsInteger;
    dmFacil.cdsDuplicataTIPO_ES.AsString         := 'E';
    dmFacil.cdsDuplicataTIPO_MOV.AsString        := 'D';
    dmFacil.cdsDuplicataTIPO_LANCAMENTO.AsString := 'MAN';
    dmFacil.cdsDuplicataUSUARIO.AsString         := 'servisoft';
    dmFacil.cdsDuplicataVLR_DESCONTO.AsCurrency   := dmProntto.cdsCReceberVLRDESCONTO.AsCurrency;
    dmFacil.cdsDuplicataVLR_DESPESAS.AsCurrency   := dmProntto.cdsCReceberVLRDESPESA.AsCurrency;
    dmFacil.cdsDuplicataVLR_DEVOLUCAO.AsCurrency  := dmProntto.cdsCReceberVLRDEVOLUCAO.AsCurrency;
    dmFacil.cdsDuplicataVLR_JUROSPAGOS.AsCurrency := dmProntto.cdsCReceberJUROSPAGOS.AsCurrency;
    dmFacil.cdsDuplicataVLR_PAGO.AsCurrency       := dmProntto.cdsCReceberVLRPAGTO.AsCurrency;
    dmFacil.cdsDuplicataVLR_PARCELA.AsCurrency    := dmProntto.cdsCReceberVLRVENCIMENTO.AsCurrency;
    dmFacil.cdsDuplicataVLR_RESTANTE.AsCurrency   := dmProntto.cdsCReceberVLRRESTANTE.AsCurrency;
    dmFacil.cdsDuplicata.Post;
    dmProntto.cdsCReceber.Next;
  end;
  dmFacil.cdsDuplicata.ApplyUpdates(0);
}
  ShowMessage('Concluído!');
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  DmProntto.cdsPessoa.Open;
  DmFacil.cdsPessoa.Open;
  DmFacil.cdsCidade.Open;
  dmFacil.cdsCidade.IndexFieldNames := 'NOME';

  while not DmProntto.cdsPessoa.Eof do
  begin
    dmFacil.cdsPessoa.IndexFieldNames := 'COD_ANT';
    if dmFacil.cdsPessoa.FindKey([DmProntto.cdsPessoaID.AsInteger]) then
      dmFacil.cdsPessoa.Edit
    else
    begin
      dmFacil.cdsPessoa.IndexFieldNames := 'CNPJ_CPF';
      if (DmProntto.cdsPessoaDOCUMENTO.AsString <> '') and
         (dmFacil.cdsPessoa.FindKey([DmProntto.cdsPessoaDOCUMENTO.AsString])) then
        dmFacil.cdsPessoa.Edit
      else
      begin
        dmFacil.cdsPessoa.Insert;
        dmFacil.cdsPessoaCODIGO.AsInteger := dmFacil.ProximaSequencia('PESSOA',0);
        if DmProntto.cdsPessoaID.AsInteger = 212 then
          ShowMessage(DmProntto.cdsPessoaID.AsString + '/' + dmFacil.cdsPessoaCODIGO.AsString);
      end;
    end;
    if dmProntto.cdsPessoaSTATUS.AsString = '0' then
      dmFacil.cdsPessoaINATIVO.AsString := 'S';
    dmFacil.cdsPessoa.Post;
    dmFacil.cdsPessoa.ApplyUpdates(0);
    DmProntto.cdsPessoa.Next;
  end;

  ShowMessage('Concluído!');
end;

end.

