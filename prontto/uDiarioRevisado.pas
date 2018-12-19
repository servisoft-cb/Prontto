unit uDiarioRevisado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, uDm1, uDmDiario, Mask,
  FMTBcd, DB, DBClient, Provider, SqlExpr, rsDBUtils;

type
  TfDiarioRevisado = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBMemo1: TDBMemo;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;
    fDmDiario: TDmDiario;
  public
    { Public declarations }
    property dmDiario: TDmDiario read fDmDiario write fDmDiario;
  end;

var
  fDiarioRevisado: TfDiarioRevisado;

implementation

uses UMenu;

{$R *.dfm}

procedure TfDiarioRevisado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfDiarioRevisado.BitBtn1Click(Sender: TObject);
begin
  fDmDiario.cdsDiarioREVISADO_POR.AsString    := DBEdit1.Text;
  fDmDiario.cdsDiarioREVISADO_HORA.AsDateTime := Now;
  fDmDiario.cdsDiario.ApplyUpdates(0);
  fDmDiario.cdsDiario.Edit;
  Close;
end;

procedure TfDiarioRevisado.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfDiarioRevisado.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmDiario);
  DBEDit1.Text := fMenu.UserControl1.CurrentUser.LoginName;
end;

end.
