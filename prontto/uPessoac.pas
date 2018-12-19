unit uPessoaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Menus,
  DBGrids, JvDBCtrl, DBCtrls, UCBase, dbxpress, FMTBcd, DB, SqlExpr, JvCombobox, JvComponent, JvColorBox, SMDBGrid, UDm1, rsDBUtils,
  NxCollection;

type
  TfPessoaC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    UCControls1: TUCControls;
    qDeleta: TSQLQuery;
    Label1: TLabel;
    JvComboBox1: TJvComboBox;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    JvColorSquare4: TJvColorSquare;
    SMDBGrid1: TSMDBGrid;
    CheckBox2: TCheckBox;
    BitBtn4: TBitBtn;
    CheckBox3: TCheckBox;
    JvColorSquare1: TJvColorSquare;
    BitBtn7: TBitBtn;
    Edit2: TEdit;
    BitBtn5: TBitBtn;
    PopupMenu1: TPopupMenu;
    Selecionado1: TMenuItem;
    odos1: TMenuItem;
    NxButton1: TNxButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Selecionado1Click(Sender: TObject);
    procedure odos1Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;

    ColunaOrdenada: String;
    procedure Consulta;
  public
    { Public declarations }
  end;

var
  fPessoaC: TfPessoaC;

implementation

uses uPessoa, UMenu, UDmCons, UPrevPessoa, URelPessoas, URelPessoasContrato, URelPessoaFicha, uImportaAlunos;

{$R *.dfm}

procedure TfPessoaC.Consulta;
var
  vPessoa: String;
begin
  Fdm1.cdsPessoaCons.Close;
  vPessoa := Fdm1.ctPessoaC + ' WHERE 0 = 0';

  if Edit2.Text <> '' then
  begin
     vPessoa :=  vPessoa + ' AND (P.FONE LIKE ''%' + Edit2.Text + '%'' OR P.FAX LIKE ''%' +
                 Edit2.Text + '%'' OR P.CEL LIKE ''%' + Edit2.Text + '%'')';
  end
  else
  if (Edit1.Text <> '') and (Edit1.Text <> '[DIGITE O NOME E PRESSIONE F3 PARA LOCALIZAR]') then
  begin
    case  JvComboBox1.ItemIndex of
      0 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%''';
      1 : vPessoa :=  vPessoa + ' AND P.DOCUMENTO LIKE ''%' + Edit1.Text + '%''';
      2 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and Cliente = ''1''';
      3 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and Fornecedor = ''1''';
      4 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and Transportadora = ''1''';
      5 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and Vendedor = ''1''';
      6 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and Funcionario = ''1''';
      7 : vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and Aluno = ''1''';
    end;
  end
  else
    case  JvComboBox1.ItemIndex of
      2 : vPessoa :=  vPessoa + ' AND Cliente = ''1''';
      3 : vPessoa :=  vPessoa + ' AND Fornecedor = ''1''';
      4 : vPessoa :=  vPessoa + ' AND Transportadora = ''1''';
      5 : vPessoa :=  vPessoa + ' AND Vendedor = ''1''';
      6 : vPessoa :=  vPessoa + ' AND Funcionario = ''1''';
      7 : vPessoa :=  vPessoa + ' AND Aluno = ''1''';
    end;
  if CheckBox1.Checked then
    vPessoa := vPessoa + ' AND (STATUS = ''1'')';
  vPessoa :=  vPessoa + ' ORDER BY P.NOME';
  Fdm1.sdsPessoaCons.CommandText := vPessoa;
  Fdm1.cdsPessoaCons.Open;
  DmCons.qCidade.Open;
  DmCons.qTipoCobranca.Open;
  Dmcons.qBanco.Open;
  DmCons.qVendedor.Open;
  Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.cdsPessoaCons.RecordCount);
end;

procedure TfPessoaC.BitBtn1Click(Sender: TObject);
begin
  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := Fdm1.ctPessoa + ' WHERE P.ID = :codigo';
  Fdm1.Pessoa.Params[0].AsInteger := 0;
  Fdm1.tPessoa.Open;
  Fdm1.tPessoa.Insert;
  Fdm1.tPessoaID.AsInteger := Fdm1.ProximaSequencia('PESSOA');

  Fdm1.cdsPessoaFoto.Close;
  Fdm1.sdsPessoaFoto.ParamByName('PESSOA').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.cdsPessoaFoto.Open;

  fPessoa := TfPessoa.Create(Self);
  fPessoa.Dm1 := Fdm1;
  fPessoa.ShowModal;
