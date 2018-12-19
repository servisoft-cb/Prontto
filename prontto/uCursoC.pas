unit uCursoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls,
  Grids, DBGrids, JvDBCtrl, UCBase, UDm1, rsDBUtils, SMDBGrid;

type
  TfCursoC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    UCControls1: TUCControls;
    SMDBGrid1: TSMDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fCursoC: TfCursoC;

implementation

uses uCurso;

{$R *.dfm}

procedure TfCursoC.BitBtn1Click(Sender: TObject);
begin
  fCurso := TfCurso.Create(Self);
  fCurso.Dm1 := Fdm1;
  Fdm1.tCurso.Insert;
  fCurso.ShowModal;
  fCurso.Free;
end;

procedure TfCursoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tCurso.Close;
  Fdm1.Curso.CommandText := 'SELECT * FROM CURSO';
end;

procedure TfCursoC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tCurso.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
      fDM1.Excluir_Curso;
end;

procedure TfCursoC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tCurso.IndexFieldNames := 'NOME';
  Fdm1.tCurso.Open;

  fdm1.CursoDisciplina.CommandText := fdm1.CursoDisciplina.CommandText + ' WHERE CURSO_ID = :C1';
end;

procedure TfCursoC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfCursoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tCurso.IsEmpty then
  begin
    fCurso := TfCurso.Create(Self);
    fCurso.Dm1 := Fdm1;
    Fdm1.tCurso.Edit;
    fCurso.ShowModal;
    fCurso.Free;
  end;
end;

end.
