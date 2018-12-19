unit uNotasC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, rsDBUtils, UDm1, Dialogs, Grids, DBGrids, SMDBGrid,
  ExtCtrls, StdCtrls, Buttons, JvLookup, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, JvToolEdit, JvEdit, JvSpinEdit;

type
  TfNotasC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label1: TLabel;
    PessoaNota: TSQLDataSet;
    pPessoaNota: TDataSetProvider;
    tPessoaNota: TClientDataSet;
    dsPessoaNota: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label6: TLabel;
    PessoaNotaALUNO: TStringField;
    PessoaNotaCURSO: TStringField;
    PessoaNotaTURMA: TStringField;
    PessoaNotaDISCIPLINA: TStringField;
    PessoaNotaNOTA: TFMTBCDField;
    tPessoaNotaALUNO: TStringField;
    tPessoaNotaCURSO: TStringField;
    tPessoaNotaTURMA: TStringField;
    tPessoaNotaDISCIPLINA: TStringField;
    tPessoaNotaNOTA: TFMTBCDField;
    BitBtn3: TBitBtn;
    PessoaNotaID: TIntegerField;
    tPessoaNotaID: TIntegerField;
    mNotas: TClientDataSet;
    dsmNotas: TDataSource;
    PessoaNotaSIGLA: TStringField;
    tPessoaNotaSIGLA: TStringField;
    mNotasD1: TStringField;
    mNotasN1: TFloatField;
    mNotasD2: TStringField;
    mNotasN2: TFloatField;
    mNotasD3: TStringField;
    mNotasN3: TFloatField;
    mNotasD4: TStringField;
    mNotasN4: TFloatField;
    mNotasD5: TStringField;
    mNotasN5: TFloatField;
    mNotasD6: TStringField;
    mNotasN6: TFloatField;
    mNotasD7: TStringField;
    mNotasN7: TFloatField;
    mNotasD8: TStringField;
    mNotasN8: TFloatField;
    mNotasD9: TStringField;
    mNotasN9: TFloatField;
    mNotasD10: TStringField;
    mNotasN10: TFloatField;
    mNotasD11: TStringField;
    mNotasN11: TFloatField;
    mNotasD12: TStringField;
    mNotasN12: TFloatField;
    mNotasAluno: TStringField;
    mNotasMedia: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fNotasC: TfNotasC;
  ct: String;

implementation

uses uRelNotas;

{$R *.dfm}

procedure TfNotasC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfNotasC.BitBtn1Click(Sender: TObject);
begin
  tPessoaNota.Close;
  PessoaNota.CommandText := ct;
  if JvDBLookupCombo1.Value <> '' then
    PessoaNota.CommandText := PessoaNota.CommandText + ' AND C.NOME = ''' + JvDBLookupCombo1.Text + '''';
  if Edit1.Text <> '' then
    PessoaNota.CommandText := PessoaNota.CommandText + ' AND TURMA LIKE ''%' + Edit1.Text + '%''';
  PessoaNota.CommandText := PessoaNota.CommandText + ' ORDER BY ALUNO';
  tPessoaNota.Open;
end;

procedure TfNotasC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  ct := PessoaNota.CommandText;
  fdm1.tCurso.IndexFieldNames := 'NOME';
  fdm1.tCurso.Open;
end;

procedure TfNotasC.BitBtn3Click(Sender: TObject);
begin
  if tPessoaNota.State in [dsEdit, dsInsert] then
    tPessoaNota.Post;
  if tPessoaNota.ChangeCount > 0 then
    tPessoaNota.ApplyUpdates(0);
end;

procedure TfNotasC.BitBtn2Click(Sender: TObject);
var
  i: Byte;
  divi, soma: Real;
begin
  mNotas.EmptyDataSet;
  tPessoaNota.First;
  while not tPessoaNota.Eof do
  begin
    soma := 0;
    mNotas.Filtered := False;
    mNotas.Filter   := 'ALUNO = ''' + tPessoaNotaALUNO.AsString + '''';
    mNotas.Filtered := True;
    if mNotas.IsEmpty then
    begin
      mNotas.Insert;
      mNotasAluno.AsString := tPessoaNotaAluno.AsString;
      mNotas.Post;
    end;
    for i := 1 to 12 do
    begin
      if mNotas.FieldByName('D'+IntToStr(i)).IsNull then
      begin
        mNotas.Edit;
        mNotas.FieldByName('D'+IntToStr(i)).AsString := tPessoaNotaSIGLA.AsString;
        mNotas.FieldByName('N'+IntToStr(i)).AsString := tPessoaNotaNOTA.AsString;
        mNotas.Post;
        Break;
      end;
    end;
    tPessoaNota.Next;
  end;
  mNotas.Filtered := False;
  mNotas.First;
  while not mNotas.Eof do
  begin
    soma := 0;
    divi := 0;
    for i := 1 to 12 do
    begin
      if not mNotas.FieldByName('N'+IntToStr(i)).IsNull then
      begin
        soma := soma + mNotas.FieldByName('N'+IntToStr(i)).AsCurrency;
        divi := divi + 1;
      end;
    end;
    if divi > 0 then
    begin
      mNotas.Edit;
      mNotasMedia.AsCurrency := soma / divi;
      mNotas.Post;
    end;
    mNotas.Next;
  end;
  fRelNotas := TfRelNotas.Create(Self);
  fRelNotas.RlReport1.Preview;
end;

end.