end;

procedure TfPessoaC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F3) or (Key = 13)  then
    Consulta;
end;

procedure TfPessoaC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfPessoaC.BitBtn2Click(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  if not fDm1.cdsPessoaCons.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      try
        TD.TransactionID  := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        Fdm1.Conexao.StartTransaction(TD);
        qDeleta.Close;
        qDeleta.SQL.Clear;
        qDeleta.SQL.Add('Delete from PESSOA_ATENDIMENTO where PESSOA_ID = ' + fDm1.cdsPessoaConsID.AsString);
        qDeleta.ExecSQL();

        qDeleta.Close;
        qDeleta.SQL.Clear;
        qDeleta.SQL.Add('Delete from PESSOA_SERVICO where PESSOA_ID = ' + fDm1.cdsPessoaConsID.AsString);
        qDeleta.ExecSQL();

        qDeleta.Close;
        qDeleta.SQL.Clear;
        qDeleta.SQL.Add('Delete from ALARME where CLIENTE_ID = ' + fDm1.cdsPessoaConsID.AsString);
        qDeleta.ExecSQL();

        qDeleta.Close;
        qDeleta.SQL.Clear;
        qDeleta.SQL.Add('Delete from TELEFONE where CODPESSOA = ' + fDm1.cdsPessoaConsID.AsString);
        qDeleta.ExecSQL();

        fdm1.tPessoa.Close;
        fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdm1.cdsPessoaConsID.AsString;
        fdm1.tPessoa.Open;

        Fdm1.tPessoa.Delete;
        Fdm1.tPessoa.ApplyUpdates(0);
        Fdm1.Conexao.Commit(TD);

        BitBtn7Click(Sender);
      except
        on E:Exception do
        begin
          Fdm1.Conexao.Rollback(TD);
          ShowMessage('Erro ao tentar excluir o registro : ' + E.Message);
        end;
      end;
    end;
end;

procedure TfPessoaC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  ColunaOrdenada := 'NOME';
  Fdm1.tPessoa.IndexFieldNames := ColunaOrdenada;
end;

procedure TfPessoaC.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfPessoaC.BitBtn3Click(Sender: TObject);
begin
//  fDm1.tPessoaCons.IndexFieldNames := 'BAIRRO;NOME';
  if fDm1.cdsPessoaCons.IsEmpty then
    Exit;
  fRelPessoas := TfRelPessoas.Create(self);
  fRelPessoas.fDm1 := fDm1;
  fRelPessoas.RlReport1.PreviewModal;
  FreeAndNil(fRelPessoas);
end;

procedure TfPessoaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.cdsPessoaCons.IsEmpty then
  begin
    fdm1.tPessoa.Close;
    fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdm1.cdsPessoaConsID.AsString;
    fdm1.tPessoa.Open;

    fPessoa := TfPessoa.Create(Self);
    fPessoa.Dm1 := Fdm1;
    fPessoa.EscondeAbas(False);

    Fdm1.cdsPessoaFoto.Close;
    Fdm1.sdsPessoaFoto.ParamByName('PESSOA').AsInteger := Fdm1.tPessoaID.AsInteger;
    Fdm1.cdsPessoaFoto.Open;

    Fdm1.tPessoa.Edit;
    fPessoa.ShowModal;
    fPessoa.Free;
  end;
end;

procedure TfPessoaC.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Fdm1.cdsPessoaConsID.AsInteger > 0) then
  begin
    if Fdm1.cdsPessoaConsSTATUS.AsString = '0' then
      AFont.Color := clRed
    else
    if Fdm1.cdsPessoaConsSTATUS.AsString = '2' then
      Background  := clFuchsia;
    if fdm1.cdsPessoaConsID_INTERNET.AsInteger > 0 then
      AFont.Color := clBlue;
  end;
end;

procedure TfPessoaC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Word;
begin
  ColunaOrdenada := Column.FieldName;
  Fdm1.cdsPessoaCons.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
  Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
  Edit1.SelectAll;
end;

