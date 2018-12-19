unit uCelularC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, UCBase, UDm1, rsDBUtils, SMDBGrid,
  StdCtrls, Buttons, ExtCtrls;

type
  TfCelularC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    UCControls1: TUCControls;
    SMDBGrid1: TSMDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fCelularC: TfCelularC;

implementation

uses uCelular;

{$R *.dfm}

procedure TfCelularC.BitBtn1Click(Sender: TObject);
begin
  if not Fdm1.tCelular.Active then
    Fdm1.tCelular.Open;
  fCelular := TfCelular.Create(Self);

  fCelular.Dm1 := Fdm1;

  Fdm1.tCelular.Insert;
  fCelular.ShowModal;
  fCelular.Free;
end;

procedure TfCelularC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
  end;
end;

procedure TfCelularC.BitBtn2Click(Sender: TObject);
begin
  if not Fdm1.tCelular.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tCelular.Delete;
      Fdm1.tCelular.ApplyUpdates(0);
    end;
end;

procedure TfCelularC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  oDBUtils.OpenTables(True,Self);
end;

procedure TfCelularC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

procedure TfCelularC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
  Action := caFree;
end;

procedure TfCelularC.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tCelular.IsEmpty then
  begin
    fCelular := TfCelular.Create(Self);

    fCelular.Dm1 := Fdm1;

    Fdm1.tCelular.Edit;
    fCelular.ShowModal;
    fCelular.Free;
  end;
end;

end.
