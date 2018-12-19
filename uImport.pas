unit uImport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DBXpress, Dialogs, StdCtrls, Buttons, DB, FMTBcd, DBClient, Provider,
  SqlExpr, Mask, UDm1;

type
  TfImport = class(TForm)
    BitBtn1: TBitBtn;
    Pessoa: TSQLDataSet;
    PessoaP: TDataSetProvider;
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
    tPessoaSENHA: TStringField;
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
    dsPessoa: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    Fdm1: TDm1;

    vIgual : Boolean;
    function Numeros(Documento : String) : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImport: TfImport;

implementation

{$R *.dfm}

function TfImport.Numeros(Documento : String) : String;
var
  vTexto1 : String;
  i : Integer;
  vAux, vAuxAnt : Integer;
begin
  vAux    := 0;
  vAuxAnt := 1;

  vIgual  := True;
  vTexto1 := '';
  for i := 1 to Length(Documento) do
    begin
     //if TryStrToInt(copy(Documento,i,1)) then
      if (copy(Documento,i,1) = '0') or (copy(Documento,i,1) =  '1') or (copy(Documento,i,1) =  '2') or
         (copy(Documento,i,1) = '3') or (copy(Documento,i,1) =  '4') or (copy(Documento,i,1) =  '5') or
         (copy(Documento,i,1) = '6') or (copy(Documento,i,1) =  '7') or (copy(Documento,i,1) =  '8') or
         (copy(Documento,i,1) = '9') then
        begin
          vTexto1 := vTexto1 + copy(Documento,i,1);
          if length(vTexto1) > 1 then
            if StrToInt(copy(Documento,i,1)) <> vAuxAnt then
              vIgual := False;
          vAuxAnt := StrToInt(copy(Documento,i,1));
        end;
    end;
  Result := vTexto1; 
end;

procedure TfImport.BitBtn1Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vCGC, vCGCAcc : String;
  vExiste : Boolean;
