unit uPrevQNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils, UDm1, Dialogs, Grids, DBGrids, SMDBGrid,
  ExtCtrls, StdCtrls, Buttons, JvLookup, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, JvToolEdit, JvEdit, JvSpinEdit;

type
  TfPrevQNC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    vPessoaCurso: TSQLDataSet;
    pPessoaCurso: TDataSetProvider;
    tPessoaCurso: TClientDataSet;
    dsPessoaCurso: TDataSource;
    tPessoaCursoALUNO: TStringField;
    tPessoaCursoCURSO: TStringField;
    tPessoaCursoDTINICIO: TDateField;
    tPessoaCursoDTFINAL: TDateField;
    BitBtn1: TBitBtn;
    tPessoaCursoPESSOA_ID: TIntegerField;
    tPessoaCursoCURSO_ID: TIntegerField;
    tPessoaCursoNOMEPAI: TStringField;
    tPessoaCursoNOMEMAE: TStringField;
    tPessoaCursoRG: TStringField;
    tPessoaCursoDTNASCIMENTO: TDateField;
    tPessoaCursoNATUR_CID: TStringField;
    tPessoaCursoNATUR_UF: TStringField;
    ComboBox1: TComboBox;
    Label4: TLabel;
    tPessoaCursoCARGAHORARIA: TIntegerField;
    Panel2: TPanel;
    Memo1: TMemo;
    Label2: TLabel;
    tPessoaCursoTURMA: TStringField;
    tPessoaCursoMATRICULA: TIntegerField;
    Label3: TLabel;
    JvSpinEdit1: TJvSpinEdit;
    Label5: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    tPessoaCursoEMPRESA: TIntegerField;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Label6: TLabel;
    tPessoaCursoFONE: TStringField;
    tPessoaCursoCELULAR: TStringField;
    BitBtn4: TBitBtn;
    tPessoaCursoENDERECO: TStringField;
    tPessoaCursoCIDADE: TStringField;
    tPessoaCursoESTADO: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Memo2: TMemo;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    tPessoaCursoDOCUMENTO: TStringField;
    tPessoaCursoREGISTRO_DPF: TStringField;
    tPessoaCursoSITUACAO: TStringField;
    tPessoaCursoVALIDADE_CMA: TDateField;
    Label9: TLabel;
    Edit2: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBLookupCombo2Enter(Sender: TObject);
    procedure JvDBLookupCombo2Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    fDm1: TDm1;
  public
    { Public declarations }
  end;

var
  fPrevQNC: TfPrevQNC;
  ct: String;

implementation

uses uRelQNC, uRelComprovante, URelPessoas, uRelAtacLista;

{$R *.dfm}

procedure TfPrevQNC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPrevQNC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  ct := vPessoaCurso.CommandText;
  fdm1.tCurso.IndexFieldNames := 'NOME';
  fdm1.tCurso.Open;

  if not fDm1.tParametro.Active then
    fDm1.tParametro.Open;
  if fDm1.tParametroASSINATURA.AsString <> '' then
    Memo2.Text := fDm1.tParametroASSINATURA.AsString;
end;

procedure TfPrevQNC.FormCreate(Sender: TObject);
begin
  fDm1 := TDm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  fdm1.ctPessoa := fdm1.Pessoa.CommandText;
  fdm1.Pessoa.CommandText := fDm1.ctPessoa + ' WHERE PESSOA = ''J''';
  fdm1.tPessoa.Open;
end;

procedure TfPrevQNC.BitBtn1Click(Sender: TObject);
begin
  tPessoaCurso.Close;
  vPessoaCurso.CommandText := ct;
  if JvDBLookupCombo1.KeyValue > 0 then
    vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' AND CURSO_ID = ' + JvDBLookupCombo1.Value;
  if JvDBLookupCombo2.KeyValue > 0 then
    vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' AND EMPRESA = ' + JvDBLookupCombo2.Value;
  if Edit1.Text <> '' then
    vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' AND TURMA LIKE ''%' + Edit1.Text + '%''';
  vPessoaCurso.CommandText := vPessoaCurso.CommandText + ' ORDER BY ALUNO';
  tPessoaCurso.Open;
end;

procedure TfPrevQNC.JvDBLookupCombo2Enter(Sender: TObject);
begin
  fdm1.tPessoa.IndexFieldNames := 'NOME';
end;

procedure TfPrevQNC.JvDBLookupCombo2Change(Sender: TObject);
begin
  if JvDBLookupCombo2.KeyValue > 0 then
  begin
    fDm1.qInc.Close;
    fDm1.qInc.SQL.Text := 'SELECT NOME FROM CIDADE WHERE ID = ' + fDm1.tPessoaCIDADE.AsString;
    fDm1.qInc.Open;
    Memo1.Clear;
    Memo1.Lines.Add('A ' + fDm1.tPessoaNOME.AsString);
    Memo1.Lines.Add(fDm1.tPessoaENDERECO.AsString + ', ' + fDm1.tPessoaENDNUMERO.AsString);
    Memo1.Lines.Add(fDm1.qInc.FieldByName('NOME').AsString + ' - ' + fDm1.tPessoaESTADO.AsString);
    fDm1.qInc.Close;
  end
  else
  begin
    Memo1.Clear;
    Memo1.Lines.Add('A DELESP');
    Memo1.Lines.Add('A/C COMISSÃO DE VISTORIA');
    Memo1.Lines.Add('Av. Ipiranga, nº 1365');
    Memo1.Lines.Add('Porto Alegre - RS');
  end;
