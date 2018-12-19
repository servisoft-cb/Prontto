unit UValoresC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  JvDBCtrl, UCBase, SMDBGrid, UDm1, rsDBUtils;

type
  TfValoresC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    UCControls1: TUCControls;
    SMDBGrid1: TSMDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fValoresC: TfValoresC;

implementation

uses uCentroCusto, UMenu, uEventos, UValores;

{$R *.dfm}

procedure TfValoresC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tValores.Active then
    begin
      Fdm1.tEventos.Open;
      Fdm1.tValores.Open;
    end;
  fValores := TfValores.Create(Self);

  fValores.Dm1 := Fdm1;

  Fdm1.tValores.Insert;
  fValores.ShowModal;
  fValores.Free;
end;

procedure TfValoresC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Fdm1.tValores.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    Fdm1.Valores.CommandText := 'SELECT VALORES.*, PESSOA.NOME NOMEFUNCIONARIO, EVENTOS.NOME EVENTO '+
                               'FROM VALORES, PESSOA, EVENTOS WHERE VALORES.FUNCIONARIO = PESSOA.ID AND ' +
                               'VALORES.IDEVENTO = EVENTOS.ID AND UPPER(NOMEFUNCIONARIO) LIKE UPPER(''%' + Edit1.Text + '%'')';


//    Fdm1.Eventos.CommandText := 'SELECT * FROM EVENTOS WHERE UPPER(NOME) LIKE UPPER(''%' + Edit1.Text + '%'')';



    Fdm1.tValores.Open;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tValores.IndexFieldNames := 'NOME';
  end;
end;

procedure TfValoresC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tValores.Close;
end;

procedure TfValoresC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tValores.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tValores.Delete;
      Fdm1.tValores.ApplyUpdates(0);
    end;
end;

procedure TfValoresC.FormShow(Sender: TObject);
begin
      Fdm1.tValores.Open;
end;

procedure TfValoresC.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tValores.IsEmpty then
  begin
    fValores := TfValores.Create(Self);

    fValores.Dm1 := Fdm1;

    Fdm1.tValores.Edit;
    fValores.ShowModal;
    fValores.Free;
  end;

end;

procedure TfValoresC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfValoresC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
