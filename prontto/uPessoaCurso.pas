unit uPessoaCurso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,
  JvLookup, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb;

type
  TfPessoaCurso = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label1: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    Label8: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    JvDBComboBox2: TJvDBComboBox;
    Label11: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    Label13: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure JvDBLookupCombo2Enter(Sender: TObject);
    procedure JvDBLookupCombo3Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure JvDBLookupCombo4Enter(Sender: TObject);
    procedure JvDBComboBox2Exit(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure gravaCReceber;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPessoaCurso: TfPessoaCurso;

implementation

uses UCurso, uDmCons, UContasReceber;


{$R *.dfm}

procedure TfPessoaCurso.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoa_Curso.Cancel;
  Close;
end;

procedure TfPessoaCurso.BitBtn1Click(Sender: TObject);
begin
  if JvDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Curso deve ser preenchido!');
    Exit;
  end;
  if fDm1.tPessoa_CursoSITUACAO.IsNull then
  begin
    ShowMessage('Situação deve ser preenchida!');
    Exit;
  end;
  Fdm1.tPessoa_CursoNOME.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPessoa_Curso.Post;
  Fdm1.tPessoa_Curso.ApplyUpdates(0);
  Close;
end;

procedure TfPessoaCurso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoa_Curso.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoa_Curso.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfPessoaCurso.FormShow(Sender: TObject);
begin
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,fdm1.tCReceberParc,Name);
  oDBUtils.ActiveDataSet(True,fdm1.cdsVendedor,Name);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DmCons.qCondPgto.Open;
  fDM1.MontaSQL_CURSO('','NOME');
end;

procedure TfPessoaCurso.Label7Click(Sender: TObject);
begin
  fCurso := TfCurso.Create(Self);
  fCurso.ShowModal;
  Fdm1.tCurso.Close;
  Fdm1.tCurso.Open;
end;

procedure TfPessoaCurso.JvDBLookupCombo1Enter(Sender: TObject);
begin
  dm1.tCurso.IndexFieldNames := 'NOME';
end;

procedure TfPessoaCurso.JvDBLookupCombo1Change(Sender: TObject);
begin
  fdm1.tPessoa_CursoCARGAHORARIA.AsString := fdm1.tCursoCARGA_HORARIA.AsString;
  Fdm1.tPessoa_CursoVLRCURSO.AsCurrency   := Fdm1.tCursoVALOR.AsCurrency;
end;

procedure TfPessoaCurso.JvDBLookupCombo2Enter(Sender: TObject);
begin
  fdm1.tFormaPgto.IndexFieldNames := 'DESCRICAO';
end;

procedure TfPessoaCurso.JvDBLookupCombo3Enter(Sender: TObject);
begin
  DmCons.qCondPgto.IndexFieldNames := 'NOME';
end;

procedure TfPessoaCurso.gravaCReceber;
var
  vDtVenc, vDtMov, vDtVenc1 : TDateTime;
  vNumNota, vParcela: Integer;
  vVlrParcela, vPercComissao, vVlrCalc, vVlrResto: Real;
  vCodCliente, vQtdParcelas: Integer;
  ano, dia, mes, diaOrig: Word;
  numCarteira: String;
  vCodBanco, vCodTipoCobranca, vCodVendedor: Integer;
