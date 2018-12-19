unit uAnamneseC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfAnamneseC = class(TForm)
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
  fAnamneseC: TfAnamneseC;

implementation

uses uAnamnese, UMenu;

{$R *.dfm}

procedure TfAnamneseC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tAnamnese.Active then
    Fdm1.tAnamnese.Open;
  fAnamnese := TfAnamnese.Create(Self);

  fAnamnese.Dm1 := Fdm1;

  Fdm1.tAnamnese.Insert;
  fAnamnese.ShowModal;
  fAnamnese.Free;
end;

procedure TfAnamneseC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tAnamnese.IsEmpty then
  begin
    fAnamnese := TfAnamnese.Create(Self);

    fAnamnese.Dm1 := Fdm1;

    Fdm1.tAnamnese.Edit;
    fAnamnese.ShowModal;
    fAnamnese.Free;
  end;
end;

procedure TfAnamneseC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tAnamnese.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Anamnese.CommandText := 'SELECT * FROM ANAMNESE WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tAnamnese.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tAnamnese.IndexFieldNames := 'NOME';
  end;
end;

procedure TfAnamneseC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tAnamnese.Close;
  Fdm1.Anamnese.CommandText := 'SELECT * FROM ANAMNESE';
end;

procedure TfAnamneseC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tAnamnese.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tAnamnese.Delete;
      Fdm1.tAnamnese.ApplyUpdates(0);
    end;
end;

procedure TfAnamneseC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfAnamneseC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