procedure TfPessoaC.CheckBox1Click(Sender: TObject);
begin
  Fdm1.tPessoa.Filtered := False;
  if CheckBox1.Checked then
  begin
    CheckBox2.Checked := False;
    CheckBox3.Checked := False;
    Fdm1.tPessoa.Filter := 'STATUS = 1';
    Fdm1.tPessoa.Filtered := True;
  end;
  if Fdm1.tPessoa.Active then
    Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.tPessoa.RecordCount);
end;

procedure TfPessoaC.CheckBox2Click(Sender: TObject);
begin
  Fdm1.tPessoa.Filtered := False;
  if CheckBox2.Checked then
  begin
    CheckBox1.Checked := False;
    CheckBox3.Checked := False;
    Fdm1.tPessoa.Filter   := 'STATUS = 0';
    Fdm1.tPessoa.Filtered := True;
  end;
  if Fdm1.tPessoa.Active then
    Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.tPessoa.RecordCount);
end;

procedure TfPessoaC.BitBtn4Click(Sender: TObject);
var
  IDPessoa: Integer;
begin
  fdm1.tPessoa.Close;
  fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdm1.cdsPessoaConsID.AsString;
  fdm1.tPessoa.Open;

  Fdm1.tPessoa.First;

  Fdm1.tPlanoSaude.Close;
  Fdm1.tPlanoSaude.Open;

  Fdm1.tPessoaServico.Close;
  Fdm1.PessoaServico.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaServico.Open;

  Fdm1.tTipoCobranca.Close;
  Fdm1.TipoCobranca.ParamByName('Codigo').AsInteger := Fdm1.tPessoaCODTIPOCOBRANCA.AsInteger;
  Fdm1.tTipoCobranca.Open;

  Fdm1.tPessoa_Curso.Close;
  Fdm1.Pessoa_Curso.ParamByName('PESSOA_ID').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoa_Curso.Open;

  fRelPessoaFicha := TfRelPessoaFicha.Create(self);
  fRelPessoaFicha.Dm1 := Fdm1;
  fRelPessoaFicha.RlReport1.PreviewModal;
  FreeAndNil(fRelPessoaFicha);

  Fdm1.tPessoa.Close;

  Fdm1.tPlanoSaude.Close;
  Fdm1.tPessoaServico.Close;
  Fdm1.tTipoCobranca.Close;
  Fdm1.tPessoa_Curso.Close;
end;

procedure TfPessoaC.CheckBox3Click(Sender: TObject);
begin
  Fdm1.tPessoa.Filtered := False;
  if CheckBox3.Checked then
  begin
    CheckBox1.Checked   := False;
    CheckBox2.Checked   := False;
    Fdm1.tPessoa.Filter := 'STATUS = 2';
    Fdm1.tPessoa.Filtered := True;
  end;
  if Fdm1.tPessoa.Active then
    Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.tPessoa.RecordCount);
end;

procedure TfPessoaC.BitBtn7Click(Sender: TObject);
begin
  Consulta;
end;

procedure TfPessoaC.Edit1Change(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TfPessoaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfPessoaC.BitBtn5Click(Sender: TObject);
begin
  fImportaAlunos := TfImportaAlunos.Create(Self);
  fImportaAlunos.fDm1 := fDm1;
  fImportaAlunos.ShowModal;
end;

procedure TfPessoaC.Selecionado1Click(Sender: TObject);
begin
  if not Fdm1.cdsPessoaCons.IsEmpty then
  begin
    fdm1.tPessoa.Close;
    fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdm1.cdsPessoaConsID.AsString;
    fdm1.tPessoa.Open;

    fRelPessoas := TfRelPessoas.Create(Self);
    fRelPessoas.fDm1 := fDm1;
    fRelPessoas.RLReport2.PreviewModal;
    FreeAndNil(fRelPessoas);
  end;
end;

procedure TfPessoaC.odos1Click(Sender: TObject);
begin
  fDm1.cdsPessoaCons.First;
  while not Fdm1.cdsPessoaCons.Eof do
  begin
    fdm1.tPessoa.Close;
    fdm1.Pessoa.CommandText := fdm1.ctPessoa + ' WHERE P.ID = ' + fdm1.cdsPessoaConsID.AsString;
    fdm1.tPessoa.Open;

    fRelPessoas := TfRelPessoas.Create(Self);
    fRelPessoas.fDm1 := fDm1;
    fRelPessoas.RLReport2.Print;
    FreeAndNil(fRelPessoas);
    Fdm1.cdsPessoaCons.Next;
  end;
end;

end.
