unit UAtendimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls,
  UDm1, rsDBUtils;

type
  TfAtendimento = class(TForm)
    PageControl2: TPageControl;
    TabSheet9: TTabSheet;
    Panel8: TPanel;
    Edit4: TEdit;
    JvDBGrid4: TJvDBGrid;
    Panel9: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    TabSheet11: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;

  public
    { Public declarations }
  end;

var
  fAtendimento: TfAtendimento;

implementation

uses uPessoaAtendimento ;

{$R *.dfm}

procedure TfAtendimento.BitBtn5Click(Sender: TObject);
begin
  fPessoaAtendimento := TfPessoaAtendimento.Create(Self);

  fPessoaAtendimento.Dm1 := Fdm1;

  Fdm1.tPessoaAtendimento.Last;
  Fdm1.tPessoaAtendimento.Insert;
  fPessoaAtendimento.ShowModal;
  fPessoaAtendimento.Free;
end;

procedure TfAtendimento.BitBtn6Click(Sender: TObject);
begin
  if not Fdm1.tPessoaAtendimento.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tPessoaAtendimento.Delete;
      Fdm1.tPessoaAtendimento.ApplyUpdates(0);
    end;
end;

procedure TfAtendimento.JvDBGrid2DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoaAtendimento.IsEmpty then
  begin
    fPessoaAtendimento := TfPessoaAtendimento.Create(Self);

    fPessoaAtendimento.Dm1 := Fdm1;

    Fdm1.tPessoaAtendimento.Edit;
    fPessoaAtendimento.ShowModal;
    fPessoaAtendimento.Free;
  end;
end;

procedure TfAtendimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tPessoaAtendimento.Close;
  Fdm1.PessoaAtendimento.CommandText := 'SELECT * FROM PESSOA_ATENDIMENTO WHERE PESSOA_ID = :P1 ORDER BY PESSOA_ID, ID';
end;

procedure TfAtendimento.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  Fdm1.tPessoaAtendimento.Close;
  Fdm1.PessoaAtendimento.CommandText := 'SELECT * FROM PESSOA_ATENDIMENTO ORDER BY PESSOA_ID, ID';
  Fdm1.tPessoaAtendimento.Open;
  Fdm1.tPessoa.Open;
end;

procedure TfAtendimento.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