begin
  Screen.Cursor := crHourGlass;

  try
    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Fdm1.Conexao.StartTransaction(TD);

    Fdm1.tPessoa.Close;
    Fdm1.Pessoa.CommandText := Fdm1.ctPessoa;
    Fdm1.tPessoa.Open;

    Fdm1.tAlarme.Close;
    Fdm1.Alarme.CommandText := 'SELECT * FROM ALARME';
    Fdm1.tAlarme.Open;

    Fdm1.tClienteAcc.Open;
    Fdm1.tAlarmeAcc.Open;
    Fdm1.tClienteAcc.First;
    while not Fdm1.tClienteAcc.Eof do
    begin
      //vCGCAcc := Numeros(Fdm1.tClienteAccCPFCNPJ.AsString);
      vExiste := False;
      //if vIgual then
        //begin
  //        CurrencyEdit1.AsInteger := Fdm1.tClienteAccIdCliente.AsInteger;
          Edit1.Text              := Fdm1.tClienteAccNome.AsString;
          Edit2.Text              := Fdm1.tClienteAccValor.AsString;
          if (Fdm1.tPessoa.Locate('NOME',Fdm1.tClienteAccNome.AsString,([LocaseInsensitive]))) then
            begin
              vExiste := True;
  //            CurrencyEdit2.AsInteger := Fdm1.tPessoaID.AsInteger;
              Edit3.Text              := Fdm1.tPessoaNOME.AsString;
              Edit4.Text              := Fdm1.tPessoaVLRPGTO.AsString;
            end;
          GroupBox1.Refresh;
          GroupBox2.Refresh;

       //end
      //else
      //if (Fdm1.tPessoa.Locate('DOCUMENTO',Fdm1.tClienteAccCPFCNPJ.AsString,([LocaseInsensitive]))) and
         //(Fdm1.tPessoaID.AsInteger = Fdm1.tClienteAccIdCliente.AsInteger)  then
        //vExiste := True;
      //if (Fdm1.tClienteAccCPFCNPJ.AsString = '99-999-999/9999-99') then
        //exit;
      //if (Fdm1.tPessoa.Locate('DOCUMENTO',Fdm1.tClienteAccCPFCNPJ.AsString,([LocaseInsensitive]))) and
      //   (Fdm1.tPessoaID.AsInteger = Fdm1.tClienteAccIdCliente.AsInteger)  then
      if vExiste then
        Fdm1.tPessoa.Edit
      else
        begin
          Fdm1.tPessoa.Insert;
          Fdm1.tPessoaID.AsInteger      := Fdm1.Incrementa('ID','PESSOA');
        end;
      Fdm1.tPessoaNOME.AsString     := Fdm1.tClienteAccNome.AsString;
      Fdm1.tPessoaENDERECO.AsString := Fdm1.tClienteAccEndereco.AsString;
      Fdm1.tPessoaBAIRRO.AsString   := Fdm1.tClienteAccBairro.AsString;
      if Fdm1.tClienteAccIdCidade.AsInteger = 5 then
        Fdm1.tPessoaCIDADE.AsInteger := 1;
      Fdm1.tPessoaCEP.AsString       := Fdm1.tClienteAccCEP.AsString;
      Fdm1.tPessoaESTADO.AsString    := 'RS';
      Fdm1.tPessoaFONE.AsString      := Fdm1.tClienteAccFone.AsString;
      Fdm1.tPessoaCEL.AsString       := Fdm1.tClienteAccCelular.AsString;
      Fdm1.tPessoaFAX.AsString       := Fdm1.tClienteAccFax.AsString;
      Fdm1.tPessoaDOCUMENTO.AsString := Fdm1.tClienteAccCPFCNPJ.AsString;
      Fdm1.tPessoaDTNASCIMENTO.AsDateTime := Fdm1.tClienteAccDataNasc.AsDateTime;
      Fdm1.tPessoaCONJUGE.AsString        := Fdm1.tClienteAccConjuge.AsString;
      Fdm1.tPessoaEMAIL.AsString          := Fdm1.tClienteAccEmail.AsString;
      Fdm1.tPessoaOBSERVACAO.AsString     := Fdm1.tClienteAccObservacao.AsString;
      Fdm1.tPessoaDIAPAGAMENTO.AsString   := Fdm1.tClienteAccDiaVencimento.AsString;
      Fdm1.tPessoaVLRPGTO.AsString        := Fdm1.tClienteAccValor.AsString;
      Fdm1.tPessoaCLIENTE.AsString        := '1';
      Fdm1.tPessoa.Post;

  //      CurrencyEdit2.AsInteger := Fdm1.tPessoaID.AsInteger;
        Edit3.Text              := Fdm1.tPessoaNOME.AsString;
        Edit4.Text              := Fdm1.tPessoaVLRPGTO.AsString;
      GroupBox2.Refresh;


      tPessoa.Refresh;
      Fdm1.tAlarmeAcc.Filtered := False;
      Fdm1.tAlarmeAcc.Filter   := 'idcliente = ''' + Fdm1.tClienteAccIdCliente.AsString + '''';
      Fdm1.tAlarmeAcc.Filtered := True;
      while not Fdm1.tAlarmeAcc.Eof do
      begin
        if (Fdm1.tAlarme.Locate('CLIENTE_ID;ID',VarArrayOf([Fdm1.tAlarmeAccIdCliente.AsInteger,Fdm1.tAlarmeAccIdAlarme.AsInteger]),[locaseinsensitive])) then
          Fdm1.tAlarme.Edit
        else
          begin
            Fdm1.tAlarme.Insert;
            Fdm1.tAlarmeCLIENTE_ID.AsInteger := Fdm1.tAlarmeAccIdCliente.AsInteger;
            Fdm1.tAlarmeID.AsInteger         := Fdm1.tAlarmeAccIdAlarme.AsInteger;
          end;
        Fdm1.tAlarmeBAIRRO.AsString         := Fdm1.tAlarmeAccBairro.AsString;
        Fdm1.tAlarmeCIDADE_ID.AsInteger     := 1;
        Fdm1.tAlarmeCONTRASENHA.AsString    := Fdm1.tAlarmeAccContraSenha.AsString;
        Fdm1.tAlarmeENDERECO.AsString       := Fdm1.tAlarmeAccEndereco.AsString;
        Fdm1.tAlarmeFONE1.AsString          := Fdm1.tAlarmeAccFone1.AsString;
        Fdm1.tAlarmeFONE2.AsString          := Fdm1.tAlarmeAccFone2.AsString;
        Fdm1.tAlarmeFONE3.AsString          := Fdm1.tAlarmeAccFone3.AsString;
        Fdm1.tAlarmeMELHOR_TRAJETO.AsString := Fdm1.tAlarmeAccMelhorTrajeto.AsString;
        Fdm1.tAlarmeNOME_EXIBICAO.AsString  := Fdm1.tAlarmeAccNomeLocal.AsString;
        Fdm1.tAlarmeSENHA.AsString          := Fdm1.tAlarmeAccSenha.AsString;
        Fdm1.tAlarme.Post;
        Fdm1.tAlarmeAcc.Next;
      end;
      try
      Fdm1.tPessoa.ApplyUpdates(0);
      Fdm1.tAlarme.ApplyUpdates(0);
      except
        on E:Exception do
          begin
            Fdm1.Conexao.Rollback(TD);
            ShowMessage('Erro ao gravar o registro: ' + E.Message);
          end;

      end;

      Fdm1.tClienteAcc.Next;

    end;
  Fdm1.Conexao.Commit(TD);
  except
    on E:Exception do
      begin
        Fdm1.Conexao.Rollback(TD);
        ShowMessage('Erro ao gravar o registro: ' + E.Message);
      end;
  end;

//  end;

{  try
  TD.TransactionID  := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  Fdm1.Conexao.StartTransaction(TD);
  Fdm1.tPessoa.ApplyUpdates(0);
  Fdm1.tAlarme.ApplyUpdates(0);

  Fdm1.Conexao.Commit(TD);
  except
    on E:Exception do
      begin
        Fdm1.Conexao.Rollback(TD);
        ShowMessage('Erro ao gravar o registro: ' + E.Message);
      end;
  end;}

  Fdm1.tPessoa.Close;
  Fdm1.tAlarme.Close;
  Fdm1.Alarme.CommandText := 'SELECT * FROM ALARME WHERE CLIENTE_ID = :C1 ORDER BY CLIENTE_ID, ID';
  ShowMessage('Final da importação!');
  Screen.Cursor := crDefault;
end;

procedure TfImport.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
end;

procedure TfImport.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
