unit uDiarioC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, TDI,
  uDmDiario, StdCtrls, Buttons;

type
  TfDiarioC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    btInserir: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmDiario: TDmDiario;
  end;

var
  fDiarioC: TfDiarioC;

implementation

uses rsDBUtils, uDiario;

{$R *.dfm}

procedure TfDiarioC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfDiarioC.FormShow(Sender: TObject);
begin
  fDMDiario := TDMDiario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
end;

procedure TfDiarioC.btInserirClick(Sender: TObject);
begin
  fDmDiario.pInserir;
  fDiario := TfDiario.Create(Self);
  fDiario.fDmDiario := fDmDiario;
  fDiario.ShowModal;
end;

procedure TfDiarioC.BitBtn1Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioCons.Close;
end;

procedure TfDiarioC.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',MtConfirmation,[mbNo,mbOk],0) = mrOk then
  begin
    fDmDiario.pPosicionar(fDmDiario.cdsDiarioConsID.AsInteger);
    fDmDiario.cdsDiario.Delete;
    fDmDiario.cdsDiario.ApplyUpdates(0);
  end;
end;

procedure TfDiarioC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDmDiario);
end;

procedure TfDiarioC.SMDBGrid1DblClick(Sender: TObject);
begin
  fDmDiario.pPosicionar(fDmDiario.cdsDiarioConsID.AsInteger);
  fDmDiario.cdsDiario.Edit;
  fDiario := TfDiario.Create(Self);
  fDiario.fDmDiario := fDmDiario;
  fDiario.ShowModal;
end;

end.