begin
  vDtVenc1 := Date;
  vDtVenc  := Date;
  vDtMov   := Date;

  vNumNota      := Fdm1.tPessoa_CursoID.AsInteger;
  vCodCliente   := Fdm1.tPessoa_CursoPESSOA_ID.AsInteger;
  vCodBanco     := 0;
  vCodVendedor  := 0;
  vPercComissao := 0;
  numCarteira   := '';
  vCodTipoCobranca := Fdm1.tPessoa_CursoFORMAPGTO_ID.AsInteger;
  if DmCons.qCondPgtoFIXARDIA.AsString = 'N' then
  begin
    Fdm1.tCondPgtoIt.Close;
    Fdm1.CondPgtoIt.Params[0].AsInteger := DmCons.qCondPgtoID.AsInteger;
    Fdm1.tCondPgtoIt.Open;
    vQtdParcelas := Fdm1.tCondPgtoIt.RecordCount;
  end
  else
    vQtdParcelas := DmCons.qCondPgtoQTDPARCELAS.AsInteger;

  vVlrParcela := (Fdm1.tPessoa_CursoVLRCURSO.AsCurrency - Fdm1.tPessoa_CursoVLRDESCONTO.AsCurrency - Fdm1.tPessoa_CursoENTRADA.AsCurrency)/ vQtdParcelas;
  vVlrParcela := StrToFloat(FormatFloat('0.00',vVlrParcela));
  vVlrCalc    := vVlrParcela * vQtdParcelas + Fdm1.tPessoa_CursoENTRADA.AsCurrency + Fdm1.tPessoa_CursoVLRDESCONTO.AsCurrency;
  if vVlrCalc <> Fdm1.tPessoa_CursoVLRCURSO.AsCurrency then
    vVlrResto := Fdm1.tPessoa_CursoVLRCURSO.AsCurrency - vVlrCalc;

  if Fdm1.tPessoa_CursoENTRADA.AsCurrency > 0 then
  begin
    Fdm1.tCReceberParc.Insert;
    Fdm1.tCReceberParcNUMCRECEBER.AsInteger   := Fdm1.Incrementa('NUMCRECEBER','CRECEBERPARC');
    Fdm1.tCReceberParcCODCLIENTE.AsInteger    := vCodCliente;
    Fdm1.tCReceberParcPARCELA.AsString        := '00';
    Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime := Date;
    Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime  := Date;
    Fdm1.tCReceberParcCODCONDPGTO.AsInteger   := DmCons.qCondPgtoID.AsInteger;
    Fdm1.tCReceberParcNUMNOTA.AsInteger       := vNumNota;
    Fdm1.tCReceberParcQUITADO.AsString        := 'N';
    Fdm1.tCReceberParcTIPODOC.AsString        := 'CS';
    Fdm1.tCReceberParcVLRRESTANTE.AsFloat     := Fdm1.tPessoa_CursoENTRADA.AsCurrency;
    Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat   := StrToFloat(FormatFloat('0.00',Fdm1.tPessoa_CursoENTRADA.AsCurrency));
    Fdm1.tCReceberParcCODBANCO.AsInteger      := vCodBanco;
    Fdm1.tCReceberParcCODTIPOCOBRANCA.AsInteger := vCodTipoCobranca;
    Fdm1.tCReceberParcCODVENDEDOR.AsInteger   := vCodVendedor;
    Fdm1.tCReceberParcPERCCOMISSAO.AsFloat    := vPercComissao;
    fdm1.tCReceberParcNUMCARTEIRA.AsString    := numCarteira;
    Fdm1.tCReceberParc.Post;
  end;

  DecodeDate(vDtVenc,Ano,Mes,Dia);
  diaOrig := dia;
  Mes := Mes - 1;
  for vParcela := 1 to vQtdParcelas do
  begin
    Fdm1.tCReceberParc.Insert;
    Fdm1.tCReceberParcNUMCRECEBER.AsInteger := Fdm1.Incrementa('NUMCRECEBER','CRECEBERPARC');
    Fdm1.tCReceberParcCODCLIENTE.AsInteger  := vCodCliente;
    if vParcela < 10 then
      Fdm1.tCReceberParcPARCELA.AsString := '0' + IntToStr(vParcela)
    else
      Fdm1.tCReceberParcPARCELA.AsString := IntToStr(vParcela);
    if DmCons.qCondPgtoFIXARDIA.AsString = 'N' then
    begin
      Fdm1.tCondPgtoIt.RecNo := vParcela;
      vDtVenc := vDtVenc1 + Fdm1.tCondPgtoItQTDDIAS.AsInteger;
    end
    else
    begin
      dia := diaOrig;
      Mes := Mes + 1;
      if Mes > 12 then
      begin
        Mes := 01;
        Ano := Ano + 1;
      end;
      if dia > 28 then
        case mes of
          2: dia := 28;
          4,6,9,11: dia := 30;
        end;
      vDtVenc := EncodeDate(ano,mes,dia);
    end;
    Fdm1.tCReceberParcDTVENCIMENTO.AsDateTime := vDtVenc;
    Fdm1.tCReceberParcDTMOVIMENTO.AsDateTime  := vDtMov;
    Fdm1.tCReceberParcCODCONDPGTO.AsInteger   := DmCons.qCondPgtoID.AsInteger;
    Fdm1.tCReceberParcNUMNOTA.AsInteger       := vNumNota;
    Fdm1.tCReceberParcQUITADO.AsString        := 'N';
    Fdm1.tCReceberParcTIPODOC.AsString        := 'CS';
    Fdm1.tCReceberParcVLRRESTANTE.AsFloat     := StrToFloat(FormatFloat('0.00',vVlrParcela));
    Fdm1.tCReceberParcVLRVENCIMENTO.AsFloat   := StrToFloat(FormatFloat('0.00',vVlrParcela));
    Fdm1.tCReceberParcCODBANCO.AsInteger      := vCodBanco;
    Fdm1.tCReceberParcCODTIPOCOBRANCA.AsInteger := vCodTipoCobranca;
    Fdm1.tCReceberParcCODVENDEDOR.AsInteger   := vCodVendedor;
    Fdm1.tCReceberParcPERCCOMISSAO.AsFloat    := vPercComissao;
    fdm1.tCReceberParcNUMCARTEIRA.AsString    := numCarteira;
    Fdm1.tCReceberParc.Post;
  end;
  Fdm1.tCReceberParc.ApplyUpdates(0);
end;

procedure TfPessoaCurso.BitBtn3Click(Sender: TObject);
begin
  gravaCReceber;
//  if Fdm1.tPessoa_CursoENTRADA.AsCurrency > 0 then
//  begin
    fContasReceber := TfContasReceber.Create(Self);
    fContasReceber.vPessoa := fDm1.tPessoaID.AsInteger;
    fContasReceber.ShowModal;
//  end;
  BitBtn1.Click;
end;

procedure TfPessoaCurso.JvDBLookupCombo4Enter(Sender: TObject);
begin
  fDm1.cdsVendedor.IndexFieldNames := 'NOME';
end;

procedure TfPessoaCurso.JvDBComboBox2Exit(Sender: TObject);
begin
  Label14.Visible := fdm1.tPessoa_CursoSITUACAO.AsString = 'DES';
  DBEdit5.Visible := fdm1.tPessoa_CursoSITUACAO.AsString = 'DES';
end;

end.
