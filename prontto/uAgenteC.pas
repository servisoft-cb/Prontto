unit uAgenteC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvDBCtrl, UCBase, UDm1, rsDBUtils, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TfAgenteC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    UCControls1: TUCControls;
    sdsAgente: TSQLDataSet;
    dspAgente: TDataSetProvider;
    cdsAgente: TClientDataSet;
    dsAgente: TDataSource;
    sdsAgenteID: TIntegerField;
    sdsAgenteNOME: TStringField;
    cdsAgenteID: TIntegerField;
    cdsAgenteNOME: TStringField;
    sdsAgenteCODIGO: TStringField;
    cdsAgenteCODIGO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fAgenteC: TfAgenteC;

implementation

uses uAgente;

{$R *.dfm}

procedure TfAgenteC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tPessoa.Active then
    Fdm1.tPessoa.Open;
  fAgente := TfAgente.Create(Self);

  fAgente.Dm1 := Fdm1;

  fdm1.tPessoa.Insert;
  fdm1.tPessoaAGENTE.AsString := '1';
  fAgente.ShowModal;
  fAgente.Free;
end;

procedure TfAgenteC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not cdsAgente.IsEmpty then
  begin
    fAgente := TfAgente.Create(Self);

    fAgente.Dm1 := Fdm1;
    fdm1.tPessoa.IndexFieldNames := 'ID';
    if fdm1.tPessoa.FindKey([cdsAgenteID.AsInteger]) then
    begin
      fdm1.tPessoa.Edit;
      fAgente.ShowModal;
      fAgente.Free;
    end;
  end;
end;

procedure TfAgenteC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    cdsAgente.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    sdsAgente.CommandText := 'SELECT * FROM PESSOA WHERE AGENTE = ''1'' AND UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    cdsAgente.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    cdsAgente.IndexFieldNames := 'NOME';
  end;
end;

procedure TfAgenteC.BitBtn2Click(Sender: TObject);
begin
  if not cdsAgente.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      fdm1.tPessoa.IndexFieldNames := 'ID';
      fDm1.tPessoa.FindKey([cdsAgenteID.AsInteger]);
      Fdm1.tPessoa.Delete;
      Fdm1.tPessoa.ApplyUpdates(0);
    end;
end;

procedure TfAgenteC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,fdm1.tPessoa,Name);
  oDBUtils.ActiveDataSet(True,fdm1.tCidade,Name);
end;

procedure TfAgenteC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfAgenteC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