end;

procedure TfPrevQNC.BitBtn3Click(Sender: TObject);
var
  texto, txt, arquivo: String;
  i: Word;
  F: TextFile;
begin
  if fDm1.tCursoTIPO.AsString = 'F' then
    arquivo := 'c:\Curso.txt'
  else
  begin
    ShowMessage('Não é um curso de formação!');
    Exit;
  end;

  AssignFile(F,arquivo);
  ReWrite(F);

  fdm1.tPessoa.IndexFieldNames := 'ID';
  fdm1.tCidade.IndexFieldNames := 'ID';
  fdm1.tPessoa.Filtered := False;
  if not fdm1.tCidade.Active then
    fdm1.tCidade.Open;

  tPessoaCurso.First;
  while not tPessoaCurso.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fdm1.tPessoa.Locate('ID',tPessoaCursoPESSOA_ID.AsInteger,[loCaseInsensitive]);
      texto := fDm1.trataString(fDm1.tEmpresaDOCUMENTO.AsString,2);

      txt := fDm1.trataString(Copy(tPessoaCursoALUNO.AsString,1,50),1);
      for i := 1 to 50 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;
      texto := texto + FormatDateTime('YYYYMMDD',tPessoaCursoDTNASCIMENTO.AsDateTime);

      txt := fDm1.trataString(Copy(tPessoaCursoNOMEPAI.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(tPessoaCursoNOMEMAE.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      texto := texto + fDm1.trataString(Copy(fdm1.tPessoaDOCUMENTO.AsString,1,14),2);
      texto := texto + fdm1.tPessoaSEXO.AsString; //(1 = M; 2 = F);

      fdm1.tCidade.FindKey([fdm1.tPessoaNATURALIDADE_CID.AsInteger]);
      txt := fDm1.trataString(Copy(fdm1.tCidadeNOME.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;
      texto := texto + Copy(fdm1.tPessoaNATURALIDADE_UF.AsString,1,2);
      texto := texto + 'BRASIL                        ';

      txt := Copy(fdm1.tPessoaRG.AsString,1,15);
      for i := 1 to 15 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := 'SSP';
      for i := 1 to 12 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(fdm1.tPessoaENDERECO.AsString + ', ' + fdm1.tPessoaENDNUMERO.AsString + ' - ' + fdm1.tPessoaENDCOMPLEMENTO.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(fdm1.tPessoaBAIRRO.AsString,1,30),1);
      for i := 1 to 30 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(fdm1.tPessoaCEP.AsString,1,9),2);
      for i := 1 to 8 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      fdm1.tCidade.FindKey([fdm1.tPessoaCIDADE.AsInteger]);
      txt := fDm1.trataString(Copy(fdm1.tCidadeNOME.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      texto := texto + fdm1.tPessoaESTADO.AsString;

      txt := Copy(fdm1.tPessoaFONE.AsString,1,12);
      for i := 1 to 12 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      texto := texto + formatDateTime('yyyymmdd',tPessoaCursoDTFINAL.AsDateTime) + 'SR/DPF/RS  ';
      writeLn(F,texto);
    end;
    tPessoaCurso.Next;
  end;
  CloseFile(F);
  fdm1.tPessoa.Filtered := True;
  ShowMessage('Arquivo "' + arquivo + '" foi gerado com sucesso!');
end;

procedure TfPrevQNC.BitBtn5Click(Sender: TObject);
var
  texto, txt, arquivo: String;
  i: Word;
  F: TextFile;
  nulo: Boolean;
begin
  nulo := False;
  if (fDm1.tCursoTIPO.AsString = 'R') and (fDm1.tCursoRECICLAGEM_COD.IsNull) then
  begin
    ShowMessage('Curso da reciclagem deve ser selecionado!');
    Exit;
  end
  else
    arquivo := 'c:\Recicla.txt';

  AssignFile(F,arquivo);
  ReWrite(F);

  fdm1.tPessoa.IndexFieldNames := 'ID';
  fdm1.tCidade.IndexFieldNames := 'ID';
  fdm1.tPessoa.Filtered := False;
  if not fdm1.tCidade.Active then
    fdm1.tCidade.Open;

  tPessoaCurso.First;
  while not tPessoaCurso.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      fdm1.tPessoa.Locate('ID',tPessoaCursoPESSOA_ID.AsInteger,[loCaseInsensitive]);
      texto := fdm1.tCursoRECICLAGEM_COD.AsString;
      texto := texto + fDm1.trataString(fDm1.tEmpresaDOCUMENTO.AsString,2);

      txt := fDm1.trataString(Copy(tPessoaCursoALUNO.AsString,1,50),1);
      for i := 1 to 50 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;
      texto := texto + FormatDateTime('YYYYMMDD',tPessoaCursoDTNASCIMENTO.AsDateTime);

      txt := fDm1.trataString(Copy(tPessoaCursoNOMEPAI.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(tPessoaCursoNOMEMAE.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      texto := texto + fDm1.trataString(Copy(fDm1.tPessoaDOCUMENTO.AsString,1,14),2);
      texto := texto + fDm1.tPessoaSEXO.AsString; //(1 = M; 2 = F);

      fdm1.tCidade.FindKey([fdm1.tPessoaNATURALIDADE_CID.AsInteger]);
      txt := fDm1.trataString(Copy(fdm1.tCidadeNOME.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;
      texto := texto + Copy(fdm1.tPessoaNATURALIDADE_UF.AsString,1,2);
      texto := texto + 'BRASIL                        ';

      txt := Copy(fdm1.tPessoaRG.AsString,1,15);
      for i := 1 to 15 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := 'SSP';
      for i := 1 to 12 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

//aqui é para reciclagem
      txt := Copy(fdm1.tPessoaREGISTRO_DPF.AsString,1,15);
      for i := 1 to 15 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := Copy(fdm1.tPessoaEXP_REGISTRO_DPF.AsString,1,11);
      for i := 1 to 11 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;
//
      txt := fDm1.trataString(Copy(fdm1.tPessoaENDERECO.AsString + ', ' + fdm1.tPessoaENDNUMERO.AsString + ' - ' + fdm1.tPessoaENDCOMPLEMENTO.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(fdm1.tPessoaBAIRRO.AsString,1,30),1);
      for i := 1 to 30 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      txt := fDm1.trataString(Copy(fdm1.tPessoaCEP.AsString,1,9),2);
      for i := 1 to 8 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      fdm1.tCidade.FindKey([fdm1.tPessoaCIDADE.AsInteger]);
      txt := fDm1.trataString(Copy(fdm1.tCidadeNOME.AsString,1,40),1);
      for i := 1 to 40 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

      texto := texto + fdm1.tPessoaESTADO.AsString;

      txt := Copy(fdm1.tPessoaFONE.AsString,1,12);
      for i := 1 to 12 - Length(txt) do
        txt := txt + ' ';
      texto := texto + txt;

// aqui é para reciclagem
      if Fdm1.tPessoaDT_FORMACAO.IsNull then
      begin
        texto := texto + '        ';
        nulo := True;
      end
      else
        texto := texto + formatDateTime('yyyymmdd',Fdm1.tPessoaDT_FORMACAO.AsDateTime);
//
      texto := texto + formatDateTime('yyyymmdd',tPessoaCursoDTFINAL.AsDateTime);

      texto := texto + 'NNN';

      writeLn(F,texto);
    end;
    tPessoaCurso.Next;
  end;
  CloseFile(F);
  if nulo then
  begin
    ShowMessage('Arquivo "' + arquivo + '" gerado!');
    ShowMessage('Existe aluno com a data de formação em branco!');
  end
  else
    ShowMessage('Arquivo "' + arquivo + '" foi gerado com sucesso!');
end;

procedure TfPrevQNC.BitBtn6Click(Sender: TObject);
begin
  if Panel2.Visible then
  begin
    if Tag = 1 then
    begin
      if (not tPessoaCurso.IsEmpty) and (SMDBGrid1.SelectedRows.Count > 0) then
      begin
        fRelQNC := TfRelQNC.Create(Self);
        fRelQNC.fDm1 := fDm1;
        case ComboBox1.ItemIndex of
          0: fRelQNC.RLReport4.Preview;
          1: fRelQNC.RLReport2.Preview;
          2: fRelQNC.RLReport3.Preview;
          3: fRelQNC.RLReport5.Preview;
          4: fRelQNC.RLReport4.Preview;
          else
            ShowMessage('Nenhum tipo de relatório foi selecionado!');
        end;
        fRelQNC.Destroy;
      end;
    end
    else
    begin
      fRelAtacLista := TfRelAtacLista.Create(Self);
      fRelAtacLista.fDm1 := fDm1;
      case ComboBox1.ItemIndex of
        0: fRelAtacLista.RLReport1.Preview;
        1: fRelAtacLista.RLReport1.Preview;
      end;
      fRelAtacLista.Free;
    end;
  end
  else
  begin
    fRelPessoas := TfRelPessoas.Create(Self);
    fRelPessoas.vImpSelecionados := CheckBox1.Checked;
    fRelPessoas.RLReport3.PreviewModal;
    FreeAndNil(fRelPessoas);
  end;
end;

end.
