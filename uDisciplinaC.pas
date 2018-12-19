unit uDisciplinaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase,
  UDm1, rsDBUtils;

type
  TfDisciplinasC = class(TForm)
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
  fDisciplinasC: TfDisciplinasC;

implementation

uses uDisciplina;

{$R *.dfm}

procedure TfDisciplinasC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tDisciplina.Active then
    Fdm1.tDisciplina.Open;
  fDisciplina := TfDisciplina.Create(Self);

  fDisciplina.Dm1 := Fdm1;

  Fdm1.tDisciplina.Insert;
  fDisciplina.ShowModal;
  fDisciplina.Free;
end;

procedure TfDisciplinasC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tDisciplina.IsEmpty then
  begin
    fDisciplina := TfDisciplina.Create(Self);

    fDisciplina.Dm1 := Fdm1;
    
    Fdm1.tDisciplina.Edit;
    fDisciplina.ShowModal;
    fDisciplina.Free;
  end;
end;

procedure TfDisciplinasC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tDisciplina.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Disciplina.CommandText := 'SELECT * FROM DISCIPLINA WHERE UPPER(DESCRICAO) LIKE UPPER(''%' + Edit1.Text + '%'')';
    Fdm1.tDisciplina.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tDisciplina.IndexFieldNames := 'DESCRICAO';
  end;
end;

procedure TfDisciplinasC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tDisciplina.Close;
  Fdm1.Disciplina.CommandText := 'SELECT * FROM DISCIPLINA';
  Action := caFree;
end;

procedure TfDisciplinasC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tDisciplina.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tDisciplina.Delete;
      Fdm1.tDisciplina.ApplyUpdates(0);
    end;
end;

procedure TfDisciplinasC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfDisciplinasC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
