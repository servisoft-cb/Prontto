unit uViaturaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, TDI,
  uDmViatura, StdCtrls, Buttons;

type
  TfViaturaC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    btInserir: TBitBtn;
    btPesquisar: TBitBtn;
    btExcluir: TBitBtn;
    pnlPesquisa: TPanel;
    tbPesquisa: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure tbPesquisaClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    FTDI: TTDI;
  public
    { Public declarations }
    fDmViatura: TDmViatura;
  end;

var
  fViaturaC: TfViaturaC;

implementation

uses rsDBUtils, uViatura, uMenu;

{$R *.dfm}

procedure TfViaturaC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfViaturaC.FormShow(Sender: TObject);
begin
  fDMViatura := TDMViatura.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmViatura);
end;

procedure TfViaturaC.btInserirClick(Sender: TObject);
begin
  fDmViatura.pInserir;
  fViatura := TfViatura.Create(Self);
  fViatura.fDmViatura := fDmViatura;
  fViatura.ShowModal;
end;

procedure TfViaturaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmViatura);
end;

procedure TfViaturaC.btExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',MtConfirmation,[mbNo,mbOk],0) = mrOk then
  begin
    fDmViatura.cdsViatura.Delete;
    fDmViatura.cdsViatura.ApplyUpdates(0);
  end;
end;

procedure TfViaturaC.tbPesquisaClick(Sender: TObject);
begin
  fDmViatura.cdsViatura.Close;
  if Edit1.Text <> '' then
  begin
  end;
  fDmViatura.cdsViatura.Open;
end;

procedure TfViaturaC.SMDBGrid1DblClick(Sender: TObject);
var
  vId: Integer;
begin
  if fDmViatura.cdsViatura.IsEmpty then
    Exit;
  fViatura := TfViatura.Create(Self);
  fViatura.fDmViatura := fDmViatura;
  vId := fDmViatura.cdsViaturaID.AsInteger;
  fDmViatura.cdsViatura.Edit;
  fViatura.ShowModal;
  fDmViatura.cdsViatura.IndexFieldNames := 'ID';
  fDmViatura.cdsViatura.FindKey([vId]);
end;

procedure TfViaturaC.btPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not pnlPesquisa.Visible;
  if pnlPesquisa.Visible then
    Edit1.SetFocus;
end;

procedure TfViaturaC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDmViatura.cdsViatura.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
