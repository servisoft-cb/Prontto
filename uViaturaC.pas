unit uViaturaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvDBCtrl, UCBase, UDm1, rsDBUtils;

type
  TfViaturaC = class(TForm)
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
  fViaturaC: TfViaturaC;

implementation

uses uViatura;

{$R *.dfm}

procedure TfViaturaC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tViatura.Active then
    Fdm1.tViatura.Open;
  fViatura := TfViatura.Create(Self);

  fViatura.Dm1 := Fdm1;

  Fdm1.tViatura.Insert;
  Fdm1.tViaturaATIVA.AsString := 'S';
  fViatura.ShowModal;
  fViatura.Free;
end;

procedure TfViaturaC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tViatura.IsEmpty then
  begin
    fViatura := TfViatura.Create(Self);

    fViatura.Dm1 := Fdm1;

    Fdm1.tViatura.Edit;
    fViatura.ShowModal;
    fViatura.Free;
  end;
end;

procedure TfViaturaC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tViatura.Close;
    if Edit1.Text = '[Digite a placa e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Viatura.CommandText := 'SELECT * FROM VIATURA WHERE UPPER(PLACA) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tViatura.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite a placa e pressione F3 para localizar]';
    Fdm1.tViatura.IndexFieldNames := 'PLACA';
  end;
end;

procedure TfViaturaC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tViatura.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tViatura.Delete;
      Fdm1.tViatura.ApplyUpdates(0);
    end;
end;

procedure TfViaturaC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  oDBUtils.OpenTables(True,Self);
end;

procedure TfViaturaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfViaturaC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

end.
