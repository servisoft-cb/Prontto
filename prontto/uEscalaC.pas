unit uEscalaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, UDm1,
  JvDBCtrl, UCBase, rsDBUtils;

type
  TfEscalaC = class(TForm)
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
  fEscalaC: TfEscalaC;

implementation

uses uEscala, UMenu;

{$R *.dfm}

procedure TfEscalaC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tEscala.Active then
    Fdm1.tEscala.Open;
  fEscala := TfEscala.Create(Self);

  fEscala.Dm1 := Fdm1;

  Fdm1.tEscala.Insert;
  fEscala.ShowModal;
  fEscala.Free;
end;

procedure TfEscalaC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tEscala.IsEmpty then
  begin
    fEscala := TfEscala.Create(Self);

    fEscala.Dm1 := Fdm1;

    Fdm1.tEscala.Edit;
    fEscala.ShowModal;
    fEscala.Free;
  end;
end;

procedure TfEscalaC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tEscala.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Escala.CommandText := 'SELECT * FROM ESCALA WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tEscala.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tEscala.IndexFieldNames := 'NOME';
  end;
end;

procedure TfEscalaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tEscala.Close;
  Fdm1.Escala.CommandText := 'SELECT * FROM ESCALA';
end;

procedure TfEscalaC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tEscala.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tEscala.Delete;
      Fdm1.tEscala.ApplyUpdates(0);
    end;
end;

procedure TfEscalaC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfEscalaC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
