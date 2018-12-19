unit uBairroC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvDBCtrl, UCBase, UDm1, rsDBUtils;

type
  TfBairroC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    UCControls1: TUCControls;
    procedure BitBtn1Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fBairroC: TfBairroC;

implementation

uses uBairro;

{$R *.dfm}

procedure TfBairroC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tBairro.Active then
    Fdm1.tBairro.Open;
  fBairro := TfBairro.Create(Self);

  fBairro.Dm1 := Fdm1;

  Fdm1.tBairro.Insert;
  fBairro.ShowModal;
  fBairro.Free;
end;

procedure TfBairroC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tBairro.IsEmpty then
  begin
    fBairro := TfBairro.Create(Self);

    fBairro.Dm1 := Fdm1;

    Fdm1.tBairro.Edit;
    fBairro.ShowModal;
    fBairro.Free;
  end;
end;

procedure TfBairroC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tBairro.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Bairro.CommandText := 'SELECT B.*, C.NOME CIDADENOME FROM BAIRRO B ' +
                               'INNER JOIN CIDADE C ON (C.ID = B.CIDADE) ' +
                               'WHERE UPPER(B.NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tBairro.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tBairro.IndexFieldNames := 'NOME';
  end;
end;

procedure TfBairroC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfBairroC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tBairro.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tBairro.Delete;
      Fdm1.tBairro.ApplyUpdates(0);
    end;
end;

procedure TfBairroC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  oDBUtils.OpenTables(True,Self);
  oDBUtils.ActiveDataSet(True,fdm1.tCidade,Name);
end;

procedure TfBairroC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
